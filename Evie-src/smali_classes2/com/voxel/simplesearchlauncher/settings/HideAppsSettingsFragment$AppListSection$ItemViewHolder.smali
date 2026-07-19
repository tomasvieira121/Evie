.class Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HideAppsSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemViewHolder"
.end annotation


# instance fields
.field mApplicationIcon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mCheckBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mLabel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field final synthetic this$1:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;Landroid/view/View;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection$ItemViewHolder;->this$1:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;

    .line 297
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 299
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
