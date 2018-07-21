.class public final Lcom/google/protobuf/nano/InternalNano;
.super Ljava/lang/Object;
.source "InternalNano.java"


# static fields
.field public static final LAZY_INIT_LOCK:Ljava/lang/Object;

.field public static final TYPE_BOOL:I = 0x8

.field public static final TYPE_BYTES:I = 0xc

.field public static final TYPE_DOUBLE:I = 0x1

.field public static final TYPE_ENUM:I = 0xe

.field public static final TYPE_FIXED32:I = 0x7

.field public static final TYPE_FIXED64:I = 0x6

.field public static final TYPE_FLOAT:I = 0x2

.field public static final TYPE_GROUP:I = 0xa

.field public static final TYPE_INT32:I = 0x5

.field public static final TYPE_INT64:I = 0x3

.field public static final TYPE_MESSAGE:I = 0xb

.field public static final TYPE_SFIXED32:I = 0xf

.field public static final TYPE_SFIXED64:I = 0x10

.field public static final TYPE_SINT32:I = 0x11

.field public static final TYPE_SINT64:I = 0x12

.field public static final TYPE_STRING:I = 0x9

.field public static final TYPE_UINT32:I = 0xd

.field public static final TYPE_UINT64:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesDefaultValue(Ljava/lang/String;)[B
    .registers 4

    .prologue
    .line 134
    :try_start_0
    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 135
    :catch_7
    move-exception v0

    .line 138
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Java VM does not support a standard character set."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static computeMapFieldSize(Ljava/util/Map;III)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;III)I"
        }
    .end annotation

    .prologue
    .line 479
    const/4 v0, 0x0

    .line 480
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v2

    .line 481
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 482
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 483
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 484
    if-eqz v4, :cond_26

    if-nez v0, :cond_2e

    .line 485
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "keys and values in maps cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_2e
    const/4 v5, 0x1

    invoke-static {v5, p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFieldSize(IILjava/lang/Object;)I

    move-result v4

    const/4 v5, 0x2

    invoke-static {v5, p3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFieldSize(IILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v4

    .line 491
    add-int v4, v2, v0

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    add-int/2addr v0, v4

    add-int/2addr v0, v1

    move v1, v0

    .line 493
    goto :goto_e

    .line 494
    :cond_43
    return v1
.end method

.method public static copyFromUtf8(Ljava/lang/String;)[B
    .registers 3

    .prologue
    .line 149
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 150
    :catch_7
    move-exception v0

    .line 151
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static equals(Ljava/util/Map;Ljava/util/Map;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 503
    if-ne p0, p1, :cond_5

    .line 523
    :cond_4
    :goto_4
    return v1

    .line 506
    :cond_5
    if-nez p0, :cond_12

    .line 507
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_e
    move v1, v0

    goto :goto_4

    :cond_10
    move v0, v2

    goto :goto_e

    .line 509
    :cond_12
    if-nez p1, :cond_1c

    .line 510
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_4

    move v1, v2

    goto :goto_4

    .line 512
    :cond_1c
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v0, v3, :cond_28

    move v1, v2

    .line 513
    goto :goto_4

    .line 515
    :cond_28
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 516
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    move v1, v2

    .line 517
    goto :goto_4

    .line 519
    :cond_48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/protobuf/nano/InternalNano;->equalsMapValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    move v1, v2

    .line 520
    goto :goto_4
.end method

.method public static equals([D[D)Z
    .registers 3

    .prologue
    .line 196
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_e

    .line 197
    :cond_5
    if-eqz p1, :cond_a

    array-length v0, p1

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    .line 199
    :goto_b
    return v0

    .line 197
    :cond_c
    const/4 v0, 0x0

    goto :goto_b

    .line 199
    :cond_e
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    goto :goto_b
.end method

.method public static equals([F[F)Z
    .registers 3

    .prologue
    .line 184
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_e

    .line 185
    :cond_5
    if-eqz p1, :cond_a

    array-length v0, p1

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    .line 187
    :goto_b
    return v0

    .line 185
    :cond_c
    const/4 v0, 0x0

    goto :goto_b

    .line 187
    :cond_e
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_b
.end method

.method public static equals([I[I)Z
    .registers 3

    .prologue
    .line 160
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_e

    .line 161
    :cond_5
    if-eqz p1, :cond_a

    array-length v0, p1

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    .line 163
    :goto_b
    return v0

    .line 161
    :cond_c
    const/4 v0, 0x0

    goto :goto_b

    .line 163
    :cond_e
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_b
.end method

.method public static equals([J[J)Z
    .registers 3

    .prologue
    .line 172
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_e

    .line 173
    :cond_5
    if-eqz p1, :cond_a

    array-length v0, p1

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    .line 175
    :goto_b
    return v0

    .line 173
    :cond_c
    const/4 v0, 0x0

    goto :goto_b

    .line 175
    :cond_e
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    goto :goto_b
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 258
    if-nez p0, :cond_14

    move v7, v1

    .line 260
    :goto_5
    if-nez p1, :cond_17

    move v0, v1

    :goto_8
    move v3, v1

    move v6, v1

    .line 262
    :goto_a
    if-ge v6, v7, :cond_45

    aget-object v4, p0, v6

    if-nez v4, :cond_45

    .line 263
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_a

    .line 258
    :cond_14
    array-length v0, p0

    move v7, v0

    goto :goto_5

    .line 260
    :cond_17
    array-length v0, p1

    goto :goto_8

    .line 265
    :goto_19
    if-ge v5, v0, :cond_23

    aget-object v3, p1, v5

    if-nez v3, :cond_23

    .line 266
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_19

    .line 268
    :cond_23
    if-lt v6, v7, :cond_2f

    move v4, v2

    .line 269
    :goto_26
    if-lt v5, v0, :cond_31

    move v3, v2

    .line 270
    :goto_29
    if-eqz v4, :cond_33

    if-eqz v3, :cond_33

    move v1, v2

    .line 278
    :cond_2e
    return v1

    :cond_2f
    move v4, v1

    .line 268
    goto :goto_26

    :cond_31
    move v3, v1

    .line 269
    goto :goto_29

    .line 273
    :cond_33
    if-ne v4, v3, :cond_2e

    .line 276
    aget-object v3, p0, v6

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 280
    add-int/lit8 v4, v6, 0x1

    .line 281
    add-int/lit8 v3, v5, 0x1

    move v6, v4

    .line 282
    goto :goto_a

    :cond_45
    move v5, v3

    goto :goto_19
.end method

.method public static equals([Z[Z)Z
    .registers 3

    .prologue
    .line 208
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_e

    .line 209
    :cond_5
    if-eqz p1, :cond_a

    array-length v0, p1

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    .line 211
    :goto_b
    return v0

    .line 209
    :cond_c
    const/4 v0, 0x0

    goto :goto_b

    .line 211
    :cond_e
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    goto :goto_b
.end method

.method public static equals([[B[[B)Z
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 223
    if-nez p0, :cond_14

    move v7, v1

    .line 225
    :goto_5
    if-nez p1, :cond_17

    move v0, v1

    :goto_8
    move v3, v1

    move v6, v1

    .line 227
    :goto_a
    if-ge v6, v7, :cond_45

    aget-object v4, p0, v6

    if-nez v4, :cond_45

    .line 228
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_a

    .line 223
    :cond_14
    array-length v0, p0

    move v7, v0

    goto :goto_5

    .line 225
    :cond_17
    array-length v0, p1

    goto :goto_8

    .line 230
    :goto_19
    if-ge v5, v0, :cond_23

    aget-object v3, p1, v5

    if-nez v3, :cond_23

    .line 231
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_19

    .line 233
    :cond_23
    if-lt v6, v7, :cond_2f

    move v4, v2

    .line 234
    :goto_26
    if-lt v5, v0, :cond_31

    move v3, v2

    .line 235
    :goto_29
    if-eqz v4, :cond_33

    if-eqz v3, :cond_33

    move v1, v2

    .line 243
    :cond_2e
    return v1

    :cond_2f
    move v4, v1

    .line 233
    goto :goto_26

    :cond_31
    move v3, v1

    .line 234
    goto :goto_29

    .line 238
    :cond_33
    if-ne v4, v3, :cond_2e

    .line 241
    aget-object v3, p0, v6

    aget-object v4, p1, v5

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 245
    add-int/lit8 v4, v6, 0x1

    .line 246
    add-int/lit8 v3, v5, 0x1

    move v6, v4

    .line 247
    goto :goto_a

    :cond_45
    move v5, v3

    goto :goto_19
.end method

.method private static equalsMapValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 527
    if-eqz p0, :cond_4

    if-nez p1, :cond_c

    .line 528
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "keys and values in maps cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_c
    instance-of v0, p0, [B

    if-eqz v0, :cond_21

    instance-of v0, p1, [B

    if-eqz v0, :cond_21

    .line 532
    check-cast p0, [B

    check-cast p0, [B

    check-cast p1, [B

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 534
    :goto_20
    return v0

    :cond_21
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_20
.end method

.method public static hashCode(Ljava/util/Map;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 538
    if-nez p0, :cond_4

    .line 546
    :goto_3
    return v0

    .line 542
    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 543
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/nano/InternalNano;->hashCodeForMap(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/nano/InternalNano;->hashCodeForMap(Ljava/lang/Object;)I

    move-result v0

    xor-int/2addr v0, v3

    add-int/2addr v0, v1

    move v1, v0

    .line 545
    goto :goto_d

    :cond_2d
    move v0, v1

    .line 546
    goto :goto_3
.end method

.method public static hashCode([D)I
    .registers 2

    .prologue
    .line 314
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    goto :goto_6
.end method

.method public static hashCode([F)I
    .registers 2

    .prologue
    .line 306
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    goto :goto_6
.end method

.method public static hashCode([I)I
    .registers 2

    .prologue
    .line 290
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    goto :goto_6
.end method

.method public static hashCode([J)I
    .registers 2

    .prologue
    .line 298
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    goto :goto_6
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 349
    if-nez p0, :cond_15

    move v0, v1

    :goto_4
    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_17

    .line 350
    aget-object v3, p0, v2

    .line 351
    if-eqz v3, :cond_12

    .line 352
    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 349
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_15
    array-length v0, p0

    goto :goto_4

    .line 355
    :cond_17
    return v1
.end method

.method public static hashCode([Z)I
    .registers 2

    .prologue
    .line 322
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v0

    goto :goto_6
.end method

.method public static hashCode([[B)I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 332
    if-nez p0, :cond_15

    move v0, v1

    :goto_4
    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_17

    .line 333
    aget-object v3, p0, v2

    .line 334
    if-eqz v3, :cond_12

    .line 335
    mul-int/lit8 v1, v1, 0x1f

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v1, v3

    .line 332
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_15
    array-length v0, p0

    goto :goto_4

    .line 338
    :cond_17
    return v1
.end method

.method private static hashCodeForMap(Ljava/lang/Object;)I
    .registers 2

    .prologue
    .line 550
    instance-of v0, p0, [B

    if-eqz v0, :cond_d

    .line 551
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    .line 553
    :goto_c
    return v0

    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_c
.end method

.method public static final mergeMapEntry(Lcom/google/protobuf/nano/CodedInputByteBufferNano;Ljava/util/Map;Lcom/google/protobuf/nano/MapFactories$MapFactory;IILjava/lang/Object;II)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/nano/CodedInputByteBufferNano;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/protobuf/nano/MapFactories$MapFactory;",
            "IITV;II)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    invoke-interface {p2, p1}, Lcom/google/protobuf/nano/MapFactories$MapFactory;->forMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 417
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 418
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v4

    .line 419
    const/4 v2, 0x0

    move-object v1, p5

    .line 421
    :goto_e
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 422
    if-nez v0, :cond_2b

    .line 439
    :cond_14
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    .line 440
    invoke-virtual {p0, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    .line 442
    if-nez v2, :cond_21

    .line 444
    invoke-static {p3}, Lcom/google/protobuf/nano/InternalNano;->primitiveDefaultValue(I)Ljava/lang/Object;

    move-result-object v2

    .line 447
    :cond_21
    if-nez v1, :cond_27

    .line 449
    invoke-static {p4}, Lcom/google/protobuf/nano/InternalNano;->primitiveDefaultValue(I)Ljava/lang/Object;

    move-result-object v1

    .line 452
    :cond_27
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    return-object v3

    .line 425
    :cond_2b
    if-ne v0, p6, :cond_33

    .line 426
    invoke-virtual {p0, p3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readPrimitiveField(I)Ljava/lang/Object;

    move-result-object v0

    :goto_31
    move-object v2, v0

    .line 438
    goto :goto_e

    .line 427
    :cond_33
    if-ne v0, p7, :cond_47

    .line 428
    const/16 v0, 0xb

    if-ne p4, v0, :cond_41

    move-object v0, v1

    .line 429
    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    move-object v0, v2

    goto :goto_31

    .line 431
    :cond_41
    invoke-virtual {p0, p4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readPrimitiveField(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v2

    goto :goto_31

    .line 434
    :cond_47
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v0, v2

    goto :goto_31
.end method

.method private static primitiveDefaultValue(I)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 358
    packed-switch p0, :pswitch_data_48

    .line 385
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a primitive type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :pswitch_24
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 381
    :goto_26
    return-object v0

    .line 362
    :pswitch_27
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    goto :goto_26

    .line 364
    :pswitch_2a
    const-string v0, ""

    goto :goto_26

    .line 366
    :pswitch_2d
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_26

    .line 368
    :pswitch_33
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_26

    .line 375
    :pswitch_3a
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_26

    .line 381
    :pswitch_40
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_26

    .line 358
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_33
        :pswitch_2d
        :pswitch_40
        :pswitch_40
        :pswitch_3a
        :pswitch_40
        :pswitch_3a
        :pswitch_24
        :pswitch_2a
        :pswitch_3
        :pswitch_3
        :pswitch_27
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_40
        :pswitch_3a
        :pswitch_40
    .end packed-switch
.end method

.method public static serializeMapField(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;Ljava/util/Map;III)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/nano/CodedOutputByteBufferNano;",
            "Ljava/util/Map",
            "<TK;TV;>;III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 460
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 461
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 462
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 463
    if-eqz v2, :cond_22

    if-nez v0, :cond_2a

    .line 464
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "keys and values in maps cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_2a
    invoke-static {v6, p3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFieldSize(IILjava/lang/Object;)I

    move-result v3

    invoke-static {v5, p4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFieldSize(IILjava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    .line 470
    invoke-virtual {p0, p2, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 471
    invoke-virtual {p0, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 472
    invoke-virtual {p0, v6, p3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeField(IILjava/lang/Object;)V

    .line 473
    invoke-virtual {p0, v5, p4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeField(IILjava/lang/Object;)V

    goto :goto_a

    .line 475
    :cond_40
    return-void
.end method

.method public static stringDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 115
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 116
    :catch_e
    move-exception v0

    .line 119
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Java VM does not support a standard character set."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
