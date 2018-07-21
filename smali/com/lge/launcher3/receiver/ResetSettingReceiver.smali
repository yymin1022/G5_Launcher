.class public Lcom/lge/launcher3/receiver/ResetSettingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ResetSettingReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private resetSharedPreferences(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 27
    const/4 v1, 0x4

    .line 26
    invoke-static {v0, v1}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->clear(Landroid/content/Context;I)V

    .line 28
    return-void
.end method

.method private resetWallpaper(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 31
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 33
    const/4 v1, 0x0

    .line 34
    :try_start_5
    new-instance v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;

    invoke-direct {v0, p1}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->getList()Ljava/util/List;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_24

    .line 37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_25

    move-object v0, v1

    .line 46
    :goto_1b
    if-eqz v0, :cond_24

    .line 47
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 53
    :cond_24
    :goto_24
    return-void

    .line 37
    :cond_25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;

    .line 38
    iget v4, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->resImage:I

    if-eqz v4, :cond_14

    .line 40
    iget-object v1, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->mPackageName:Ljava/lang/String;

    .line 41
    const/4 v3, 0x2

    .line 40
    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->resImage:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 39
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_42} :catch_43

    goto :goto_1b

    .line 50
    :catch_43
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 19
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v0, "[ResetSetting]"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/lge/launcher3/receiver/ResetSettingReceiver;->resetSharedPreferences(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/lge/launcher3/receiver/ResetSettingReceiver;->resetWallpaper(Landroid/content/Context;)V

    .line 22
    const-string v0, "[ResetSetting]"

    const-string v1, "end"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method
