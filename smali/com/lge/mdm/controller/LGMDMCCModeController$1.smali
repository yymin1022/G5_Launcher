.class Lcom/lge/mdm/controller/LGMDMCCModeController$1;
.super Ljava/lang/Object;
.source "LGMDMCCModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/controller/LGMDMCCModeController;->reboot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMCCModeController;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMCCModeController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMCCModeController;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMCCModeController$1;->this$0:Lcom/lge/mdm/controller/LGMDMCCModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 256
    const-string/jumbo v2, "power"

    .line 255
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 257
    .local v1, "pm":Landroid/os/IPowerManager;
    if-nez v1, :cond_17

    .line 258
    const-string/jumbo v2, "LGMDMCCModeController"

    const-string/jumbo v3, "PowerManager is null"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void

    .line 262
    :cond_17
    :try_start_17
    const-string/jumbo v2, "LGMDMCCModeController"

    const-string/jumbo v3, "LGMDM : Device Rebooting"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string/jumbo v2, "lgmdmpolicy"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v3, v2, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_28} :catch_29

    .line 254
    :goto_28
    return-void

    .line 264
    :catch_29
    move-exception v0

    .line 265
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "LGMDMCCModeController"

    const-string/jumbo v3, "Failed talking with LGMDM device controller service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28
.end method
