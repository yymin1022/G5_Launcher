.class public Lcom/lge/launcher3/wallpaperpicker/WallpaperChangeReciever;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperChangeReciever.java"


# static fields
.field private static sInstance:Lcom/lge/launcher3/wallpaperpicker/WallpaperChangeReciever;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChangeReciever;->sInstance:Lcom/lge/launcher3/wallpaperpicker/WallpaperChangeReciever;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lge/launcher3/wallpaperpicker/WallpaperChangeReciever;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChangeReciever;->sInstance:Lcom/lge/launcher3/wallpaperpicker/WallpaperChangeReciever;

    if-nez v0, :cond_b

    .line 14
    new-instance v0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChangeReciever;

    invoke-direct {v0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChangeReciever;-><init>()V

    sput-object v0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChangeReciever;->sInstance:Lcom/lge/launcher3/wallpaperpicker/WallpaperChangeReciever;

    .line 16
    :cond_b
    sget-object v0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChangeReciever;->sInstance:Lcom/lge/launcher3/wallpaperpicker/WallpaperChangeReciever;

    return-object v0
.end method

.method public static registerReceiver(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChangeReciever;->getInstance()Lcom/lge/launcher3/wallpaperpicker/WallpaperChangeReciever;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 35
    return-void
.end method

.method public static unregisterReceiver(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 38
    invoke-static {}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChangeReciever;->getInstance()Lcom/lge/launcher3/wallpaperpicker/WallpaperChangeReciever;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 39
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->getDefaultSharedPreferences(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;

    move-result-object v0

    const-string v1, "wallpaper_check_launched"

    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 23
    if-nez v0, :cond_25

    .line 24
    invoke-static {p1}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->getDefaultSharedPreferences(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;->edit()Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;

    move-result-object v0

    .line 25
    const-string v1, "wallpaper_index"

    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;->putInt(Ljava/lang/String;I)Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;->apply()V

    .line 27
    :cond_25
    invoke-static {p1}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->getDefaultSharedPreferences(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;->edit()Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;

    move-result-object v0

    .line 28
    const-string v1, "wallpaper_check_launched"

    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;->putBoolean(Ljava/lang/String;Z)Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;->apply()V

    .line 29
    return-void
.end method
