.class Lcom/lge/mdm/controller/LGMDMEmailController$1;
.super Landroid/content/BroadcastReceiver;
.source "LGMDMEmailController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMEmailController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMEmailController;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMEmailController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMEmailController;

    .prologue
    .line 789
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMEmailController$1;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 791
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 793
    return-void

    .line 796
    :cond_7
    const/4 v5, 0x0

    .line 799
    .local v5, "userID":I
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 800
    .local v4, "mUserInfo":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_25

    .line 805
    .end local v4    # "mUserInfo":Landroid/content/pm/UserInfo;
    :goto_12
    :try_start_12
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMEmailController$1;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v5}, Lcom/lge/mdm/controller/LGMDMEmailController;->getManualSyncWhenRoaming(Landroid/content/ComponentName;I)Z

    move-result v6

    if-nez v6, :cond_30

    .line 806
    const-string/jumbo v6, "EmailController"

    const-string/jumbo v7, "save preAutoSync fail:policy is not set"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_24} :catch_42

    .line 807
    return-void

    .line 801
    :catch_25
    move-exception v1

    .line 802
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "EmailController"

    const-string/jumbo v7, "userID = 0"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 809
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_30
    :try_start_30
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMEmailController$1;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    invoke-static {v6}, Lcom/lge/mdm/controller/LGMDMEmailController;->-wrap0(Lcom/lge/mdm/controller/LGMDMEmailController;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 810
    const-string/jumbo v6, "EmailController"

    const-string/jumbo v7, "save preAutoSync fail:is roaming"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_41} :catch_42

    .line 811
    return-void

    .line 813
    :catch_42
    move-exception v1

    .line 814
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "EmailController"

    const-string/jumbo v7, "Failed talking with LGMDM controller"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 816
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 818
    .local v2, "identity":J
    :try_start_50
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMEmailController$1;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    invoke-static {v6}, Lcom/lge/mdm/controller/LGMDMEmailController;->-get0(Lcom/lge/mdm/controller/LGMDMEmailController;)Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v6

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v7

    invoke-virtual {v6, v7, v5}, Lcom/lge/mdm/admin/LGMDMadministrator;->setPreAutoSync(ZI)V
    :try_end_5d
    .catchall {:try_start_50 .. :try_end_5d} :catchall_91

    .line 821
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 823
    const-string/jumbo v6, "EmailController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "save preAutoSync : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/mdm/controller/LGMDMEmailController$1;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    invoke-static {v8}, Lcom/lge/mdm/controller/LGMDMEmailController;->-get0(Lcom/lge/mdm/controller/LGMDMEmailController;)Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/lge/mdm/admin/LGMDMadministrator;->getPreAutoSync(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMEmailController$1;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    invoke-static {v6}, Lcom/lge/mdm/controller/LGMDMEmailController;->-get0(Lcom/lge/mdm/controller/LGMDMEmailController;)Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v6

    const-string/jumbo v7, "lgmdm_application_policies.xml"

    invoke-virtual {v6, v7, v5}, Lcom/lge/mdm/admin/LGMDMadministrator;->saveSettingsLocked(Ljava/lang/String;I)V

    .line 790
    return-void

    .line 820
    :catchall_91
    move-exception v6

    .line 821
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 820
    throw v6
.end method
