.class public final Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;
.super Ljava/lang/Object;
.source "ColorExtractor.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final NUM_OF_SEGMENT:I = 0xe

.field private static sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;


# instance fields
.field private mColorInfos:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

.field private mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->initializeColorSegments()V

    .line 18
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->initializeColorInfos()V

    .line 19
    return-void
.end method

.method private clearSegments()V
    .registers 5

    .prologue
    .line 141
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-lt v0, v2, :cond_7

    .line 144
    return-void

    .line 141
    :cond_7
    aget-object v3, v1, v0

    .line 142
    invoke-virtual {v3}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->clear()V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static getInstance()Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;
    .registers 2

    .prologue
    .line 22
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;

    if-nez v0, :cond_13

    .line 23
    const-class v1, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;

    monitor-enter v1

    .line 24
    :try_start_7
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;

    if-nez v0, :cond_12

    .line 25
    new-instance v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;

    invoke-direct {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;-><init>()V

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;

    .line 23
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 29
    :cond_13
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;

    return-object v0

    .line 23
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private getOrderedColors()[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    array-length v0, v0

    new-array v4, v0, [I

    .line 44
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    array-length v0, v0

    new-array v5, v0, [I

    .line 45
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->getColor()I

    move-result v0

    aput v0, v4, v2

    .line 46
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->getPopulation()I

    move-result v0

    aput v0, v5, v2

    move v0, v1

    .line 47
    :goto_21
    iget-object v3, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    array-length v3, v3

    if-lt v0, v3, :cond_2f

    move v0, v2

    .line 59
    :goto_27
    iget-object v3, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorInfos:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    array-length v3, v3

    if-lt v0, v3, :cond_62

    .line 66
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorInfos:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    return-object v0

    .line 48
    :cond_2f
    iget-object v3, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->getPopulation()I

    move-result v6

    .line 49
    iget-object v3, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->getColor()I

    move-result v7

    .line 50
    add-int/lit8 v3, v0, -0x1

    .line 51
    :goto_41
    const/4 v8, -0x1

    if-le v3, v8, :cond_48

    aget v8, v5, v3

    if-lt v8, v6, :cond_53

    .line 56
    :cond_48
    add-int/lit8 v8, v3, 0x1

    aput v6, v5, v8

    .line 57
    add-int/lit8 v3, v3, 0x1

    aput v7, v4, v3

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 52
    :cond_53
    add-int/lit8 v8, v3, 0x1

    aget v9, v5, v3

    aput v9, v5, v8

    .line 53
    add-int/lit8 v8, v3, 0x1

    aget v9, v4, v3

    aput v9, v4, v8

    .line 54
    add-int/lit8 v3, v3, -0x1

    goto :goto_41

    .line 60
    :cond_62
    aget v3, v5, v0

    if-lez v3, :cond_7c

    move v3, v1

    .line 61
    :goto_67
    if-eqz v3, :cond_72

    .line 62
    iget-object v6, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorInfos:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    aget-object v6, v6, v0

    aget v7, v4, v0

    invoke-virtual {v6, v7}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->setRGB(I)V

    .line 64
    :cond_72
    iget-object v6, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorInfos:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    aget-object v6, v6, v0

    invoke-virtual {v6, v3}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->setValid(Z)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_7c
    move v3, v2

    .line 60
    goto :goto_67
.end method

.method private initializeColorInfos()V
    .registers 4

    .prologue
    .line 90
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorInfos:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    .line 91
    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorInfos:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    array-length v1, v1

    if-lt v0, v1, :cond_d

    .line 94
    return-void

    .line 92
    :cond_d
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorInfos:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    new-instance v2, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    invoke-direct {v2}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;-><init>()V

    aput-object v2, v1, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private initializeColorSegments()V
    .registers 9

    .prologue
    const/16 v7, 0x13e

    const/16 v6, 0xa

    const/4 v3, 0x0

    .line 72
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    .line 73
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    new-instance v1, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/LightnessSegment;

    const-string v2, "black"

    invoke-direct {v1, v2, v3, v6}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/LightnessSegment;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    .line 74
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    const/4 v1, 0x1

    new-instance v2, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/LightnessSegment;

    const-string v3, "white"

    const/16 v4, 0x5f

    const/16 v5, 0x64

    invoke-direct {v2, v3, v4, v5}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/LightnessSegment;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 75
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    const/4 v1, 0x2

    new-instance v2, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/GrayscaleSegment;

    const-string v3, "gray"

    invoke-direct {v2, v3}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/GrayscaleSegment;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 76
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    const/4 v1, 0x3

    new-instance v2, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/HueSegment;

    const-string v3, "red"

    const/16 v4, 0x11

    invoke-direct {v2, v3, v7, v4}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/HueSegment;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 77
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    const/4 v1, 0x4

    new-instance v2, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/HueSegment;

    const-string v3, "orange"

    const/16 v4, 0x12

    const/16 v5, 0x35

    invoke-direct {v2, v3, v4, v5}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/HueSegment;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 78
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    const/4 v1, 0x5

    new-instance v2, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/HueSegment;

    const-string v3, "yellow"

    const/16 v4, 0x36

    const/16 v5, 0x47

    invoke-direct {v2, v3, v4, v5}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/HueSegment;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 79
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    const/4 v1, 0x6

    new-instance v2, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/HueSegment;

    const-string v3, "lime"

    const/16 v4, 0x48

    const/16 v5, 0x59

    invoke-direct {v2, v3, v4, v5}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/HueSegment;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 80
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    const/4 v1, 0x7

    new-instance v2, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/HueSegment;

    const-string v3, "green"

    const/16 v4, 0x5a

    const/16 v5, 0xa1

    invoke-direct {v2, v3, v4, v5}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/HueSegment;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 81
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    const/16 v1, 0x8

    new-instance v2, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/HueSegment;

    const-string v3, "teal"

    const/16 v4, 0xa2

    const/16 v5, 0xb3

    invoke-direct {v2, v3, v4, v5}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/HueSegment;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 82
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    const/16 v1, 0x9

    new-instance v2, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/HueSegment;

    const-string v3, "cyan"

    const/16 v4, 0xb4

    const/16 v5, 0xc5

    invoke-direct {v2, v3, v4, v5}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/HueSegment;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 83
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    new-instance v1, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/HueSegment;

    const-string v2, "blue"

    const/16 v3, 0xc6

    const/16 v4, 0xe3

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/HueSegment;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v6

    .line 84
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    const/16 v1, 0xb

    new-instance v2, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/HueSegment;

    const-string v3, "indigo"

    const/16 v4, 0xe4

    const/16 v5, 0x13d

    invoke-direct {v2, v3, v4, v5}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/HueSegment;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 85
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    const/16 v1, 0xc

    new-instance v2, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/HueSegment;

    const-string v3, "purple"

    const/16 v4, 0x140

    invoke-direct {v2, v3, v7, v4}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/HueSegment;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 86
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    const/16 v1, 0xd

    new-instance v2, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/HueSegment;

    const-string v3, "magenta"

    const/16 v4, 0x141

    const/16 v5, 0x14a

    invoke-direct {v2, v3, v4, v5}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/HueSegment;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 87
    return-void
.end method

.method private parseImage(Landroid/graphics/Bitmap;)V
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0, p1}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->scaleBitmapDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    const/4 v1, 0x3

    new-array v8, v1, [I

    .line 99
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 100
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 101
    mul-int v1, v3, v7

    new-array v1, v1, [I

    move v4, v2

    move v5, v2

    move v6, v3

    .line 102
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v3, v2

    .line 103
    :goto_1b
    array-length v4, v1

    if-lt v3, v4, :cond_24

    .line 118
    if-eq v0, p1, :cond_23

    .line 119
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 121
    :cond_23
    return-void

    .line 104
    :cond_24
    aget v4, v1, v3

    invoke-static {v4, v8}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorUtils;->RGBtoHSL(I[I)V

    .line 105
    const/4 v5, 0x0

    .line 106
    iget-object v7, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    array-length v9, v7

    move v6, v2

    :goto_2e
    if-lt v6, v9, :cond_39

    move-object v4, v5

    .line 116
    :cond_31
    aget v5, v1, v3

    invoke-virtual {v4, v5}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->addPixel(I)I

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 106
    :cond_39
    aget-object v4, v7, v6

    .line 107
    invoke-virtual {v4, v8}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->inRange([I)Z

    move-result v10

    if-nez v10, :cond_31

    .line 106
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_2e
.end method

.method private printSegmentInfo()V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 124
    const-string v1, "-----------------------------------------------------"

    invoke-static {v1}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->d(Ljava/lang/String;)V

    .line 125
    const-string v1, "[Color Segment]"

    invoke-static {v1}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->d(Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorSegments:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;

    array-length v3, v2

    move v1, v0

    :goto_f
    if-lt v1, v3, :cond_21

    .line 131
    const-string v1, "[Color Info]"

    invoke-static {v1}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->d(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->mColorInfos:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    array-length v2, v1

    :goto_19
    if-lt v0, v2, :cond_42

    .line 137
    const-string v0, "-----------------------------------------------------"

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->d(Ljava/lang/String;)V

    .line 138
    return-void

    .line 126
    :cond_21
    aget-object v4, v2, v1

    .line 127
    invoke-virtual {v4}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->getPopulation()I

    move-result v5

    if-eqz v5, :cond_3f

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorSegment;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->d(Ljava/lang/String;)V

    .line 126
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 132
    :cond_42
    aget-object v3, v1, v0

    .line 133
    invoke-virtual {v3}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->isValid()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->d(Ljava/lang/String;)V

    .line 132
    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method private scaleBitmapDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 149
    const/16 v1, 0x64

    if-gt v0, v1, :cond_11

    .line 153
    :goto_10
    return-object p1

    .line 152
    :cond_11
    const/high16 v1, 0x42c80000    # 100.0f

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 153
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v2, 0x0

    .line 153
    invoke-static {p1, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_10
.end method


# virtual methods
.method public extract(Landroid/graphics/Bitmap;)[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->clearSegments()V

    .line 34
    invoke-direct {p0, p1}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->parseImage(Landroid/graphics/Bitmap;)V

    .line 35
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->getOrderedColors()[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    move-result-object v0

    .line 39
    return-object v0
.end method
