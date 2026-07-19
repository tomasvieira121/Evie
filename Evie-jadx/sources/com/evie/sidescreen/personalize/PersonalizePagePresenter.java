package com.evie.sidescreen.personalize;

import android.text.TextUtils;
import android.view.View;
import com.evie.models.topics.data.PersonalizePage;
import com.evie.models.topics.data.PersonalizeSection;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.schema.C1483Id;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class PersonalizePagePresenter extends ItemPresenter<TopicsListViewHolder> implements TopicItemPresenter.FollowStateChangedListener {
    private final PersonalizePresenter mParent;
    private final ScreenInfo mScreenInfo;
    private final String mTitle;
    private final TopicItemPresenterFactory mTopicItemPresenterFactory;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(TopicsListViewHolder topicsListViewHolder) {
    }

    public PersonalizePagePresenter(ScreenInfo screenInfo, PersonalizePresenter personalizePresenter, String str, @Provided TopicItemPresenterFactory topicItemPresenterFactory) {
        this.mScreenInfo = screenInfo;
        this.mParent = personalizePresenter;
        this.mTopicItemPresenterFactory = topicItemPresenterFactory;
        this.mTitle = str;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return TopicsListViewHolder.f337ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public TopicsListViewHolder createViewHolderInstance(View view) {
        return new TopicsListViewHolder(view);
    }

    public void clear() {
        this.mDisposables.clear();
        if (this.mViewHolder != 0) {
            ((TopicsListViewHolder) this.mViewHolder).setItemPresenters(null);
            ((TopicsListViewHolder) this.mViewHolder).showLoading();
        }
    }

    public void load(PersonalizePage personalizePage, List<C1483Id> list, List<C1483Id> list2) {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        for (C1483Id c1483Id : list) {
            if (c1483Id != null && c1483Id.getId() != null) {
                hashSet.add(c1483Id.getId());
            }
        }
        HashSet hashSet2 = new HashSet();
        for (C1483Id c1483Id2 : list2) {
            if (c1483Id2 != null && c1483Id2.getId() != null) {
                hashSet2.add(c1483Id2.getId());
            }
        }
        boolean z = true;
        for (PersonalizeSection personalizeSection : personalizePage.getSections()) {
            if (!TextUtils.isEmpty(personalizeSection.getLabel())) {
                arrayList.add(new TopicHeaderItemPresenter(personalizeSection.getLabel(), z));
            }
            z = false;
            for (Topic topic : personalizeSection.getTopics()) {
                boolean zContains = hashSet.contains(topic.getId());
                boolean zContains2 = hashSet2.contains(topic.getId());
                FollowState followState = FollowState.FOLLOW;
                if (zContains) {
                    followState = FollowState.FOLLOWING;
                } else if (zContains2) {
                    followState = FollowState.BLOCKED;
                }
                TopicItemPresenter topicItemPresenterCreate = this.mTopicItemPresenterFactory.create(topic, followState, this.mScreenInfo);
                topicItemPresenterCreate.setFollowStateChangedListener(this);
                arrayList.add(topicItemPresenterCreate);
            }
        }
        ((TopicsListViewHolder) this.mViewHolder).setItemPresenters(arrayList);
        ((TopicsListViewHolder) this.mViewHolder).hideLoading();
    }

    @Override // com.evie.sidescreen.personalize.TopicItemPresenter.FollowStateChangedListener
    public void onFollowStateChanged(TopicItemPresenter topicItemPresenter) {
        this.mParent.onFollowStateChanged(this);
    }

    public String getTitle() {
        return this.mTitle;
    }
}
