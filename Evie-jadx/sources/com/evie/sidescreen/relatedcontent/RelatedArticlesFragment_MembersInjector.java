package com.evie.sidescreen.relatedcontent;

import com.evie.models.sidescreen.SideScreenRelatedContentModel;
import com.evie.sidescreen.tiles.TopLevelTilePresenterFactory;

/* JADX INFO: loaded from: classes.dex */
public final class RelatedArticlesFragment_MembersInjector {
    public static void injectMTopLevelTilePresenterFactory(RelatedArticlesFragment relatedArticlesFragment, TopLevelTilePresenterFactory topLevelTilePresenterFactory) {
        relatedArticlesFragment.mTopLevelTilePresenterFactory = topLevelTilePresenterFactory;
    }

    public static void injectMRelatedContentModel(RelatedArticlesFragment relatedArticlesFragment, SideScreenRelatedContentModel sideScreenRelatedContentModel) {
        relatedArticlesFragment.mRelatedContentModel = sideScreenRelatedContentModel;
    }
}
