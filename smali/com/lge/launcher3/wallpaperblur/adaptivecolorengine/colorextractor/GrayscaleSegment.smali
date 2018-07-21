.class public Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/GrayscaleSegment;
.super Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/LightnessSegment;
.source "GrayscaleSegment.java"


# static fields
.field private static final GRAYSCALE_LIGHTNESS_MAX:I = 0x5f

.field private static final GRAYSCALE_LIGHTNESS_MIN:I = 0xa

.field private static final GRAYSCALE_SATURATION_MAX:I = 0x14

.field private static final GRAYSCALE_SATURATION_MIN:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/LightnessSegment;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public inRange([I)Z
    .registers 6

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 16
    aget v1, p1, v3

    const/16 v2, 0xa

    if-lt v1, v2, :cond_19

    .line 17
    aget v1, p1, v3

    const/16 v2, 0x5f

    if-ge v1, v2, :cond_19

    .line 18
    aget v1, p1, v0

    if-ltz v1, :cond_19

    .line 19
    aget v1, p1, v0

    const/16 v2, 0x14

    .line 16
    if-ge v1, v2, :cond_19

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method
