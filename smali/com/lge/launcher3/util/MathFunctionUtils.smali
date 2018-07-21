.class public Lcom/lge/launcher3/util/MathFunctionUtils;
.super Ljava/lang/Object;
.source "MathFunctionUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final computeSumOfArithmeticSequence(IFF)F
    .registers 6

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 21
    int-to-float v0, p0

    div-float/2addr v0, v1

    mul-float/2addr v1, p1

    add-int/lit8 v2, p0, -0x1

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public static final computeSumOfGeometricSequence(IFF)F
    .registers 8

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 33
    float-to-double v0, p2

    add-int/lit8 v2, p0, 0x1

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v0, v4, v0

    sub-float v1, v4, p2

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method public static final equals(DD)Z
    .registers 8

    .prologue
    .line 95
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3eb0c6f7a0000000L    # 9.999999974752427E-7

    cmpg-double v0, v0, v2

    if-gez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static final equals(FF)Z
    .registers 4

    .prologue
    .line 72
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x358637bd    # 1.0E-6f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static final equals(FFI)Z
    .registers 9

    .prologue
    .line 82
    const/high16 v0, 0x3f800000    # 1.0f

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    div-float/2addr v0, v1

    .line 83
    sub-float v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static final equals(III)Z
    .registers 4

    .prologue
    .line 105
    sub-int v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, p2, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static final floorDigit(FI)F
    .registers 6

    .prologue
    .line 210
    if-lez p1, :cond_6

    const/16 v0, 0x9

    if-lt p1, v0, :cond_1b

    .line 211
    :cond_6
    const-string v0, "LGMath"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wrong digit : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :goto_1a
    return p0

    .line 214
    :cond_1b
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 215
    mul-float v1, p0, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    float-to-double v0, v0

    div-double v0, v2, v0

    double-to-float p0, v0

    goto :goto_1a
.end method

.method public static final getCircularEquation(FFFF)F
    .registers 10

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 60
    float-to-double v0, p3

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float v2, p2, p0

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    float-to-double v2, p1

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static final getDiagonalDistanceOfRectangle(DD)D
    .registers 8

    .prologue
    .line 197
    mul-double v0, p0, p0

    mul-double v2, p2, p2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final getDiffInSumOfArithSeq(IFF)F
    .registers 6

    .prologue
    .line 46
    const/high16 v0, 0x40000000    # 2.0f

    sub-float v1, p2, p1

    mul-float/2addr v0, v1

    int-to-float v1, p0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public static final normalize(FFF)F
    .registers 5

    .prologue
    .line 166
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_8

    .line 167
    const/4 v0, 0x0

    .line 169
    :goto_7
    return v0

    :cond_8
    sub-float v0, p0, p1

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    goto :goto_7
.end method

.method public static final random(II)I
    .registers 6

    .prologue
    .line 182
    if-gt p0, p1, :cond_6

    if-ltz p0, :cond_6

    if-gez p1, :cond_8

    .line 183
    :cond_6
    const/4 v0, 0x0

    .line 185
    :goto_7
    return v0

    :cond_8
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sub-int v2, p1, p0

    add-int/lit8 v2, v2, 0x1

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/2addr v0, p0

    goto :goto_7
.end method

.method public static final round(FI)F
    .registers 6

    .prologue
    .line 131
    if-gez p1, :cond_3

    .line 135
    :goto_2
    return p0

    .line 134
    :cond_3
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    add-int/lit8 v2, p1, -0x1

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 135
    mul-float v1, p0, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float p0, v1, v0

    goto :goto_2
.end method

.method public static final round(II)I
    .registers 6

    .prologue
    .line 148
    if-gez p1, :cond_3

    .line 152
    :goto_2
    return p0

    .line 151
    :cond_3
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 152
    int-to-float v1, p0

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int p0, v0

    goto :goto_2
.end method

.method public static final truncate(FI)F
    .registers 6

    .prologue
    .line 117
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 118
    mul-float v1, p0, v0

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v0, v1, v0

    return v0
.end method
