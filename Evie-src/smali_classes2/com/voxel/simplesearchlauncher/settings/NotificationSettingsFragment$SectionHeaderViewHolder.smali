.class Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SectionHeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NotificationSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SectionHeaderViewHolder"
.end annotation


# instance fields
.field mName:Landroid/widget/TextView;

.field mSubtext:Landroid/widget/TextView;

.field mSwitch:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 456
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a01ab

    .line 458
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SectionHeaderViewHolder;->mName:Landroid/widget/TextView;

    const v0, 0x7f0a0298

    .line 459
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SectionHeaderViewHolder;->mSubtext:Landroid/widget/TextView;

    const v0, 0x7f0a0170

    .line 460
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SectionHeaderViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    return-void
.end method
