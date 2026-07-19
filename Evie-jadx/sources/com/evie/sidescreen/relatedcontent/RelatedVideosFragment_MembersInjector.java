package com.evie.sidescreen.relatedcontent;

import com.evie.models.sidescreen.SideScreenRelatedContentModel;
import com.evie.sidescreen.SideScreenSharedPreferencesModel;
import com.evie.sidescreen.personalize.TopicItemPresenterFactory;
import com.evie.sidescreen.tiles.TopLevelTilePresenterFactory;

/* JADX INFO: loaded from: classes.dex */
public final class RelatedVideosFragment_MembersInjector {
    public static void injectMTopLevelTilePresenterFactory(RelatedVideosFragment relatedVideosFragment, TopLevelTilePresenterFactory topLevelTilePresenterFactory) {
        relatedVideosFragment.mTopLevelTilePresenterFactory = topLevelTilePresenterFactory;
    }

    public static void injectMTopicItemPresenterFactory(RelatedVideosFragment relatedVideosFragment, TopicItemPresenterFactory topicItemPresenterFactory) {
        relatedVideosFragment.mTopicItemPresenterFactory = topicItemPresenterFactory;
    }

    public static void injectMRelatedContentModel(RelatedVideosFragment relatedVideosFragment, SideScreenRelatedContentModel sideScreenRelatedContentModel) {
        relatedVideosFragment.mRelatedContentModel = sideScreenRelatedContentModel;
    }

    public static void injectMSideScreenSharedPreferencesModel(RelatedVideosFragment relatedVideosFragment, SideScreenSharedPreferencesModel sideScreenSharedPreferencesModel) {
        relatedVideosFragment.mSideScreenSharedPreferencesModel = sideScreenSharedPreferencesModel;
    }
}
