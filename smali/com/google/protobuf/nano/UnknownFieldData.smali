.class final Lcom/google/protobuf/nano/UnknownFieldData;
.super Ljava/lang/Object;
.source "UnknownFieldData.java"


# instance fields
.field final bytes:[B

.field final tag:I


# direct methods
.method constructor <init>(I[B)V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    .line 49
    iput-object p2, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    .line 50
    return-void
.end method


# virtual methods
.method computeSerializedSize()I
    .registers 3

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    iget v1, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    iget-object v1, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 56
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    if-ne p1, p0, :cond_5

    .line 74
    :cond_4
    :goto_4
    return v0

    .line 69
    :cond_5
    instance-of v2, p1, Lcom/google/protobuf/nano/UnknownFieldData;

    if-nez v2, :cond_b

    move v0, v1

    .line 70
    goto :goto_4

    .line 73
    :cond_b
    check-cast p1, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 74
    iget v2, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    iget v3, p1, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    if-ne v2, v3, :cond_1d

    iget-object v2, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    iget-object v3, p1, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1d
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 80
    iget v0, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    add-int/lit16 v0, v0, 0x20f

    .line 81
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    return v0
.end method

.method writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget v0, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 61
    iget-object v0, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    .line 62
    return-void
.end method
