package com.evie.sidescreen.personalize;

import com.evie.common.data.Lce;
import com.evie.models.topics.TopicsModel;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class FollowButtonHandler extends BaseFollowButtonHandler {
    private final TopicsModel mTopicsModel;

    public FollowButtonHandler(FollowState followState, CompositeDisposable compositeDisposable, @Provided TopicsModel topicsModel, @Provided AnalyticsModel analyticsModel) {
        super(followState, compositeDisposable, analyticsModel);
        this.mTopicsModel = topicsModel;
    }

    @Override // com.evie.sidescreen.personalize.BaseFollowButtonHandler
    protected void onHandleFollow(final FollowButtonViewHolder followButtonViewHolder, Topic topic) {
        this.mDisposables.add(this.mTopicsModel.followTopic(topic).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.personalize.-$$Lambda$FollowButtonHandler$gWNLE-l9uWHtAocXokdf06LEtxE
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                FollowButtonHandler.lambda$onHandleFollow$0(this.f$0, followButtonViewHolder, (Lce) obj);
            }
        }));
    }

    public static /* synthetic */ void lambda$onHandleFollow$0(FollowButtonHandler followButtonHandler, FollowButtonViewHolder followButtonViewHolder, Lce lce) throws Exception {
        if (lce.isError()) {
            followButtonHandler.setState(FollowState.FOLLOW);
            followButtonViewHolder.setState(FollowState.FOLLOW);
            followButtonViewHolder.showError();
        }
    }

    @Override // com.evie.sidescreen.personalize.BaseFollowButtonHandler
    protected void onHandleUnfollow(final FollowButtonViewHolder followButtonViewHolder, Topic topic) {
        this.mDisposables.add(this.mTopicsModel.unfollowTopic(topic).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.personalize.-$$Lambda$FollowButtonHandler$_YkJTOA6lDkEVzpJnFbl3pfTxWY
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                FollowButtonHandler.lambda$onHandleUnfollow$1(this.f$0, followButtonViewHolder, (Lce) obj);
            }
        }));
    }

    public static /* synthetic */ void lambda$onHandleUnfollow$1(FollowButtonHandler followButtonHandler, FollowButtonViewHolder followButtonViewHolder, Lce lce) throws Exception {
        if (lce.isError()) {
            followButtonHandler.setState(FollowState.FOLLOWING);
            followButtonViewHolder.setState(FollowState.FOLLOWING);
            followButtonViewHolder.showError();
        }
    }

    @Override // com.evie.sidescreen.personalize.BaseFollowButtonHandler
    protected void onHandleUnblock(final FollowButtonViewHolder followButtonViewHolder, Topic topic) {
        this.mDisposables.add(this.mTopicsModel.unblockTopic(topic).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.personalize.-$$Lambda$FollowButtonHandler$ToXBkoEBt7JcnjsL7umuIi4oJpM
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                FollowButtonHandler.lambda$onHandleUnblock$2(this.f$0, followButtonViewHolder, (Lce) obj);
            }
        }));
    }

    public static /* synthetic */ void lambda$onHandleUnblock$2(FollowButtonHandler followButtonHandler, FollowButtonViewHolder followButtonViewHolder, Lce lce) throws Exception {
        if (lce.isError()) {
            followButtonHandler.setState(FollowState.BLOCKED);
            followButtonViewHolder.setState(FollowState.BLOCKED);
            followButtonViewHolder.showError();
        }
    }
}
