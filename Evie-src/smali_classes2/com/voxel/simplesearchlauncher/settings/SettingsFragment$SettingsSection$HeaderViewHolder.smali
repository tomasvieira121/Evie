.class Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$HeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field mTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field final synthetic this$1:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Landroid/view/View;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$HeaderViewHolder;->this$1:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;

    .line 183
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 184
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
