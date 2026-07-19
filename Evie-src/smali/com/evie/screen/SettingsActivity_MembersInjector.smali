.class public final Lcom/evie/screen/SettingsActivity_MembersInjector;
.super Ljava/lang/Object;
.source "SettingsActivity_MembersInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static injectMAnalyticsHandler(Lcom/evie/screen/SettingsActivity;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/evie/screen/SettingsActivity;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    return-void
.end method

.method public static injectMSideScreenRelatedContentModel(Lcom/evie/screen/SettingsActivity;Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/evie/screen/SettingsActivity;->mSideScreenRelatedContentModel:Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

    return-void
.end method

.method public static injectMSideScreenSharedPreferencesModel(Lcom/evie/screen/SettingsActivity;Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/evie/screen/SettingsActivity;->mSideScreenSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    return-void
.end method
