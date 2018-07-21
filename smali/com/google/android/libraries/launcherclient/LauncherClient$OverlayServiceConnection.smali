.class Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayServiceConnection;
.super Ljava/lang/Object;
.source "LauncherClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/launcherclient/LauncherClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverlayServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/launcherclient/LauncherClient;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/launcherclient/LauncherClient;)V
    .registers 2

    .prologue
    .line 450
    iput-object p1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayServiceConnection;->this$0:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/launcherclient/LauncherClient;Lcom/google/android/libraries/launcherclient/LauncherClient$1;)V
    .registers 3

    .prologue
    .line 450
    invoke-direct {p0, p1}, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayServiceConnection;-><init>(Lcom/google/android/libraries/launcherclient/LauncherClient;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayServiceConnection;->this$0:Lcom/google/android/libraries/launcherclient/LauncherClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->access$202(Lcom/google/android/libraries/launcherclient/LauncherClient;I)I

    .line 454
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayServiceConnection;->this$0:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-static {p2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    .line 455
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayServiceConnection;->this$0:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-static {v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->access$300(Lcom/google/android/libraries/launcherclient/LauncherClient;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 456
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayServiceConnection;->this$0:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-static {v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->access$400(Lcom/google/android/libraries/launcherclient/LauncherClient;)V

    .line 458
    :cond_1b
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 462
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayServiceConnection;->this$0:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-static {v0, v2}, Lcom/google/android/libraries/launcherclient/LauncherClient;->access$202(Lcom/google/android/libraries/launcherclient/LauncherClient;I)I

    .line 463
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayServiceConnection;->this$0:Lcom/google/android/libraries/launcherclient/LauncherClient;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    .line 464
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayServiceConnection;->this$0:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-static {v0, v2}, Lcom/google/android/libraries/launcherclient/LauncherClient;->access$100(Lcom/google/android/libraries/launcherclient/LauncherClient;I)V

    .line 465
    return-void
.end method
