.class Lcom/lge/mdm/controller/LGMDMUsbController$BatteryChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LGMDMUsbController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMUsbController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatteryChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMUsbController;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMUsbController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMUsbController;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMUsbController$BatteryChangeReceiver;->this$0:Lcom/lge/mdm/controller/LGMDMUsbController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 58
    const-string/jumbo v5, "status"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 59
    .local v2, "status":I
    const-string/jumbo v5, "plugged"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 61
    .local v1, "plug":I
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMUsbController$BatteryChangeReceiver;->this$0:Lcom/lge/mdm/controller/LGMDMUsbController;

    if-eq v2, v7, :cond_24

    .line 62
    const/4 v6, 0x5

    if-ne v2, v6, :cond_27

    .line 63
    :cond_24
    if-ne v1, v7, :cond_27

    const/4 v4, 0x1

    .line 61
    :cond_27
    invoke-static {v5, v4}, Lcom/lge/mdm/controller/LGMDMUsbController;->-set1(Lcom/lge/mdm/controller/LGMDMUsbController;Z)Z

    .line 65
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMUsbController$BatteryChangeReceiver;->this$0:Lcom/lge/mdm/controller/LGMDMUsbController;

    invoke-static {v4}, Lcom/lge/mdm/controller/LGMDMUsbController;->-get1(Lcom/lge/mdm/controller/LGMDMUsbController;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 67
    const/4 v3, 0x0

    .line 69
    .local v3, "userId":I
    :try_start_33
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v3, v4, Landroid/content/pm/UserInfo;->id:I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3d} :catch_69

    .line 74
    :goto_3d
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMUsbController$BatteryChangeReceiver;->this$0:Lcom/lge/mdm/controller/LGMDMUsbController;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Lcom/lge/mdm/controller/LGMDMUsbController;->getEnforceUsbModeAsNone(Landroid/content/ComponentName;I)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 75
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMUsbController$BatteryChangeReceiver;->this$0:Lcom/lge/mdm/controller/LGMDMUsbController;

    invoke-static {v4}, Lcom/lge/mdm/controller/LGMDMUsbController;->-get1(Lcom/lge/mdm/controller/LGMDMUsbController;)Z

    move-result v4

    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMUsbController$BatteryChangeReceiver;->this$0:Lcom/lge/mdm/controller/LGMDMUsbController;

    invoke-static {v5}, Lcom/lge/mdm/controller/LGMDMUsbController;->-get0(Lcom/lge/mdm/controller/LGMDMUsbController;)Z

    move-result v5

    if-eq v4, v5, :cond_5d

    .line 77
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v4

    .line 78
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_usb_none_configuration_NORMAL:I

    .line 77
    invoke-virtual {v4, v5, v3}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    .line 83
    .end local v3    # "userId":I
    :cond_5d
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMUsbController$BatteryChangeReceiver;->this$0:Lcom/lge/mdm/controller/LGMDMUsbController;

    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMUsbController$BatteryChangeReceiver;->this$0:Lcom/lge/mdm/controller/LGMDMUsbController;

    invoke-static {v5}, Lcom/lge/mdm/controller/LGMDMUsbController;->-get1(Lcom/lge/mdm/controller/LGMDMUsbController;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/lge/mdm/controller/LGMDMUsbController;->-set0(Lcom/lge/mdm/controller/LGMDMUsbController;Z)Z

    .line 52
    .end local v1    # "plug":I
    .end local v2    # "status":I
    :cond_68
    return-void

    .line 70
    .restart local v1    # "plug":I
    .restart local v2    # "status":I
    .restart local v3    # "userId":I
    :catch_69
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "UsbController"

    const-string/jumbo v5, "userID = 0"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d
.end method
