.class Lcom/lge/mdm/controller/LGMDMWifiController$1;
.super Landroid/content/BroadcastReceiver;
.source "LGMDMWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMWifiController;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMWifiController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMWifiController;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMWifiController$1;->this$0:Lcom/lge/mdm/controller/LGMDMWifiController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x4

    .line 164
    const-string/jumbo v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 165
    const/4 v3, 0x0

    .line 168
    .local v3, "userID":I
    :try_start_f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 169
    .local v1, "mUserInfo":Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_7b

    .line 173
    .end local v1    # "mUserInfo":Landroid/content/pm/UserInfo;
    :goto_19
    const-string/jumbo v5, "WifiController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mWifiStateChangeReceiver : NeedUpdate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMWifiController$1;->this$0:Lcom/lge/mdm/controller/LGMDMWifiController;

    invoke-static {v7, v3}, Lcom/lge/mdm/controller/LGMDMWifiController;->-wrap0(Lcom/lge/mdm/controller/LGMDMWifiController;I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController$1;->this$0:Lcom/lge/mdm/controller/LGMDMWifiController;

    invoke-static {v5, v3}, Lcom/lge/mdm/controller/LGMDMWifiController;->-wrap0(Lcom/lge/mdm/controller/LGMDMWifiController;I)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 175
    const-string/jumbo v5, "wifi_state"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 177
    .local v4, "wifiState":I
    const-string/jumbo v5, "WifiController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mWifiStateChangeReceiver : wifiState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v5, 0x3

    if-ne v4, v5, :cond_7a

    .line 179
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController$1;->this$0:Lcom/lge/mdm/controller/LGMDMWifiController;

    invoke-static {v5}, Lcom/lge/mdm/controller/LGMDMWifiController;->-get0(Lcom/lge/mdm/controller/LGMDMWifiController;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 180
    .local v2, "msg":Landroid/os/Message;
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 181
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController$1;->this$0:Lcom/lge/mdm/controller/LGMDMWifiController;

    invoke-static {v5}, Lcom/lge/mdm/controller/LGMDMWifiController;->-get0(Lcom/lge/mdm/controller/LGMDMWifiController;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "userID":I
    .end local v4    # "wifiState":I
    :cond_7a
    :goto_7a
    return-void

    .line 170
    .restart local v3    # "userID":I
    :catch_7b
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "WifiController"

    const-string/jumbo v6, "userID = 0"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 184
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "userID":I
    :cond_86
    const-string/jumbo v5, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 185
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController$1;->this$0:Lcom/lge/mdm/controller/LGMDMWifiController;

    const-string/jumbo v6, "wifi_p2p_state"

    .line 186
    const/4 v7, 0x1

    .line 185
    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/lge/mdm/controller/LGMDMWifiController;->-set0(Lcom/lge/mdm/controller/LGMDMWifiController;I)I

    .line 187
    const-string/jumbo v5, "WifiController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "WIFI_P2P_STATE_CHANGED_ACTION : mWifiP2PState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMWifiController$1;->this$0:Lcom/lge/mdm/controller/LGMDMWifiController;

    invoke-static {v7}, Lcom/lge/mdm/controller/LGMDMWifiController;->-get1(Lcom/lge/mdm/controller/LGMDMWifiController;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7a
.end method
