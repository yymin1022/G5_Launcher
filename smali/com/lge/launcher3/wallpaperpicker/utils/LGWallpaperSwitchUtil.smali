.class public Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperSwitchUtil;
.super Ljava/lang/Object;
.source "LGWallpaperSwitchUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeWallpaper(Landroid/content/Context;I)V
    .registers 3

    .prologue
    .line 27
    if-eqz p0, :cond_b

    .line 28
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_b

    .line 31
    :try_start_8
    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    .line 37
    :cond_b
    :goto_b
    return-void

    .line 32
    :catch_c
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b
.end method

.method public static changeWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 14
    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    .line 15
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 16
    if-eqz v0, :cond_d

    .line 18
    :try_start_a
    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_e

    .line 24
    :cond_d
    :goto_d
    return-void

    .line 19
    :catch_e
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d
.end method

.method public static getDensityDpi(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 42
    if-nez p0, :cond_b

    .line 43
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 54
    :goto_a
    return v0

    .line 50
    :cond_b
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 51
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 52
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 53
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_a
.end method
