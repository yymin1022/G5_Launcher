.class Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$1;
.super Landroid/content/BroadcastReceiver;
.source "LGMDMExternalMemorySlotContoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$1;->this$0:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v3

    .line 139
    .local v3, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWipeDataMaster()Z

    move-result v2

    .line 141
    .local v2, "isSetAllowWipeDataMaster":Z
    const-string/jumbo v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 142
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->-get0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "check externalmemory mount state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :try_start_31
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$1;->this$0:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    iget-object v5, v5, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mContext:Landroid/content/Context;

    .line 145
    const-string/jumbo v6, "storage"

    .line 144
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 146
    .local v4, "storageManager":Landroid/os/storage/StorageManager;
    new-instance v5, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$StorageEventBinderListener;

    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$1;->this$0:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$StorageEventBinderListener;-><init>(Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$StorageEventBinderListener;)V

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_49} :catch_64

    .line 149
    .end local v4    # "storageManager":Landroid/os/storage/StorageManager;
    :goto_49
    invoke-virtual {v3, v8}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowExternalMemorySlot(Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_56

    .line 150
    if-nez v2, :cond_56

    .line 151
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$1;->this$0:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    invoke-static {v5}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->-wrap0(Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;)V

    .line 153
    :cond_56
    invoke-virtual {v3, v8}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUSBHostStorage(Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_63

    if-nez v2, :cond_63

    .line 154
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$1;->this$0:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    invoke-static {v5}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->-wrap1(Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;)V

    .line 136
    :cond_63
    return-void

    .line 147
    :catch_64
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_49
.end method
