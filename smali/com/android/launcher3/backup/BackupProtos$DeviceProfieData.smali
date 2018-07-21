.class public final Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/backup/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceProfieData"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;


# instance fields
.field public allappsRank:I

.field public desktopCols:F

.field public desktopRows:F

.field public hotseatCount:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 268
    invoke-virtual {p0}, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->clear()Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    .line 269
    return-void
.end method

.method public static emptyArray()[Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;
    .registers 2

    .prologue
    .line 244
    sget-object v0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    if-nez v0, :cond_11

    .line 246
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    :try_start_7
    sget-object v0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    if-nez v0, :cond_10

    .line 248
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    sput-object v0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    .line 245
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    .line 252
    :cond_11
    sget-object v0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    return-object v0

    .line 245
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 341
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 272
    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->desktopRows:F

    .line 273
    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->desktopCols:F

    .line 274
    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->hotseatCount:F

    .line 275
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    .line 276
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->cachedSize:I

    .line 277
    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 4

    .prologue
    .line 292
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 294
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->desktopRows:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 296
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->desktopCols:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 298
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->hotseatCount:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 300
    const/4 v1, 0x4

    iget v2, p0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 310
    sparse-switch v0, :sswitch_data_2a

    .line 314
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    :sswitch_d
    return-object p0

    .line 320
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->desktopRows:F

    goto :goto_0

    .line 324
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->desktopCols:F

    goto :goto_0

    .line 328
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->hotseatCount:F

    goto :goto_0

    .line 332
    :sswitch_23
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    goto :goto_0

    .line 310
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xd -> :sswitch_e
        0x15 -> :sswitch_15
        0x1d -> :sswitch_1c
        0x20 -> :sswitch_23
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
    invoke-virtual {p0, p1}, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

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
    .line 283
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->desktopRows:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 284
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->desktopCols:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 285
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->hotseatCount:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 286
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 287
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 288
    return-void
.end method
