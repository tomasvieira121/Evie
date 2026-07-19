.class Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsViewHolder;
.super Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;
.source "AppOptionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppOptionsViewHolder"
.end annotation


# instance fields
.field mDivider:Landroid/view/View;

.field mIcon:Landroid/widget/ImageView;

.field mLabel:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;Landroid/view/View;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsViewHolder;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    .line 96
    invoke-direct {p0, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 97
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsViewHolder;->mView:Landroid/view/View;

    const p1, 0x7f0a0158

    .line 98
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsViewHolder;->mIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a0174

    .line 99
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsViewHolder;->mLabel:Landroid/widget/TextView;

    const p1, 0x7f0a0183

    .line 100
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsViewHolder;->mDivider:Landroid/view/View;

    return-void
.end method
