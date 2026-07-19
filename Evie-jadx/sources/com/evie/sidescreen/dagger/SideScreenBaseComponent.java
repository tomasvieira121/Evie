package com.evie.sidescreen.dagger;

import com.evie.models.sidescreen.SideScreenRelatedContentModel;
import com.evie.sidescreen.SideScreenSharedPreferencesModel;

/* JADX INFO: loaded from: classes.dex */
public interface SideScreenBaseComponent {
    SideScreenActivitySubcomponent.Builder activitySubcomponentBuilder();

    SideScreenRelatedContentModel sideScreenRelatedContentModel();

    SideScreenSharedPreferencesModel sideScreenSharedPreferencesModel();

    SideScreenSubcomponent.Builder sideScreenSubcomponentBuilder();
}
