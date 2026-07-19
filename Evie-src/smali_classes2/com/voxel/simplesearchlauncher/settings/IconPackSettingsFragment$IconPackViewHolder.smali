.class Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "IconPackSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconPackViewHolder"
.end annotation


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mLabel:Landroid/widget/TextView;

.field private mRadioButton:Landroid/widget/RadioButton;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;Landroid/view/View;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;->this$0:Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;

    .line 356
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0186

    .line 358
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;->mIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a0187

    .line 359
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;->mLabel:Landroid/widget/TextView;

    const p1, 0x7f0a0212

    .line 360
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    return-void
.end method

.method static synthetic access$300(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;)Landroid/widget/RadioButton;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$400(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;->mLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;->mIcon:Landroid/widget/ImageView;

    return-object p0
.end method
