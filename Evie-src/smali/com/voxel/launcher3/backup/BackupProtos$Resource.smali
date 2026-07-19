.class public final Lcom/voxel/launcher3/backup/BackupProtos$Resource;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/backup/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Resource"
.end annotation


# instance fields
.field public data:[B

.field public dpi:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 849
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 850
    invoke-virtual {p0}, Lcom/voxel/launcher3/backup/BackupProtos$Resource;->clear()Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    return-void
.end method


# virtual methods
.method public clear()Lcom/voxel/launcher3/backup/BackupProtos$Resource;
    .locals 1

    const/4 v0, 0x0

    .line 854
    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Resource;->dpi:I

    .line 855
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Resource;->data:[B

    const/4 v0, -0x1

    .line 856
    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Resource;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 870
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 871
    iget v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Resource;->dpi:I

    const/4 v2, 0x1

    .line 872
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 873
    iget-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Resource;->data:[B

    const/4 v2, 0x2

    .line 874
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

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

    .line 826
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/backup/BackupProtos$Resource;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/voxel/launcher3/backup/BackupProtos$Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 883
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 888
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 898
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Resource;->data:[B

    goto :goto_0

    .line 894
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Resource;->dpi:I

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 863
    iget v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Resource;->dpi:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 864
    iget-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Resource;->data:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 865
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
