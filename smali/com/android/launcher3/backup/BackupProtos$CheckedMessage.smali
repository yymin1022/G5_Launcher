.class public final Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/backup/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CheckedMessage"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;


# instance fields
.field public checksum:J

.field public payload:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 171
    invoke-virtual {p0}, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;->clear()Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;

    .line 172
    return-void
.end method

.method public static emptyArray()[Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;
    .registers 2

    .prologue
    .line 153
    sget-object v0, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;

    if-nez v0, :cond_11

    .line 155
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_7
    sget-object v0, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;

    if-nez v0, :cond_10

    .line 157
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;

    sput-object v0, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;

    .line 154
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    .line 161
    :cond_11
    sget-object v0, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;

    return-object v0

    .line 154
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;
    .registers 3

    .prologue
    .line 175
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;->payload:[B

    .line 176
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;->checksum:J

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;->cachedSize:I

    .line 178
    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 5

    .prologue
    .line 191
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 193
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;->payload:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 195
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;->checksum:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 196
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 205
    sparse-switch v0, :sswitch_data_1c

    .line 209
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    :sswitch_d
    return-object p0

    .line 215
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;->payload:[B

    goto :goto_0

    .line 219
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;->checksum:J

    goto :goto_0

    .line 205
    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_15
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
    invoke-virtual {p0, p1}, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;->payload:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 185
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;->checksum:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 186
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 187
    return-void
.end method
