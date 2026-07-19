.class public Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;
.super Landroidx/fragment/app/Fragment;
.source "SelectGestureActionFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;
    }
.end annotation


# instance fields
.field mAdapter:Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;

.field private mBackstackId:Ljava/lang/String;

.field private mGestureType:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;)Lcom/voxel/simplesearchlauncher/gestures/GestureType;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->mGestureType:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;)Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    return-object p0
.end method

.method public static newInstance(Lcom/voxel/simplesearchlauncher/gestures/GestureType;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;
    .locals 3

    .line 47
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;-><init>()V

    .line 48
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "gesture"

    .line 49
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "backstack"

    .line 50
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    if-ne p2, v0, :cond_1

    .line 110
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->mGestureType:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    sget-object v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->LAUNCH:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    invoke-virtual {p1, p2, v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setActionForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;)V

    .line 111
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->mGestureType:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    invoke-virtual {p1, p2, p3}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setIntentForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;Landroid/content/Intent;)V

    .line 113
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->mBackstackId:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    .line 61
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "gesture"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->valueOf(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->mGestureType:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    :cond_0
    const-string v0, "backstack"

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->mBackstackId:Ljava/lang/String;

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->mGestureType:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    if-nez p1, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d009f

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 94
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 95
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->mAdapter:Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 86
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 87
    new-instance p1, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;-><init>(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->mAdapter:Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;

    .line 88
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 89
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->mAdapter:Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
