.class Lcom/google/protobuf/nano/Extension$PrimitiveExtension;
.super Lcom/google/protobuf/nano/Extension;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrimitiveExtension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/protobuf/nano/Extension",
        "<TM;TT;>;"
    }
.end annotation


# instance fields
.field private final nonPackedTag:I

.field private final packedTag:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;IZII)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<TT;>;IZII)V"
        }
    .end annotation

    .prologue
    .line 333
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZLcom/google/protobuf/nano/Extension$1;)V

    .line 334
    iput p5, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    .line 335
    iput p6, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    .line 336
    return-void
.end method

.method private computePackedDataSize(Ljava/lang/Object;)I
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 546
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 547
    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    packed-switch v2, :pswitch_data_b4

    .line 605
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected non-packable type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :pswitch_27
    mul-int/lit8 v0, v0, 0x4

    .line 607
    :goto_29
    :pswitch_29
    return v0

    .line 560
    :pswitch_2a
    mul-int/lit8 v0, v0, 0x8

    .line 561
    goto :goto_29

    :pswitch_2d
    move v2, v1

    .line 563
    :goto_2e
    if-ge v2, v0, :cond_3e

    .line 564
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v3, v1

    .line 563
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_2e

    :cond_3e
    move v0, v1

    .line 567
    goto :goto_29

    :pswitch_40
    move v2, v1

    .line 569
    :goto_41
    if-ge v2, v0, :cond_51

    .line 570
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v3, v1

    .line 569
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_41

    :cond_51
    move v0, v1

    .line 573
    goto :goto_29

    :pswitch_53
    move v2, v1

    .line 575
    :goto_54
    if-ge v2, v0, :cond_64

    .line 576
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v3, v1

    .line 575
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_54

    :cond_64
    move v0, v1

    .line 579
    goto :goto_29

    :pswitch_66
    move v2, v1

    .line 581
    :goto_67
    if-ge v2, v0, :cond_77

    .line 582
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v3, v1

    .line 581
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_67

    :cond_77
    move v0, v1

    .line 585
    goto :goto_29

    :pswitch_79
    move v2, v1

    .line 587
    :goto_7a
    if-ge v2, v0, :cond_8a

    .line 588
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v3, v1

    .line 587
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_7a

    :cond_8a
    move v0, v1

    .line 591
    goto :goto_29

    :pswitch_8c
    move v2, v1

    .line 593
    :goto_8d
    if-ge v2, v0, :cond_9d

    .line 594
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v3, v1

    .line 593
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_8d

    :cond_9d
    move v0, v1

    .line 597
    goto :goto_29

    :pswitch_9f
    move v2, v1

    .line 599
    :goto_a0
    if-ge v2, v0, :cond_b0

    .line 600
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSizeNoTag(I)I

    move-result v3

    add-int/2addr v3, v1

    .line 599
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_a0

    :cond_b0
    move v0, v1

    .line 603
    goto/16 :goto_29

    .line 547
    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_27
        :pswitch_66
        :pswitch_8c
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_29
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_53
        :pswitch_9f
        :pswitch_27
        :pswitch_2a
        :pswitch_40
        :pswitch_79
    .end packed-switch
.end method


# virtual methods
.method protected computeRepeatedSerializedSize(Ljava/lang/Object;)I
    .registers 8

    .prologue
    .line 612
    iget v0, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v0, v1, :cond_b

    .line 614
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/Extension;->computeRepeatedSerializedSize(Ljava/lang/Object;)I

    move-result v0

    .line 620
    :goto_a
    return v0

    .line 615
    :cond_b
    iget v0, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    if-ne v0, v1, :cond_22

    .line 617
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->computePackedDataSize(Ljava/lang/Object;)I

    move-result v0

    .line 618
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 620
    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_a

    .line 622
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    iget v3, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x7c

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unexpected repeated extension tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", unequal to both non-packed variant "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and packed variant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final computeSingularSerializedSize(Ljava/lang/Object;)I
    .registers 6

    .prologue
    .line 630
    iget v0, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    .line 631
    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    packed-switch v1, :pswitch_data_d6

    .line 683
    :pswitch_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :pswitch_28
    check-cast p1, Ljava/lang/Double;

    .line 634
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v0

    .line 681
    :goto_32
    return v0

    .line 636
    :pswitch_33
    check-cast p1, Ljava/lang/Float;

    .line 637
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v0

    goto :goto_32

    .line 639
    :pswitch_3e
    check-cast p1, Ljava/lang/Long;

    .line 640
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v0

    goto :goto_32

    .line 642
    :pswitch_49
    check-cast p1, Ljava/lang/Long;

    .line 643
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v0

    goto :goto_32

    .line 645
    :pswitch_54
    check-cast p1, Ljava/lang/Integer;

    .line 646
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    goto :goto_32

    .line 648
    :pswitch_5f
    check-cast p1, Ljava/lang/Long;

    .line 649
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v0

    goto :goto_32

    .line 651
    :pswitch_6a
    check-cast p1, Ljava/lang/Integer;

    .line 652
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v0

    goto :goto_32

    .line 654
    :pswitch_75
    check-cast p1, Ljava/lang/Boolean;

    .line 655
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v0

    goto :goto_32

    .line 657
    :pswitch_80
    check-cast p1, Ljava/lang/String;

    .line 658
    invoke-static {v0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    goto :goto_32

    .line 660
    :pswitch_87
    check-cast p1, [B

    check-cast p1, [B

    .line 661
    invoke-static {v0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v0

    goto :goto_32

    .line 663
    :pswitch_90
    check-cast p1, Ljava/lang/Integer;

    .line 664
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v0

    goto :goto_32

    .line 666
    :pswitch_9b
    check-cast p1, Ljava/lang/Integer;

    .line 667
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSize(II)I

    move-result v0

    goto :goto_32

    .line 669
    :pswitch_a6
    check-cast p1, Ljava/lang/Integer;

    .line 670
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32Size(II)I

    move-result v0

    goto :goto_32

    .line 673
    :pswitch_b1
    check-cast p1, Ljava/lang/Long;

    .line 674
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed64Size(IJ)I

    move-result v0

    goto/16 :goto_32

    .line 677
    :pswitch_bd
    check-cast p1, Ljava/lang/Integer;

    .line 678
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    move-result v0

    goto/16 :goto_32

    .line 680
    :pswitch_c9
    check-cast p1, Ljava/lang/Long;

    .line 681
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64Size(IJ)I

    move-result v0

    goto/16 :goto_32

    .line 631
    nop

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_28
        :pswitch_33
        :pswitch_3e
        :pswitch_49
        :pswitch_54
        :pswitch_5f
        :pswitch_6a
        :pswitch_75
        :pswitch_80
        :pswitch_b
        :pswitch_b
        :pswitch_87
        :pswitch_90
        :pswitch_9b
        :pswitch_a6
        :pswitch_b1
        :pswitch_bd
        :pswitch_c9
    .end packed-switch
.end method

.method protected readData(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 341
    :try_start_0
    iget v0, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readPrimitiveField(I)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 342
    :catch_7
    move-exception v0

    .line 343
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Error reading extension field"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected readDataInto(Lcom/google/protobuf/nano/UnknownFieldData;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/nano/UnknownFieldData;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    iget v0, p1, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v0, v1, :cond_14

    .line 352
    iget-object v0, p1, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->readData(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_13
    return-void

    .line 354
    :cond_14
    iget-object v0, p1, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    .line 357
    :try_start_1a
    invoke-virtual {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_21} :catch_2f

    .line 361
    :goto_21
    invoke-virtual {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->isAtEnd()Z

    move-result v1

    if-nez v1, :cond_13

    .line 362
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->readData(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 358
    :catch_2f
    move-exception v0

    .line 359
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Error reading extension field"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected writeRepeatedData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 447
    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v1, v2, :cond_b

    .line 449
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/nano/Extension;->writeRepeatedData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 542
    :cond_a
    return-void

    .line 450
    :cond_b
    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    if-ne v1, v2, :cond_f2

    .line 453
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 454
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->computePackedDataSize(Ljava/lang/Object;)I

    move-result v2

    .line 457
    :try_start_19
    iget v3, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-virtual {p2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 458
    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 459
    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    packed-switch v2, :pswitch_data_128

    .line 531
    :pswitch_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unpackable type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_43} :catch_43

    .line 533
    :catch_43
    move-exception v0

    .line 535
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 461
    :goto_4a
    :pswitch_4a
    if-ge v0, v1, :cond_a

    .line 462
    :try_start_4c
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getBoolean(Ljava/lang/Object;I)Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    .line 461
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 466
    :goto_56
    :pswitch_56
    if-ge v0, v1, :cond_a

    .line 467
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 471
    :goto_62
    :pswitch_62
    if-ge v0, v1, :cond_a

    .line 472
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 476
    :goto_6e
    :pswitch_6e
    if-ge v0, v1, :cond_a

    .line 477
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getFloat(Ljava/lang/Object;I)F

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    .line 481
    :goto_7a
    :pswitch_7a
    if-ge v0, v1, :cond_a

    .line 482
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_7a

    .line 486
    :goto_86
    :pswitch_86
    if-ge v0, v1, :cond_a

    .line 487
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_86

    .line 491
    :goto_92
    :pswitch_92
    if-ge v0, v1, :cond_a

    .line 492
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getDouble(Ljava/lang/Object;I)D

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_92

    .line 496
    :goto_9e
    :pswitch_9e
    if-ge v0, v1, :cond_a

    .line 497
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_9e

    .line 501
    :goto_aa
    :pswitch_aa
    if-ge v0, v1, :cond_a

    .line 502
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_aa

    .line 506
    :goto_b6
    :pswitch_b6
    if-ge v0, v1, :cond_a

    .line 507
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    .line 511
    :goto_c2
    :pswitch_c2
    if-ge v0, v1, :cond_a

    .line 512
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_c2

    .line 516
    :goto_ce
    :pswitch_ce
    if-ge v0, v1, :cond_a

    .line 517
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_ce

    .line 521
    :goto_da
    :pswitch_da
    if-ge v0, v1, :cond_a

    .line 522
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_da

    .line 526
    :goto_e6
    :pswitch_e6
    if-ge v0, v1, :cond_a

    .line 527
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_ef} :catch_43

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_e6

    .line 538
    :cond_f2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    iget v3, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x7c

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unexpected repeated extension tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", unequal to both non-packed variant "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and packed variant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    nop

    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_92
        :pswitch_6e
        :pswitch_c2
        :pswitch_da
        :pswitch_9e
        :pswitch_7a
        :pswitch_56
        :pswitch_4a
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_b6
        :pswitch_e6
        :pswitch_62
        :pswitch_86
        :pswitch_aa
        :pswitch_ce
    .end packed-switch
.end method

.method protected final writeSingularData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 7

    .prologue
    .line 370
    :try_start_0
    iget v0, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 371
    iget v0, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    packed-switch v0, :pswitch_data_ca

    .line 437
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_27} :catch_27

    .line 439
    :catch_27
    move-exception v0

    .line 441
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 373
    :pswitch_2e
    :try_start_2e
    check-cast p1, Ljava/lang/Double;

    .line 374
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    .line 443
    :goto_37
    return-void

    .line 377
    :pswitch_38
    check-cast p1, Ljava/lang/Float;

    .line 378
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    goto :goto_37

    .line 381
    :pswitch_42
    check-cast p1, Ljava/lang/Long;

    .line 382
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    goto :goto_37

    .line 385
    :pswitch_4c
    check-cast p1, Ljava/lang/Long;

    .line 386
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    goto :goto_37

    .line 389
    :pswitch_56
    check-cast p1, Ljava/lang/Integer;

    .line 390
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    goto :goto_37

    .line 393
    :pswitch_60
    check-cast p1, Ljava/lang/Long;

    .line 394
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    goto :goto_37

    .line 397
    :pswitch_6a
    check-cast p1, Ljava/lang/Integer;

    .line 398
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    goto :goto_37

    .line 401
    :pswitch_74
    check-cast p1, Ljava/lang/Boolean;

    .line 402
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    goto :goto_37

    .line 405
    :pswitch_7e
    check-cast p1, Ljava/lang/String;

    .line 406
    invoke-virtual {p2, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeStringNoTag(Ljava/lang/String;)V

    goto :goto_37

    .line 409
    :pswitch_84
    check-cast p1, [B

    check-cast p1, [B

    .line 410
    invoke-virtual {p2, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytesNoTag([B)V

    goto :goto_37

    .line 413
    :pswitch_8c
    check-cast p1, Ljava/lang/Integer;

    .line 414
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    goto :goto_37

    .line 417
    :pswitch_96
    check-cast p1, Ljava/lang/Integer;

    .line 418
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V

    goto :goto_37

    .line 421
    :pswitch_a0
    check-cast p1, Ljava/lang/Integer;

    .line 422
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    goto :goto_37

    .line 425
    :pswitch_aa
    check-cast p1, Ljava/lang/Long;

    .line 426
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    goto :goto_37

    .line 429
    :pswitch_b4
    check-cast p1, Ljava/lang/Integer;

    .line 430
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    goto/16 :goto_37

    .line 433
    :pswitch_bf
    check-cast p1, Ljava/lang/Long;

    .line 434
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_c8} :catch_27

    goto/16 :goto_37

    .line 371
    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_38
        :pswitch_42
        :pswitch_4c
        :pswitch_56
        :pswitch_60
        :pswitch_6a
        :pswitch_74
        :pswitch_7e
        :pswitch_a
        :pswitch_a
        :pswitch_84
        :pswitch_8c
        :pswitch_96
        :pswitch_a0
        :pswitch_aa
        :pswitch_b4
        :pswitch_bf
    .end packed-switch
.end method
