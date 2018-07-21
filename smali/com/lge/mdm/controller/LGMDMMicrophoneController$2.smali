.class Lcom/lge/mdm/controller/LGMDMMicrophoneController$2;
.super Landroid/content/BroadcastReceiver;
.source "LGMDMMicrophoneController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMMicrophoneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMMicrophoneController;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMMicrophoneController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$2;->this$0:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x2

    .line 107
    const-string/jumbo v4, "android.bluetooth.profile.extra.STATE"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 108
    .local v2, "state":I
    if-ne v2, v6, :cond_30

    .line 109
    const/4 v3, 0x0

    .line 111
    .local v3, "userId":I
    :try_start_c
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v3, v4, Landroid/content/pm/UserInfo;->id:I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_31

    .line 116
    :goto_16
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$2;->this$0:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    invoke-static {v4}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->-wrap0(Lcom/lge/mdm/controller/LGMDMMicrophoneController;)I

    move-result v1

    .line 118
    .local v1, "mode":I
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$2;->this$0:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->getEnforceMuteDuringCall(Landroid/content/ComponentName;I)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 119
    if-eq v1, v6, :cond_2a

    const/4 v4, 0x3

    if-ne v1, v4, :cond_30

    .line 120
    :cond_2a
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$2;->this$0:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->setMicrophoneMute(Z)V

    .line 106
    .end local v1    # "mode":I
    .end local v3    # "userId":I
    :cond_30
    return-void

    .line 112
    .restart local v3    # "userId":I
    :catch_31
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "MicrophoneController"

    const-string/jumbo v5, "userID = 0"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method
