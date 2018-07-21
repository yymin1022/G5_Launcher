.class public Lcom/android/launcher3/WallpaperChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperChangedReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 25
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->onWallpaperChanged()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_15} :catch_1d

    .line 28
    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->aspectOf()Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$after$com_lge_launcher3_adaptive_AdaptiveTextAspect$4$966a0f8(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :catch_1d
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->aspectOf()Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$after$com_lge_launcher3_adaptive_AdaptiveTextAspect$4$966a0f8(Landroid/content/Context;Landroid/content/Intent;)V

    throw v0
.end method
