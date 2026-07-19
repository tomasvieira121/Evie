package com.evie.sidescreen.personalize;

import android.view.View;
import com.evie.common.data.Lce;
import com.evie.models.topics.TopicsModel;
import com.evie.models.topics.data.ListTopicsRequestOptions;
import com.evie.models.topics.data.ListTopicsResult;
import com.evie.models.topics.data.TopicId;
import com.evie.sidescreen.R;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import io.reactivex.Single;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.schema.Thing;
import org.schema.evie.topics.Topic;
import org.schema.evie.topics.TopicEntity;
import org.schema.evie.topics.TopicMappedCategory;
import org.schema.evie.topics.TopicPublisher;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class TopicsListPresenter extends ItemPresenter<TopicsListViewHolder> {
    protected final TopicItemPresenter.FollowStateChangedListener mFollowStateChangedListener;
    private ListTopicsRequestOptions mOptions;
    protected final ScreenInfo mScreenInfo;
    protected final TopicItemPresenterFactory mTopicItemPresenterFactory;
    protected final TopicsModel mTopicsModel;
    private final boolean mUseSections;

    protected List<ItemPresenter> onSetItemPresenters(List<ItemPresenter> list) {
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    enum SectionType {
        TOPIC_CATEGORY(TopicMappedCategory.class, R.string.ss_topics_section_category),
        TOPIC_PUBLISHER(TopicPublisher.class, R.string.ss_topics_section_publisher),
        TOPIC_ENTITY(TopicEntity.class, R.string.ss_topics_section_entity);

        Class mKlazz;
        int mTitleResId;

        SectionType(Class cls, int i) {
            this.mKlazz = cls;
            this.mTitleResId = i;
        }

        static SectionType forClass(Class cls) {
            for (SectionType sectionType : values()) {
                if (sectionType.mKlazz.equals(cls)) {
                    return sectionType;
                }
            }
            return null;
        }
    }

    public TopicsListPresenter(ListTopicsRequestOptions listTopicsRequestOptions, boolean z, ScreenInfo screenInfo, @Provided TopicsModel topicsModel, @Provided TopicItemPresenterFactory topicItemPresenterFactory, TopicItemPresenter.FollowStateChangedListener followStateChangedListener) {
        this.mOptions = listTopicsRequestOptions;
        this.mUseSections = z;
        this.mScreenInfo = screenInfo;
        this.mTopicsModel = topicsModel;
        this.mTopicItemPresenterFactory = topicItemPresenterFactory;
        this.mFollowStateChangedListener = followStateChangedListener;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        throw new UnsupportedOperationException("not used");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public TopicsListViewHolder createViewHolderInstance(View view) {
        throw new UnsupportedOperationException("not used");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(TopicsListViewHolder topicsListViewHolder) {
        topicsListViewHolder.showLoading();
    }

    public void clear() {
        this.mDisposables.clear();
        if (this.mViewHolder != 0) {
            ((TopicsListViewHolder) this.mViewHolder).setItemPresenters(onSetItemPresenters(null));
            ((TopicsListViewHolder) this.mViewHolder).showLoading();
        }
    }

    public void load() {
        if (this.mViewHolder != 0) {
            load((TopicsListViewHolder) this.mViewHolder);
        }
    }

    public void setOptions(ListTopicsRequestOptions listTopicsRequestOptions) {
        clear();
        this.mOptions = listTopicsRequestOptions;
        load();
    }

    private void load(final TopicsListViewHolder topicsListViewHolder) {
        this.mDisposables.clear();
        this.mDisposables.add(onLoad().toObservable().flatMap(new Function() { // from class: com.evie.sidescreen.personalize.-$$Lambda$TopicsListPresenter$PbhN1KnINH932KkHUVMQvaL_ofg
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                TopicsListPresenter topicsListPresenter = this.f$0;
                return topicsListPresenter.mTopicsModel.listTopics(topicsListPresenter.mOptions);
            }
        }).observeOn(AndroidSchedulers.mainThread()).doOnError(new Consumer() { // from class: com.evie.sidescreen.personalize.-$$Lambda$TopicsListPresenter$XuZRAm9UEajtHJicGzl5uWW9rX4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.handleUnanticipatedException((Throwable) obj);
            }
        }).subscribe(new Consumer() { // from class: com.evie.sidescreen.personalize.-$$Lambda$TopicsListPresenter$JhELOVeO0BouNIaiC_hdsJfgt3o
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                TopicsListPresenter.lambda$load$1(this.f$0, topicsListViewHolder, (Lce) obj);
            }
        }));
    }

    public static /* synthetic */ void lambda$load$1(TopicsListPresenter topicsListPresenter, TopicsListViewHolder topicsListViewHolder, Lce lce) throws Exception {
        SectionType sectionTypeForClass;
        if (lce.isLoading()) {
            topicsListViewHolder.showLoading();
            return;
        }
        if (lce.isError()) {
            topicsListViewHolder.showError();
            return;
        }
        ListTopicsResult listTopicsResult = (ListTopicsResult) lce.getData();
        HashMap map = new HashMap();
        for (SectionType sectionType : SectionType.values()) {
            map.put(sectionType, new ArrayList());
        }
        if (listTopicsResult != null) {
            HashSet hashSet = new HashSet();
            if (listTopicsResult.getFollows() != null) {
                for (TopicId topicId : listTopicsResult.getFollows()) {
                    if (topicId != null && topicId.getId() != null) {
                        hashSet.add(topicId.getId());
                    }
                }
            }
            HashSet hashSet2 = new HashSet();
            if (listTopicsResult.getBlocks() != null) {
                for (TopicId topicId2 : listTopicsResult.getBlocks()) {
                    if (topicId2 != null && topicId2.getId() != null) {
                        hashSet2.add(topicId2.getId());
                    }
                }
            }
            List<Thing> topics = listTopicsResult.getTopics();
            if (topics != null) {
                for (Thing thing : topics) {
                    if (thing instanceof Topic) {
                        SectionType sectionType2 = SectionType.TOPIC_ENTITY;
                        if (topicsListPresenter.mUseSections && (sectionTypeForClass = SectionType.forClass(thing.getClass())) != null) {
                            sectionType2 = sectionTypeForClass;
                        }
                        List<TopicItemPresenter> list = map.get(sectionType2);
                        Topic topic = (Topic) thing;
                        boolean zContains = hashSet.contains(topic.getId());
                        boolean zContains2 = hashSet2.contains(topic.getId());
                        FollowState followState = FollowState.FOLLOW;
                        if (zContains) {
                            followState = FollowState.FOLLOWING;
                        } else if (zContains2) {
                            followState = FollowState.BLOCKED;
                        }
                        TopicItemPresenter topicItemPresenterCreate = topicsListPresenter.mTopicItemPresenterFactory.create(topic, followState, topicsListPresenter.mScreenInfo);
                        topicItemPresenterCreate.setFollowStateChangedListener(topicsListPresenter.mFollowStateChangedListener);
                        list.add(topicItemPresenterCreate);
                    }
                }
            }
        }
        List<ItemPresenter> listProcessSections = topicsListPresenter.processSections(map);
        topicsListViewHolder.hideLoading();
        topicsListViewHolder.setItemPresenters(topicsListPresenter.onSetItemPresenters(listProcessSections));
    }

    protected Single<Object> onLoad() {
        return Single.just(new Object());
    }

    private List<ItemPresenter> processSections(Map<SectionType, List<TopicItemPresenter>> map) {
        ArrayList arrayList = new ArrayList();
        if (this.mUseSections) {
            boolean z = true;
            for (SectionType sectionType : SectionType.values()) {
                List<TopicItemPresenter> list = map.get(sectionType);
                if (list != null && !list.isEmpty()) {
                    processDividers(list);
                    arrayList.add(new TopicHeaderItemPresenter(sectionType.mTitleResId, z));
                    arrayList.addAll(list);
                    z = false;
                }
            }
        } else {
            ArrayList arrayList2 = new ArrayList();
            for (SectionType sectionType2 : SectionType.values()) {
                List<TopicItemPresenter> list2 = map.get(sectionType2);
                if (list2 != null && !list2.isEmpty()) {
                    arrayList2.addAll(list2);
                }
            }
            processDividers(arrayList2);
            arrayList.addAll(arrayList2);
        }
        return arrayList;
    }

    protected void processDividers(List<TopicItemPresenter> list) {
        for (int i = 0; i < list.size() - 1; i++) {
            list.get(i).setShowDivider(true);
        }
    }
}
