.class public Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;
.super Ljava/lang/Object;
.source "ColorInfo.java"


# instance fields
.field private mAlpha:I

.field private mHue:I

.field private mIsValid:Z

.field private mLightness:I

.field private mSaturation:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mIsValid:Z

    .line 16
    return-void
.end method

.method private checkValidation(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mIsValid:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " - ColorInfo is not Valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->aassert(ZLjava/lang/String;)V

    .line 118
    return-void
.end method


# virtual methods
.method public getARGB()I
    .registers 4

    .prologue
    .line 87
    const-string v0, "getARGB()"

    invoke-direct {p0, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->checkValidation(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->getRGB()I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    iget v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mAlpha:I

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public getAlpha()I
    .registers 2

    .prologue
    .line 53
    const-string v0, "getAlpha()"

    invoke-direct {p0, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->checkValidation(Ljava/lang/String;)V

    .line 54
    iget v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mAlpha:I

    return v0
.end method

.method public getHue()I
    .registers 2

    .prologue
    .line 26
    const-string v0, "getHue()"

    invoke-direct {p0, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->checkValidation(Ljava/lang/String;)V

    .line 27
    iget v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mHue:I

    return v0
.end method

.method public getLightness()I
    .registers 2

    .prologue
    .line 44
    const-string v0, "getLightness()"

    invoke-direct {p0, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->checkValidation(Ljava/lang/String;)V

    .line 45
    iget v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mLightness:I

    return v0
.end method

.method public getRGB()I
    .registers 4

    .prologue
    .line 82
    const-string v0, "getRGB()"

    invoke-direct {p0, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->checkValidation(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mHue:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mSaturation:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mLightness:I

    aput v2, v0, v1

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorUtils;->HSLtoRGB([I)I

    move-result v0

    return v0
.end method

.method public getSaturation()I
    .registers 2

    .prologue
    .line 35
    const-string v0, "getSaturation()"

    invoke-direct {p0, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->checkValidation(Ljava/lang/String;)V

    .line 36
    iget v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mSaturation:I

    return v0
.end method

.method public isMonochrom()Z
    .registers 2

    .prologue
    .line 112
    const-string v0, "isMonochrom()"

    invoke-direct {p0, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->checkValidation(Ljava/lang/String;)V

    .line 113
    iget v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mHue:I

    if-nez v0, :cond_f

    iget v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mSaturation:I

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mIsValid:Z

    return v0
.end method

.method public setARGB(I)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 63
    invoke-static {p1, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorUtils;->RGBtoHSL(I[I)V

    .line 64
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->setHue(I)V

    .line 65
    aget v1, v0, v2

    invoke-virtual {p0, v1}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->setSaturation(I)V

    .line 66
    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->setLightness(I)V

    .line 67
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->setAlpha(I)V

    .line 68
    iput-boolean v2, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mIsValid:Z

    .line 69
    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    .prologue
    .line 58
    iput p1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mAlpha:I

    .line 59
    return-void
.end method

.method public setHSL([I)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 19
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->setHue(I)V

    .line 20
    aget v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->setSaturation(I)V

    .line 21
    const/4 v0, 0x2

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->setLightness(I)V

    .line 22
    iput-boolean v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mIsValid:Z

    .line 23
    return-void
.end method

.method public setHue(I)V
    .registers 2

    .prologue
    .line 31
    iput p1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mHue:I

    .line 32
    return-void
.end method

.method public setLightness(I)V
    .registers 2

    .prologue
    .line 49
    iput p1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mLightness:I

    .line 50
    return-void
.end method

.method public setRGB(I)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 73
    invoke-static {p1, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorUtils;->RGBtoHSL(I[I)V

    .line 74
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->setHue(I)V

    .line 75
    aget v1, v0, v2

    invoke-virtual {p0, v1}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->setSaturation(I)V

    .line 76
    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->setLightness(I)V

    .line 77
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->setAlpha(I)V

    .line 78
    iput-boolean v2, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mIsValid:Z

    .line 79
    return-void
.end method

.method public setSaturation(I)V
    .registers 2

    .prologue
    .line 40
    iput p1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mSaturation:I

    .line 41
    return-void
.end method

.method public setValid(Z)V
    .registers 2

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mIsValid:Z

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mIsValid:Z

    if-eqz v0, :cond_6e

    .line 102
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->getRGB()I

    move-result v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ColorInfo : HLS("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mHue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mSaturation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mLightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), RGB("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 104
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    const-string v1, "), Alpah("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->mAlpha:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_6d
    return-object v0

    :cond_6e
    const-string v0, "HLS(INVALID), RGB(INVALID), Alpah(INVALID)"

    goto :goto_6d
.end method
