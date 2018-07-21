.class Lcom/lge/launcher3/adaptive/WallpaperRetreiver;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperRetreiver.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "WallpaperRetreiver"


# instance fields
.field private mService:Landroid/app/WallpaperManager;

.field private mWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 43
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/adaptive/WallpaperRetreiver;->mService:Landroid/app/WallpaperManager;

    .line 44
    return-void
.end method


# virtual methods
.method public getWallpaperBitmap()Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 47
    monitor-enter p0

    .line 48
    :try_start_1
    iget-object v0, p0, Lcom/lge/launcher3/adaptive/WallpaperRetreiver;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    .line 49
    iget-object v0, p0, Lcom/lge/launcher3/adaptive/WallpaperRetreiver;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 59
    :goto_8
    return-object v0

    .line 51
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/adaptive/WallpaperRetreiver;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_24

    .line 53
    :try_start_c
    iget-object v0, p0, Lcom/lge/launcher3/adaptive/WallpaperRetreiver;->mService:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/adaptive/WallpaperRetreiver;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_1b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_1b} :catch_27
    .catchall {:try_start_c .. :try_end_1b} :catchall_35

    .line 57
    :try_start_1b
    iget-object v0, p0, Lcom/lge/launcher3/adaptive/WallpaperRetreiver;->mService:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 59
    :goto_20
    iget-object v0, p0, Lcom/lge/launcher3/adaptive/WallpaperRetreiver;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_8

    .line 47
    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_24

    throw v0

    .line 54
    :catch_27
    move-exception v0

    .line 55
    :try_start_28
    const-string v1, "WallpaperRetreiver"

    const-string v2, "No memory load current wallpaper"

    invoke-static {v1, v2, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_35

    .line 57
    :try_start_2f
    iget-object v0, p0, Lcom/lge/launcher3/adaptive/WallpaperRetreiver;->mService:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    goto :goto_20

    .line 56
    :catchall_35
    move-exception v0

    .line 57
    iget-object v1, p0, Lcom/lge/launcher3/adaptive/WallpaperRetreiver;->mService:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 58
    throw v0
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_24
.end method

.method public onWallpaperChanged()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    monitor-enter p0

    .line 31
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/lge/launcher3/adaptive/WallpaperRetreiver;->mWallpaper:Landroid/graphics/Bitmap;

    .line 30
    monitor-exit p0

    .line 33
    return-void

    .line 30
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public recycleBitmap()V
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/launcher3/adaptive/WallpaperRetreiver;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 37
    iget-object v0, p0, Lcom/lge/launcher3/adaptive/WallpaperRetreiver;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/adaptive/WallpaperRetreiver;->mWallpaper:Landroid/graphics/Bitmap;

    .line 40
    :cond_c
    return-void
.end method
