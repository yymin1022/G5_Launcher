.class public final Lcom/android/launcher3/backup/BackupProtos$Resource;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/backup/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Resource"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Resource;


# instance fields
.field public data:[B

.field public dpi:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1030
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1031
    invoke-virtual {p0}, Lcom/android/launcher3/backup/BackupProtos$Resource;->clear()Lcom/android/launcher3/backup/BackupProtos$Resource;

    .line 1032
    return-void
.end method

.method public static emptyArray()[Lcom/android/launcher3/backup/BackupProtos$Resource;
    .registers 2

    .prologue
    .line 1013
    sget-object v0, Lcom/android/launcher3/backup/BackupProtos$Resource;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Resource;

    if-nez v0, :cond_11

    .line 1015
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1016
    :try_start_7
    sget-object v0, Lcom/android/launcher3/backup/BackupProtos$Resource;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Resource;

    if-nez v0, :cond_10

    .line 1017
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/backup/BackupProtos$Resource;

    sput-object v0, Lcom/android/launcher3/backup/BackupProtos$Resource;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Resource;

    .line 1014
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    .line 1021
    :cond_11
    sget-object v0, Lcom/android/launcher3/backup/BackupProtos$Resource;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Resource;

    return-object v0

    .line 1014
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$Resource;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1094
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$Resource;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$Resource;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/backup/BackupProtos$Resource;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$Resource;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/backup/BackupProtos$Resource;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1088
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$Resource;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$Resource;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/backup/BackupProtos$Resource;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/launcher3/backup/BackupProtos$Resource;
    .registers 2

    .prologue
    .line 1035
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Resource;->dpi:I

    .line 1036
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Resource;->data:[B

    .line 1037
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Resource;->cachedSize:I

    .line 1038
    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 4

    .prologue
    .line 1051
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1053
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher3/backup/BackupProtos$Resource;->dpi:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1055
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/launcher3/backup/BackupProtos$Resource;->data:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1056
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$Resource;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1064
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1065
    sparse-switch v0, :sswitch_data_1c

    .line 1069
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1070
    :sswitch_d
    return-object p0

    .line 1075
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Resource;->dpi:I

    goto :goto_0

    .line 1079
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Resource;->data:[B

    goto :goto_0

    .line 1065
    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_15
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/backup/BackupProtos$Resource;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$Resource;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1044
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Resource;->dpi:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1045
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Resource;->data:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 1046
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1047
    return-void
.end method
