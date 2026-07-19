package com.evie.sidescreen.personalize;

import android.content.Intent;
import android.view.View;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.R;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.relatedcontent.RelatedVideosActivity;
import com.evie.sidescreen.tiles.TileRowDividerItemDecoration;
import com.evie.sidescreen.topicdetail.TopicDetailActivity;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import java.util.HashMap;
import org.schema.MediaSelector;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class TopicItemPresenter extends ItemPresenter<TopicItemViewHolder> implements TileRowDividerItemDecoration.TileRowDividerContractor {
    public static final int REQUEST_CODE_TOPIC_FOLLOWING_STATUS = TopicItemPresenter.class.hashCode() & 65535;
    private final ActivityStarter mActivityStarter;
    private final AnalyticsModel mAnalyticsModel;
    private final IFollowButtonHandler mFollowButtonHandler;
    private FollowStateChangedListener mFollowStateChangedListener;
    private boolean mIsFromRecommended;
    private final boolean mOnboardingMode;
    private int mRecommendedSubPosition;
    private final ScreenInfo mScreenInfo;
    private boolean mShowDivider;
    private final Topic mTopic;
    private SideScreenContentTile mTile = null;
    private boolean mDarkTheme = false;
    private boolean mShouldShowTileRowDividers = false;

    public interface FollowStateChangedListener {
        void onFollowStateChanged(TopicItemPresenter topicItemPresenter);
    }

    public TopicItemPresenter(Topic topic, FollowState followState, ScreenInfo screenInfo, @Provided boolean z, @Provided ActivityStarter activityStarter, @Provided IFollowButtonHandlerFactory iFollowButtonHandlerFactory, @Provided AnalyticsModel analyticsModel) {
        this.mTopic = topic;
        this.mActivityStarter = activityStarter;
        this.mScreenInfo = screenInfo;
        this.mOnboardingMode = z;
        this.mFollowButtonHandler = iFollowButtonHandlerFactory.create(followState, this.mDisposables);
        this.mAnalyticsModel = analyticsModel;
        this.mFollowButtonHandler.setState(followState);
    }

    public void setRecommendedSubPosition(int i) {
        this.mIsFromRecommended = true;
        this.mRecommendedSubPosition = i;
        this.mFollowButtonHandler.setRecommendedSubPosition(i);
    }

    public void setTile(SideScreenContentTile sideScreenContentTile) {
        this.mTile = sideScreenContentTile;
        this.mFollowButtonHandler.setTile(sideScreenContentTile);
    }

    public void setFollowState(FollowState followState) {
        if (this.mViewHolder != 0) {
            ((TopicItemViewHolder) this.mViewHolder).getFollowButtonViewHolder().setState(followState);
        }
        this.mFollowButtonHandler.setState(followState);
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return TopicItemViewHolder.f336ID;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public int getLayoutResId() {
        return this.mDarkTheme ? R.layout.ss_topic_list_item_dark : R.layout.ss_topic_list_item;
    }

    public Topic getTopic() {
        return this.mTopic;
    }

    public int getRecommendedSubPosition() {
        return this.mRecommendedSubPosition;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public TopicItemViewHolder createViewHolderInstance(View view) {
        return new TopicItemViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(TopicItemViewHolder topicItemViewHolder) {
        if (this.mDarkTheme) {
            topicItemViewHolder.setDarkTheme();
        } else if (this.mShowDivider) {
            topicItemViewHolder.showDivider();
        } else {
            topicItemViewHolder.hideDivider();
        }
        if (this.mOnboardingMode) {
            topicItemViewHolder.setCheckFollowStyle();
        } else {
            topicItemViewHolder.setTextFollowStyle();
        }
        if (this.mTopic.getImages() != null) {
            topicItemViewHolder.setIconUrl(MediaSelector.selectMediaUrl(this.mTopic.getImages(), topicItemViewHolder.getIconWidth(), 1.0f));
        }
        topicItemViewHolder.setLabel(this.mTopic.getName());
        this.mFollowButtonHandler.bindFollowButtonViewHolder(topicItemViewHolder.getFollowButtonViewHolder(), this.mTopic, this.mScreenInfo);
    }

    public void onItemClick() {
        onItemClick(this.mTopic, this.mScreenInfo, this.mRecommendedSubPosition, this.mTile);
    }

    private void onItemClick(Topic topic, ScreenInfo screenInfo, int i, SideScreenContentTile sideScreenContentTile) {
        HashMap map = new HashMap();
        map.put("item_type", "topic");
        map.put("attribute_topic", topic);
        map.put("attribute_screen_info", screenInfo);
        map.put("sub_position", Integer.valueOf(i));
        map.put("attribute_content_tile", sideScreenContentTile);
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
        startTopicDetailActivity();
    }

    private void startTopicDetailActivity() {
        boolean z;
        try {
            z = ((TopicItemViewHolder) this.mViewHolder).itemView.getContext() instanceof RelatedVideosActivity;
        } catch (Exception unused) {
            z = false;
        }
        Intent localActivityIntent = this.mActivityStarter.getLocalActivityIntent(TopicDetailActivity.class);
        localActivityIntent.putExtra(TopicDetailActivity.INTENT_KEY_TOPIC_ID, this.mTopic.getId());
        localActivityIntent.putExtra(TopicDetailActivity.INTENT_FROM_RELATED_VIDEOS, z);
        this.mActivityStarter.startActivityForResult(null, localActivityIntent, REQUEST_CODE_TOPIC_FOLLOWING_STATUS, false);
    }

    public void setShowDivider(boolean z) {
        this.mShowDivider = z;
    }

    public IFollowButtonHandler getFollowButtonHandler() {
        return this.mFollowButtonHandler;
    }

    public void followStateChanged() {
        FollowStateChangedListener followStateChangedListener = this.mFollowStateChangedListener;
        if (followStateChangedListener != null) {
            followStateChangedListener.onFollowStateChanged(this);
        }
    }

    public void setFollowStateChangedListener(FollowStateChangedListener followStateChangedListener) {
        this.mFollowStateChangedListener = followStateChangedListener;
    }

    @Override // com.evie.sidescreen.tiles.TileRowDividerItemDecoration.TileRowDividerContractor
    public boolean shouldShowTopTileDivider() {
        return this.mShouldShowTileRowDividers;
    }

    @Override // com.evie.sidescreen.tiles.TileRowDividerItemDecoration.TileRowDividerContractor
    public boolean shouldShowBottomTileDivider() {
        return this.mShouldShowTileRowDividers;
    }

    public void setShouldShowTileRowDividers(boolean z) {
        this.mShouldShowTileRowDividers = z;
    }

    public void setDarkTheme() {
        this.mDarkTheme = true;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected void onUnbindViewHolder() {
        ((TopicItemViewHolder) this.mViewHolder).clearAll();
        super.onUnbindViewHolder();
    }
}
