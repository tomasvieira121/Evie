package com.evie.sidescreen.tiles.articles;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.aol.mobile.sdk.player.Player;
import com.aol.mobile.sdk.player.model.properties.AdProperties;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.exoplayer.VideoFocusHandler;
import com.evie.sidescreen.oathplayer.OathPlayerEvent;
import com.evie.sidescreen.oathplayer.OathPlayerObservable;
import com.evie.sidescreen.relatedcontent.RelatedVideosActivity;
import com.evie.sidescreen.topicdetail.TopicDetailActivity;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.subjects.BehaviorSubject;
import java.util.HashMap;
import java.util.Map;
import org.schema.NewsArticle;
import org.schema.VideoObject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class ArticleTileHeroOathPresenter extends AbstractHeroPresenter<ArticleTileHeroOathViewHolder> {
    private final ActivityStarter mActivityStarter;
    private final NewsArticle mArticle;
    private Observable<Boolean> mAutoPlayObserver;
    private boolean mAutoPlayOn;
    private long mAutoplayDuration;
    private Context mContext;
    private BehaviorSubject<Boolean> mFocusSubject;
    private long mLastKnownVideoDuration;
    private long mLastKnownVideoPosition;
    private long mLastStartPosition;
    private long mOathAdImpressionDuration;
    private long mOathAdLastStartPosition;
    private Disposable mOathPlayerDisposable;
    private OathPlayerObservable mOathPlayerObservable;
    private Player mPlayer;
    private boolean mShouldReportAdImpressionEvent;
    private VideoFocusHandler mVideoFocusHandler;
    private final int mVideoFocusPriority;

    @Override // com.evie.sidescreen.tiles.TilePresenter, com.evie.sidescreen.tiles.TileRowDividerItemDecoration.TileRowDividerContractor
    public boolean shouldShowTopTileDivider() {
        return false;
    }

    public ArticleTileHeroOathPresenter(SideScreenContentTile sideScreenContentTile, NewsArticle newsArticle, ScreenInfo screenInfo, @Provided ActivityStarter activityStarter, @Provided Context context, @Provided AnalyticsModel analyticsModel, @Provided OathPlayerObservable oathPlayerObservable, @Provided VideoFocusHandler videoFocusHandler, @Provided Observable<Boolean> observable) {
        super(sideScreenContentTile, screenInfo, analyticsModel);
        this.mFocusSubject = BehaviorSubject.createDefault(false);
        this.mAutoPlayOn = false;
        this.mAutoplayDuration = -1L;
        this.mLastStartPosition = -1L;
        this.mLastKnownVideoPosition = -1L;
        this.mLastKnownVideoDuration = -1L;
        this.mShouldReportAdImpressionEvent = false;
        this.mOathAdImpressionDuration = 0L;
        this.mOathAdLastStartPosition = 0L;
        this.mContext = context;
        this.mArticle = newsArticle;
        this.mVideoFocusPriority = sideScreenContentTile.getPositionY();
        this.mActivityStarter = activityStarter;
        this.mOathPlayerObservable = oathPlayerObservable;
        this.mVideoFocusHandler = videoFocusHandler;
        this.mAutoPlayObserver = observable;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return ArticleTileHeroOathViewHolder.f353ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public ArticleTileHeroOathViewHolder createViewHolderInstance(View view) {
        return new ArticleTileHeroOathViewHolder(this.mContext, view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.tiles.articles.AbstractHeroPresenter
    public void onBindViewHolder(ArticleTileHeroOathViewHolder articleTileHeroOathViewHolder) {
        super.onBindViewHolder(articleTileHeroOathViewHolder);
        CompositeDisposable compositeDisposable = this.mDisposables;
        Observable<Boolean> observableRegister = this.mVideoFocusHandler.register(this);
        final BehaviorSubject<Boolean> behaviorSubject = this.mFocusSubject;
        behaviorSubject.getClass();
        compositeDisposable.add(observableRegister.subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.articles.-$$Lambda$IjiAOkWhxS-5xOonf6ETUmd2fHU
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                behaviorSubject.onNext((Boolean) obj);
            }
        }));
        showPreviewState();
        this.mDisposables.add(this.mAutoPlayObserver.subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.articles.-$$Lambda$ArticleTileHeroOathPresenter$APYAI8wnZOezhUKurjaQwR2lcLo
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                ArticleTileHeroOathPresenter.lambda$onBindViewHolder$0(this.f$0, (Boolean) obj);
            }
        }));
        this.mDisposables.add(this.mFocusSubject.subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.articles.-$$Lambda$ArticleTileHeroOathPresenter$fJYXRKDPxYJCg3k5tl16sSgV9JM
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                ArticleTileHeroOathPresenter.lambda$onBindViewHolder$1(this.f$0, (Boolean) obj);
            }
        }));
    }

    public static /* synthetic */ void lambda$onBindViewHolder$0(final ArticleTileHeroOathPresenter articleTileHeroOathPresenter, Boolean bool) throws Exception {
        articleTileHeroOathPresenter.mAutoPlayOn = bool.booleanValue();
        if (bool.booleanValue()) {
            if (articleTileHeroOathPresenter.mOathPlayerDisposable == null) {
                ((ArticleTileHeroOathViewHolder) articleTileHeroOathPresenter.mViewHolder).showVideoProgressText(articleTileHeroOathPresenter.mLastKnownVideoDuration - articleTileHeroOathPresenter.mLastKnownVideoPosition);
                articleTileHeroOathPresenter.mOathPlayerDisposable = articleTileHeroOathPresenter.mOathPlayerObservable.observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.articles.-$$Lambda$ArticleTileHeroOathPresenter$WGBVKP94vFA0Ahz5YoArmdXmywc
                    @Override // io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        this.f$0.oathPlayerStateHandler((OathPlayerEvent) obj);
                    }
                }, new Consumer() { // from class: com.evie.sidescreen.tiles.articles.-$$Lambda$ArticleTileHeroOathPresenter$QbkQZgG8DeL5eN6I677xgYS_FtA
                    @Override // io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        this.f$0.handleUnanticipatedException((Throwable) obj);
                    }
                });
                articleTileHeroOathPresenter.mDisposables.add(articleTileHeroOathPresenter.mOathPlayerDisposable);
            }
            articleTileHeroOathPresenter.mOathPlayerObservable.reset();
            return;
        }
        articleTileHeroOathPresenter.mOathPlayerObservable.dispose();
        if (articleTileHeroOathPresenter.mOathPlayerDisposable != null) {
            articleTileHeroOathPresenter.mDisposables.remove(articleTileHeroOathPresenter.mOathPlayerDisposable);
            articleTileHeroOathPresenter.mOathPlayerDisposable = null;
        }
        articleTileHeroOathPresenter.showPreviewState();
    }

    public static /* synthetic */ void lambda$onBindViewHolder$1(ArticleTileHeroOathPresenter articleTileHeroOathPresenter, Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            articleTileHeroOathPresenter.mOathPlayerObservable.play();
        } else {
            articleTileHeroOathPresenter.mOathPlayerObservable.pause();
        }
    }

    private void showPreviewState() {
        VideoObject videoObject = this.mArticle.getVideo().get(0);
        ((ArticleTileHeroOathViewHolder) this.mViewHolder).hideVideo();
        ((ArticleTileHeroOathViewHolder) this.mViewHolder).hideLoading();
        ((ArticleTileHeroOathViewHolder) this.mViewHolder).hideError();
        ((ArticleTileHeroOathViewHolder) this.mViewHolder).showImage(videoObject.getPreviewUrl());
        ((ArticleTileHeroOathViewHolder) this.mViewHolder).hideSnapshot();
        ((ArticleTileHeroOathViewHolder) this.mViewHolder).hideVideoProgressText();
        ((ArticleTileHeroOathViewHolder) this.mViewHolder).showPlayButton();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oathPlayerStateHandler(OathPlayerEvent oathPlayerEvent) {
        if (oathPlayerEvent instanceof OathPlayerEvent.BuilderNotReady) {
            return;
        }
        if (oathPlayerEvent instanceof OathPlayerEvent.BuilderReady) {
            if (this.mAutoPlayOn) {
                ((ArticleTileHeroOathViewHolder) this.mViewHolder).hidePlayButton();
                ((ArticleTileHeroOathViewHolder) this.mViewHolder).showLoading();
                this.mOathPlayerObservable.createPlayer(this.mArticle.getVideo().get(0).getVideoId());
                return;
            }
            return;
        }
        if (oathPlayerEvent instanceof OathPlayerEvent.Ready) {
            ((ArticleTileHeroOathViewHolder) this.mViewHolder).showVideoProgressText(this.mLastKnownVideoDuration - this.mLastKnownVideoPosition);
            this.mPlayer = this.mOathPlayerObservable.getPlayer();
            ((ArticleTileHeroOathViewHolder) this.mViewHolder).showVideo(this.mPlayer);
            if (this.mLastKnownVideoPosition != -1 || this.mLastKnownVideoDuration != -1) {
                this.mOathPlayerObservable.seek(this.mLastKnownVideoPosition, this.mLastKnownVideoDuration);
            }
            if (this.mFocusSubject.getValue().booleanValue() && this.mAutoPlayOn) {
                this.mOathPlayerObservable.play();
                return;
            }
            return;
        }
        if (oathPlayerEvent instanceof OathPlayerEvent.Play) {
            this.mLastStartPosition = this.mOathPlayerObservable.getPosition();
            ((ArticleTileHeroOathViewHolder) this.mViewHolder).hideError();
            ((ArticleTileHeroOathViewHolder) this.mViewHolder).hideLoading();
            ((ArticleTileHeroOathViewHolder) this.mViewHolder).hidePlayButton();
            ((ArticleTileHeroOathViewHolder) this.mViewHolder).hideImage();
            ((ArticleTileHeroOathViewHolder) this.mViewHolder).hideSnapshot();
            return;
        }
        if (oathPlayerEvent instanceof OathPlayerEvent.Progress) {
            OathPlayerEvent.Progress progress = (OathPlayerEvent.Progress) oathPlayerEvent;
            long position = progress.getPosition();
            long duration = progress.getDuration();
            if (position == -1 || duration == -1) {
                ((ArticleTileHeroOathViewHolder) this.mViewHolder).showVideoProgressText(this.mLastKnownVideoDuration - this.mLastKnownVideoPosition);
                return;
            }
            this.mLastKnownVideoPosition = position;
            this.mLastKnownVideoDuration = duration;
            ((ArticleTileHeroOathViewHolder) this.mViewHolder).showVideoProgressText(duration - position);
            return;
        }
        if (oathPlayerEvent instanceof OathPlayerEvent.Pause) {
            long position2 = this.mOathPlayerObservable.getPosition();
            long duration2 = this.mOathPlayerObservable.getDuration();
            this.mLastKnownVideoPosition = position2;
            this.mLastKnownVideoDuration = duration2;
            this.mAutoplayDuration += position2 - this.mLastStartPosition;
            this.mLastStartPosition = position2;
            return;
        }
        if (oathPlayerEvent instanceof OathPlayerEvent.Finished) {
            ((ArticleTileHeroOathViewHolder) this.mViewHolder).showPlayButton();
            OathPlayerObservable oathPlayerObservable = this.mOathPlayerObservable;
            oathPlayerObservable.seek(0L, oathPlayerObservable.getDuration());
            return;
        }
        if (oathPlayerEvent instanceof OathPlayerEvent.Error) {
            ((ArticleTileHeroOathViewHolder) this.mViewHolder).showError();
            Timber.m553e(((OathPlayerEvent.Error) oathPlayerEvent).getMessage(), new Object[0]);
            return;
        }
        if (oathPlayerEvent instanceof OathPlayerEvent.AdProgress) {
            this.mShouldReportAdImpressionEvent = true;
            long j = ((OathPlayerEvent.AdProgress) oathPlayerEvent).position;
            this.mOathAdImpressionDuration += j - this.mOathAdLastStartPosition;
            this.mOathAdLastStartPosition = j;
            return;
        }
        if (oathPlayerEvent instanceof OathPlayerEvent.AdFinished) {
            endAdImpression("oath", ((OathPlayerEvent.AdFinished) oathPlayerEvent).adProps.url);
        } else if (oathPlayerEvent instanceof OathPlayerEvent.AdClick) {
            trackAdTap("oath", this.mOathPlayerObservable.getCurrentAdProperties().url);
        }
    }

    private void trackAdTap(String str, String str2) {
        HashMap map = new HashMap();
        map.put("entity_id", str2);
        map.put("ad_network", str);
        map.put("item_type", "ad");
        map.put("parent_entity_id", this.mArticle.getId());
        map.put("attribute_screen_info", this.mScreenInfo);
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
    }

    private void endAdImpression(String str, String str2) {
        if (shouldReportImpressionEvent() && this.mShouldReportAdImpressionEvent && this.mOathAdImpressionDuration >= 1000) {
            HashMap map = new HashMap();
            map.put("entity_id", str2);
            map.put("ad_network", str);
            map.put("item_type", "ad");
            map.put("parent_entity_id", this.mArticle.getId());
            map.put("screen_position_start", 0);
            map.put("duration", Long.valueOf(this.mOathAdImpressionDuration));
            this.mAnalyticsModel.trackEvent("ev_ss_article_impression", map);
            this.mOathAdLastStartPosition = 0L;
            this.mOathAdImpressionDuration = 0L;
            this.mShouldReportAdImpressionEvent = false;
        }
    }

    @Override // com.evie.sidescreen.tiles.TilePresenter, com.evie.sidescreen.mvp.ItemPresenter
    public void onVisibilityChanged(boolean z) {
        super.onVisibilityChanged(z);
        if (z) {
            this.mVideoFocusHandler.requestFocus(this.mVideoFocusPriority, this);
            return;
        }
        this.mVideoFocusHandler.unrequestFocus(this.mVideoFocusPriority, this);
        AdProperties currentAdProperties = this.mOathPlayerObservable.getCurrentAdProperties();
        if (currentAdProperties != null) {
            endAdImpression("oath", currentAdProperties.url);
        }
    }

    @Override // com.evie.sidescreen.tiles.TilePresenter
    protected Map<String, Object> getAnalyticsAttributes() {
        HashMap map = new HashMap();
        map.put("item_type", "trending_video");
        map.put("attribute_news_article", this.mArticle);
        map.put("autoplay_duration", Long.valueOf(this.mAutoplayDuration));
        map.put("video_length", Long.valueOf(this.mOathPlayerObservable.getDuration()));
        return map;
    }

    @Override // com.evie.sidescreen.tiles.articles.AbstractHeroPresenter
    public void onMediaClick(View view) {
        super.onMediaClick(view);
        trackTap("trending_video");
        if (view != null) {
            Context context = view.getContext();
            if ((context instanceof TopicDetailActivity) && ((TopicDetailActivity) context).setArticleResult(this.mArticle)) {
                return;
            }
        }
        Intent localActivityIntent = this.mActivityStarter.getLocalActivityIntent(RelatedVideosActivity.class);
        localActivityIntent.putExtra(RelatedVideosActivity.EXTRA_ARTICLE, this.mArticle);
        try {
            this.mPlayer.pause();
            localActivityIntent.putExtra(RelatedVideosActivity.EXTRA_START_POSITION, this.mOathPlayerObservable.getPosition());
            localActivityIntent.putExtra(RelatedVideosActivity.EXTRA_START_DURATION, this.mOathPlayerObservable.getDuration());
        } catch (NullPointerException unused) {
        }
        this.mActivityStarter.startActivity(view, localActivityIntent, true);
    }

    protected void trackTap(String str) {
        HashMap map = new HashMap();
        map.put("item_type", str);
        map.put("attribute_news_article", this.mArticle);
        map.put("attribute_content_tile", this.mTile);
        map.put("attribute_screen_info", this.mScreenInfo);
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected void onUnbindViewHolder() {
        ((ArticleTileHeroOathViewHolder) this.mViewHolder).showVideo(null);
        super.onUnbindViewHolder();
        this.mOathPlayerObservable.reset();
    }
}
