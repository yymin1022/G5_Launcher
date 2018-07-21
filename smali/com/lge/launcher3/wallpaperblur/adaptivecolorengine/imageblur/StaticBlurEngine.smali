.class public Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;
.super Ljava/lang/Object;
.source "StaticBlurEngine.java"


# static fields
.field private static final SCALE_FACTOR:I = 0x2

.field public static final TAG:Ljava/lang/String;

.field private static sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;


# instance fields
.field private mBlurRadius:I

.field private mBlurredImage:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-class v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->TAG:Ljava/lang/String;

    .line 13
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;
    .registers 2

    .prologue
    .line 32
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;

    if-nez v0, :cond_11

    .line 33
    const-string v0, "StaticBlurEngine is not initialized"

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->e(Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "StaticBlurEngine is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_11
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;

    return-object v0
.end method

.method public static init()Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;
    .registers 2

    .prologue
    .line 21
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;

    if-nez v0, :cond_13

    .line 22
    const-class v1, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;

    monitor-enter v1

    .line 23
    :try_start_7
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;

    if-nez v0, :cond_12

    .line 24
    new-instance v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;

    invoke-direct {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;-><init>()V

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;

    .line 22
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 28
    :cond_13
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;

    return-object v0

    .line 22
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private setBlurRadius(I)V
    .registers 4

    .prologue
    const/16 v0, 0x19

    .line 73
    shr-int/lit8 v1, p1, 0x2

    if-le v1, v0, :cond_9

    :goto_6
    iput v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->mBlurRadius:I

    .line 74
    return-void

    .line 73
    :cond_9
    shr-int/lit8 v0, p1, 0x2

    goto :goto_6
.end method


# virtual methods
.method public blur(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .registers 8

    .prologue
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 56
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->clear()V

    .line 57
    invoke-direct {p0, p3}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->setBlurRadius(I)V

    .line 58
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->needBlur()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 59
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 60
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 61
    invoke-static {v2, v3, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    .line 62
    if-lt v0, v2, :cond_1f

    if-ge v1, v2, :cond_20

    .line 70
    :cond_1f
    :goto_1f
    return-void

    .line 65
    :cond_20
    shr-int/lit8 v0, v0, 0x2

    .line 66
    shr-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    .line 65
    invoke-static {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    iget v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->mBlurRadius:I

    invoke-static {p1, v0, v1}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/BlurRenderScript;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->mBlurredImage:Landroid/graphics/Bitmap;

    .line 68
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1f
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->mBlurredImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 78
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->mBlurredImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->mBlurredImage:Landroid/graphics/Bitmap;

    .line 81
    :cond_c
    return-void
.end method

.method public getBlurImage(IIII)Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->mBlurredImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    .line 46
    shr-int/lit8 v0, p1, 0x2

    .line 47
    shr-int/lit8 v1, p2, 0x2

    .line 48
    shr-int/lit8 v2, p3, 0x2

    .line 49
    shr-int/lit8 v3, p4, 0x2

    .line 50
    iget-object v4, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->mBlurredImage:Landroid/graphics/Bitmap;

    invoke-static {v4, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 52
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public hasBlurredImage()Z
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->mBlurredImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public needBlur()Z
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->mBlurRadius:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
