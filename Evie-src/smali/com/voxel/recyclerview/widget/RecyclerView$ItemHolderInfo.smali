.class Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemHolderInfo"
.end annotation


# instance fields
.field bottom:I

.field holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

.field left:I

.field right:I

.field top:I


# direct methods
.method constructor <init>(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    .line 8964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8965
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;->holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 8966
    iput p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;->left:I

    .line 8967
    iput p3, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;->top:I

    .line 8968
    iput p4, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;->right:I

    .line 8969
    iput p5, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;->bottom:I

    return-void
.end method
