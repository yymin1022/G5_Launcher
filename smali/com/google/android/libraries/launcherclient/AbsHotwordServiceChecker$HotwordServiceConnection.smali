.class Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$HotwordServiceConnection;
.super Ljava/lang/Object;
.source "AbsHotwordServiceChecker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HotwordServiceConnection"
.end annotation


# instance fields
.field private mStatusCallback:Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$StatusCallback;

.field final synthetic this$0:Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$StatusCallback;)V
    .registers 3

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$HotwordServiceConnection;->this$0:Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$HotwordServiceConnection;->mStatusCallback:Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$StatusCallback;

    .line 76
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$HotwordServiceConnection;->mStatusCallback:Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$StatusCallback;

    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$HotwordServiceConnection;->this$0:Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;

    invoke-virtual {v1, p2}, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;->getStatus(Landroid/os/IBinder;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$StatusCallback;->isRunning(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_13
    .catchall {:try_start_0 .. :try_end_b} :catchall_29

    .line 97
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$HotwordServiceConnection;->this$0:Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;

    iget-object v0, v0, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 100
    :goto_12
    return-void

    .line 94
    :catch_13
    move-exception v0

    .line 95
    :try_start_14
    const-string v1, "AbsHotwordServiceChecker"

    const-string v2, "isHotwordServiceRunning - remote call failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_29

    .line 97
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$HotwordServiceConnection;->this$0:Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;

    iget-object v0, v0, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 99
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$HotwordServiceConnection;->mStatusCallback:Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$StatusCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$StatusCallback;->isRunning(Z)V

    goto :goto_12

    .line 97
    :catchall_29
    move-exception v0

    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$HotwordServiceConnection;->this$0:Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;

    iget-object v1, v1, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .prologue
    .line 83
    return-void
.end method
