.class public Lcom/lge/launcher3/util/MatrixUtils;
.super Ljava/lang/Object;
.source "MatrixUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getFlipHorizontalMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .registers 3

    .prologue
    .line 68
    if-nez p0, :cond_7

    .line 69
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 71
    :cond_7
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 72
    return-object p0
.end method

.method public static final getFlipVerticallMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .registers 3

    .prologue
    .line 80
    if-nez p0, :cond_7

    .line 81
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 83
    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 84
    return-object p0
.end method

.method public static final getScaleX(Landroid/graphics/Matrix;[F)F
    .registers 3

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/lge/launcher3/util/MatrixUtils;->getValue(Landroid/graphics/Matrix;[FI)F

    move-result v0

    return v0
.end method

.method public static final getScaleY(Landroid/graphics/Matrix;[F)F
    .registers 3

    .prologue
    .line 27
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/lge/launcher3/util/MatrixUtils;->getValue(Landroid/graphics/Matrix;[FI)F

    move-result v0

    return v0
.end method

.method public static final getTranslationX(Landroid/graphics/Matrix;[F)F
    .registers 3

    .prologue
    .line 36
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/lge/launcher3/util/MatrixUtils;->getValue(Landroid/graphics/Matrix;[FI)F

    move-result v0

    return v0
.end method

.method public static final getTranslationY(Landroid/graphics/Matrix;[F)F
    .registers 3

    .prologue
    .line 45
    const/4 v0, 0x5

    invoke-static {p0, p1, v0}, Lcom/lge/launcher3/util/MatrixUtils;->getValue(Landroid/graphics/Matrix;[FI)F

    move-result v0

    return v0
.end method

.method private static final getValue(Landroid/graphics/Matrix;[FI)F
    .registers 5

    .prologue
    .line 55
    if-nez p0, :cond_a

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "matrix is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_a
    if-nez p1, :cond_10

    const/16 v0, 0x9

    new-array p1, v0, [F

    .line 59
    :cond_10
    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 60
    aget v0, p1, p2

    return v0
.end method
