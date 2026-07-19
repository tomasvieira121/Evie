.class Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SwitchViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NotificationSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SwitchViewHolder"
.end annotation


# instance fields
.field mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

.field mLabel:Landroid/widget/TextView;

.field mSubLabel:Landroid/widget/TextView;

.field mSwitch:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 442
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0186

    .line 443
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SwitchViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0a017c

    .line 444
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SwitchViewHolder;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f0a017d

    .line 445
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SwitchViewHolder;->mSubLabel:Landroid/widget/TextView;

    const v0, 0x7f0a0170

    .line 446
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    return-void
.end method
