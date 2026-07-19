.class Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/DefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method private constructor <init>(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 58
    iput p2, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;->fromX:I

    .line 59
    iput p3, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;->fromY:I

    .line 60
    iput p4, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;->toX:I

    .line 61
    iput p5, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;->toY:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IIIILcom/voxel/recyclerview/widget/DefaultItemAnimator$1;)V
    .locals 0

    .line 52
    invoke-direct/range {p0 .. p5}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;-><init>(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    return-void
.end method
