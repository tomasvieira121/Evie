package com.evie.sidescreen.tiles.recommended;

import android.view.View;
import com.evie.common.data.Lce;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.models.topics.TopicsModel;
import com.evie.models.topics.data.ListTopicsRequestOptions;
import com.evie.models.topics.data.ListTopicsResult;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.personalize.FollowState;
import com.evie.sidescreen.personalize.TopicItemPresenter;
import com.evie.sidescreen.personalize.TopicItemPresenterFactory;
import com.evie.sidescreen.tiles.TilePresenter;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.schema.Thing;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class RecommendedPresenter extends TilePresenter<RecommendedViewHolder> {
    private final int mNumItems;
    private List<TopicItemPresenter> mPresenters;
    private final ScreenInfo mScreenInfo;
    private final TopicItemPresenterFactory mTopicItemPresenterFactory;
    private final TopicsModel mTopicsModel;

    public RecommendedPresenter(SideScreenContentTile sideScreenContentTile, ScreenInfo screenInfo, @Provided TopicsModel topicsModel, @Provided TopicItemPresenterFactory topicItemPresenterFactory, @Provided AnalyticsModel analyticsModel) {
        super(sideScreenContentTile, screenInfo, analyticsModel);
        int iIntValue = 3;
        try {
            Number number = (Number) sideScreenContentTile.getParams().get("num_items");
            if (number != null) {
                iIntValue = number.intValue();
            }
        } catch (Exception e) {
            handleUnanticipatedException(e);
        }
        this.mScreenInfo = screenInfo;
        this.mNumItems = iIntValue;
        this.mTopicsModel = topicsModel;
        this.mTopicItemPresenterFactory = topicItemPresenterFactory;
    }

    @Override // com.evie.sidescreen.tiles.TilePresenter
    protected Map<String, Object> getAnalyticsAttributes() {
        HashMap map = new HashMap();
        for (TopicItemPresenter topicItemPresenter : this.mPresenters) {
            map.put("item_type", "topic");
            map.put("attribute_screen_info", this.mScreenInfo);
            map.put("attribute_topic", topicItemPresenter.getTopic());
            map.put("sub_position", Integer.valueOf(topicItemPresenter.getRecommendedSubPosition()));
        }
        return map;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return RecommendedViewHolder.f368ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public RecommendedViewHolder createViewHolderInstance(View view) {
        return new RecommendedViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(final RecommendedViewHolder recommendedViewHolder) {
        List<TopicItemPresenter> list = this.mPresenters;
        if (list != null) {
            recommendedViewHolder.setItemPresenters(list);
            recommendedViewHolder.hideLoading();
            return;
        }
        recommendedViewHolder.showLoading();
        ListTopicsRequestOptions listTopicsRequestOptions = new ListTopicsRequestOptions();
        listTopicsRequestOptions.setPersonalized();
        listTopicsRequestOptions.setFilterFollow();
        listTopicsRequestOptions.setLimit(this.mNumItems);
        this.mDisposables.add(this.mTopicsModel.listTopics(listTopicsRequestOptions).observeOn(AndroidSchedulers.mainThread()).doOnError(new Consumer() { // from class: com.evie.sidescreen.tiles.recommended.-$$Lambda$RecommendedPresenter$g5xYhE0K0jWQIuCCPSOtpoDkV5Q
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.handleUnanticipatedException((Throwable) obj);
            }
        }).subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.recommended.-$$Lambda$RecommendedPresenter$s_f_Dc68tr7G7lluPKqXH5t9C-g
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                RecommendedPresenter.lambda$onBindViewHolder$0(this.f$0, recommendedViewHolder, (Lce) obj);
            }
        }));
    }

    public static /* synthetic */ void lambda$onBindViewHolder$0(RecommendedPresenter recommendedPresenter, RecommendedViewHolder recommendedViewHolder, Lce lce) throws Exception {
        if (lce.isLoading()) {
            recommendedViewHolder.showLoading();
            return;
        }
        if (lce.isError()) {
            recommendedViewHolder.showError();
            return;
        }
        recommendedViewHolder.hideLoading();
        ListTopicsResult listTopicsResult = (ListTopicsResult) lce.getData();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        if (listTopicsResult != null) {
            int i2 = 0;
            for (Thing thing : listTopicsResult.getTopics()) {
                if (thing instanceof Topic) {
                    Topic topic = (Topic) thing;
                    TopicItemPresenter topicItemPresenterCreate = recommendedPresenter.mTopicItemPresenterFactory.create(topic, FollowState.determineFollowState(topic, listTopicsResult.getFollows(), listTopicsResult.getBlocks()), recommendedPresenter.mScreenInfo);
                    topicItemPresenterCreate.setRecommendedSubPosition(i2);
                    topicItemPresenterCreate.setTile(recommendedPresenter.mTile);
                    arrayList.add(topicItemPresenterCreate);
                    i2++;
                }
            }
        }
        while (i < arrayList.size() - 1) {
            ItemPresenter itemPresenter = (ItemPresenter) arrayList.get(i);
            i++;
            ItemPresenter itemPresenter2 = (ItemPresenter) arrayList.get(i);
            if ((itemPresenter instanceof TopicItemPresenter) && (itemPresenter2 instanceof TopicItemPresenter)) {
                ((TopicItemPresenter) itemPresenter).setShowDivider(true);
            }
        }
        recommendedPresenter.mPresenters = arrayList;
        recommendedViewHolder.setItemPresenters(arrayList);
    }
}
