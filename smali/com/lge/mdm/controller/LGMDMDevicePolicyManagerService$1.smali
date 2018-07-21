.class Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "LGMDMDevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 199
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v9, "android.intent.extra.user_handle"

    invoke-virtual {p0}, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->getSendingUserId()I

    move-result v10

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 202
    .local v7, "userHandle":I
    const-string/jumbo v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_116

    .line 203
    const-string/jumbo v9, "LGMDMDevicePolicyManagerService"

    const-string/jumbo v10, "receive ACTION_BOOT_COMPLETED  "

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    iget-object v9, v9, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->mLGMDMAirplaneModeController:Lcom/lge/mdm/controller/LGMDMAirplaneModeController;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->getEnforceAirplaneMode(Landroid/content/ComponentName;I)Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 206
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    iget-object v9, v9, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->mLGMDMAirplaneModeController:Lcom/lge/mdm/controller/LGMDMAirplaneModeController;

    .line 207
    iget-object v10, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v7}, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->getAllowAirplaneModeOn(Landroid/content/ComponentName;I)Z

    move-result v10

    const/4 v11, 0x1

    .line 206
    invoke-virtual {v9, v10, v11}, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->changeAirplaneMode(ZI)V

    .line 211
    :cond_3b
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->getAllowBrowserProxySetup(Landroid/content/ComponentName;I)Z

    move-result v9

    if-nez v9, :cond_55

    .line 212
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMGeneralController;->getInstance()Lcom/lge/mdm/controller/LGMDMGeneralController;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Lcom/lge/mdm/controller/LGMDMGeneralController;->sendProxyInfoBootTime(ZI)V

    .line 213
    const-string/jumbo v9, "LGMDMDevicePolicyManagerService"

    const-string/jumbo v10, "ACTION_BOOT_COMPLETED : sendProxyInfoBootTime"

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_55
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->getAllowListForInternetAccess(Landroid/content/ComponentName;I)I

    move-result v9

    if-lez v9, :cond_6e

    .line 216
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/mdm/controller/LGMDMHandler;->sendIPTablesListToHandler_boot()V

    .line 217
    const-string/jumbo v9, "LGMDMDevicePolicyManagerService"

    const-string/jumbo v10, "ACTION_BOOT_COMPLETED : sendIPTablesListBootTime"

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_6e
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->getAllowCommandForInternetAccess(Landroid/content/ComponentName;I)Z

    move-result v9

    if-nez v9, :cond_87

    .line 220
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/mdm/controller/LGMDMHandler;->sendCommandListToHandler_boot()V

    .line 221
    const-string/jumbo v9, "LGMDMDevicePolicyManagerService"

    const-string/jumbo v10, "ACTION_BOOT_COMPLETED : sendIPTablesCmdListBootTime"

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_87
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    iget-object v9, v9, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v9, v7}, Lcom/lge/mdm/admin/LGMDMadministrator;->getWipeDataPolicy(I)I

    move-result v5

    .line 224
    .local v5, "flags":I
    const-string/jumbo v9, "LGMDMDevicePolicyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "BootCompleted : WipeDataFlags :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    if-ltz v5, :cond_b2

    .line 226
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMGeneralController;->getInstance()Lcom/lge/mdm/controller/LGMDMGeneralController;

    move-result-object v9

    invoke-virtual {v9, v5, v7}, Lcom/lge/mdm/controller/LGMDMGeneralController;->wipeData(II)V

    .line 228
    :cond_b2
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMIRController;->getInstance()Lcom/lge/mdm/controller/LGMDMIRController;

    move-result-object v9

    .line 229
    iget-object v10, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v7}, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->getAllowInfraredPort(Landroid/content/ComponentName;I)Z

    move-result v10

    .line 228
    invoke-virtual {v9, v10}, Lcom/lge/mdm/controller/LGMDMIRController;->notifyIRPolicy(Z)V

    .line 230
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->getAllowDLNADiscovery(Landroid/content/ComponentName;I)Z

    move-result v9

    if-nez v9, :cond_d1

    .line 231
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMWifiController;->getInstance()Lcom/lge/mdm/controller/LGMDMWifiController;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Lcom/lge/mdm/controller/LGMDMWifiController;->updateDLNADiscovery(ZI)V

    .line 331
    .end local v5    # "flags":I
    :cond_d1
    :goto_d1
    const-string/jumbo v9, "ro.build.target_operator"

    const-string/jumbo v10, "OPEN"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "SPR"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f7

    .line 332
    const-string/jumbo v9, "ro.build.target_operator"

    const-string/jumbo v10, "OPEN"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "BM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 331
    if-eqz v9, :cond_3a4

    .line 333
    :cond_f7
    new-instance v2, Landroid/content/ComponentName;

    .line 334
    const-string/jumbo v9, "com.sprint.extension"

    .line 335
    const-string/jumbo v10, "com.sprint.extension.admin.SprintExtensionDeviceAdminReceiver"

    .line 333
    invoke-direct {v2, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .local v2, "admin":Landroid/content/ComponentName;
    :try_start_102
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    iget-object v9, v9, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v9, v2, v7}, Lcom/lge/mdm/admin/LGMDMadministrator;->findAdmin(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v9

    if-nez v9, :cond_396

    .line 338
    const-string/jumbo v9, "LGMDMDevicePolicyManagerService"

    const-string/jumbo v10, "There is no Sprint Extension DeviceAdmin"

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_115} :catch_376

    .line 339
    return-void

    .line 233
    .end local v2    # "admin":Landroid/content/ComponentName;
    :cond_116
    const-string/jumbo v9, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_127

    .line 234
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    iget-object v9, v9, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->mLGMDMPasswordController:Lcom/lge/mdm/controller/LGMDMPasswordController;

    invoke-virtual {v9, v7}, Lcom/lge/mdm/controller/LGMDMPasswordController;->handlePasswordExpirationNotification(I)V

    goto :goto_d1

    .line 235
    :cond_127
    const-string/jumbo v9, "android.intent.action.USER_ADDED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_142

    .line 236
    const-string/jumbo v9, "android.intent.action.USER_REMOVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 235
    if-nez v9, :cond_142

    .line 237
    const-string/jumbo v9, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 235
    if-eqz v9, :cond_213

    .line 238
    :cond_142
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    iget-object v9, v9, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v9}, Lcom/lge/mdm/admin/LGMDMadministrator;->setAllUserInfoList()V

    .line 241
    const-string/jumbo v9, "android.intent.action.USER_ADDED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1bf

    .line 242
    const-string/jumbo v9, "ro.build.target_operator"

    const-string/jumbo v10, "OPEN"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "SPR"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_178

    .line 243
    const-string/jumbo v9, "ro.build.target_operator"

    const-string/jumbo v10, "OPEN"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "BM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 242
    if-eqz v9, :cond_1bf

    .line 244
    :cond_178
    new-instance v2, Landroid/content/ComponentName;

    .line 245
    const-string/jumbo v9, "com.sprint.extension"

    .line 246
    const-string/jumbo v10, "com.sprint.extension.admin.SprintExtensionDeviceAdminReceiver"

    .line 244
    invoke-direct {v2, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .restart local v2    # "admin":Landroid/content/ComponentName;
    :try_start_183
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    iget-object v9, v9, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v9, v2, v7}, Lcom/lge/mdm/admin/LGMDMadministrator;->findAdmin(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v9

    if-nez v9, :cond_1b7

    .line 249
    const-string/jumbo v9, "LGMDMDevicePolicyManagerService"

    const-string/jumbo v10, "There is no Sprint Extension DeviceAdmin"

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_196
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_196} :catch_197

    .line 250
    return-void

    .line 252
    :catch_197
    move-exception v4

    .line 253
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "LGMDMDevicePolicyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "There is some error to get Sprint Extension DeviceAdmin"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void

    .line 256
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1b7
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    iget-object v9, v9, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    const/4 v10, 0x1

    invoke-virtual {v9, v2, v10, v7}, Lcom/lge/mdm/admin/LGMDMadministrator;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 261
    .end local v2    # "admin":Landroid/content/ComponentName;
    :cond_1bf
    const-string/jumbo v9, "android.intent.action.USER_REMOVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d1

    .line 262
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    iget-object v9, v9, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v9, v7}, Lcom/lge/mdm/admin/LGMDMadministrator;->removeUserData(I)V

    goto/16 :goto_d1

    .line 263
    :cond_1d1
    const-string/jumbo v9, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d1

    .line 264
    const-string/jumbo v9, "android.intent.extra.user_handle"

    invoke-virtual {p0}, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->getSendingUserId()I

    move-result v10

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 266
    .local v8, "userId":I
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    iget-object v10, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    invoke-virtual {v10}, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->getCurrentUserID()I

    move-result v10

    invoke-static {v9, v10}, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->-wrap2(Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;I)V

    .line 268
    const-string/jumbo v10, "sys.secpolicy.camera.disabled"

    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    invoke-static {v9}, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->-wrap0(Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v9

    .line 269
    const/4 v11, 0x0

    .line 268
    invoke-virtual {v9, v11, v8}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v9

    if-eqz v9, :cond_20f

    .line 269
    const-string/jumbo v9, "1"

    .line 268
    :goto_203
    invoke-static {v10, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    iget-object v9, v9, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->mLGMDMWifiController:Lcom/lge/mdm/controller/LGMDMWifiController;

    invoke-virtual {v9, v8}, Lcom/lge/mdm/controller/LGMDMWifiController;->updateGlobalWifiLists(I)V

    goto/16 :goto_d1

    .line 269
    :cond_20f
    const-string/jumbo v9, "0"

    goto :goto_203

    .line 273
    .end local v8    # "userId":I
    :cond_213
    const-string/jumbo v9, "android.intent.action.USER_STARTED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_237

    .line 274
    const-string/jumbo v9, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 273
    if-nez v9, :cond_237

    .line 275
    const-string/jumbo v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 273
    if-nez v9, :cond_237

    .line 276
    const-string/jumbo v9, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 273
    if-eqz v9, :cond_277

    .line 278
    :cond_237
    const-string/jumbo v9, "android.intent.action.USER_STARTED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26b

    .line 280
    iget-object v10, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    monitor-enter v10

    .line 281
    :try_start_243
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    iget-object v9, v9, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    iget-object v9, v9, Lcom/lge/mdm/admin/LGMDMadministrator;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->remove(I)V
    :try_end_24c
    .catchall {:try_start_243 .. :try_end_24c} :catchall_274

    monitor-exit v10

    .line 284
    const-string/jumbo v9, "LGMDMDevicePolicyManagerService"

    const-string/jumbo v10, "ACTION_USER_STARTED :"

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMAudioPortController;->getInstance()Lcom/lge/mdm/controller/LGMDMAudioPortController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/mdm/controller/LGMDMAudioPortController;->connectATService()V

    .line 286
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->getInstance()Lcom/lge/mdm/controller/LGMDMDeviceWipeController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->connectATService()V

    .line 287
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->getInstance()Lcom/lge/mdm/controller/LGMDMDownloadModeController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->connectATService()V

    .line 290
    :cond_26b
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    iget-object v9, v9, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v9, v7}, Lcom/lge/mdm/admin/LGMDMadministrator;->handlePackagesChanged(I)V

    goto/16 :goto_d1

    .line 280
    :catchall_274
    move-exception v9

    monitor-exit v10

    throw v9

    .line 291
    :cond_277
    const-string/jumbo v9, "com.lge.intent.action.ACTION_ECBM_EXIT_FOR_VOLTE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_29c

    .line 293
    const-string/jumbo v9, "LGMDMDevicePolicyManagerService"

    const-string/jumbo v10, "Received broadcast ACTION_ECBM_EXIT_FOR_VOLTE"

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->setEmergencyCallStatus(ZI)V

    .line 296
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    iget-object v9, v9, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->mLGMDMAirplaneModeController:Lcom/lge/mdm/controller/LGMDMAirplaneModeController;

    invoke-virtual {v9, v7}, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->restoreEnforceAirplaneMode(I)V

    goto/16 :goto_d1

    .line 297
    :cond_29c
    const-string/jumbo v9, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2cb

    .line 299
    const-string/jumbo v9, "phoneinECMState"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_d1

    .line 300
    const-string/jumbo v9, "LGMDMDevicePolicyManagerService"

    const-string/jumbo v10, "Received ACTION_EMERGENCY_CALLBACK_MODE_CHANGED : exit"

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->setEmergencyCallStatus(ZI)V

    .line 303
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    iget-object v9, v9, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->mLGMDMAirplaneModeController:Lcom/lge/mdm/controller/LGMDMAirplaneModeController;

    invoke-virtual {v9, v7}, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->restoreEnforceAirplaneMode(I)V

    goto/16 :goto_d1

    .line 305
    :cond_2cb
    const-string/jumbo v9, "android.intent.action.PHONE_STATE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_330

    .line 307
    const-string/jumbo v9, "state"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 308
    sget-object v10, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 307
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d1

    .line 309
    const-string/jumbo v9, "LGMDMDevicePolicyManagerService"

    const-string/jumbo v10, "Received broadcast ACTION_PHONE_STATE_CHANGED : idle"

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string/jumbo v9, "ril.cdma.inecmmode"

    const-string/jumbo v10, "false"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 312
    .local v6, "inEcm":Ljava/lang/String;
    const-string/jumbo v9, "LGMDMDevicePolicyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Current ECM status :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string/jumbo v9, "true"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d1

    .line 314
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->setEmergencyCallStatus(ZI)V

    .line 315
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    iget-object v9, v9, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->mLGMDMAirplaneModeController:Lcom/lge/mdm/controller/LGMDMAirplaneModeController;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->restoreEnforceAirplaneMode(I)V

    goto/16 :goto_d1

    .line 318
    .end local v6    # "inEcm":Ljava/lang/String;
    :cond_330
    const-string/jumbo v9, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d1

    .line 320
    const-string/jumbo v9, "com.lge.intent.extra.ACCESSORY_COVER_STATE"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 321
    .local v3, "currentState":I
    const-string/jumbo v9, "LGMDMDevicePolicyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Received EXTRA_ACCESSORY_COVER_STATE, State: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    if-nez v3, :cond_d1

    .line 323
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    iget-object v9, v9, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->mLGMDMQuickCoverController:Lcom/lge/mdm/controller/LGMDMQuickCoverController;

    .line 324
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    const/4 v11, 0x0

    .line 323
    invoke-virtual {v9, v11, v10}, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->getAllowQuickCircle(Landroid/content/ComponentName;I)Z

    move-result v9

    if-nez v9, :cond_d1

    .line 325
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    iget-object v9, v9, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->mLGMDMQuickCoverController:Lcom/lge/mdm/controller/LGMDMQuickCoverController;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->changeQuickCircleSystemSetting(Z)I

    goto/16 :goto_d1

    .line 341
    .end local v3    # "currentState":I
    .restart local v2    # "admin":Landroid/content/ComponentName;
    :catch_376
    move-exception v4

    .line 342
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "LGMDMDevicePolicyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "There is some error to get Sprint Extension DeviceAdmin"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void

    .line 346
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_396
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    invoke-virtual {v9, v7}, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->getActiveAdminList(I)Ljava/util/List;

    move-result-object v1

    .line 347
    .local v1, "activeAdminList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v1, :cond_3bb

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3bb

    .line 353
    .end local v1    # "activeAdminList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v2    # "admin":Landroid/content/ComponentName;
    :cond_3a4
    :goto_3a4
    const-string/jumbo v9, "android.intent.action.USER_PRESENT"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3ba

    .line 354
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    iget-object v9, v9, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->mLGMDMApplicationCotroller:Lcom/lge/mdm/controller/LGMDMApplicationController;

    iget-object v10, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    invoke-static {v10}, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->-wrap1(Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;)Z

    move-result v10

    invoke-virtual {v9, v10, v7}, Lcom/lge/mdm/controller/LGMDMApplicationController;->checkTopActivityEnable(ZI)V

    .line 198
    :cond_3ba
    return-void

    .line 348
    .restart local v1    # "activeAdminList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v2    # "admin":Landroid/content/ComponentName;
    :cond_3bb
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$1;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    iget-object v9, v9, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    const/4 v10, 0x1

    invoke-virtual {v9, v2, v10, v7}, Lcom/lge/mdm/admin/LGMDMadministrator;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    goto :goto_3a4
.end method
