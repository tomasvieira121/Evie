.class public final Lcom/voxel/launcher3/backup/BackupProtos$Widget;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/backup/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Widget"
.end annotation


# instance fields
.field public configure:Z

.field public icon:Lcom/voxel/launcher3/backup/BackupProtos$Resource;

.field public label:Ljava/lang/String;

.field public preview:Lcom/voxel/launcher3/backup/BackupProtos$Resource;

.field public provider:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 949
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 950
    invoke-virtual {p0}, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->clear()Lcom/voxel/launcher3/backup/BackupProtos$Widget;

    return-void
.end method


# virtual methods
.method public clear()Lcom/voxel/launcher3/backup/BackupProtos$Widget;
    .locals 1

    const-string v0, ""

    .line 954
    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    const-string v0, ""

    .line 955
    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    const/4 v0, 0x0

    .line 956
    iput-boolean v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->configure:Z

    const/4 v0, 0x0

    .line 957
    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->icon:Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    .line 958
    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->preview:Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    const/4 v0, -0x1

    .line 959
    iput v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 984
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 985
    iget-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    const/4 v2, 0x1

    .line 986
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 987
    iget-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 988
    iget-object v2, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    .line 989
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 991
    :cond_0
    iget-boolean v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->configure:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    .line 993
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 995
    :cond_1
    iget-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->icon:Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    .line 997
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 999
    :cond_2
    iget-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->preview:Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    if-eqz v1, :cond_3

    const/4 v2, 0x5

    .line 1001
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

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

    .line 917
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/voxel/launcher3/backup/BackupProtos$Widget;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/voxel/launcher3/backup/BackupProtos$Widget;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1011
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_6

    const/16 v1, 0x18

    if-eq v0, v1, :cond_5

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    .line 1016
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1041
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->preview:Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    if-nez v0, :cond_2

    .line 1042
    new-instance v0, Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    invoke-direct {v0}, Lcom/voxel/launcher3/backup/BackupProtos$Resource;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->preview:Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    .line 1044
    :cond_2
    iget-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->preview:Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1034
    :cond_3
    iget-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->icon:Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    if-nez v0, :cond_4

    .line 1035
    new-instance v0, Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    invoke-direct {v0}, Lcom/voxel/launcher3/backup/BackupProtos$Resource;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->icon:Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    .line 1037
    :cond_4
    iget-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->icon:Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1030
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->configure:Z

    goto :goto_0

    .line 1026
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    goto :goto_0

    .line 1022
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    goto :goto_0

    :cond_8
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 966
    iget-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 967
    iget-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 968
    iget-object v1, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 970
    :cond_0
    iget-boolean v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->configure:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 971
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 973
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->icon:Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 974
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 976
    :cond_2
    iget-object v0, p0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->preview:Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    .line 977
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 979
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
