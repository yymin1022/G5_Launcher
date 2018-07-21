.class Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$2;
.super Landroid/os/AsyncTask;
.source "WallpaperBlurredImageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->loadWallpaperBlurredImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$2;->this$0:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    .line 127
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 132
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$2;->this$0:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->access$2(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 133
    :try_start_8
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->TAG:Ljava/lang/String;

    const-string v2, "loadWallpaperBlurredImage()"

    invoke-static {v0, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$2;->this$0:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->access$3(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;)Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;

    move-result-object v0

    if-nez v0, :cond_20

    .line 136
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->TAG:Ljava/lang/String;

    const-string v2, "loadWallpaperBlurredImage() : mWallpaperInfoManager is null."

    invoke-static {v0, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    monitor-exit v1

    .line 160
    :goto_1f
    return-object v3

    .line 140
    :cond_20
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$2;->this$0:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->access$3(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;)Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_30

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_3c

    .line 142
    :cond_30
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->TAG:Ljava/lang/String;

    const-string v2, "loadWallpaperBlurredImage() : Wallpaper drawable is null or not BitmapDrawable."

    invoke-static {v0, v2}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    monitor-exit v1

    goto :goto_1f

    .line 132
    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_39

    throw v0

    .line 146
    :cond_3c
    :try_start_3c
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    if-nez v0, :cond_4d

    .line 148
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->TAG:Ljava/lang/String;

    const-string v2, "loadWallpaperBlurredImage() : Wallpaper drawable haven\'t Bitmap image."

    invoke-static {v0, v2}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    monitor-exit v1

    goto :goto_1f

    .line 152
    :cond_4d
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$2;->this$0:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    invoke-static {v2}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->access$4(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;)Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    move-result-object v2

    if-nez v2, :cond_5e

    .line 153
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->TAG:Ljava/lang/String;

    const-string v2, "loadWallpaperBlurredImage() : mAdaptiveColorEngine is null."

    invoke-static {v0, v2}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    monitor-exit v1

    goto :goto_1f

    .line 157
    :cond_5e
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$2;->this$0:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    invoke-static {v2}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->access$4(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;)Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->setImage(Landroid/graphics/Bitmap;)V

    .line 132
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_3c .. :try_end_68} :catchall_39

    goto :goto_1f
.end method
