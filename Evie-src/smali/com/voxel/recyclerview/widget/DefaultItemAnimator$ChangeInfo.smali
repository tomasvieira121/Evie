.class Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/DefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangeInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public newHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

.field public oldHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method private constructor <init>(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 70
    iput-object p2, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method

.method private constructor <init>(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;-><init>(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 76
    iput p3, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromX:I

    .line 77
    iput p4, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromY:I

    .line 78
    iput p5, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toX:I

    .line 79
    iput p6, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toY:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IIIILcom/voxel/recyclerview/widget/DefaultItemAnimator$1;)V
    .locals 0

    .line 65
    invoke-direct/range {p0 .. p6}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;-><init>(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeInfo{oldHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
