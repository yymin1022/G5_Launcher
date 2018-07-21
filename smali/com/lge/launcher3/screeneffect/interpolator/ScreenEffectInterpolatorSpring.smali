.class public Lcom/lge/launcher3/screeneffect/interpolator/ScreenEffectInterpolatorSpring;
.super Ljava/lang/Object;
.source "ScreenEffectInterpolatorSpring.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final ACCELERATE_CURVE_EXPONENT:F = 1.7f

.field private static final BOUNCE_COUNT:I = 0x2

.field private static final SIN_CURVE_DEFAULT_AMP:F = 0.025f

.field private static final SIN_CURVE_NEXT_AMP_RATIO:F = 0.8f

.field private static final SIN_CURVE_START_POINT:F = 0.5f


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAccelerateInterpolation(FF)F
    .registers 9

    .prologue
    .line 57
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v2, p1

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    float-to-double v2, v2

    float-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private getSinInterpolation(FF)F
    .registers 7

    .prologue
    .line 66
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    float-to-double v2, p1

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    float-to-double v2, p2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 9

    .prologue
    const/4 v6, 0x2

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    .line 27
    cmpg-float v1, p1, v3

    if-gez v1, :cond_14

    .line 28
    invoke-static {p1, v0, v3}, Lcom/lge/launcher3/util/MathFunctionUtils;->normalize(FFF)F

    move-result v0

    .line 29
    const v1, 0x3fd9999a    # 1.7f

    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/screeneffect/interpolator/ScreenEffectInterpolatorSpring;->getAccelerateInterpolation(FF)F

    move-result v0

    .line 49
    :cond_13
    :goto_13
    return v0

    .line 34
    :cond_14
    const v2, 0x3ccccccd    # 0.025f

    .line 36
    const/4 v1, 0x0

    move v4, v3

    move v3, v2

    move v2, v1

    :goto_1b
    if-ge v2, v6, :cond_13

    .line 37
    add-int/lit8 v1, v2, 0x1

    if-ge v1, v6, :cond_3a

    const/high16 v1, 0x3e800000    # 0.25f

    add-float/2addr v1, v4

    .line 39
    :goto_24
    cmpg-float v5, v4, p1

    if-gtz v5, :cond_41

    cmpg-float v5, p1, v1

    if-gez v5, :cond_41

    .line 40
    invoke-static {p1, v4, v1}, Lcom/lge/launcher3/util/MathFunctionUtils;->normalize(FFF)F

    move-result v1

    .line 41
    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3e

    :goto_34
    add-float/2addr v0, v1

    invoke-direct {p0, v0, v3}, Lcom/lge/launcher3/screeneffect/interpolator/ScreenEffectInterpolatorSpring;->getSinInterpolation(FF)F

    move-result v0

    goto :goto_13

    .line 37
    :cond_3a
    const v1, 0x3f800054    # 1.00001f

    goto :goto_24

    .line 41
    :cond_3e
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_34

    .line 46
    :cond_41
    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    .line 36
    add-int/lit8 v2, v2, 0x1

    move v4, v1

    goto :goto_1b
.end method
