.class Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;
.super Ljava/lang/Object;
.source "AdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/AdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateOp"
.end annotation


# instance fields
.field cmd:I

.field itemCount:I

.field positionStart:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput p1, p0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 620
    iput p2, p0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 621
    iput p3, p0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    return-void
.end method


# virtual methods
.method cmdToString()Ljava/lang/String;
    .locals 1

    .line 625
    iget v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "??"

    return-object v0

    :pswitch_0
    const-string v0, "mv"

    return-object v0

    :pswitch_1
    const-string v0, "up"

    return-object v0

    :pswitch_2
    const-string v0, "rm"

    return-object v0

    :pswitch_3
    const-string v0, "add"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 648
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 652
    :cond_1
    check-cast p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 654
    iget v2, p0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    iget v3, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 657
    iget v2, p0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v3, p0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 659
    iget v2, p0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v3, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ne v2, v3, :cond_3

    return v0

    .line 663
    :cond_3
    iget v2, p0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v3, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v2, v3, :cond_4

    return v1

    .line 666
    :cond_4
    iget v2, p0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 675
    iget v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    mul-int/lit8 v0, v0, 0x1f

    .line 676
    iget v1, p0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 677
    iget v1, p0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmdToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
