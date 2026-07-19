.class public Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "HideAppsSettingsFragment.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/settings/SettingsActivity$OnSettingsBackButtonPressedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;,
        Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;,
        Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection;
    }
.end annotation


# static fields
.field private static final DIALOG_TAG:Ljava/lang/String;


# instance fields
.field private mAppInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListSection:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;

.field mApplicationContext:Landroid/content/Context;

.field private mChosenApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigSection:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection;

.field mHideAppsModel:Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSectionedAdapter:Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

.field private mSkipOnDestroy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".dialog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->DIALOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;)Ljava/util/Set;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mChosenApps:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;)Ljava/util/List;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mAppInfos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private saveChanges()Z
    .locals 6

    .line 137
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mChosenApps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    .line 138
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    invoke-direct {v4, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/voxel/launcher3/LauncherModel;->getItemInfoForComponentName(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/ArrayList;

    move-result-object v1

    .line 140
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 147
    invoke-direct {p0, v3}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->saveChangesImpl(Z)V

    return v2

    .line 150
    :cond_2
    invoke-static {}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;->newInstance()Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;

    move-result-object v0

    const/16 v1, 0x3e8

    .line 151
    invoke-virtual {v0, p0, v1}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 152
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->DIALOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v3
.end method

.method private saveChangesImpl(Z)V
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mAppInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    .line 159
    iget-boolean v2, v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->hidden:Z

    .line 160
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mChosenApps:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 163
    iput-boolean v3, v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->hidden:Z

    .line 164
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mHideAppsModel:Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;

    iget-object v4, v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    invoke-virtual {v2, v4, v1, v3}, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;->setHidden(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 170
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 172
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mChosenApps:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    .line 175
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mApplicationContext:Landroid/content/Context;

    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/LauncherModel;->deleteComponentNameFromDatabase(Landroid/content/Context;Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    goto :goto_1

    .line 178
    :cond_2
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherAppState;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherModel;->forceReload()V

    :cond_3
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p3, 0x3e8

    if-ne p1, p3, :cond_1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    .line 370
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->saveChangesImpl(Z)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    .line 372
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->saveChangesImpl(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 76
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->inject(Landroidx/fragment/app/Fragment;)V

    .line 77
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 386
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->DIALOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    instance-of v1, v0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;

    if-eqz v1, :cond_0

    .line 389
    check-cast v0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;->dismiss()V

    .line 391
    :cond_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->saveChanges()Z

    const/4 v0, 0x1

    .line 392
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mSkipOnDestroy:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 82
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mApplicationContext:Landroid/content/Context;

    .line 84
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mHideAppsModel:Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;->getAllApps()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mAppInfos:Ljava/util/List;

    .line 85
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mChosenApps:Ljava/util/Set;

    .line 87
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mAppInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    .line 88
    iget-boolean v1, v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->hidden:Z

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mChosenApps:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mAppInfos:Ljava/util/List;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$1;-><init>(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mSkipOnDestroy:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00a5

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 379
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mSkipOnDestroy:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 380
    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->saveChangesImpl(Z)V

    .line 382
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 123
    move-object p2, p1

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 124
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 126
    new-instance p1, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;-><init>(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mAppListSection:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;

    .line 127
    new-instance p1, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection;-><init>(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mConfigSection:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection;

    .line 129
    new-instance p1, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-direct {p1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mSectionedAdapter:Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    .line 130
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mSectionedAdapter:Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mConfigSection:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfigSection;

    invoke-virtual {p1, p2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    .line 131
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mSectionedAdapter:Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mAppListSection:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;

    invoke-virtual {p1, p2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    .line 132
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->mSectionedAdapter:Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
