.class Lcom/google/protobuf/nano/FieldArray;
.super Ljava/lang/Object;
.source "FieldArray.java"


# static fields
.field private static final DELETED:Lcom/google/protobuf/nano/FieldData;


# instance fields
.field private mData:[Lcom/google/protobuf/nano/FieldData;

.field private mFieldNumbers:[I

.field private mGarbage:Z

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    new-instance v0, Lcom/google/protobuf/nano/FieldData;

    invoke-direct {v0}, Lcom/google/protobuf/nano/FieldData;-><init>()V

    sput-object v0, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/FieldArray;-><init>(I)V

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v2, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    .line 61
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->idealIntArraySize(I)I

    move-result v0

    .line 62
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    .line 63
    new-array v0, v0, [Lcom/google/protobuf/nano/FieldData;

    iput-object v0, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    .line 64
    iput v2, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 65
    return-void
.end method

.method private arrayEquals([I[II)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    move v1, v0

    .line 257
    :goto_2
    if-ge v1, p3, :cond_e

    .line 258
    aget v2, p1, v1

    aget v3, p2, v1

    if-eq v2, v3, :cond_b

    .line 262
    :goto_a
    return v0

    .line 257
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 262
    :cond_e
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private arrayEquals([Lcom/google/protobuf/nano/FieldData;[Lcom/google/protobuf/nano/FieldData;I)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    move v1, v0

    .line 266
    :goto_2
    if-ge v1, p3, :cond_12

    .line 267
    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Lcom/google/protobuf/nano/FieldData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 271
    :goto_e
    return v0

    .line 266
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 271
    :cond_12
    const/4 v0, 0x1

    goto :goto_e
.end method

.method private binarySearch(I)I
    .registers 6

    .prologue
    .line 238
    const/4 v1, 0x0

    .line 239
    iget v0, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    .line 241
    :goto_5
    if-gt v1, v0, :cond_1b

    .line 242
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 243
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aget v3, v3, v2

    .line 245
    if-ge v3, p1, :cond_14

    .line 246
    add-int/lit8 v1, v2, 0x1

    goto :goto_5

    .line 247
    :cond_14
    if-le v3, p1, :cond_19

    .line 248
    add-int/lit8 v0, v2, -0x1

    goto :goto_5

    :cond_19
    move v0, v2

    .line 253
    :goto_1a
    return v0

    :cond_1b
    xor-int/lit8 v0, v1, -0x1

    goto :goto_1a
.end method

.method private gc()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 94
    iget v3, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 96
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    .line 97
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    move v1, v2

    move v0, v2

    .line 99
    :goto_9
    if-ge v1, v3, :cond_21

    .line 100
    aget-object v6, v5, v1

    .line 102
    sget-object v7, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    if-eq v6, v7, :cond_1e

    .line 103
    if-eq v1, v0, :cond_1c

    .line 104
    aget v7, v4, v1

    aput v7, v4, v0

    .line 105
    aput-object v6, v5, v0

    .line 106
    const/4 v6, 0x0

    aput-object v6, v5, v1

    .line 109
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    .line 99
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 113
    :cond_21
    iput-boolean v2, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    .line 114
    iput v0, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 115
    return-void
.end method

.method private idealByteArraySize(I)I
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 230
    const/4 v0, 0x4

    :goto_2
    const/16 v1, 0x20

    if-ge v0, v1, :cond_10

    .line 231
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p1, v1, :cond_11

    .line 232
    shl-int v0, v2, v0

    add-int/lit8 p1, v0, -0xc

    .line 234
    :cond_10
    return p1

    .line 230
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private idealIntArraySize(I)I
    .registers 3

    .prologue
    .line 226
    mul-int/lit8 v0, p1, 0x4

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/FieldArray;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public dataAt(I)Lcom/google/protobuf/nano/FieldData;
    .registers 3

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 189
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldArray;->gc()V

    .line 192
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 197
    if-ne p1, p0, :cond_5

    .line 208
    :cond_4
    :goto_4
    return v0

    .line 200
    :cond_5
    instance-of v2, p1, Lcom/google/protobuf/nano/FieldArray;

    if-nez v2, :cond_b

    move v0, v1

    .line 201
    goto :goto_4

    .line 204
    :cond_b
    check-cast p1, Lcom/google/protobuf/nano/FieldArray;

    .line 205
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v3

    if-eq v2, v3, :cond_19

    move v0, v1

    .line 206
    goto :goto_4

    .line 208
    :cond_19
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v3, p1, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    invoke-direct {p0, v2, v3, v4}, Lcom/google/protobuf/nano/FieldArray;->arrayEquals([I[II)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget-object v3, p1, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    invoke-direct {p0, v2, v3, v4}, Lcom/google/protobuf/nano/FieldArray;->arrayEquals([Lcom/google/protobuf/nano/FieldData;[Lcom/google/protobuf/nano/FieldData;I)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_31
    move v0, v1

    goto :goto_4
.end method

.method public get(I)Lcom/google/protobuf/nano/FieldData;
    .registers 5

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v0

    .line 74
    if-ltz v0, :cond_e

    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    if-ne v1, v2, :cond_10

    .line 75
    :cond_e
    const/4 v0, 0x0

    .line 77
    :goto_f
    return-object v0

    :cond_10
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v0, v1, v0

    goto :goto_f
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 215
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldArray;->gc()V

    .line 217
    :cond_7
    const/16 v1, 0x11

    .line 218
    const/4 v0, 0x0

    :goto_a
    iget v2, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    if-ge v0, v2, :cond_23

    .line 219
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 220
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldData;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 222
    :cond_23
    return v1
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public put(ILcom/google/protobuf/nano/FieldData;)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 122
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v0

    .line 124
    if-ltz v0, :cond_c

    .line 125
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aput-object p2, v1, v0

    .line 164
    :goto_b
    return-void

    .line 127
    :cond_c
    xor-int/lit8 v0, v0, -0x1

    .line 129
    iget v1, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    if-ge v0, v1, :cond_23

    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    if-ne v1, v2, :cond_23

    .line 130
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aput p1, v1, v0

    .line 131
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aput-object p2, v1, v0

    goto :goto_b

    .line 135
    :cond_23
    iget-boolean v1, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v1, :cond_37

    iget v1, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    array-length v2, v2

    if-lt v1, v2, :cond_37

    .line 136
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldArray;->gc()V

    .line 139
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 142
    :cond_37
    iget v1, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    array-length v2, v2

    if-lt v1, v2, :cond_5e

    .line 143
    iget v1, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/protobuf/nano/FieldArray;->idealIntArraySize(I)I

    move-result v1

    .line 145
    new-array v2, v1, [I

    .line 146
    new-array v1, v1, [Lcom/google/protobuf/nano/FieldData;

    .line 148
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iput-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    .line 152
    iput-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    .line 155
    :cond_5e
    iget v1, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_7b

    .line 156
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    :cond_7b
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aput p1, v1, v0

    .line 161
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aput-object p2, v1, v0

    .line 162
    iget v0, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    goto :goto_b
.end method

.method public remove(I)V
    .registers 5

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v0

    .line 87
    if-ltz v0, :cond_17

    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    if-eq v1, v2, :cond_17

    .line 88
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    sget-object v2, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    aput-object v2, v1, v0

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    .line 91
    :cond_17
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 172
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldArray;->gc()V

    .line 175
    :cond_7
    iget v0, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    return v0
.end method
