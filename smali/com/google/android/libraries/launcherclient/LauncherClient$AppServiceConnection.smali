.class final Lcom/google/android/libraries/launcherclient/LauncherClient$AppServiceConnection;
.super Ljava/lang/Object;
.source "LauncherClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/launcherclient/LauncherClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppServiceConnection"
.end annotation


# instance fields
.field public final packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput-object p1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$AppServiceConnection;->packageName:Ljava/lang/String;

    .line 583
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .prologue
    .line 586
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .prologue
    .line 590
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$AppServiceConnection;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 591
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->access$802(Lcom/google/android/libraries/launcherclient/LauncherClient$AppServiceConnection;)Lcom/google/android/libraries/launcherclient/LauncherClient$AppServiceConnection;

    .line 593
    :cond_10
    return-void
.end method
