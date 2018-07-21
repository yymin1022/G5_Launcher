.class public final Lcom/android/launcher3/backup/BackupProtos$Widget;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/backup/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Widget"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Widget;


# instance fields
.field public configure:Z

.field public icon:Lcom/android/launcher3/backup/BackupProtos$Resource;

.field public label:Ljava/lang/String;

.field public minSpanX:I

.field public minSpanY:I

.field public preview:Lcom/android/launcher3/backup/BackupProtos$Resource;

.field public provider:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1136
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1137
    invoke-virtual {p0}, Lcom/android/launcher3/backup/BackupProtos$Widget;->clear()Lcom/android/launcher3/backup/BackupProtos$Widget;

    .line 1138
    return-void
.end method

.method public static emptyArray()[Lcom/android/launcher3/backup/BackupProtos$Widget;
    .registers 2

    .prologue
    .line 1104
    sget-object v0, Lcom/android/launcher3/backup/BackupProtos$Widget;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Widget;

    if-nez v0, :cond_11

    .line 1106
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1107
    :try_start_7
    sget-object v0, Lcom/android/launcher3/backup/BackupProtos$Widget;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Widget;

    if-nez v0, :cond_10

    .line 1108
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/backup/BackupProtos$Widget;

    sput-object v0, Lcom/android/launcher3/backup/BackupProtos$Widget;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Widget;

    .line 1105
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    .line 1112
    :cond_11
    sget-object v0, Lcom/android/launcher3/backup/BackupProtos$Widget;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Widget;

    return-object v0

    .line 1105
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$Widget;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1270
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$Widget;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$Widget;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/backup/BackupProtos$Widget;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$Widget;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/backup/BackupProtos$Widget;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1264
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$Widget;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$Widget;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/backup/BackupProtos$Widget;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/launcher3/backup/BackupProtos$Widget;
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 1141
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    .line 1142
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    .line 1143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->configure:Z

    .line 1144
    iput-object v2, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->icon:Lcom/android/launcher3/backup/BackupProtos$Resource;

    .line 1145
    iput-object v2, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->preview:Lcom/android/launcher3/backup/BackupProtos$Resource;

    .line 1146
    iput v1, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->minSpanX:I

    .line 1147
    iput v1, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->minSpanY:I

    .line 1148
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->cachedSize:I

    .line 1149
    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 1179
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1181
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1182
    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1184
    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1186
    :cond_1e
    iget-boolean v1, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->configure:Z

    if-eqz v1, :cond_2a

    .line 1188
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->configure:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1190
    :cond_2a
    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->icon:Lcom/android/launcher3/backup/BackupProtos$Resource;

    if-eqz v1, :cond_36

    .line 1192
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->icon:Lcom/android/launcher3/backup/BackupProtos$Resource;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1194
    :cond_36
    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->preview:Lcom/android/launcher3/backup/BackupProtos$Resource;

    if-eqz v1, :cond_42

    .line 1196
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->preview:Lcom/android/launcher3/backup/BackupProtos$Resource;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1198
    :cond_42
    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->minSpanX:I

    if-eq v1, v3, :cond_4e

    .line 1200
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->minSpanX:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1202
    :cond_4e
    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->minSpanY:I

    if-eq v1, v3, :cond_5a

    .line 1204
    const/4 v1, 0x7

    iget v2, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->minSpanY:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1206
    :cond_5a
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$Widget;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1214
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1215
    sparse-switch v0, :sswitch_data_54

    .line 1219
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1220
    :sswitch_d
    return-object p0

    .line 1225
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    goto :goto_0

    .line 1229
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    goto :goto_0

    .line 1233
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->configure:Z

    goto :goto_0

    .line 1237
    :sswitch_23
    iget-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->icon:Lcom/android/launcher3/backup/BackupProtos$Resource;

    if-nez v0, :cond_2e

    .line 1238
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$Resource;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$Resource;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->icon:Lcom/android/launcher3/backup/BackupProtos$Resource;

    .line 1240
    :cond_2e
    iget-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->icon:Lcom/android/launcher3/backup/BackupProtos$Resource;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1244
    :sswitch_34
    iget-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->preview:Lcom/android/launcher3/backup/BackupProtos$Resource;

    if-nez v0, :cond_3f

    .line 1245
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$Resource;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$Resource;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->preview:Lcom/android/launcher3/backup/BackupProtos$Resource;

    .line 1247
    :cond_3f
    iget-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->preview:Lcom/android/launcher3/backup/BackupProtos$Resource;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1251
    :sswitch_45
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->minSpanX:I

    goto :goto_0

    .line 1255
    :sswitch_4c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->minSpanY:I

    goto :goto_0

    .line 1215
    nop

    :sswitch_data_54
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_15
        0x18 -> :sswitch_1c
        0x22 -> :sswitch_23
        0x2a -> :sswitch_34
        0x30 -> :sswitch_45
        0x38 -> :sswitch_4c
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
    invoke-virtual {p0, p1}, Lcom/android/launcher3/backup/BackupProtos$Widget;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$Widget;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 1155
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1156
    iget-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1157
    iget-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1159
    :cond_16
    iget-boolean v0, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->configure:Z

    if-eqz v0, :cond_20

    .line 1160
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->configure:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1162
    :cond_20
    iget-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->icon:Lcom/android/launcher3/backup/BackupProtos$Resource;

    if-eqz v0, :cond_2a

    .line 1163
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->icon:Lcom/android/launcher3/backup/BackupProtos$Resource;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1165
    :cond_2a
    iget-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->preview:Lcom/android/launcher3/backup/BackupProtos$Resource;

    if-eqz v0, :cond_34

    .line 1166
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->preview:Lcom/android/launcher3/backup/BackupProtos$Resource;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1168
    :cond_34
    iget v0, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->minSpanX:I

    if-eq v0, v2, :cond_3e

    .line 1169
    const/4 v0, 0x6

    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->minSpanX:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1171
    :cond_3e
    iget v0, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->minSpanY:I

    if-eq v0, v2, :cond_48

    .line 1172
    const/4 v0, 0x7

    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Widget;->minSpanY:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1174
    :cond_48
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1175
    return-void
.end method
