.class Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;
.super Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;
.source "LauncherClient.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/launcherclient/LauncherClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverlayCallbacks"
.end annotation


# static fields
.field private static final MSG_UPDATE_SCROLL:I = 0x2

.field private static final MSG_UPDATE_SHIFT:I = 0x3

.field private static final MSG_UPDATE_STATUS:I = 0x4


# instance fields
.field private mClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

.field private final mUIHandler:Landroid/os/Handler;

.field private mWindow:Landroid/view/Window;

.field private mWindowHidden:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowShift:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;-><init>()V

    .line 499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindowHidden:Z

    .line 502
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mUIHandler:Landroid/os/Handler;

    .line 503
    return-void
.end method

.method private hideActivityNonUI(Z)V
    .registers 3

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindowHidden:Z

    if-eq v0, p1, :cond_6

    .line 566
    iput-boolean p1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindowHidden:Z

    .line 571
    :cond_6
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 515
    iput-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    .line 516
    iput-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindowManager:Landroid/view/WindowManager;

    .line 517
    iput-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindow:Landroid/view/Window;

    .line 518
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 536
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-nez v0, :cond_8

    move v0, v1

    .line 561
    :goto_7
    return v0

    .line 540
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_66

    move v0, v2

    .line 561
    goto :goto_7

    .line 542
    :pswitch_f
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-static {v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->access$600(Lcom/google/android/libraries/launcherclient/LauncherClient;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2a

    .line 543
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-static {v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->access$700(Lcom/google/android/libraries/launcherclient/LauncherClient;)Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v2, v0}, Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;->onOverlayScrollChanged(F)V

    :cond_2a
    move v0, v1

    .line 545
    goto :goto_7

    .line 547
    :pswitch_2c
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 548
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 549
    iget v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindowShift:I

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 550
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 555
    :goto_46
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v1

    .line 556
    goto :goto_7

    .line 552
    :cond_53
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 553
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_46

    .line 558
    :pswitch_5c
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2}, Lcom/google/android/libraries/launcherclient/LauncherClient;->access$100(Lcom/google/android/libraries/launcherclient/LauncherClient;I)V

    move v0, v1

    .line 559
    goto :goto_7

    .line 540
    nop

    :pswitch_data_66
    .packed-switch 0x2
        :pswitch_f
        :pswitch_2c
        :pswitch_5c
    .end packed-switch
.end method

.method public overlayScrollChanged(F)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 522
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 523
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 524
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1d

    .line 525
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->hideActivityNonUI(Z)V

    .line 527
    :cond_1d
    return-void
.end method

.method public overlayStatusChanged(I)V
    .registers 5

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 532
    return-void
.end method

.method public setClient(Lcom/google/android/libraries/launcherclient/LauncherClient;)V
    .registers 4

    .prologue
    .line 506
    iput-object p1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    .line 507
    invoke-static {p1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->access$500(Lcom/google/android/libraries/launcherclient/LauncherClient;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindowManager:Landroid/view/WindowManager;

    .line 508
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 509
    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 510
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindowShift:I

    .line 511
    invoke-static {p1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->access$500(Lcom/google/android/libraries/launcherclient/LauncherClient;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindow:Landroid/view/Window;

    .line 512
    return-void
.end method
