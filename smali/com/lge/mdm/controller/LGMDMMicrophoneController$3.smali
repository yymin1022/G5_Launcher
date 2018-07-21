.class Lcom/lge/mdm/controller/LGMDMMicrophoneController$3;
.super Ljava/lang/Object;
.source "LGMDMMicrophoneController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/controller/LGMDMMicrophoneController;->setMicrophoneMute(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMMicrophoneController;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMMicrophoneController;
    .param p2, "val$state"    # Z

    .prologue
    .line 507
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$3;->this$0:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    iput-boolean p2, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$3;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 509
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 511
    .local v2, "identity":J
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$3;->this$0:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    iget-object v4, v4, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 513
    .local v0, "audio":Landroid/media/AudioManager;
    :try_start_11
    iget-boolean v4, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$3;->val$state:Z

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_1a
    .catchall {:try_start_11 .. :try_end_16} :catchall_42

    .line 518
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 508
    :goto_19
    return-void

    .line 514
    :catch_1a
    move-exception v1

    .line 516
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1b
    const-string/jumbo v4, "MicrophoneController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[setMicrophoneMute] Fail to setMicrophoneMute ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$3;->val$state:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 515
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_1b .. :try_end_3e} :catchall_42

    .line 518
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_19

    .line 517
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_42
    move-exception v4

    .line 518
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 517
    throw v4
.end method
