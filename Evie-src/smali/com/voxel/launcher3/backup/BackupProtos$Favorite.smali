.class public final Lcom/voxel/launcher3/backup/BackupProtos$Favorite;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/backup/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Favorite"
.end annotation


# instance fields
.field public appWidgetId:I

.field public appWidgetProvider:Ljava/lang/String;

.field public cellX:I

.field public cellY:I

.field public container:I

.field public displayMode:I

.field public icon:[B

.field public iconPackage:Ljava/lang/String;

.field public iconResource:Ljava/lang/String;

.field public iconType:I

.field public id:J

.field public intent:Ljava/lang/String;

.field public itemType:I

.field public screen:I

.field public spanX:I

.field public spanY:I

.field public title:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 471
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 472
    invoke-virtual {p0}, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->clear()Lcom/voxel/launcher3/backup/BackupProtos$Favorite;

    return-void
.end method


# virtual methods
.method public clear()Lcom/voxel/launcher3/backup/BackupProtos$Favorite;
    .locals 2

    const-wide/16 v0, 0x0

    .line 476
    iput-wide v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->id:J

    const/4 v0, 0x0

    .line 477
    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->itemType:I

    const-string v1, ""

    .line 478
    iput-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    .line 479
    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->container:I

    .line 480
    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->screen:I

    .line 481
    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->cellX:I

    .line 482
    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->cellY:I

    .line 483
    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->spanX:I

    .line 484
    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->spanY:I

    .line 485
    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->displayMode:I

    .line 486
    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->appWidgetId:I

    const-string v1, ""

    .line 487
    iput-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    const-string v1, ""

    .line 488
    iput-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    const-string v1, ""

    .line 489
    iput-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->uri:Ljava/lang/String;

    .line 490
    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconType:I

    const-string v0, ""

    .line 491
    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    const-string v0, ""

    .line 492
    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    .line 493
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->icon:[B

    const/4 v0, -0x1

    .line 494
    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .line 556
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 557
    iget-wide v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->id:J

    const/4 v3, 0x1

    .line 558
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 559
    iget v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->itemType:I

    const/4 v2, 0x2

    .line 560
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 561
    iget-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    .line 562
    iget-object v2, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    .line 563
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 565
    :cond_0
    iget v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->container:I

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    .line 567
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 569
    :cond_1
    iget v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->screen:I

    if-eqz v1, :cond_2

    const/4 v2, 0x5

    .line 571
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 573
    :cond_2
    iget v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->cellX:I

    if-eqz v1, :cond_3

    const/4 v2, 0x6

    .line 575
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 577
    :cond_3
    iget v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->cellY:I

    if-eqz v1, :cond_4

    const/4 v2, 0x7

    .line 579
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 581
    :cond_4
    iget v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->spanX:I

    if-eqz v1, :cond_5

    const/16 v2, 0x8

    .line 583
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 585
    :cond_5
    iget v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->spanY:I

    if-eqz v1, :cond_6

    const/16 v2, 0x9

    .line 587
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 589
    :cond_6
    iget v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->displayMode:I

    if-eqz v1, :cond_7

    const/16 v2, 0xa

    .line 591
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 593
    :cond_7
    iget v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->appWidgetId:I

    if-eqz v1, :cond_8

    const/16 v2, 0xb

    .line 595
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 597
    :cond_8
    iget-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0xc

    .line 598
    iget-object v2, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    .line 599
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 601
    :cond_9
    iget-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xd

    .line 602
    iget-object v2, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    .line 603
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 605
    :cond_a
    iget-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->uri:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0xe

    .line 606
    iget-object v2, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->uri:Ljava/lang/String;

    .line 607
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 609
    :cond_b
    iget v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconType:I

    if-eqz v1, :cond_c

    const/16 v2, 0xf

    .line 611
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 613
    :cond_c
    iget-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0x10

    .line 614
    iget-object v2, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    .line 615
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 617
    :cond_d
    iget-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0x11

    .line 618
    iget-object v2, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    .line 619
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 621
    :cond_e
    iget-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->icon:[B

    sget-object v2, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_f

    const/16 v1, 0x12

    .line 622
    iget-object v2, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->icon:[B

    .line 623
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/voxel/launcher3/backup/BackupProtos$Favorite;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/voxel/launcher3/backup/BackupProtos$Favorite;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 633
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 638
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 712
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->icon:[B

    goto :goto_0

    .line 708
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    goto :goto_0

    .line 704
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    goto :goto_0

    .line 700
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconType:I

    goto :goto_0

    .line 696
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->uri:Ljava/lang/String;

    goto :goto_0

    .line 692
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    goto :goto_0

    .line 688
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    goto :goto_0

    .line 684
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->appWidgetId:I

    goto :goto_0

    .line 680
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->displayMode:I

    goto :goto_0

    .line 676
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->spanY:I

    goto :goto_0

    .line 672
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->spanX:I

    goto :goto_0

    .line 668
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->cellY:I

    goto :goto_0

    .line 664
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->cellX:I

    goto :goto_0

    .line 660
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->screen:I

    goto :goto_0

    .line 656
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->container:I

    goto :goto_0

    .line 652
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    goto :goto_0

    .line 648
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->itemType:I

    goto/16 :goto_0

    .line 644
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->id:J

    goto/16 :goto_0

    :sswitch_12
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_12
        0x8 -> :sswitch_11
        0x10 -> :sswitch_10
        0x1a -> :sswitch_f
        0x20 -> :sswitch_e
        0x28 -> :sswitch_d
        0x30 -> :sswitch_c
        0x38 -> :sswitch_b
        0x40 -> :sswitch_a
        0x48 -> :sswitch_9
        0x50 -> :sswitch_8
        0x58 -> :sswitch_7
        0x62 -> :sswitch_6
        0x6a -> :sswitch_5
        0x72 -> :sswitch_4
        0x78 -> :sswitch_3
        0x82 -> :sswitch_2
        0x8a -> :sswitch_1
        0x92 -> :sswitch_0
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    iget-wide v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->id:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 502
    iget v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->itemType:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 503
    iget-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 504
    iget-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 506
    :cond_0
    iget v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->container:I

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 507
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 509
    :cond_1
    iget v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->screen:I

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    .line 510
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 512
    :cond_2
    iget v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->cellX:I

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    .line 513
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 515
    :cond_3
    iget v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->cellY:I

    if-eqz v0, :cond_4

    const/4 v1, 0x7

    .line 516
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 518
    :cond_4
    iget v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->spanX:I

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    .line 519
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 521
    :cond_5
    iget v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->spanY:I

    if-eqz v0, :cond_6

    const/16 v1, 0x9

    .line 522
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 524
    :cond_6
    iget v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->displayMode:I

    if-eqz v0, :cond_7

    const/16 v1, 0xa

    .line 525
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 527
    :cond_7
    iget v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->appWidgetId:I

    if-eqz v0, :cond_8

    const/16 v1, 0xb

    .line 528
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 530
    :cond_8
    iget-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xc

    .line 531
    iget-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 533
    :cond_9
    iget-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xd

    .line 534
    iget-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 536
    :cond_a
    iget-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->uri:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xe

    .line 537
    iget-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->uri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 539
    :cond_b
    iget v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconType:I

    if-eqz v0, :cond_c

    const/16 v1, 0xf

    .line 540
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 542
    :cond_c
    iget-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0x10

    .line 543
    iget-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 545
    :cond_d
    iget-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0x11

    .line 546
    iget-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 548
    :cond_e
    iget-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->icon:[B

    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0x12

    .line 549
    iget-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->icon:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 551
    :cond_f
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
