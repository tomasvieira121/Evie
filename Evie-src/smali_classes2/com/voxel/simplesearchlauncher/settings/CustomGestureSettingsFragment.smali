.class public Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "CustomGestureSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment$GesturesAdapter;
    }
.end annotation


# instance fields
.field localAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

.field mAdapter:Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment$GesturesAdapter;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 41
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->inject(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d009f

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 66
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 67
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;->mAdapter:Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment$GesturesAdapter;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment$GesturesAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 58
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 59
    new-instance p1, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment$GesturesAdapter;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment$GesturesAdapter;-><init>(Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment$1;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;->mAdapter:Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment$GesturesAdapter;

    .line 60
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 61
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;->mAdapter:Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment$GesturesAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
