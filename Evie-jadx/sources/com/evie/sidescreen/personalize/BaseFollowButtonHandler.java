package com.evie.sidescreen.personalize;

import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import io.reactivex.disposables.CompositeDisposable;
import java.util.HashMap;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseFollowButtonHandler extends IFollowButtonHandler implements FollowButtonViewHolder.OnFollowButtonClickListener {
    private final AnalyticsModel mAnalyticsModel;

    protected abstract void onHandleFollow(FollowButtonViewHolder followButtonViewHolder, Topic topic);

    protected abstract void onHandleUnblock(FollowButtonViewHolder followButtonViewHolder, Topic topic);

    protected abstract void onHandleUnfollow(FollowButtonViewHolder followButtonViewHolder, Topic topic);

    public BaseFollowButtonHandler(FollowState followState, CompositeDisposable compositeDisposable, AnalyticsModel analyticsModel) {
        super(followState, compositeDisposable);
        this.mAnalyticsModel = analyticsModel;
    }

    private void handleFollow(FollowButtonViewHolder followButtonViewHolder, Topic topic) {
        setState(FollowState.FOLLOWING);
        followButtonViewHolder.setState(FollowState.FOLLOWING);
        onHandleFollow(followButtonViewHolder, topic);
    }

    private void handleUnfollow(FollowButtonViewHolder followButtonViewHolder, Topic topic) {
        setState(FollowState.FOLLOW);
        followButtonViewHolder.setState(FollowState.FOLLOW);
        onHandleUnfollow(followButtonViewHolder, topic);
    }

    private void handleUnblock(FollowButtonViewHolder followButtonViewHolder, Topic topic) {
        setState(FollowState.FOLLOW);
        followButtonViewHolder.setState(FollowState.FOLLOW);
        onHandleUnblock(followButtonViewHolder, topic);
    }

    @Override // com.evie.sidescreen.personalize.FollowButtonViewHolder.OnFollowButtonClickListener
    public final void onFollowButtonClick(FollowButtonViewHolder followButtonViewHolder, Topic topic, ScreenInfo screenInfo) {
        HashMap map = new HashMap();
        map.put("item_type", "follow");
        map.put("attribute_topic", topic);
        map.put("attribute_screen_info", screenInfo);
        if (this.mIsFromRecommended) {
            map.put("sub_position", Integer.valueOf(this.mRecommendedSubPosition));
            map.put("attribute_content_tile", this.mTile);
        }
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
        handleFollow(followButtonViewHolder, topic);
    }

    @Override // com.evie.sidescreen.personalize.FollowButtonViewHolder.OnFollowButtonClickListener
    public final void onFollowingButtonClick(FollowButtonViewHolder followButtonViewHolder, Topic topic, ScreenInfo screenInfo) {
        HashMap map = new HashMap();
        map.put("item_type", "unfollow");
        map.put("attribute_topic", topic);
        map.put("attribute_screen_info", screenInfo);
        if (this.mIsFromRecommended) {
            map.put("sub_position", Integer.valueOf(this.mRecommendedSubPosition));
            map.put("attribute_content_tile", this.mTile);
        }
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
        handleUnfollow(followButtonViewHolder, topic);
    }

    @Override // com.evie.sidescreen.personalize.FollowButtonViewHolder.OnFollowButtonClickListener
    public final void onBlockedButtonClick(FollowButtonViewHolder followButtonViewHolder, Topic topic, ScreenInfo screenInfo) {
        HashMap map = new HashMap();
        map.put("item_type", "unblock");
        map.put("attribute_topic", topic);
        map.put("attribute_screen_info", screenInfo);
        if (this.mIsFromRecommended) {
            map.put("sub_position", Integer.valueOf(this.mRecommendedSubPosition));
            map.put("attribute_content_tile", this.mTile);
        }
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
        handleUnblock(followButtonViewHolder, topic);
    }
}
