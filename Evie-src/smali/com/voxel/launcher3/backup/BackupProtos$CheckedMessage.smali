.class public final Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/backup/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CheckedMessage"
.end annotation


# instance fields
.field public checksum:J

.field public payload:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 173
    invoke-virtual {p0}, Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;->clear()Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;

    return-void
.end method


# virtual methods
.method public clear()Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;
    .locals 2

    .line 177
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;->payload:[B

    const-wide/16 v0, 0x0

    .line 178
    iput-wide v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;->checksum:J

    const/4 v0, -0x1

    .line 179
    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .line 193
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 194
    iget-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;->payload:[B

    const/4 v2, 0x1

    .line 195
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 196
    iget-wide v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;->checksum:J

    const/4 v3, 0x2

    .line 197
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 211
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 221
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;->checksum:J

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;->payload:[B

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;->payload:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 187
    iget-wide v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;->checksum:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 188
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
