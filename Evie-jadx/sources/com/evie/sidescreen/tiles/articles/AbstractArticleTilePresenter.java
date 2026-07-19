package com.evie.sidescreen.tiles.articles;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.relatedcontent.RelatedArticlesActivity;
import com.evie.sidescreen.tiles.TilePresenter;
import com.evie.sidescreen.tiles.articles.AbstractArticleTileViewHolder;
import com.evie.sidescreen.tiles.imageviewer.PopupImageViewerPresenter;
import com.evie.sidescreen.tiles.imageviewer.PopupImageViewerPresenterFactory;
import com.evie.sidescreen.tiles.imageviewer.PopupImageViewerViewHolder;
import com.evie.sidescreen.webviewer.WebViewerActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.schema.MediaObject;
import org.schema.MediaSelector;
import org.schema.NewsArticle;
import org.schema.Organization;
import org.schema.Tag;
import org.schema.Thing;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractArticleTilePresenter<VH extends AbstractArticleTileViewHolder> extends TilePresenter<VH> {
    protected final ActivityStarter mActivityStarter;
    protected final NewsArticle mArticle;
    private final ArticlePopupMenuHelper mArticlePopupMenuHelper;
    private final PopupImageViewerPresenterFactory mPopupImageViewerPresenterFactory;

    protected abstract float getImageAspectRatio();

    public AbstractArticleTilePresenter(SideScreenContentTile sideScreenContentTile, NewsArticle newsArticle, ScreenInfo screenInfo, ActivityStarter activityStarter, AnalyticsModel analyticsModel, ArticlePopupMenuHelper articlePopupMenuHelper, PopupImageViewerPresenterFactory popupImageViewerPresenterFactory) {
        super(sideScreenContentTile, screenInfo, analyticsModel);
        this.mArticle = newsArticle;
        this.mActivityStarter = activityStarter;
        this.mArticlePopupMenuHelper = articlePopupMenuHelper;
        this.mPopupImageViewerPresenterFactory = popupImageViewerPresenterFactory;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(VH vh) {
        bindTitle(vh);
        bindHeader(vh);
        bindImage(vh, getTargetAssetWidthPixels(vh.itemView.getContext(), ((AbstractArticleTileViewHolder) this.mViewHolder).mImage), getImageAspectRatio());
    }

    protected void bindTitle(VH vh) {
        vh.showTitle(this.mArticle.getHeadline());
    }

    protected void bindHeader(VH vh) {
        Organization publisherOrganization = this.mArticle.getPublisherOrganization();
        if (publisherOrganization != null) {
            if (!TextUtils.isEmpty(publisherOrganization.getName())) {
                vh.showPublisher(publisherOrganization.getName());
            } else {
                vh.hidePublisher();
            }
            if (publisherOrganization.getFaviconUrl() != null) {
                vh.showHeaderLogo(publisherOrganization.getFaviconUrl());
            } else {
                vh.hideHeaderLogo();
            }
        } else {
            vh.hidePublisher();
            vh.hideHeaderLogo();
        }
        String displayTopicDescription = this.mArticle.getDisplayTopicDescription();
        if (!TextUtils.isEmpty(displayTopicDescription)) {
            vh.showTopic(displayTopicDescription);
        } else {
            vh.hideTopic();
        }
        List<Tag> tags = this.mArticle.getTags();
        if (tags != null && tags.size() > 0) {
            for (int i = 0; i < tags.size(); i++) {
                Tag tag = tags.get(i);
                ArticleTileTagViewHolder tagView = vh.getTagView(i);
                boolean z = !TextUtils.isEmpty(tag.getText());
                boolean z2 = !TextUtils.isEmpty(tag.getImgUrl());
                boolean z3 = !TextUtils.isEmpty(tag.getTint());
                if (z) {
                    vh.showTagText(tagView, tag.getText());
                } else {
                    vh.hideTagText(tagView);
                }
                if (z2) {
                    vh.showTagImage(tagView, tag.getImgUrl());
                } else {
                    vh.hideTagImage(tagView);
                }
                if (z || z2) {
                    vh.showTagDivider(tagView);
                } else {
                    vh.hideTagDivider(tagView);
                }
                if (z3) {
                    vh.setTagTint(tagView, tag.getTint());
                }
            }
        }
        vh.removeExtraTagViews(tags != null ? tags.size() : 0);
        String timeElapsedString = getTimeElapsedString(vh.itemView.getContext(), this.mArticle.getDatePublished());
        if (this.mArticle.shouldDisplayAge() && !TextUtils.isEmpty(timeElapsedString)) {
            vh.showTimeElapsed(timeElapsedString);
        } else {
            vh.hideTimeElapsed();
        }
        vh.hideLink();
        vh.updateDividers();
    }

    protected void bindImage(VH vh, int i, float f) {
        if (i == 0) {
            vh.showImage(null);
        } else {
            vh.showImage(MediaSelector.selectMediaUrl(this.mArticle.getImage(), i, f));
        }
    }

    @Override // com.evie.sidescreen.tiles.TilePresenter
    protected Map<String, Object> getAnalyticsAttributes() {
        HashMap map = new HashMap();
        map.put("item_type", "trending_article");
        map.put("attribute_news_article", this.mArticle);
        return map;
    }

    public void onArticleClick(View view) {
        onTapped();
        trackTap();
        handleArticleClick(view);
    }

    public void handleArticleClick(View view) {
        boolean z;
        MediaObject mediaObjectSelectMedia;
        if (!"image".equals(this.mArticle.getContentType()) || (mediaObjectSelectMedia = MediaSelector.selectMedia(this.mArticle.getImage(), 1100, 0.5f)) == null || mediaObjectSelectMedia.getUrl() == null) {
            z = false;
        } else {
            PopupImageViewerPresenter popupImageViewerPresenterCreate = this.mPopupImageViewerPresenterFactory.create(mediaObjectSelectMedia.getUrl(), mediaObjectSelectMedia.getExternalUrl(), this.mArticle, view instanceof ImageView ? (ImageView) view : null);
            PopupImageViewerViewHolder popupImageViewerViewHolder = (PopupImageViewerViewHolder) popupImageViewerPresenterCreate.onCreateViewHolder(((AbstractArticleTileViewHolder) this.mViewHolder).itemView.getContext(), (ViewGroup) null);
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

    @Override // com.evie.sidescreen.tiles.TilePresenter, com.evie.sidescreen.mvp.ItemPresenter
    public boolean isSameItem(Object obj) {
        if (super.isSameItem(obj)) {
            return Objects.equals(this.mArticle, ((AbstractArticleTilePresenter) obj).mArticle);
        }
        return false;
    }

    public void onContextMenuClick(View view) {
        this.mArticlePopupMenuHelper.showMenuAtView(this.mArticle, view.getContext(), view, this.mScreenInfo);
    }

    private int getTargetAssetWidthPixels(Context context, View view) {
        if (view == null) {
            return 0;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int i = layoutParams.width;
        if (i == 0 && ((layoutParams instanceof LinearLayout.LayoutParams) || (layoutParams instanceof ConstraintLayout.LayoutParams))) {
            throw new IllegalStateException("Unable to determine view width");
        }
        return i >= 0 ? i : getScreenWidthPixels(context);
    }
}
