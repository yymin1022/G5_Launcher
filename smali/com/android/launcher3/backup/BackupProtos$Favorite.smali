.class public final Lcom/android/launcher3/backup/BackupProtos$Favorite;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/backup/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Favorite"
.end annotation


# static fields
.field public static final TARGET_BROWSER:I = 0x4

.field public static final TARGET_CAMERA:I = 0x6

.field public static final TARGET_EMAIL:I = 0x3

.field public static final TARGET_GALLERY:I = 0x5

.field public static final TARGET_MESSENGER:I = 0x2

.field public static final TARGET_NONE:I = 0x0

.field public static final TARGET_PHONE:I = 0x1

.field private static volatile _emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Favorite;


# instance fields
.field public appWidgetId:I

.field public appWidgetProvider:Ljava/lang/String;

.field public cellX:I

.field public cellY:I

.field public container:I

.field public displayMode:I

.field public icon:[B

.field public iconPackage:Ljava/lang/String;

.field public iconResource:Ljava/lang/String;

.field public iconType:I

.field public id:J

.field public intent:Ljava/lang/String;

.field public itemType:I

.field public screen:I

.field public spanX:I

.field public spanY:I

.field public targetType:I

.field public title:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 629
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 630
    invoke-virtual {p0}, Lcom/android/launcher3/backup/BackupProtos$Favorite;->clear()Lcom/android/launcher3/backup/BackupProtos$Favorite;

    .line 631
    return-void
.end method

.method public static emptyArray()[Lcom/android/launcher3/backup/BackupProtos$Favorite;
    .registers 2

    .prologue
    .line 561
    sget-object v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Favorite;

    if-nez v0, :cond_11

    .line 563
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 564
    :try_start_7
    sget-object v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Favorite;

    if-nez v0, :cond_10

    .line 565
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/backup/BackupProtos$Favorite;

    sput-object v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Favorite;

    .line 562
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    .line 569
    :cond_11
    sget-object v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->_emptyArray:[Lcom/android/launcher3/backup/BackupProtos$Favorite;

    return-object v0

    .line 562
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$Favorite;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 908
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$Favorite;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/backup/BackupProtos$Favorite;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$Favorite;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/backup/BackupProtos$Favorite;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 902
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$Favorite;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/launcher3/backup/BackupProtos$Favorite;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 634
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->id:J

    .line 635
    iput v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->itemType:I

    .line 636
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    .line 637
    iput v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->container:I

    .line 638
    iput v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->screen:I

    .line 639
    iput v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->cellX:I

    .line 640
    iput v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->cellY:I

    .line 641
    iput v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->spanX:I

    .line 642
    iput v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->spanY:I

    .line 643
    iput v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->displayMode:I

    .line 644
    iput v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->appWidgetId:I

    .line 645
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    .line 646
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    .line 647
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->uri:Ljava/lang/String;

    .line 648
    iput v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconType:I

    .line 649
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    .line 650
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    .line 651
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->icon:[B

    .line 652
    iput v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->targetType:I

    .line 653
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->cachedSize:I

    .line 654
    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 5

    .prologue
    .line 718
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 720
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->id:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 722
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->itemType:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 723
    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 725
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 727
    :cond_26
    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->container:I

    if-eqz v1, :cond_32

    .line 729
    const/4 v1, 0x4

    iget v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->container:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 731
    :cond_32
    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->screen:I

    if-eqz v1, :cond_3e

    .line 733
    const/4 v1, 0x5

    iget v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->screen:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 735
    :cond_3e
    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->cellX:I

    if-eqz v1, :cond_4a

    .line 737
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->cellX:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 739
    :cond_4a
    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->cellY:I

    if-eqz v1, :cond_56

    .line 741
    const/4 v1, 0x7

    iget v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->cellY:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 743
    :cond_56
    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->spanX:I

    if-eqz v1, :cond_63

    .line 745
    const/16 v1, 0x8

    iget v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->spanX:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 747
    :cond_63
    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->spanY:I

    if-eqz v1, :cond_70

    .line 749
    const/16 v1, 0x9

    iget v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->spanY:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 751
    :cond_70
    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->displayMode:I

    if-eqz v1, :cond_7d

    .line 753
    const/16 v1, 0xa

    iget v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->displayMode:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 755
    :cond_7d
    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->appWidgetId:I

    if-eqz v1, :cond_8a

    .line 757
    const/16 v1, 0xb

    iget v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->appWidgetId:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 759
    :cond_8a
    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9d

    .line 761
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 763
    :cond_9d
    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b0

    .line 765
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 767
    :cond_b0
    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->uri:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c3

    .line 769
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->uri:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 771
    :cond_c3
    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconType:I

    if-eqz v1, :cond_d0

    .line 773
    const/16 v1, 0xf

    iget v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconType:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 775
    :cond_d0
    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e3

    .line 777
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 779
    :cond_e3
    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f6

    .line 781
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 783
    :cond_f6
    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->icon:[B

    sget-object v2, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_109

    .line 785
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->icon:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 787
    :cond_109
    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->targetType:I

    if-eqz v1, :cond_116

    .line 789
    const/16 v1, 0x13

    iget v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->targetType:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 791
    :cond_116
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$Favorite;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 799
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 800
    sparse-switch v0, :sswitch_data_9c

    .line 804
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 805
    :sswitch_d
    return-object p0

    .line 810
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->id:J

    goto :goto_0

    .line 814
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->itemType:I

    goto :goto_0

    .line 818
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    goto :goto_0

    .line 822
    :sswitch_23
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->container:I

    goto :goto_0

    .line 826
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->screen:I

    goto :goto_0

    .line 830
    :sswitch_31
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->cellX:I

    goto :goto_0

    .line 834
    :sswitch_38
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->cellY:I

    goto :goto_0

    .line 838
    :sswitch_3f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->spanX:I

    goto :goto_0

    .line 842
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->spanY:I

    goto :goto_0

    .line 846
    :sswitch_4d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->displayMode:I

    goto :goto_0

    .line 850
    :sswitch_54
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->appWidgetId:I

    goto :goto_0

    .line 854
    :sswitch_5b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    goto :goto_0

    .line 858
    :sswitch_62
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    goto :goto_0

    .line 862
    :sswitch_69
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->uri:Ljava/lang/String;

    goto :goto_0

    .line 866
    :sswitch_70
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconType:I

    goto :goto_0

    .line 870
    :sswitch_77
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    goto :goto_0

    .line 874
    :sswitch_7e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    goto/16 :goto_0

    .line 878
    :sswitch_86
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->icon:[B

    goto/16 :goto_0

    .line 882
    :sswitch_8e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 883
    packed-switch v0, :pswitch_data_ee

    goto/16 :goto_0

    .line 891
    :pswitch_97
    iput v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->targetType:I

    goto/16 :goto_0

    .line 800
    nop

    :sswitch_data_9c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_15
        0x1a -> :sswitch_1c
        0x20 -> :sswitch_23
        0x28 -> :sswitch_2a
        0x30 -> :sswitch_31
        0x38 -> :sswitch_38
        0x40 -> :sswitch_3f
        0x48 -> :sswitch_46
        0x50 -> :sswitch_4d
        0x58 -> :sswitch_54
        0x62 -> :sswitch_5b
        0x6a -> :sswitch_62
        0x72 -> :sswitch_69
        0x78 -> :sswitch_70
        0x82 -> :sswitch_77
        0x8a -> :sswitch_7e
        0x92 -> :sswitch_86
        0x98 -> :sswitch_8e
    .end sparse-switch

    .line 883
    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_97
        :pswitch_97
        :pswitch_97
        :pswitch_97
        :pswitch_97
        :pswitch_97
        :pswitch_97
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
    invoke-virtual {p0, p1}, Lcom/android/launcher3/backup/BackupProtos$Favorite;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/backup/BackupProtos$Favorite;

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
    .line 660
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->id:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 661
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->itemType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 662
    iget-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 663
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 665
    :cond_1c
    iget v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->container:I

    if-eqz v0, :cond_26

    .line 666
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->container:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 668
    :cond_26
    iget v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->screen:I

    if-eqz v0, :cond_30

    .line 669
    const/4 v0, 0x5

    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->screen:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 671
    :cond_30
    iget v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->cellX:I

    if-eqz v0, :cond_3a

    .line 672
    const/4 v0, 0x6

    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->cellX:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 674
    :cond_3a
    iget v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->cellY:I

    if-eqz v0, :cond_44

    .line 675
    const/4 v0, 0x7

    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->cellY:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 677
    :cond_44
    iget v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->spanX:I

    if-eqz v0, :cond_4f

    .line 678
    const/16 v0, 0x8

    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->spanX:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 680
    :cond_4f
    iget v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->spanY:I

    if-eqz v0, :cond_5a

    .line 681
    const/16 v0, 0x9

    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->spanY:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 683
    :cond_5a
    iget v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->displayMode:I

    if-eqz v0, :cond_65

    .line 684
    const/16 v0, 0xa

    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->displayMode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 686
    :cond_65
    iget v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->appWidgetId:I

    if-eqz v0, :cond_70

    .line 687
    const/16 v0, 0xb

    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->appWidgetId:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 689
    :cond_70
    iget-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    .line 690
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 692
    :cond_81
    iget-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    .line 693
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 695
    :cond_92
    iget-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->uri:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    .line 696
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->uri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 698
    :cond_a3
    iget v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconType:I

    if-eqz v0, :cond_ae

    .line 699
    const/16 v0, 0xf

    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 701
    :cond_ae
    iget-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bf

    .line 702
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 704
    :cond_bf
    iget-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d0

    .line 705
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 707
    :cond_d0
    iget-object v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->icon:[B

    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_e1

    .line 708
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->icon:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 710
    :cond_e1
    iget v0, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->targetType:I

    if-eqz v0, :cond_ec

    .line 711
    const/16 v0, 0x13

    iget v1, p0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->targetType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 713
    :cond_ec
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 714
    return-void
.end method
