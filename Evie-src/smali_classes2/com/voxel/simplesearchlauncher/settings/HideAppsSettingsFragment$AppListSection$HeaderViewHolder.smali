.class Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection$HeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HideAppsSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field mName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSubtext:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSwitch:Landroidx/appcompat/widget/SwitchCompat;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field final synthetic this$1:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;Landroid/view/View;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection$HeaderViewHolder;->this$1:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;

    .line 286
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 287
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
