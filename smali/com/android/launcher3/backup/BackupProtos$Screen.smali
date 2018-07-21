.class public final Lcom/android/launcher3/backup/BackupProtos$Screen;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/backup/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Screen"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Screen;


# instance fields
.field public id:J

.field public rank:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 935
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 936
    invoke-virtual {p0}, Lcom/android/launcher3/backup/BackupProtos$Screen;->clear()Lcom/android/launcher3/backup/BackupProtos$Screen;

    .line 937
    return-void
.end method

.method public static emptyArray()[Lcom/android/launcher3/backup/BackupProtos$Screen;
    .registers 2

    .prologue
    .line 918
    sget-object v0, Lcom/android/launcher3/backup/BackupProtos$Screen;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Screen;

    if-nez v0, :cond_11

    .line 920
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 921
    :try_start_7
    sget-object v0, Lcom/android/launcher3/backup/BackupProtos$Screen;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Screen;

    if-nez v0, :cond_10

    .line 922
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/backup/BackupProtos$Screen;

    sput-object v0, Lcom/android/launcher3/backup/BackupProtos$Screen;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Screen;

    .line 919
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    .line 926
    :cond_11
    sget-object v0, Lcom/android/launcher3/backup/BackupProtos$Screen;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Screen;

    return-object v0

    .line 919
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$Screen;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1003
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$Screen;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$Screen;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/backup/BackupProtos$Screen;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$Screen;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/backup/BackupProtos$Screen;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 997
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$Screen;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$Screen;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/backup/BackupProtos$Screen;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/launcher3/backup/BackupProtos$Screen;
    .registers 3

    .prologue
    .line 940
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/backup/BackupProtos$Screen;->id:J

    .line 941
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Screen;->rank:I

    .line 942
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Screen;->cachedSize:I

    .line 943
    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 5

    .prologue
    .line 958
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 960
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/launcher3/backup/BackupProtos$Screen;->id:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 961
    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Screen;->rank:I

    if-eqz v1, :cond_18

    .line 963
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/launcher3/backup/BackupProtos$Screen;->rank:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 965
    :cond_18
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$Screen;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 973
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 974
    sparse-switch v0, :sswitch_data_1c

    .line 978
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 979
    :sswitch_d
    return-object p0

    .line 984
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/backup/BackupProtos$Screen;->id:J

    goto :goto_0

    .line 988
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Screen;->rank:I

    goto :goto_0

    .line 974
    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
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
    invoke-virtual {p0, p1}, Lcom/android/launcher3/backup/BackupProtos$Screen;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$Screen;

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
    .line 949
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/android/launcher3/backup/BackupProtos$Screen;->id:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 950
    iget v0, p0, Lcom/android/launcher3/backup/BackupProtos$Screen;->rank:I

    if-eqz v0, :cond_10

    .line 951
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Screen;->rank:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 953
    :cond_10
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 954
    return-void
.end method
