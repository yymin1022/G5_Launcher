.class public Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorTuner;
.super Ljava/lang/Object;
.source "AdaptiveColorTuner.java"


# static fields
.field public static final FIRST:I = 0x0

.field public static final HUE:I = 0x0

.field private static final HUE_RANGE_MAX:I = 0x168

.field public static final LIGHTNESS:I = 0x2

.field private static final LIGHTNESS_RANGE_MAX:I = 0x64

.field private static final LIGHTNESS_RANGE_MIN:I = 0x0

.field private static final MIN_HUE_DISTANCE:I = 0x1e

.field private static final OPACITY_RANGE_MAX:I = 0xff

.field public static final SATURATION:I = 0x1

.field private static final SATURATION_RANGE_MAX:I = 0x64

.field private static final SATURATION_RANGE_MIN:I = 0x0

.field public static final SECOND:I = 0x1

.field public static final THIRD:I = 0x2

.field private static final TO_MAX:I = -0xff


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static get2ByteOpacity(I)I
    .registers 3

    .prologue
    .line 79
    int-to-float v0, p0

    const v1, 0x40233333    # 2.55f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static get2ndAdaptedColor([Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;)I
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 33
    invoke-static {p0, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorTuner;->get2ndSource([Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;[I)I

    move-result v1

    .line 34
    invoke-static {p2, v2, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorTuner;->getAdaptedHSL(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;I[I)V

    .line 35
    invoke-virtual {p1, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->setHSL([I)V

    .line 36
    iget-object v0, p2, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->opacity:[I

    aget v0, v0, v2

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorTuner;->getAdaptedAlpha(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->setAlpha(I)V

    .line 37
    return v1
.end method

.method private static get2ndSource([Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;[I)I
    .registers 8

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    aget-object v0, p0, v2

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->isValid()Z

    move-result v0

    const-string v3, "The first color is invalid!"

    invoke-static {v0, v3}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->aassert(ZLjava/lang/String;)V

    move v0, v1

    .line 85
    :goto_f
    array-length v3, p0

    if-lt v0, v3, :cond_36

    .line 93
    :cond_12
    array-length v3, p0

    if-ge v0, v3, :cond_53

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 94
    aget-object v3, p0, v0

    invoke-virtual {v3}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->getHue()I

    move-result v3

    aput v3, p1, v2

    .line 95
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->getSaturation()I

    move-result v2

    aput v2, p1, v1

    .line 96
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->getLightness()I

    move-result v1

    aput v1, p1, v5

    .line 105
    :goto_35
    return v0

    .line 86
    :cond_36
    aget-object v3, p0, v0

    invoke-virtual {v3}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 89
    aget-object v3, p0, v0

    invoke-virtual {v3}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->getHue()I

    move-result v3

    aget-object v4, p0, v2

    invoke-virtual {v4}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->getHue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorTuner;->isNotSimularColor(II)Z

    move-result v3

    if-nez v3, :cond_12

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 98
    :cond_53
    aget-object v0, p0, v2

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->getHue()I

    move-result v0

    aput v0, p1, v2

    .line 99
    aget v0, p1, v2

    add-int/lit8 v0, v0, 0x1e

    aput v0, p1, v2

    .line 100
    aget v0, p1, v2

    rem-int/lit16 v0, v0, 0x168

    aput v0, p1, v2

    .line 101
    aget-object v0, p0, v2

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->getSaturation()I

    move-result v0

    aput v0, p1, v1

    .line 102
    aget-object v0, p0, v2

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->getLightness()I

    move-result v0

    aput v0, p1, v5

    move v0, v2

    .line 103
    goto :goto_35
.end method

.method public static get3rdAdaptedColor(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;)V
    .registers 7

    .prologue
    const/4 v3, 0x2

    .line 42
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->isValid()Z

    move-result v0

    const-string v1, "The source color is not valid!"

    invoke-static {v0, v1}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->aassert(ZLjava/lang/String;)V

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->getHue()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->getSaturation()I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->getLightness()I

    move-result v1

    aput v1, v0, v3

    .line 44
    invoke-static {p2, v3, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorTuner;->getAdaptedHSL(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;I[I)V

    .line 45
    invoke-virtual {p1, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->setHSL([I)V

    .line 46
    iget-object v0, p2, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->opacity:[I

    aget v0, v0, v3

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorTuner;->getAdaptedAlpha(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->setAlpha(I)V

    .line 47
    return-void
.end method

.method private static getAdaptedAlpha(I)I
    .registers 2

    .prologue
    .line 75
    const/16 v0, -0xff

    if-ne p0, v0, :cond_7

    const/16 v0, 0xff

    :goto_6
    return v0

    :cond_7
    invoke-static {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorTuner;->get2ByteOpacity(I)I

    move-result v0

    goto :goto_6
.end method

.method public static getAdaptedColor(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 23
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->isValid()Z

    move-result v0

    const-string v1, "The source color is not valid!"

    invoke-static {v0, v1}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->aassert(ZLjava/lang/String;)V

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [I

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->getHue()I

    move-result v1

    aput v1, v0, v3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->getSaturation()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->getLightness()I

    move-result v2

    aput v2, v0, v1

    .line 25
    invoke-static {p2, v3, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorTuner;->getAdaptedHSL(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;I[I)V

    .line 26
    invoke-virtual {p1, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->setHSL([I)V

    .line 27
    iget-object v0, p2, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->opacity:[I

    aget v0, v0, v3

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorTuner;->getAdaptedAlpha(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->setAlpha(I)V

    .line 28
    return-void
.end method

.method private static getAdaptedHSL(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;I[I)V
    .registers 10

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    aget v0, p2, v4

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->satStep:[I

    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->satCoef:[[I

    aget-object v2, v2, p1

    invoke-static {v0, v1, v2, v3, v6}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorTuner;->getAdaptedValue(I[I[III)I

    move-result v0

    aput v0, p2, v4

    .line 52
    aget v0, p2, v5

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->litStep:[I

    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->litCoef:[[I

    aget-object v2, v2, p1

    invoke-static {v0, v1, v2, v3, v6}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorTuner;->getAdaptedValue(I[I[III)I

    move-result v0

    aput v0, p2, v5

    .line 54
    return-void
.end method

.method private static getAdaptedValue(I[I[III)I
    .registers 8

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_10

    .line 64
    :cond_4
    aget v1, p2, v0

    const/16 v2, -0xff

    if-ne v1, v2, :cond_17

    move v0, p4

    .line 65
    :goto_b
    invoke-static {v0, p3, p4}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorTuner;->truncate(III)I

    move-result v0

    return v0

    .line 59
    :cond_10
    aget v1, p1, v0

    if-lt p0, v1, :cond_4

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    :cond_17
    aget v0, p2, v0

    add-int/2addr v0, p0

    goto :goto_b
.end method

.method private static isNotSimularColor(II)Z
    .registers 6

    .prologue
    const/16 v3, 0x1e

    .line 109
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 110
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 112
    sub-int v2, v0, v1

    if-gt v2, v3, :cond_16

    .line 113
    add-int/lit16 v1, v1, 0x168

    sub-int v0, v1, v0

    .line 112
    if-le v0, v3, :cond_16

    const/4 v0, 0x0

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method private static truncate(III)I
    .registers 4

    .prologue
    .line 69
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 70
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 71
    return v0
.end method
