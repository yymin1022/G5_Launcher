.class public Lcom/google/android/libraries/launcherclient/HotwordServiceChecker;
.super Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;
.source "HotwordServiceChecker.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.android.launcher3.WINDOW_OVERLAY"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method


# virtual methods
.method public checkHotwordService(Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$StatusCallback;)V
    .registers 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/HotwordServiceChecker;->mContext:Landroid/content/Context;

    const-string v1, "com.google.android.googlequicksearchbox"

    .line 40
    invoke-static {v0, v1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->getServiceIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/launcherclient/HotwordServiceChecker;->checkHotwordService(Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$StatusCallback;Landroid/content/Intent;)V

    .line 41
    return-void
.end method

.method protected getStatus(Landroid/os/IBinder;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->isVoiceDetectionRunning()Z

    move-result v0

    return v0
.end method
