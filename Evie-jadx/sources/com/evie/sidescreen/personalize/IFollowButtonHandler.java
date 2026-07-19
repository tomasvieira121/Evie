package com.evie.sidescreen.personalize;

import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import io.reactivex.disposables.CompositeDisposable;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
public abstract class IFollowButtonHandler implements FollowButtonViewHolder.OnFollowButtonClickListener {
    protected final CompositeDisposable mDisposables;
    protected FollowState mFollowState;
    protected boolean mIsFromRecommended;
    protected int mRecommendedSubPosition;
    protected SideScreenContentTile mTile = null;

    public IFollowButtonHandler(FollowState followState, CompositeDisposable compositeDisposable) {
        this.mFollowState = followState;
        this.mDisposables = compositeDisposable;
    }

    public void bindFollowButtonViewHolder(FollowButtonViewHolder followButtonViewHolder, Topic topic, ScreenInfo screenInfo) {
        followButtonViewHolder.setTopic(topic);
        followButtonViewHolder.setScreenInfo(screenInfo);
        followButtonViewHolder.setState(this.mFollowState);
    }

    public void setState(FollowState followState) {
        this.mFollowState = followState;
    }

    public void setRecommendedSubPosition(int i) {
        this.mIsFromRecommended = true;
        this.mRecommendedSubPosition = i;
    }

    public void setTile(SideScreenContentTile sideScreenContentTile) {
        this.mTile = sideScreenContentTile;
    }
}
