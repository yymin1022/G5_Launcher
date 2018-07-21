.class Lcom/lge/mrg/service/lib/ActionManager$1;
.super Ljava/lang/Object;
.source "ActionManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mrg/service/lib/ActionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mrg/service/lib/ActionManager;


# direct methods
.method constructor <init>(Lcom/lge/mrg/service/lib/ActionManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/mrg/service/lib/ActionManager$1;->this$0:Lcom/lge/mrg/service/lib/ActionManager;

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    .prologue
    .line 486
    if-nez p2, :cond_3

    .line 523
    :cond_2
    :goto_2
    return-void

    .line 490
    :cond_3
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager$1;->this$0:Lcom/lge/mrg/service/lib/ActionManager;

    invoke-static {p2}, Lcom/lge/mrg/service/IActionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/mrg/service/IActionManagerService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mrg/service/lib/ActionManager;->access$0(Lcom/lge/mrg/service/lib/ActionManager;Lcom/lge/mrg/service/IActionManagerService;)V

    .line 491
    const-string v0, "ActionManager"

    const-string v1, "connected to ActionManagerService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager$1;->this$0:Lcom/lge/mrg/service/lib/ActionManager;

    invoke-static {v0}, Lcom/lge/mrg/service/lib/ActionManager;->access$2(Lcom/lge/mrg/service/lib/ActionManager;)Lcom/lge/mrg/service/lib/ActionManager$BackupInfoCollectorImpl;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 495
    :try_start_1b
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager$1;->this$0:Lcom/lge/mrg/service/lib/ActionManager;

    invoke-static {v0}, Lcom/lge/mrg/service/lib/ActionManager;->access$3(Lcom/lge/mrg/service/lib/ActionManager;)Lcom/lge/mrg/service/IActionManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/mrg/service/lib/ActionManager$1;->this$0:Lcom/lge/mrg/service/lib/ActionManager;

    invoke-static {v1}, Lcom/lge/mrg/service/lib/ActionManager;->access$2(Lcom/lge/mrg/service/lib/ActionManager;)Lcom/lge/mrg/service/lib/ActionManager$BackupInfoCollectorImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lge/mrg/service/IActionManagerService;->registerBackupInfoCollector(Lcom/lge/mrg/service/IBackupInfoReporter;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2a} :catch_93

    .line 502
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager$1;->this$0:Lcom/lge/mrg/service/lib/ActionManager;

    invoke-static {v0}, Lcom/lge/mrg/service/lib/ActionManager;->access$1(Lcom/lge/mrg/service/lib/ActionManager;)Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 503
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 504
    const/16 v1, 0x3ea

    iput v1, v0, Landroid/os/Message;->what:I

    .line 507
    :try_start_3a
    iget-object v1, p0, Lcom/lge/mrg/service/lib/ActionManager$1;->this$0:Lcom/lge/mrg/service/lib/ActionManager;

    invoke-static {v1}, Lcom/lge/mrg/service/lib/ActionManager;->access$1(Lcom/lge/mrg/service/lib/ActionManager;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_43} :catch_9f

    .line 513
    :goto_43
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.mrg.service.intent.action.REG_LISTENER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 514
    invoke-static {}, Lcom/lge/mrg/service/lib/ActionManager;->access$4()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 515
    const-string v1, "extra_listener"

    iget-object v2, p0, Lcom/lge/mrg/service/lib/ActionManager$1;->this$0:Lcom/lge/mrg/service/lib/ActionManager;

    invoke-static {v2}, Lcom/lge/mrg/service/lib/ActionManager;->access$1(Lcom/lge/mrg/service/lib/ActionManager;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 516
    const-string v1, "extra_action_id_mask"

    iget-object v2, p0, Lcom/lge/mrg/service/lib/ActionManager$1;->this$0:Lcom/lge/mrg/service/lib/ActionManager;

    invoke-static {v2}, Lcom/lge/mrg/service/lib/ActionManager;->access$5(Lcom/lge/mrg/service/lib/ActionManager;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 517
    const-string v1, "extra_card_action_prefix"

    iget-object v2, p0, Lcom/lge/mrg/service/lib/ActionManager$1;->this$0:Lcom/lge/mrg/service/lib/ActionManager;

    invoke-static {v2}, Lcom/lge/mrg/service/lib/ActionManager;->access$6(Lcom/lge/mrg/service/lib/ActionManager;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    const-string v1, "extra_pkg_name"

    iget-object v2, p0, Lcom/lge/mrg/service/lib/ActionManager$1;->this$0:Lcom/lge/mrg/service/lib/ActionManager;

    invoke-static {v2}, Lcom/lge/mrg/service/lib/ActionManager;->access$7(Lcom/lge/mrg/service/lib/ActionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    const-string v1, "extra_cls_name"

    iget-object v2, p0, Lcom/lge/mrg/service/lib/ActionManager$1;->this$0:Lcom/lge/mrg/service/lib/ActionManager;

    invoke-static {v2}, Lcom/lge/mrg/service/lib/ActionManager;->access$8(Lcom/lge/mrg/service/lib/ActionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    iget-object v1, p0, Lcom/lge/mrg/service/lib/ActionManager$1;->this$0:Lcom/lge/mrg/service/lib/ActionManager;

    invoke-static {v1}, Lcom/lge/mrg/service/lib/ActionManager;->access$9(Lcom/lge/mrg/service/lib/ActionManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 496
    :catch_93
    move-exception v0

    .line 497
    const-string v1, "ActionManager"

    const-string v2, "failed to register BackupInfoCollector!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2a

    .line 508
    :catch_9f
    move-exception v0

    .line 510
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_43
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .prologue
    .line 468
    const-string v0, "ActionManager"

    const-string v1, "disconnected from ActionManagerService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager$1;->this$0:Lcom/lge/mrg/service/lib/ActionManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/mrg/service/lib/ActionManager;->access$0(Lcom/lge/mrg/service/lib/ActionManager;Lcom/lge/mrg/service/IActionManagerService;)V

    .line 471
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager$1;->this$0:Lcom/lge/mrg/service/lib/ActionManager;

    invoke-static {v0}, Lcom/lge/mrg/service/lib/ActionManager;->access$1(Lcom/lge/mrg/service/lib/ActionManager;)Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 472
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 473
    const/16 v1, 0x3eb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 476
    :try_start_1d
    iget-object v1, p0, Lcom/lge/mrg/service/lib/ActionManager$1;->this$0:Lcom/lge/mrg/service/lib/ActionManager;

    invoke-static {v1}, Lcom/lge/mrg/service/lib/ActionManager;->access$1(Lcom/lge/mrg/service/lib/ActionManager;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_26} :catch_27

    .line 482
    :cond_26
    :goto_26
    return-void

    .line 477
    :catch_27
    move-exception v0

    .line 479
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_26
.end method
