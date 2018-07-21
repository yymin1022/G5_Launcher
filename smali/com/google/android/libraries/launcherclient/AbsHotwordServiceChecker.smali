.class public abstract Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;
.super Ljava/lang/Object;
.source "AbsHotwordServiceChecker.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$HotwordServiceConnection;,
        Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$StatusCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final GSA_PACKAGE:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final TAG:Ljava/lang/String; = "AbsHotwordServiceChecker"


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;)V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;->assertMainThread()V

    return-void
.end method

.method private assertMainThread()V
    .registers 3

    .prologue
    .line 64
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_16

    .line 65
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called on the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_16
    return-void
.end method


# virtual methods
.method protected checkHotwordService(Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$StatusCallback;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 44
    const-string v0, "com.google.android.googlequicksearchbox"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    new-instance v0, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$HotwordServiceConnection;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$HotwordServiceConnection;-><init>(Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$StatusCallback;)V

    .line 46
    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 47
    if-nez v0, :cond_24

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$1;-><init>(Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$StatusCallback;)V

    .line 49
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    :cond_24
    return-void
.end method

.method protected abstract getStatus(Landroid/os/IBinder;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
