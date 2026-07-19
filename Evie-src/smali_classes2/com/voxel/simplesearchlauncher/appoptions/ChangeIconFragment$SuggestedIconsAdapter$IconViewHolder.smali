.class Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter$IconViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ChangeIconFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IconViewHolder"
.end annotation


# instance fields
.field mImageView:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter;Landroid/view/View;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter$IconViewHolder;->this$1:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter;

    .line 456
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 457
    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter$IconViewHolder;->mImageView:Landroid/widget/ImageView;

    return-void
.end method
