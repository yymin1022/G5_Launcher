.class public Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/HueSegment;
.super Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;
.source "HueSegment.java"


# static fields
.field private static final HUE_RANGE_MAX:I = 0x168

.field private static final HUE_RANGE_MIN:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .prologue
    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;-><init>(Ljava/lang/String;II)V

    .line 10
    return-void
.end method


# virtual methods
.method public inRange([I)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 14
    aget v2, p1, v1

    .line 15
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/HueSegment;->getTo()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 16
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/HueSegment;->getFrom()I

    move-result v4

    .line 17
    if-le v4, v3, :cond_1f

    .line 18
    if-lt v2, v4, :cond_19

    const/16 v4, 0x168

    if-le v2, v4, :cond_1e

    :cond_19
    if-ltz v2, :cond_1d

    if-lt v2, v3, :cond_1e

    :cond_1d
    move v0, v1

    .line 20
    :cond_1e
    :goto_1e
    return v0

    :cond_1f
    if-lt v2, v4, :cond_23

    if-lt v2, v3, :cond_1e

    :cond_23
    move v0, v1

    goto :goto_1e
.end method
