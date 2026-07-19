package com.evie.sidescreen.personalize.onboarding;

import android.text.TextUtils;
import com.evie.common.data.Lce;
import com.evie.models.topics.TopicsModel;
import com.evie.models.topics.data.ListTopicsRequestOptions;
import com.evie.models.topics.data.ListTopicsResult;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.R;
import com.evie.sidescreen.SideScreenSharedPreferencesModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.personalize.FollowState;
import com.evie.sidescreen.personalize.TopicHeaderItemPresenter;
import com.evie.sidescreen.personalize.TopicItemPresenter;
import com.evie.sidescreen.personalize.TopicItemPresenterFactory;
import com.evie.sidescreen.personalize.TopicsListPresenter;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import io.reactivex.Single;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.subjects.SingleSubject;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.schema.C1483Id;
import org.schema.Thing;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class TopicsOnboardingPresenter extends TopicsListPresenter {
    private boolean mLoadedSuggested;
    private final ArrayList<ItemPresenter> mOnboardingItemPresenters;
    private final SideScreenSharedPreferencesModel mPreferencesModel;
    private final ArrayList<TopicItemPresenter> mSuggestedItemPresenters;

    public TopicsOnboardingPresenter(ListTopicsRequestOptions listTopicsRequestOptions, boolean z, TopicItemPresenter.FollowStateChangedListener followStateChangedListener, ScreenInfo screenInfo, @Provided SideScreenSharedPreferencesModel sideScreenSharedPreferencesModel, @Provided ActivityStarter activityStarter, @Provided TopicsModel topicsModel, @Provided TopicItemPresenterFactory topicItemPresenterFactory) {
        super(listTopicsRequestOptions, z, screenInfo, topicsModel, topicItemPresenterFactory, followStateChangedListener);
        this.mOnboardingItemPresenters = new ArrayList<>();
        this.mLoadedSuggested = false;
        this.mSuggestedItemPresenters = new ArrayList<>();
        this.mPreferencesModel = sideScreenSharedPreferencesModel;
        this.mOnboardingItemPresenters.add(new TopicsOnboardingHeaderItemPresenter(activityStarter));
    }

    @Override // com.evie.sidescreen.personalize.TopicsListPresenter
    protected Single<Object> onLoad() {
        final SingleSubject singleSubjectCreate = SingleSubject.create();
        if (!this.mLoadedSuggested) {
            this.mLoadedSuggested = true;
            ListTopicsRequestOptions listTopicsRequestOptions = new ListTopicsRequestOptions();
            listTopicsRequestOptions.setSuggested();
            listTopicsRequestOptions.setLimit(5);
            this.mDisposables.add(this.mTopicsModel.listTopics(listTopicsRequestOptions).observeOn(AndroidSchedulers.mainThread()).doOnError(new Consumer() { // from class: com.evie.sidescreen.personalize.onboarding.-$$Lambda$TopicsOnboardingPresenter$1BE9TnQsdOA8UixGhyfit1eyE2k
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    this.f$0.handleUnanticipatedException((Throwable) obj);
                }
            }).subscribe(new Consumer() { // from class: com.evie.sidescreen.personalize.onboarding.-$$Lambda$TopicsOnboardingPresenter$IRcuz9WGNzfTrPC34w35zRvIPgU
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    TopicsOnboardingPresenter.lambda$onLoad$0(this.f$0, singleSubjectCreate, (Lce) obj);
                }
            }));
        } else {
            singleSubjectCreate.onSuccess(new Object());
        }
        return singleSubjectCreate;
    }

    public static /* synthetic */ void lambda$onLoad$0(TopicsOnboardingPresenter topicsOnboardingPresenter, SingleSubject singleSubject, Lce lce) throws Exception {
        List<Thing> topics;
        if (lce.isError()) {
            singleSubject.onSuccess(new Object());
            return;
        }
        ListTopicsResult listTopicsResult = (ListTopicsResult) lce.getData();
        ArrayList arrayList = new ArrayList();
        if (listTopicsResult != null && (topics = listTopicsResult.getTopics()) != null) {
            for (Thing thing : topics) {
                if (thing instanceof Topic) {
                    Topic topic = (Topic) thing;
                    topicsOnboardingPresenter.mPreferencesModel.addToPersonalizeOnboardingList(topic);
                    TopicItemPresenter topicItemPresenterCreate = topicsOnboardingPresenter.mTopicItemPresenterFactory.create(topic, FollowState.FOLLOWING, topicsOnboardingPresenter.mScreenInfo);
                    topicItemPresenterCreate.setFollowStateChangedListener(topicsOnboardingPresenter.mFollowStateChangedListener);
                    arrayList.add(topicItemPresenterCreate);
                }
            }
        }
        topicsOnboardingPresenter.mSuggestedItemPresenters.clear();
        topicsOnboardingPresenter.mSuggestedItemPresenters.addAll(arrayList);
        singleSubject.onSuccess(new Object());
    }

    @Override // com.evie.sidescreen.personalize.TopicsListPresenter
    protected List<ItemPresenter> onSetItemPresenters(List<ItemPresenter> list) {
        boolean z;
        if (list == null) {
            list = Collections.emptyList();
        }
        ArrayList<ItemPresenter> arrayList = new ArrayList(list);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(this.mOnboardingItemPresenters);
        for (TopicItemPresenter topicItemPresenter : this.mSuggestedItemPresenters) {
            ListIterator listIterator = arrayList.listIterator();
            while (listIterator.hasNext()) {
                if (checkIds(topicItemPresenter, (ItemPresenter) listIterator.next())) {
                    listIterator.remove();
                }
            }
        }
        if (this.mSuggestedItemPresenters.size() > 0) {
            processDividers(this.mSuggestedItemPresenters);
            Runnable runnable = new Runnable() { // from class: com.evie.sidescreen.personalize.onboarding.-$$Lambda$TopicsOnboardingPresenter$jo-3HyjxYgl6q8iJ8fcCdjfehCc
                @Override // java.lang.Runnable
                public final void run() {
                    TopicsOnboardingPresenter.lambda$onSetItemPresenters$1(this.f$0);
                }
            };
            arrayList.addAll(0, this.mSuggestedItemPresenters);
            arrayList.add(0, new TopicSuggestedHeaderItemPresenter(R.string.ss_topics_section_suggested, true, runnable));
        }
        List<Topic> personalizeOnboardingList = this.mPreferencesModel.getPersonalizeOnboardingList();
        ArrayList arrayList3 = new ArrayList();
        for (Topic topic : personalizeOnboardingList) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                ItemPresenter itemPresenter = (ItemPresenter) it.next();
                if (checkIds(topic, itemPresenter)) {
                    ((TopicItemPresenter) itemPresenter).setFollowState(FollowState.FOLLOWING);
                    z = true;
                    break;
                }
            }
            if (!z) {
                arrayList3.add(topic);
            }
        }
        if (arrayList3.size() > 0) {
            arrayList2.add(new TopicHeaderItemPresenter(R.string.ss_topics_section_other, true));
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                TopicItemPresenter topicItemPresenterCreate = this.mTopicItemPresenterFactory.create((Topic) it2.next(), FollowState.FOLLOWING, this.mScreenInfo);
                topicItemPresenterCreate.setFollowStateChangedListener(this.mFollowStateChangedListener);
                arrayList2.add(topicItemPresenterCreate);
            }
            for (ItemPresenter itemPresenter2 : arrayList) {
                if (itemPresenter2 instanceof TopicSuggestedHeaderItemPresenter) {
                    ((TopicSuggestedHeaderItemPresenter) itemPresenter2).setIsFirstSection(false);
                }
                if (itemPresenter2 instanceof TopicHeaderItemPresenter) {
                    ((TopicHeaderItemPresenter) itemPresenter2).setIsFirstSection(false);
                }
            }
        }
        arrayList2.addAll(arrayList);
        return arrayList2;
    }

    public static /* synthetic */ void lambda$onSetItemPresenters$1(TopicsOnboardingPresenter topicsOnboardingPresenter) {
        for (TopicItemPresenter topicItemPresenter : topicsOnboardingPresenter.mSuggestedItemPresenters) {
            topicsOnboardingPresenter.mPreferencesModel.removeFromPersonalizeOnboardingList(topicItemPresenter.getTopic());
            topicItemPresenter.setFollowState(FollowState.FOLLOW);
        }
    }

    private boolean checkIds(Object obj, Object obj2) {
        return checkIds(getId(obj), getId(obj2));
    }

    private C1483Id getId(Object obj) {
        if (obj instanceof C1483Id) {
            return (C1483Id) obj;
        }
        if (obj instanceof TopicItemPresenter) {
            return ((TopicItemPresenter) obj).getTopic();
        }
        return null;
    }

    private boolean checkIds(C1483Id c1483Id, C1483Id c1483Id2) {
        if (c1483Id == null || c1483Id2 == null) {
            return false;
        }
        return TextUtils.equals(c1483Id.getId(), c1483Id2.getId());
    }
}
