.class public final Lcom/voxel/launcher3/backup/BackupProtos$Journal;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/backup/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Journal"
.end annotation


# instance fields
.field public appVersion:I

.field public bytes:J

.field public key:[Lcom/voxel/launcher3/backup/BackupProtos$Key;

.field public rows:I

.field public t:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 272
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 273
    invoke-virtual {p0}, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->clear()Lcom/voxel/launcher3/backup/BackupProtos$Journal;

    return-void
.end method


# virtual methods
.method public clear()Lcom/voxel/launcher3/backup/BackupProtos$Journal;
    .locals 3

    const/4 v0, 0x0

    .line 277
    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->appVersion:I

    const-wide/16 v1, 0x0

    .line 278
    iput-wide v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->t:J

    .line 279
    iput-wide v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->bytes:J

    .line 280
    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->rows:I

    .line 281
    invoke-static {}, Lcom/voxel/launcher3/backup/BackupProtos$Key;->emptyArray()[Lcom/voxel/launcher3/backup/BackupProtos$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->key:[Lcom/voxel/launcher3/backup/BackupProtos$Key;

    const/4 v0, -0x1

    .line 282
    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .line 309
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 310
    iget v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->appVersion:I

    const/4 v2, 0x1

    .line 311
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 312
    iget-wide v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->t:J

    const/4 v3, 0x2

    .line 313
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 314
    iget-wide v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->bytes:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v3, 0x3

    .line 316
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 318
    :cond_0
    iget v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->rows:I

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    .line 320
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 322
    :cond_1
    iget-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->key:[Lcom/voxel/launcher3/backup/BackupProtos$Key;

    if-eqz v1, :cond_3

    array-length v2, v1

    if-lez v2, :cond_3

    .line 323
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    const/4 v5, 0x5

    .line 326
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/voxel/launcher3/backup/BackupProtos$Journal;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/voxel/launcher3/backup/BackupProtos$Journal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    if-eq v0, v1, :cond_8

    const/16 v1, 0x10

    if-eq v0, v1, :cond_7

    const/16 v1, 0x18

    if-eq v0, v1, :cond_6

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    .line 343
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 366
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 367
    iget-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->key:[Lcom/voxel/launcher3/backup/BackupProtos$Key;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 368
    new-array v0, v0, [Lcom/voxel/launcher3/backup/BackupProtos$Key;

    if-eqz v1, :cond_3

    .line 371
    iget-object v3, p0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->key:[Lcom/voxel/launcher3/backup/BackupProtos$Key;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    .line 374
    new-instance v2, Lcom/voxel/launcher3/backup/BackupProtos$Key;

    invoke-direct {v2}, Lcom/voxel/launcher3/backup/BackupProtos$Key;-><init>()V

    aput-object v2, v0, v1

    .line 375
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 376
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 379
    :cond_4
    new-instance v2, Lcom/voxel/launcher3/backup/BackupProtos$Key;

    invoke-direct {v2}, Lcom/voxel/launcher3/backup/BackupProtos$Key;-><init>()V

    aput-object v2, v0, v1

    .line 380
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 381
    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->key:[Lcom/voxel/launcher3/backup/BackupProtos$Key;

    goto :goto_0

    .line 361
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->rows:I

    goto :goto_0

    .line 357
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->bytes:J

    goto :goto_0

    .line 353
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->t:J

    goto :goto_0

    .line 349
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->appVersion:I

    goto :goto_0

    :cond_9
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    iget v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->appVersion:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 290
    iget-wide v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->t:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 291
    iget-wide v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->bytes:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v2, 0x3

    .line 292
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 294
    :cond_0
    iget v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->rows:I

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 295
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->key:[Lcom/voxel/launcher3/backup/BackupProtos$Key;

    if-eqz v0, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    .line 298
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    const/4 v4, 0x5

    .line 300
    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
