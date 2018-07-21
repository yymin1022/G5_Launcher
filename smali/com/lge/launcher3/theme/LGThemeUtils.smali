.class public Lcom/lge/launcher3/theme/LGThemeUtils;
.super Ljava/lang/Object;
.source "LGThemeUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LGThemeUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkBlurredBackground(Landroid/app/Activity;Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$OnWallpaperChangeListener;I)V
    .registers 5

    .prologue
    .line 27
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 29
    :goto_b
    if-eqz v0, :cond_10

    .line 41
    :goto_d
    return-void

    .line 28
    :cond_e
    const/4 v0, 0x0

    goto :goto_b

    .line 33
    :cond_10
    invoke-virtual {p1, p2}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->addOnWallpaperChangeListener(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$OnWallpaperChangeListener;)V

    .line 35
    invoke-virtual {p1}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->hasBlurredImage()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 36
    invoke-virtual {p1}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->loadWallpaperBlurredImage()V

    goto :goto_d

    .line 40
    :cond_1d
    invoke-static {p0, p1, p3}, Lcom/lge/launcher3/theme/LGThemeUtils;->setBlurredBackground(Landroid/app/Activity;Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;I)V

    goto :goto_d
.end method

.method public static destroyBlurredBackground(Landroid/app/Activity;Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$OnWallpaperChangeListener;)V
    .registers 5

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    if-eqz p1, :cond_d

    .line 73
    invoke-virtual {p1, p2}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->removeOnWallpaperChangeListener(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$OnWallpaperChangeListener;)V

    .line 76
    :cond_d
    return-void
.end method

.method public static setBlurredBackground(Landroid/app/Activity;Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;I)V
    .registers 6

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getBlurredImageForFullscreenInCenter()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51
    if-nez v0, :cond_e

    .line 52
    const-string v0, "LGThemeUtils"

    const-string v1, "Fail to get blurred image."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_d
    return-void

    .line 56
    :cond_e
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-direct {v2, v0}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_d
.end method
