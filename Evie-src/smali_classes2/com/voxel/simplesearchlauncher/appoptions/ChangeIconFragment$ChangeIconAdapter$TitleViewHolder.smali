.class Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter$TitleViewHolder;
.super Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;
.source "ChangeIconFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TitleViewHolder"
.end annotation


# instance fields
.field mTitle:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;Landroid/view/View;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter$TitleViewHolder;->this$1:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;

    .line 334
    invoke-direct {p0, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a02aa

    .line 335
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter$TitleViewHolder;->mTitle:Landroid/widget/TextView;

    return-void
.end method
