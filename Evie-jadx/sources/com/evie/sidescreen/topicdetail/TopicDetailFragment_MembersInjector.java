package com.evie.sidescreen.topicdetail;

/* JADX INFO: loaded from: classes.dex */
public final class TopicDetailFragment_MembersInjector {
    public static void injectMTopicDetailPresenterFactory(TopicDetailFragment topicDetailFragment, TopicDetailPresenterFactory topicDetailPresenterFactory) {
        topicDetailFragment.mTopicDetailPresenterFactory = topicDetailPresenterFactory;
    }

    public static void injectMTopicDetailViewHolderFactory(TopicDetailFragment topicDetailFragment, TopicDetailViewHolderFactory topicDetailViewHolderFactory) {
        topicDetailFragment.mTopicDetailViewHolderFactory = topicDetailViewHolderFactory;
    }
}
