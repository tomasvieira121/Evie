package com.evie.sidescreen.tiles.articles;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.relatedcontent.RelatedArticlesActivity;
import com.evie.sidescreen.tiles.imageviewer.PopupImageViewerPresenter;
import com.evie.sidescreen.tiles.imageviewer.PopupImageViewerPresenterFactory;
import com.evie.sidescreen.tiles.imageviewer.PopupImageViewerViewHolder;
import com.evie.sidescreen.webviewer.WebViewerActivity;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.schema.ImageObject;
import org.schema.MediaObject;
import org.schema.MediaSelector;
import org.schema.NewsArticle;
import org.schema.Organization;
import org.schema.Thing;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class ArticleTileHeroImagePresenter extends AbstractHeroPresenter<ArticleTileHeroImageViewHolder> {
    private final ActivityStarter mActivityStarter;
    private final NewsArticle mArticle;
    private final PopupImageViewerPresenterFactory mPopupImageViewerPresenterFactory;
    private final ScreenInfo mScreenInfo;

    @Override // com.evie.sidescreen.tiles.TilePresenter, com.evie.sidescreen.tiles.TileRowDividerItemDecoration.TileRowDividerContractor
    public boolean shouldShowTopTileDivider() {
        return false;
    }

    public ArticleTileHeroImagePresenter(SideScreenContentTile sideScreenContentTile, NewsArticle newsArticle, ScreenInfo screenInfo, @Provided ActivityStarter activityStarter, @Provided AnalyticsModel analyticsModel, @Provided PopupImageViewerPresenterFactory popupImageViewerPresenterFactory) {
        super(sideScreenContentTile, screenInfo, analyticsModel);
        this.mScreenInfo = screenInfo;
        this.mActivityStarter = activityStarter;
        this.mArticle = newsArticle;
        this.mPopupImageViewerPresenterFactory = popupImageViewerPresenterFactory;
    }

    @Override // com.evie.sidescreen.tiles.TilePresenter
    protected Map<String, Object> getAnalyticsAttributes() {
        HashMap map = new HashMap();
        map.put("item_type", "trending_image");
        map.put("attribute_news_article", this.mArticle);
        return map;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return ArticleTileHeroImageViewHolder.f352ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public ArticleTileHeroImageViewHolder createViewHolderInstance(View view) {
        return new ArticleTileHeroImageViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.tiles.articles.AbstractHeroPresenter
    public void onBindViewHolder(ArticleTileHeroImageViewHolder articleTileHeroImageViewHolder) {
        super.onBindViewHolder(articleTileHeroImageViewHolder);
        List<ImageObject> image = this.mArticle.getImage();
        if (image == null || image.size() == 0) {
            articleTileHeroImageViewHolder.hideImage();
        } else {
            articleTileHeroImageViewHolder.showImage(image.get(0).getUrl(), 1.7777778f);
        }
    }

    @Override // com.evie.sidescreen.tiles.articles.AbstractHeroPresenter
    public void onArticleClick(View view, Context context) {
        boolean z;
        MediaObject mediaObjectSelectMedia;
        super.onArticleClick(view, context);
        trackTap();
        if (!"image".equals(this.mArticle.getContentType()) || (mediaObjectSelectMedia = MediaSelector.selectMedia(this.mArticle.getImage(), 1100, 0.5f)) == null || mediaObjectSelectMedia.getUrl() == null) {
            z = false;
        } else {
            PopupImageViewerPresenter popupImageViewerPresenterCreate = this.mPopupImageViewerPresenterFactory.create(mediaObjectSelectMedia.getUrl(), mediaObjectSelectMedia.getExternalUrl(), this.mArticle, view instanceof ImageView ? (ImageView) view : null);
            PopupImageViewerViewHolder popupImageViewerViewHolder = (PopupImageViewerViewHolder) popupImageViewerPresenterCreate.onCreateViewHolder(context, (ViewGroup) null);
            popupImageViewerViewHolder.bindPresenter(popupImageViewerPresenterCreate);
            popupImageViewerPresenterCreate.bindViewHolder(popupImageViewerViewHolder);
            popupImageViewerPresenterCreate.showPopup();
            z = true;
        }
        if (!z && this.mArticle.isShowIntermediate()) {
            Intent localActivityIntent = this.mActivityStarter.getLocalActivityIntent(RelatedArticlesActivity.class);
            localActivityIntent.putExtra(RelatedArticlesActivity.EXTRA_ARTICLE, this.mArticle);
            this.mActivityStarter.startActivity(view, localActivityIntent, false);
            z = true;
        }
        if (z) {
            return;
        }
        launchWebViewer(view);
    }

    public void launchWebViewer(View view) {
        String url = this.mArticle.getUrl();
        Organization publisherOrganization = this.mArticle.getPublisherOrganization();
        String name = publisherOrganization != null ? publisherOrganization.getName() : null;
        String faviconUrl = publisherOrganization != null ? publisherOrganization.getFaviconUrl() : null;
        String androidPackageId = publisherOrganization != null ? publisherOrganization.getAndroidPackageId() : null;
        if (TextUtils.isEmpty(url)) {
            return;
        }
        HashMap map = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (Thing thing : this.mArticle.getTopics()) {
            if (thing instanceof Topic) {
                arrayList.add((Topic) thing);
            }
        }
        String str = (String) this.mArticle.getAnalytics().get("analytics_proto");
        map.put(WebViewerActivity.EXTRA_TOPICS_KEY, arrayList);
        map.put(WebViewerActivity.EXTRA_FAVICON_KEY, faviconUrl);
        map.put(WebViewerActivity.EXTRA_ANALYTICS_PROTO_KEY, str);
        this.mActivityStarter.startUrl(view, url, name, this.mArticle.getHeadline(), this.mArticle.getId(), map, androidPackageId, this.mArticle.getAndroidUrl(), this.mArticle.getAmpUrl());
    }

    protected void trackTap() {
        HashMap map = new HashMap();
        map.put("item_type", "trending_article");
        map.put("attribute_news_article", this.mArticle);
        map.put("attribute_content_tile", this.mTile);
        map.put("attribute_screen_info", this.mScreenInfo);
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
    }

    public void onCaptionClick(Context context) {
        onArticleClick(this.mViewHolder != 0 ? ((ArticleTileHeroImageViewHolder) this.mViewHolder).getImage() : null, context);
    }
}
