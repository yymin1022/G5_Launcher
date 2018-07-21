.class public Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;
.super Ljava/lang/Object;
.source "ColorSegment.java"


# static fields
.field private static final ALPHA_RANGE_MAX:I = 0xff

.field protected static final HUE:I = 0x0

.field protected static final LIGHTNESS:I = 0x2

.field protected static final SATURATION:I = 0x1


# instance fields
.field private mBlueSum:F

.field private mFrom:I

.field private mGreenSum:F

.field private mName:Ljava/lang/String;

.field private mPopulation:I

.field private mRedSum:F

.field private mTo:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;-><init>(Ljava/lang/String;II)V

    .line 20
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mName:Ljava/lang/String;

    .line 24
    invoke-virtual {p0, p2}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->setFrom(I)V

    .line 25
    invoke-virtual {p0, p3}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->setTo(I)V

    .line 26
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->clear()V

    .line 27
    return-void
.end method


# virtual methods
.method protected addPixel(I)I
    .registers 5

    .prologue
    const/high16 v2, 0x437f0000    # 255.0f

    .line 35
    iget v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mRedSum:F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mRedSum:F

    .line 36
    iget v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mGreenSum:F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mGreenSum:F

    .line 37
    iget v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mBlueSum:F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mBlueSum:F

    .line 38
    iget v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mPopulation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mPopulation:I

    return v0
.end method

.method protected clear()V
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mBlueSum:F

    iput v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mGreenSum:F

    iput v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mRedSum:F

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mPopulation:I

    .line 32
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    if-ne p0, p1, :cond_5

    .line 97
    :cond_4
    :goto_4
    return v0

    .line 83
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 84
    goto :goto_4

    .line 86
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 87
    goto :goto_4

    .line 89
    :cond_15
    check-cast p1, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    .line 90
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mName:Ljava/lang/String;

    if-nez v2, :cond_21

    .line 91
    iget-object v2, p1, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mName:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 92
    goto :goto_4

    .line 94
    :cond_21
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 95
    goto :goto_4
.end method

.method protected getBlue()I
    .registers 3

    .prologue
    .line 63
    iget v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mPopulation:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mBlueSum:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mPopulation:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_5
.end method

.method public getColor()I
    .registers 6

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 50
    iget v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mPopulation:I

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/16 v0, 0xff

    iget v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mRedSum:F

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mPopulation:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 51
    iget v2, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mGreenSum:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mPopulation:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mBlueSum:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mPopulation:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 50
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_7
.end method

.method protected getFrom()I
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mFrom:I

    return v0
.end method

.method protected getGreen()I
    .registers 3

    .prologue
    .line 59
    iget v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mPopulation:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mGreenSum:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mPopulation:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_5
.end method

.method protected getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPopulation()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mPopulation:I

    return v0
.end method

.method protected getRed()I
    .registers 3

    .prologue
    .line 55
    iget v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mPopulation:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mRedSum:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mPopulation:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_5
.end method

.method protected getTo()I
    .registers 2

    .prologue
    .line 115
    iget v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mTo:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mName:Ljava/lang/String;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1f

    .line 75
    return v0

    .line 74
    :cond_8
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method protected inRange([I)Z
    .registers 3

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method protected setFrom(I)V
    .registers 2

    .prologue
    .line 111
    iput p1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mFrom:I

    .line 112
    return-void
.end method

.method protected setTo(I)V
    .registers 2

    .prologue
    .line 119
    iput p1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mTo:I

    .line 120
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColorSegment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->getFrom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ~ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->getTo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->getPopulation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    const-string v1, " pixels. color is ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->getRed()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->getGreen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->getBlue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
