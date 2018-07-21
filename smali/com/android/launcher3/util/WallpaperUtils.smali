.class public final Lcom/android/launcher3/util/WallpaperUtils;
.super Ljava/lang/Object;
.source "WallpaperUtils.java"


# static fields
.field public static final WALLPAPER_HEIGHT_KEY:Ljava/lang/String; = "wallpaper.height"

.field public static final WALLPAPER_SCREENS_SPAN:F = 2.0f

.field public static final WALLPAPER_WIDTH_KEY:Ljava/lang/String; = "wallpaper.width"

.field private static sDefaultWallpaperSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultWallpaperSize(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 94
    sget-object v0, Lcom/android/launcher3/util/WallpaperUtils;->sDefaultWallpaperSize:Landroid/graphics/Point;

    if-nez v0, :cond_5f

    .line 95
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 96
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 97
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 99
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 100
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 102
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_47

    .line 103
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 104
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 105
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 106
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 112
    :cond_47
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x2d0

    if-lt v2, v3, :cond_62

    .line 113
    int-to-float v2, v1

    invoke-static {v1, v0}, Lcom/android/launcher3/util/WallpaperUtils;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 119
    :goto_58
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    sput-object v2, Lcom/android/launcher3/util/WallpaperUtils;->sDefaultWallpaperSize:Landroid/graphics/Point;

    .line 121
    :cond_5f
    sget-object v0, Lcom/android/launcher3/util/WallpaperUtils;->sDefaultWallpaperSize:Landroid/graphics/Point;

    return-object v0

    .line 116
    :cond_62
    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_58
.end method

.method public static suggestWallpaperDimension(Landroid/content/res/Resources;Landroid/content/SharedPreferences;Landroid/view/WindowManager;Landroid/app/WallpaperManager;Z)V
    .registers 9

    .prologue
    const/4 v3, -0x1

    .line 40
    invoke-static {p0, p2}, Lcom/android/launcher3/util/WallpaperUtils;->getDefaultWallpaperSize(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object v2

    .line 43
    const-string v0, "wallpaper.width"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 44
    const-string v0, "wallpaper.height"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 46
    if-eq v1, v3, :cond_15

    if-ne v0, v3, :cond_1c

    .line 47
    :cond_15
    if-nez p4, :cond_18

    .line 59
    :cond_17
    :goto_17
    return-void

    .line 50
    :cond_18
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 51
    iget v0, v2, Landroid/graphics/Point;->y:I

    .line 55
    :cond_1c
    invoke-virtual {p3}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v2

    if-ne v1, v2, :cond_28

    .line 56
    invoke-virtual {p3}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v2

    if-eq v0, v2, :cond_17

    .line 57
    :cond_28
    invoke-virtual {p3, v1, v0}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    goto :goto_17
.end method

.method public static wallpaperTravelToScreenWidthRatio(II)F
    .registers 4

    .prologue
    .line 66
    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 87
    const v1, 0x3e9d89d7

    mul-float/2addr v0, v1

    const v1, 0x3f80fc10

    add-float/2addr v0, v1

    return v0
.end method
