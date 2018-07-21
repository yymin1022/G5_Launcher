.class Lcom/lge/mdm/util/keystore/RPEncrypt;
.super Ljava/lang/Object;
.source "RPEncrypt.java"


# instance fields
.field public mKey1:I

.field public mKey2:I

.field public mKey3:I


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, 0xdfb3cc6    # 1.54837E-30f

    iput v0, p0, Lcom/lge/mdm/util/keystore/RPEncrypt;->mKey1:I

    .line 7
    const/16 v0, 0x3031

    iput v0, p0, Lcom/lge/mdm/util/keystore/RPEncrypt;->mKey2:I

    .line 9
    const/16 v0, 0x64

    iput v0, p0, Lcom/lge/mdm/util/keystore/RPEncrypt;->mKey3:I

    .line 21
    return-void
.end method


# virtual methods
.method public Decrypt([BI)Ljava/lang/String;
    .registers 27
    .param p1, "cipher"    # [B
    .param p2, "Key"    # I

    .prologue
    .line 141
    if-nez p1, :cond_5

    .line 142
    const/16 v19, 0x0

    return-object v19

    .line 145
    :cond_5
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    new-array v2, v0, [B

    .line 146
    .local v2, "FirstResult":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_11
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    if-ge v6, v0, :cond_23

    .line 147
    const/16 v19, 0x0

    aput-byte v19, v2, v6

    .line 146
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 149
    :cond_23
    invoke-virtual/range {p0 .. p1}, Lcom/lge/mdm/util/keystore/RPEncrypt;->HexToValue([B)[B

    move-result-object v2

    .line 150
    move-object v13, v2

    .line 151
    .local v13, "result":[B
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    new-array v3, v0, [B

    .line 152
    .local v3, "buffer":[B
    const/4 v6, 0x0

    :goto_34
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    if-ge v6, v0, :cond_46

    .line 153
    const/16 v19, 0x0

    aput-byte v19, v3, v6

    .line 152
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    .line 155
    :cond_46
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 156
    .local v18, "szResult":[B
    const/4 v6, 0x0

    :goto_54
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    if-ge v6, v0, :cond_66

    .line 157
    const/16 v19, 0x0

    aput-byte v19, v18, v6

    .line 156
    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    .line 159
    :cond_66
    if-gez p2, :cond_b3

    add-int/lit8 v7, p2, 0x0

    .line 160
    .local v7, "nKey":I
    :goto_6a
    int-to-long v10, v7

    .line 161
    .local v10, "nKey2":J
    const/4 v6, 0x0

    :goto_6c
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    if-ge v6, v0, :cond_b9

    .line 162
    aget-byte v19, v13, v6

    if-gez v19, :cond_b6

    aget-byte v19, v13, v6

    move/from16 v0, v19

    add-int/lit16 v12, v0, 0x100

    .line 163
    .local v12, "nVal":I
    :goto_81
    int-to-long v8, v12

    .line 164
    .local v8, "nFirstResult":J
    const-wide/16 v20, 0x100

    div-long v14, v10, v20

    .line 165
    .local v14, "nXor":J
    xor-long v16, v8, v14

    .line 166
    .local v16, "nXorResult":J
    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v18, v6

    .line 167
    add-long v4, v8, v10

    .line 168
    .local v4, "cFirstResultKey":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/mdm/util/keystore/RPEncrypt;->mKey1:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v20, v20, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/mdm/util/keystore/RPEncrypt;->mKey2:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v10, v20, v22

    .line 161
    add-int/lit8 v6, v6, 0x1

    goto :goto_6c

    .line 159
    .end local v4    # "cFirstResultKey":J
    .end local v7    # "nKey":I
    .end local v8    # "nFirstResult":J
    .end local v10    # "nKey2":J
    .end local v12    # "nVal":I
    .end local v14    # "nXor":J
    .end local v16    # "nXorResult":J
    :cond_b3
    move/from16 v7, p2

    .restart local v7    # "nKey":I
    goto :goto_6a

    .line 162
    .restart local v10    # "nKey2":J
    :cond_b6
    aget-byte v12, v13, v6

    .restart local v12    # "nVal":I
    goto :goto_81

    .line 170
    .end local v12    # "nVal":I
    :cond_b9
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v19
.end method

.method public Encrypt([BI)Ljava/lang/String;
    .registers 23
    .param p1, "plain"    # [B
    .param p2, "Key"    # I

    .prologue
    .line 86
    move-object/from16 v0, p1

    array-length v11, v0

    .line 87
    .local v11, "plainLength":I
    move/from16 v0, p2

    int-to-long v8, v0

    .line 88
    .local v8, "mKey":J
    new-array v6, v11, [I

    .line 89
    .local v6, "cipher":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_9
    if-ge v7, v11, :cond_12

    .line 90
    const/16 v16, 0x0

    aput v16, v6, v7

    .line 89
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 92
    :cond_12
    const/4 v7, 0x0

    :goto_13
    if-ge v7, v11, :cond_61

    .line 93
    aget-byte v2, p1, v7

    .line 94
    .local v2, "btByte":B
    if-gez v2, :cond_5d

    add-int/lit16 v5, v2, 0x100

    .line 95
    .local v5, "cSrc":I
    :goto_1b
    const-wide/16 v16, 0x100

    div-long v14, v8, v16

    .line 96
    .local v14, "nXor":J
    int-to-long v0, v5

    move-wide/from16 v16, v0

    xor-long v16, v16, v14

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v3, v0

    .line 97
    .local v3, "btTmp":B
    if-gez v3, :cond_30

    add-int/lit16 v3, v3, 0x100

    .end local v3    # "btTmp":B
    :cond_30
    aput v3, v6, v7

    .line 98
    aget v16, v6, v7

    move/from16 v0, v16

    int-to-byte v4, v0

    .line 99
    .local v4, "cFirstResult":B
    if-gez v4, :cond_5f

    add-int/lit16 v10, v4, 0x100

    .line 101
    .local v10, "nFirstResult":I
    :goto_3b
    int-to-long v0, v10

    move-wide/from16 v16, v0

    add-long v12, v16, v8

    .line 102
    .local v12, "nFirstResultKey":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/mdm/util/keystore/RPEncrypt;->mKey1:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    mul-long v16, v16, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/mdm/util/keystore/RPEncrypt;->mKey2:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v8, v16, v18

    .line 92
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 94
    .end local v4    # "cFirstResult":B
    .end local v5    # "cSrc":I
    .end local v10    # "nFirstResult":I
    .end local v12    # "nFirstResultKey":J
    .end local v14    # "nXor":J
    :cond_5d
    move v5, v2

    .restart local v5    # "cSrc":I
    goto :goto_1b

    .line 100
    .restart local v4    # "cFirstResult":B
    .restart local v14    # "nXor":J
    :cond_5f
    move v10, v4

    .restart local v10    # "nFirstResult":I
    goto :goto_3b

    .line 104
    .end local v2    # "btByte":B
    .end local v4    # "cFirstResult":B
    .end local v5    # "cSrc":I
    .end local v10    # "nFirstResult":I
    .end local v14    # "nXor":J
    :cond_61
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lge/mdm/util/keystore/RPEncrypt;->valueToHexa([I)Ljava/lang/String;

    move-result-object v16

    return-object v16
.end method

.method public HexToDecimal(B)I
    .registers 3
    .param p1, "ch"    # B

    .prologue
    .line 119
    const/16 v0, 0x41

    if-eq p1, v0, :cond_8

    const/16 v0, 0x61

    if-ne p1, v0, :cond_b

    .line 120
    :cond_8
    const/16 v0, 0xa

    return v0

    .line 122
    :cond_b
    const/16 v0, 0x42

    if-eq p1, v0, :cond_13

    const/16 v0, 0x62

    if-ne p1, v0, :cond_16

    .line 123
    :cond_13
    const/16 v0, 0xb

    return v0

    .line 125
    :cond_16
    const/16 v0, 0x43

    if-eq p1, v0, :cond_1e

    const/16 v0, 0x63

    if-ne p1, v0, :cond_21

    .line 126
    :cond_1e
    const/16 v0, 0xc

    return v0

    .line 128
    :cond_21
    const/16 v0, 0x44

    if-eq p1, v0, :cond_29

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2c

    .line 129
    :cond_29
    const/16 v0, 0xd

    return v0

    .line 131
    :cond_2c
    const/16 v0, 0x45

    if-eq p1, v0, :cond_34

    const/16 v0, 0x65

    if-ne p1, v0, :cond_37

    .line 132
    :cond_34
    const/16 v0, 0xe

    return v0

    .line 134
    :cond_37
    const/16 v0, 0x46

    if-eq p1, v0, :cond_3f

    const/16 v0, 0x66

    if-ne p1, v0, :cond_42

    .line 135
    :cond_3f
    const/16 v0, 0xf

    return v0

    .line 137
    :cond_42
    add-int/lit8 v0, p1, -0x30

    return v0
.end method

.method public HexToDecimal([C)I
    .registers 7
    .param p1, "szSrc"    # [C

    .prologue
    .line 108
    const/4 v3, 0x0

    .line 109
    .local v3, "nRet":I
    array-length v2, p1

    .line 110
    .local v2, "nLen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v2, :cond_12

    .line 111
    aget-char v4, p1, v1

    int-to-byte v0, v4

    .line 112
    .local v0, "cChar":B
    mul-int/lit8 v3, v3, 0x10

    .line 113
    invoke-virtual {p0, v0}, Lcom/lge/mdm/util/keystore/RPEncrypt;->HexToDecimal(B)I

    move-result v4

    add-int/2addr v3, v4

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 115
    .end local v0    # "cChar":B
    :cond_12
    return v3
.end method

.method public HexToValue([B)[B
    .registers 10
    .param p1, "data"    # [B

    .prologue
    const/4 v7, 0x0

    .line 73
    array-length v5, p1

    div-int/lit8 v5, v5, 0x2

    new-array v1, v5, [B

    .line 74
    .local v1, "mByte":[B
    const/4 v5, 0x2

    new-array v2, v5, [C

    .line 75
    .local v2, "mChar":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v5, p1

    div-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_31

    .line 76
    mul-int/lit8 v5, v0, 0x2

    aget-byte v5, p1, v5

    int-to-char v5, v5

    aput-char v5, v2, v7

    .line 77
    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    int-to-char v5, v5

    const/4 v6, 0x1

    aput-char v5, v2, v6

    .line 78
    invoke-virtual {p0, v2}, Lcom/lge/mdm/util/keystore/RPEncrypt;->HexToDecimal([C)I

    move-result v5

    int-to-byte v3, v5

    .line 79
    .local v3, "tempByte":B
    if-gez v3, :cond_2f

    add-int/lit16 v4, v3, 0x100

    .line 80
    .local v4, "tempInt":I
    :goto_29
    int-to-byte v5, v4

    aput-byte v5, v1, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 79
    .end local v4    # "tempInt":I
    :cond_2f
    move v4, v3

    .restart local v4    # "tempInt":I
    goto :goto_29

    .line 82
    .end local v3    # "tempByte":B
    .end local v4    # "tempInt":I
    :cond_31
    return-object v1
.end method

.method public HexaByte(I)B
    .registers 4
    .param p1, "val"    # I

    .prologue
    .line 31
    const/16 v1, 0x10

    new-array v0, v1, [B

    .local v0, "hexaByte":[B
    fill-array-data v0, :array_10

    .line 49
    const/16 v1, 0xf

    if-le p1, v1, :cond_c

    .line 50
    const/4 p1, 0x0

    .line 52
    :cond_c
    aget-byte v1, v0, p1

    return v1

    .line 31
    nop

    :array_10
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public setKey(III)V
    .registers 4
    .param p1, "key1"    # I
    .param p2, "key2"    # I
    .param p3, "key3"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/lge/mdm/util/keystore/RPEncrypt;->mKey1:I

    .line 26
    iput p2, p0, Lcom/lge/mdm/util/keystore/RPEncrypt;->mKey2:I

    .line 27
    iput p3, p0, Lcom/lge/mdm/util/keystore/RPEncrypt;->mKey3:I

    .line 24
    return-void
.end method

.method public setKey1(I)V
    .registers 2
    .param p1, "key"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/lge/mdm/util/keystore/RPEncrypt;->mKey1:I

    .line 13
    return-void
.end method

.method public setKey2(I)V
    .registers 2
    .param p1, "key"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/lge/mdm/util/keystore/RPEncrypt;->mKey2:I

    .line 17
    return-void
.end method

.method public valueToHexa([I)Ljava/lang/String;
    .registers 8
    .param p1, "num"    # [I

    .prologue
    const/4 v4, 0x0

    .line 56
    if-nez p1, :cond_4

    .line 57
    return-object v4

    .line 59
    :cond_4
    array-length v2, p1

    .line 60
    .local v2, "numLength":I
    mul-int/lit8 v4, v2, 0x2

    new-array v0, v4, [B

    .line 61
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    mul-int/lit8 v4, v2, 0x2

    if-ge v1, v4, :cond_14

    .line 62
    const/4 v4, 0x0

    aput-byte v4, v0, v1

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 64
    :cond_14
    const/4 v1, 0x0

    :goto_15
    if-ge v1, v2, :cond_36

    .line 65
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x0

    aget v5, p1, v1

    div-int/lit8 v5, v5, 0x10

    invoke-virtual {p0, v5}, Lcom/lge/mdm/util/keystore/RPEncrypt;->HexaByte(I)B

    move-result v5

    aput-byte v5, v0, v4

    .line 66
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v5, p1, v1

    rem-int/lit8 v5, v5, 0x10

    invoke-virtual {p0, v5}, Lcom/lge/mdm/util/keystore/RPEncrypt;->HexaByte(I)B

    move-result v5

    aput-byte v5, v0, v4

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 68
    :cond_36
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 69
    .local v3, "result":Ljava/lang/String;
    return-object v3
.end method
