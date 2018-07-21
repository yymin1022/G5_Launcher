.class public final Lcom/android/launcher3/backup/BackupProtos$Journal;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/backup/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Journal"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Journal;


# instance fields
.field public appVersion:I

.field public backupVersion:I

.field public bytes:J

.field public key:[Lcom/android/launcher3/backup/BackupProtos$Key;

.field public profile:Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

.field public rows:I

.field public t:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 390
    invoke-virtual {p0}, Lcom/android/launcher3/backup/BackupProtos$Journal;->clear()Lcom/android/launcher3/backup/BackupProtos$Journal;

    .line 391
    return-void
.end method

.method public static emptyArray()[Lcom/android/launcher3/backup/BackupProtos$Journal;
    .registers 2

    .prologue
    .line 357
    sget-object v0, Lcom/android/launcher3/backup/BackupProtos$Journal;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Journal;

    if-nez v0, :cond_11

    .line 359
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 360
    :try_start_7
    sget-object v0, Lcom/android/launcher3/backup/BackupProtos$Journal;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Journal;

    if-nez v0, :cond_10

    .line 361
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/backup/BackupProtos$Journal;

    sput-object v0, Lcom/android/launcher3/backup/BackupProtos$Journal;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Journal;

    .line 358
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    .line 365
    :cond_11
    sget-object v0, Lcom/android/launcher3/backup/BackupProtos$Journal;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Journal;

    return-object v0

    .line 358
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$Journal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$Journal;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$Journal;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/backup/BackupProtos$Journal;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$Journal;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/backup/BackupProtos$Journal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 536
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$Journal;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$Journal;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/backup/BackupProtos$Journal;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/launcher3/backup/BackupProtos$Journal;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 394
    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->appVersion:I

    .line 395
    iput-wide v2, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->t:J

    .line 396
    iput-wide v2, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->bytes:J

    .line 397
    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->rows:I

    .line 398
    invoke-static {}, Lcom/android/launcher3/backup/BackupProtos$Key;->emptyArray()[Lcom/android/launcher3/backup/BackupProtos$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->key:[Lcom/android/launcher3/backup/BackupProtos$Key;

    .line 399
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->backupVersion:I

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->profile:Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    .line 401
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->cachedSize:I

    .line 402
    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 435
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 437
    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->appVersion:I

    invoke-static {v6, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 439
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->t:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 440
    iget-wide v2, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->bytes:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_24

    .line 442
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->bytes:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 444
    :cond_24
    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->rows:I

    if-eqz v1, :cond_30

    .line 446
    const/4 v1, 0x4

    iget v2, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->rows:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 448
    :cond_30
    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->key:[Lcom/android/launcher3/backup/BackupProtos$Key;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->key:[Lcom/android/launcher3/backup/BackupProtos$Key;

    array-length v1, v1

    if-lez v1, :cond_43

    .line 449
    const/4 v1, 0x0

    move v7, v1

    move v1, v0

    move v0, v7

    :goto_3d
    iget-object v2, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->key:[Lcom/android/launcher3/backup/BackupProtos$Key;

    array-length v2, v2

    if-lt v0, v2, :cond_5c

    move v0, v1

    .line 457
    :cond_43
    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->backupVersion:I

    if-eq v1, v6, :cond_4f

    .line 459
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->backupVersion:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 461
    :cond_4f
    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->profile:Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    if-eqz v1, :cond_5b

    .line 463
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->profile:Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 465
    :cond_5b
    return v0

    .line 450
    :cond_5c
    iget-object v2, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->key:[Lcom/android/launcher3/backup/BackupProtos$Key;

    aget-object v2, v2, v0

    .line 451
    if-eqz v2, :cond_68

    .line 453
    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 449
    :cond_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$Journal;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 473
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 474
    sparse-switch v0, :sswitch_data_82

    .line 478
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    :sswitch_e
    return-object p0

    .line 484
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->appVersion:I

    goto :goto_1

    .line 488
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->t:J

    goto :goto_1

    .line 492
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->bytes:J

    goto :goto_1

    .line 496
    :sswitch_24
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->rows:I

    goto :goto_1

    .line 501
    :sswitch_2b
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 502
    iget-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->key:[Lcom/android/launcher3/backup/BackupProtos$Key;

    if-nez v0, :cond_54

    move v0, v1

    .line 504
    :goto_36
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/android/launcher3/backup/BackupProtos$Key;

    .line 505
    if-eqz v0, :cond_40

    .line 506
    iget-object v3, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->key:[Lcom/android/launcher3/backup/BackupProtos$Key;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 508
    :cond_40
    :goto_40
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_58

    .line 514
    new-instance v3, Lcom/android/launcher3/backup/BackupProtos$Key;

    invoke-direct {v3}, Lcom/android/launcher3/backup/BackupProtos$Key;-><init>()V

    aput-object v3, v2, v0

    .line 515
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 516
    iput-object v2, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->key:[Lcom/android/launcher3/backup/BackupProtos$Key;

    goto :goto_1

    .line 502
    :cond_54
    iget-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->key:[Lcom/android/launcher3/backup/BackupProtos$Key;

    array-length v0, v0

    goto :goto_36

    .line 509
    :cond_58
    new-instance v3, Lcom/android/launcher3/backup/BackupProtos$Key;

    invoke-direct {v3}, Lcom/android/launcher3/backup/BackupProtos$Key;-><init>()V

    aput-object v3, v2, v0

    .line 510
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 511
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 520
    :sswitch_6a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->backupVersion:I

    goto :goto_1

    .line 524
    :sswitch_71
    iget-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->profile:Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    if-nez v0, :cond_7c

    .line 525
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->profile:Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    .line 527
    :cond_7c
    iget-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->profile:Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_1

    .line 474
    :sswitch_data_82
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1d
        0x20 -> :sswitch_24
        0x2a -> :sswitch_2b
        0x30 -> :sswitch_6a
        0x3a -> :sswitch_71
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
    invoke-virtual {p0, p1}, Lcom/android/launcher3/backup/BackupProtos$Journal;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$Journal;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 408
    iget v0, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->appVersion:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 409
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->t:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 410
    iget-wide v0, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->bytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    .line 411
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->bytes:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 413
    :cond_1a
    iget v0, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->rows:I

    if-eqz v0, :cond_24

    .line 414
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->rows:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 416
    :cond_24
    iget-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->key:[Lcom/android/launcher3/backup/BackupProtos$Key;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->key:[Lcom/android/launcher3/backup/BackupProtos$Key;

    array-length v0, v0

    if-lez v0, :cond_33

    .line 417
    const/4 v0, 0x0

    :goto_2e
    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->key:[Lcom/android/launcher3/backup/BackupProtos$Key;

    array-length v1, v1

    if-lt v0, v1, :cond_4b

    .line 424
    :cond_33
    iget v0, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->backupVersion:I

    if-eq v0, v4, :cond_3d

    .line 425
    const/4 v0, 0x6

    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->backupVersion:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 427
    :cond_3d
    iget-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->profile:Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    if-eqz v0, :cond_47

    .line 428
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->profile:Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 430
    :cond_47
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 431
    return-void

    .line 418
    :cond_4b
    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Journal;->key:[Lcom/android/launcher3/backup/BackupProtos$Key;

    aget-object v1, v1, v0

    .line 419
    if-eqz v1, :cond_55

    .line 420
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 417
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e
.end method
