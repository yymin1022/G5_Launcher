.class public final Lcom/android/launcher3/backup/BackupProtos$Key;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/backup/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# static fields
.field public static final FAVORITE:I = 0x1

.field public static final ICON:I = 0x3

.field public static final SCREEN:I = 0x2

.field public static final WIDGET:I = 0x4

.field private static volatile _emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Key;


# instance fields
.field public checksum:J

.field public id:J

.field public name:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcom/android/launcher3/backup/BackupProtos$Key;->clear()Lcom/android/launcher3/backup/BackupProtos$Key;

    .line 45
    return-void
.end method

.method public static emptyArray()[Lcom/android/launcher3/backup/BackupProtos$Key;
    .registers 2

    .prologue
    .line 20
    sget-object v0, Lcom/android/launcher3/backup/BackupProtos$Key;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Key;

    if-nez v0, :cond_11

    .line 22
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_7
    sget-object v0, Lcom/android/launcher3/backup/BackupProtos$Key;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Key;

    if-nez v0, :cond_10

    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/backup/BackupProtos$Key;

    sput-object v0, Lcom/android/launcher3/backup/BackupProtos$Key;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Key;

    .line 21
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    .line 28
    :cond_11
    sget-object v0, Lcom/android/launcher3/backup/BackupProtos$Key;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Key;

    return-object v0

    .line 21
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$Key;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$Key;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$Key;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/backup/BackupProtos$Key;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$Key;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/backup/BackupProtos$Key;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$Key;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$Key;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/backup/BackupProtos$Key;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/launcher3/backup/BackupProtos$Key;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Key;->type:I

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    .line 50
    iput-wide v2, p0, Lcom/android/launcher3/backup/BackupProtos$Key;->id:J

    .line 51
    iput-wide v2, p0, Lcom/android/launcher3/backup/BackupProtos$Key;->checksum:J

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Key;->cachedSize:I

    .line 53
    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 74
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 76
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher3/backup/BackupProtos$Key;->type:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 79
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_20
    iget-wide v2, p0, Lcom/android/launcher3/backup/BackupProtos$Key;->id:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2e

    .line 83
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/android/launcher3/backup/BackupProtos$Key;->id:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_2e
    iget-wide v2, p0, Lcom/android/launcher3/backup/BackupProtos$Key;->checksum:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3c

    .line 87
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/android/launcher3/backup/BackupProtos$Key;->checksum:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    :cond_3c
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$Key;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 98
    sparse-switch v0, :sswitch_data_2e

    .line 102
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    :sswitch_d
    return-object p0

    .line 108
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 109
    packed-switch v0, :pswitch_data_44

    goto :goto_0

    .line 114
    :pswitch_16
    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Key;->type:I

    goto :goto_0

    .line 120
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    goto :goto_0

    .line 124
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/backup/BackupProtos$Key;->id:J

    goto :goto_0

    .line 128
    :sswitch_27
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/backup/BackupProtos$Key;->checksum:J

    goto :goto_0

    .line 98
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_19
        0x18 -> :sswitch_20
        0x20 -> :sswitch_27
    .end sparse-switch

    .line 109
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
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
    invoke-virtual {p0, p1}, Lcom/android/launcher3/backup/BackupProtos$Key;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$Key;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 59
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Key;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 61
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 63
    :cond_18
    iget-wide v0, p0, Lcom/android/launcher3/backup/BackupProtos$Key;->id:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_24

    .line 64
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/android/launcher3/backup/BackupProtos$Key;->id:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 66
    :cond_24
    iget-wide v0, p0, Lcom/android/launcher3/backup/BackupProtos$Key;->checksum:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_30

    .line 67
    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/android/launcher3/backup/BackupProtos$Key;->checksum:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 69
    :cond_30
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 70
    return-void
.end method
