.class public final Lcom/voxel/launcher3/backup/BackupProtos$Key;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/backup/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/voxel/launcher3/backup/BackupProtos$Key;


# instance fields
.field public checksum:J

.field public id:J

.field public name:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 46
    invoke-virtual {p0}, Lcom/voxel/launcher3/backup/BackupProtos$Key;->clear()Lcom/voxel/launcher3/backup/BackupProtos$Key;

    return-void
.end method

.method public static emptyArray()[Lcom/voxel/launcher3/backup/BackupProtos$Key;
    .locals 2

    .line 22
    sget-object v0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->_emptyArray:[Lcom/voxel/launcher3/backup/BackupProtos$Key;

    if-nez v0, :cond_1

    .line 23
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/voxel/launcher3/backup/BackupProtos$Key;->_emptyArray:[Lcom/voxel/launcher3/backup/BackupProtos$Key;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 26
    new-array v1, v1, [Lcom/voxel/launcher3/backup/BackupProtos$Key;

    sput-object v1, Lcom/voxel/launcher3/backup/BackupProtos$Key;->_emptyArray:[Lcom/voxel/launcher3/backup/BackupProtos$Key;

    .line 28
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 30
    :cond_1
    :goto_0
    sget-object v0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->_emptyArray:[Lcom/voxel/launcher3/backup/BackupProtos$Key;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/voxel/launcher3/backup/BackupProtos$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 139
    new-instance v0, Lcom/voxel/launcher3/backup/BackupProtos$Key;

    invoke-direct {v0}, Lcom/voxel/launcher3/backup/BackupProtos$Key;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/voxel/launcher3/backup/BackupProtos$Key;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/voxel/launcher3/backup/BackupProtos$Key;
    .locals 2

    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->type:I

    const-string v0, ""

    .line 51
    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->id:J

    .line 53
    iput-wide v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->checksum:J

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .line 76
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 77
    iget v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->type:I

    const/4 v2, 0x1

    .line 78
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    iget-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 80
    iget-object v2, p0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    .line 81
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_0
    iget-wide v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    .line 85
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    :cond_1
    iget-wide v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->checksum:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v3, 0x4

    .line 89
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/backup/BackupProtos$Key;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/voxel/launcher3/backup/BackupProtos$Key;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/voxel/launcher3/backup/BackupProtos$Key;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 104
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 130
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->checksum:J

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->id:J

    goto :goto_0

    .line 122
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 116
    :pswitch_0
    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->type:I

    goto :goto_0

    :cond_5
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->type:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 62
    iget-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 63
    iget-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 65
    :cond_0
    iget-wide v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    .line 66
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 68
    :cond_1
    iget-wide v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->checksum:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v2, 0x4

    .line 69
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 71
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
