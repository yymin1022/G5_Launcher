.class public Lcom/google/android/hotword/client/HotwordServiceChecker;
.super Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;
.source "HotwordServiceChecker.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static final HOTWORD_SERVICE:Ljava/lang/String; = "com.google.android.googlequicksearchbox.HOTWORD_SERVICE"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method public checkHotwordService(Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$StatusCallback;)V
    .registers 4

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.googlequicksearchbox.HOTWORD_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/hotword/client/HotwordServiceChecker;->checkHotwordService(Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$StatusCallback;Landroid/content/Intent;)V

    .line 47
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
    .line 51
    invoke-static {p1}, Lcom/google/android/hotword/service/IHotwordService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/hotword/service/IHotwordService;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/hotword/service/IHotwordService;->isHotwordServiceRunning()Z

    move-result v0

    return v0
.end method
