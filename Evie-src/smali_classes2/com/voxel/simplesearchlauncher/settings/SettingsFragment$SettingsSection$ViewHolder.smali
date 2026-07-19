.class Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mDivider:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field final synthetic this$1:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Landroid/view/View;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$ViewHolder;->this$1:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;

    .line 194
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 195
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
