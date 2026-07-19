package com.evie.sidescreen.topicdetail;

import android.content.Context;
import android.view.View;
import com.evie.common.data.Lce;
import com.evie.models.topics.TopicsModel;
import com.evie.models.topics.data.TopicDetailsResult;
import com.evie.models.topics.data.TopicId;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.personalize.FollowState;
import com.evie.sidescreen.tiles.TopLevelTilePresenterFactory;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class TopicDetailPresenter extends ItemPresenter<TopicDetailViewHolder> {
    private final Context mContext;
    private final TopicDetailHeaderPresenter.OnBackListener mOnBackListener;
    private final TopLevelTilePresenterFactory mTopLevelTilePresenterFactory;
    private final TopicDetailHeaderPresenterFactory mTopicDetailHeaderPresenterFactory;
    private final String mTopicId;
    private final TopicsModel mTopicsModel;

    public TopicDetailPresenter(String str, TopicDetailHeaderPresenter.OnBackListener onBackListener, @Provided Context context, @Provided TopicsModel topicsModel, @Provided TopicDetailHeaderPresenterFactory topicDetailHeaderPresenterFactory, @Provided TopLevelTilePresenterFactory topLevelTilePresenterFactory) {
        this.mTopicId = str;
        this.mOnBackListener = onBackListener;
        this.mContext = context;
        this.mTopicsModel = topicsModel;
        this.mTopicDetailHeaderPresenterFactory = topicDetailHeaderPresenterFactory;
        this.mTopLevelTilePresenterFactory = topLevelTilePresenterFactory;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        throw new UnsupportedOperationException("not used");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public TopicDetailViewHolder createViewHolderInstance(View view) {
        throw new UnsupportedOperationException("not used");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(final TopicDetailViewHolder topicDetailViewHolder) {
        topicDetailViewHolder.showLoading();
        this.mDisposables.clear();
        this.mDisposables.add(this.mTopicsModel.getTopicDetails(this.mTopicId).observeOn(AndroidSchedulers.mainThread()).doOnError(new Consumer() { // from class: com.evie.sidescreen.topicdetail.-$$Lambda$TopicDetailPresenter$h2Ma9axneHz0WYvDE3FVIojesJ4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.handleUnanticipatedException((Throwable) obj);
            }
        }).subscribe(new Consumer() { // from class: com.evie.sidescreen.topicdetail.-$$Lambda$TopicDetailPresenter$dXMuMzs_noBP4kNOJkeRbozFO9o
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                TopicDetailPresenter.lambda$onBindViewHolder$0(this.f$0, topicDetailViewHolder, (Lce) obj);
            }
        }));
    }

    public static /* synthetic */ void lambda$onBindViewHolder$0(TopicDetailPresenter topicDetailPresenter, TopicDetailViewHolder topicDetailViewHolder, Lce lce) throws Exception {
        if (lce.isLoading()) {
            topicDetailViewHolder.showLoading();
            return;
        }
        if (lce.isError()) {
            topicDetailViewHolder.showError();
            return;
        }
        topicDetailViewHolder.hideLoading();
        TopicDetailsResult topicDetailsResult = (TopicDetailsResult) lce.getData();
        if (topicDetailsResult == null || topicDetailsResult.getTopics() == null || topicDetailsResult.getTopics().size() != 1 || !(topicDetailsResult.getTopics().get(0) instanceof Topic)) {
            topicDetailViewHolder.showError();
            return;
        }
        Topic topic = (Topic) topicDetailsResult.getTopics().get(0);
        TopicId topicId = new TopicId(topic.getId());
        FollowState followStateDetermineFollowState = FollowState.determineFollowState(topicDetailsResult.getFollows().contains(topicId), topicDetailsResult.getBlocks().contains(topicId));
        ArrayList arrayList = new ArrayList();
        ScreenInfo screenInfo = new ScreenInfo("topic_view", topic.getId(), topic.getType());
        arrayList.add(topicDetailPresenter.mTopicDetailHeaderPresenterFactory.create(topic, followStateDetermineFollowState, topicDetailPresenter.mOnBackListener, screenInfo));
        arrayList.addAll(topicDetailPresenter.mTopLevelTilePresenterFactory.processTiles(topicDetailPresenter.mContext, topicDetailsResult.getObjects(), topicDetailsResult.getTiles(), 0, null, screenInfo));
        topicDetailViewHolder.setItemPresenters(arrayList);
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected void onUnbindViewHolder() {
        ((TopicDetailViewHolder) this.mViewHolder).setItemPresenters(null);
    }
}
