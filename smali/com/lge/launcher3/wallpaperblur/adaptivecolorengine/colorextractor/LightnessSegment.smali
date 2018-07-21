.class public Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/LightnessSegment;
.super Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;
.source "LightnessSegment.java"


# static fields
.field private static final LIGHTNESS_RANGE_MAX:I = 0x64


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;-><init>(Ljava/lang/String;II)V

    .line 17
    return-void
.end method

.method private getLightness()I
    .registers 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->getColor()I

    move-result v0

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorUtils;->getLightness(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    return v0
.end method


# virtual methods
.method protected getBlue()I
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/LightnessSegment;->getLightness()I

    move-result v0

    return v0
.end method

.method public getColor()I
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/LightnessSegment;->getLightness()I

    move-result v0

    .line 37
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method protected getGreen()I
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/LightnessSegment;->getLightness()I

    move-result v0

    return v0
.end method

.method protected getRed()I
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/LightnessSegment;->getLightness()I

    move-result v0

    return v0
.end method

.method public inRange([I)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x2

    .line 21
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/LightnessSegment;->getTo()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_16

    .line 22
    aget v2, p1, v4

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/LightnessSegment;->getFrom()I

    move-result v3

    if-lt v2, v3, :cond_14

    .line 24
    :cond_13
    :goto_13
    return v0

    :cond_14
    move v0, v1

    .line 22
    goto :goto_13

    .line 24
    :cond_16
    aget v2, p1, v4

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/LightnessSegment;->getFrom()I

    move-result v3

    if-lt v2, v3, :cond_26

    aget v2, p1, v4

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/LightnessSegment;->getTo()I

    move-result v3

    if-lt v2, v3, :cond_13

    :cond_26
    move v0, v1

    goto :goto_13
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColorSegment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/LightnessSegment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/LightnessSegment;->getPopulation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pixels. colored to ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/LightnessSegment;->getRed()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/LightnessSegment;->getGreen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/LightnessSegment;->getBlue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
