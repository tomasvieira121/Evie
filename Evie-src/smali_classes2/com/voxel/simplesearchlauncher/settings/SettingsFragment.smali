.class public Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;,
        Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;,
        Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsFragment"


# instance fields
.field mAdapter:Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field mSections:[Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;Landroidx/fragment/app/Fragment;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->pushFragment(Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;Ljava/lang/String;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->startWallpaperFragmentActivity(Ljava/lang/String;I)V

    return-void
.end method

.method private pushFragment(Landroidx/fragment/app/Fragment;I)V
    .locals 3

    .line 155
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010015

    const v2, 0x7f010012

    .line 156
    invoke-virtual {v0, v2, v1, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    const v1, 0x7f0a00ae

    .line 157
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 158
    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroidx/fragment/app/FragmentTransaction;

    const/4 p1, 0x0

    .line 159
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 160
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private startWallpaperFragmentActivity(Ljava/lang/String;I)V
    .locals 3

    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "show_title"

    .line 165
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "show_fragment"

    .line 166
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 168
    instance-of p2, p1, Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;

    if-eqz p2, :cond_0

    .line 169
    check-cast p1, Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;

    invoke-interface {p1, v0}, Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;->startActivitySafely(Landroid/content/Intent;)Z

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00b3

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 151
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 134
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 139
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 140
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->needsPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->mSections:[Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;

    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->ALERT:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->setVisible(Z)V

    .line 142
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->mSections:[Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;

    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->ALERT:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->setVisible(Z)V

    .line 145
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const p2, 0x7f0a0218

    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    new-instance p1, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-direct {p1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->mAdapter:Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    .line 102
    invoke-static {}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->values()[Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    move-result-object p1

    array-length p1, p1

    new-array p1, p1, [Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->mSections:[Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->mSections:[Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;

    array-length v0, v0

    if-ge p2, v0, :cond_2

    .line 104
    invoke-static {}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->values()[Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    move-result-object v0

    aget-object v0, v0, p2

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 107
    :goto_1
    invoke-static {}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->values()[Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 108
    invoke-static {}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->values()[Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    move-result-object v3

    aget-object v3, v3, v2

    .line 109
    iget-object v4, v3, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->group:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    if-ne v4, v0, :cond_0

    .line 110
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->mSections:[Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;

    new-instance v3, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;

    iget v4, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->headerTextResId:I

    invoke-direct {v3, p0, v4, v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;-><init>(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;ILjava/util/List;)V

    aput-object v3, v2, p2

    .line 114
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->mSections:[Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;

    aget-object v1, v1, p2

    iget-boolean v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->showHeader:Z

    invoke-virtual {v1, v0}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->setHasHeader(Z)V

    .line 115
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->mAdapter:Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->mSections:[Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 118
    :cond_2
    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, p0, p1, v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;-><init>(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;ILjava/util/List;)V

    const/4 p1, 0x1

    .line 119
    invoke-virtual {p2, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->setHasHeader(Z)V

    .line 120
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->mAdapter:Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {p1, p2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    .line 122
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 123
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->mAdapter:Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
