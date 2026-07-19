.class Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$AppViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AllAppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppViewHolder"
.end annotation


# instance fields
.field mIcon:Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;

.field mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 887
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0186

    .line 889
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$AppViewHolder;->mIcon:Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;

    const v0, 0x7f0a02aa

    .line 890
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$AppViewHolder;->mText:Landroid/widget/TextView;

    return-void
.end method
