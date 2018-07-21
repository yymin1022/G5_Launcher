.class public Lcom/lge/mdm/frameworks/MDMInterfaceImpl;
.super Ljava/lang/Object;
.source "MDMInterfaceImpl.java"

# interfaces
.implements Lcom/lge/cappuccino/IMdm;


# static fields
.field private static final TAG:Ljava/lang/String; = "MDMInterfaceImpl"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallingOrCurrentUserId()I
    .registers 1

    .prologue
    .line 594
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUserManager;->getCallingOrCurrentUserId()I

    move-result v0

    return v0
.end method

.method private getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    .registers 2

    .prologue
    .line 51
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    return-object v0
.end method

.method private isAPILevelAllFeature()Z
    .registers 2

    .prologue
    .line 674
    invoke-static {}, Lcom/lge/mdm/util/LGMDMVersionInfo;->getDeviceAPILevel()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addFilterIMEServiceReceiver(Landroid/content/IntentFilter;)V
    .registers 3
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 459
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->addFilterIMEServiceReceiver(Landroid/content/IntentFilter;)V

    .line 458
    return-void
.end method

.method public addFilterUsbDevicecManagerReceiver(Landroid/content/IntentFilter;)V
    .registers 3
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 350
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->addFilterUsbDevicecManagerReceiver(Landroid/content/IntentFilter;)V

    .line 349
    return-void
.end method

.method public addFilterWifiP2pServiceReceiver(Landroid/content/IntentFilter;)V
    .registers 3
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 335
    return-void

    .line 338
    :cond_7
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->addFilterWifiP2pServiceReceiver(Landroid/content/IntentFilter;)V

    .line 333
    return-void
.end method

.method public changePassword(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lpu"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 598
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIHandlerAdapter()Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    move-result-object v0

    .line 599
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 598
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->showPasswordDialog(Landroid/content/Context;I)V

    .line 597
    return-void
.end method

.method public checkAllowAirplaneMode()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 533
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v1

    if-nez v1, :cond_12

    .line 534
    const-string/jumbo v1, "MDMInterfaceImpl"

    const-string/jumbo v2, "checkAllowAirplaneMode() : isAPILevelAllFeature() ==  false"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    return v3

    .line 537
    :cond_12
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 538
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-eqz v0, :cond_21

    .line 539
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowAirplaneModeOn(Landroid/content/ComponentName;I)Z

    move-result v1

    return v1

    .line 541
    :cond_21
    return v3
.end method

.method public checkAllowMicrophone(ZZ)Z
    .registers 5
    .param p1, "bOpen"    # Z
    .param p2, "bSpeech"    # Z

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 444
    const/4 v0, 0x0

    return v0

    .line 447
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterMicrophone()Lcom/lge/mdm/frameworks/LGMDMUIMicrophoneAdapter;

    move-result-object v0

    .line 448
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 447
    invoke-virtual {v0, p1, p2, v1}, Lcom/lge/mdm/frameworks/LGMDMUIMicrophoneAdapter;->checkAllowMicrophone(ZZI)Z

    move-result v0

    return v0
.end method

.method public checkAllowQuickCircle()Z
    .registers 4

    .prologue
    .line 849
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v1

    if-nez v1, :cond_11

    .line 850
    const-string/jumbo v1, "MDMInterfaceImpl"

    const-string/jumbo v2, "checkAllowQuickCircle() : isAPILevelAllFeature() ==  false"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const/4 v1, 0x1

    return v1

    .line 853
    :cond_11
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 854
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowQuickCircle(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public checkAllowSafeMode(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 885
    const/4 v0, 0x1

    .line 886
    .local v0, "bAllowed":Z
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v2

    if-nez v2, :cond_13

    .line 887
    const-string/jumbo v2, "MDMInterfaceImpl"

    const-string/jumbo v3, "checkAllowSafeMode() : isAPILevelAllFeature() ==  false"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const/4 v2, 0x1

    return v2

    .line 890
    :cond_13
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v1

    .line 891
    .local v1, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v1, v3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowSafeMode(Landroid/content/ComponentName;)Z

    move-result v0

    .line 892
    .local v0, "bAllowed":Z
    if-nez v0, :cond_26

    if-eqz p1, :cond_26

    .line 893
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIHandlerAdapter()Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->safeModeBlockDialog(Landroid/content/Context;)V

    .line 895
    :cond_26
    return v0
.end method

.method public checkBluetoothAudioOnly(Ljava/lang/String;)Z
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    .line 252
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 251
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkBluetoothAudioOnly(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkBluetoothAudioOnlyForCoD(Ljava/lang/String;)Z
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    .line 261
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 260
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkBluetoothAudioOnlyForCoD(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkBluetoothDevice(Ljava/lang/String;)Z
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 267
    const/4 v0, 0x0

    return v0

    .line 270
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    .line 271
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 270
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkBluetoothDevice(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkBluetoothPairing(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "withToast"    # Z

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 297
    const/4 v0, 0x0

    return v0

    .line 300
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    .line 301
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 300
    invoke-virtual {v0, p1, p2, v1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkBluetoothPairing(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public checkBluetoothProfileStatus(I)Z
    .registers 4
    .param p1, "nBluetoothProfile"    # I

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 277
    const/4 v0, 0x0

    return v0

    .line 280
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    .line 281
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 280
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkBluetoothProfileStatus(II)Z

    move-result v0

    return v0
.end method

.method public checkBluetoothProfileToast()V
    .registers 3

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 287
    return-void

    .line 290
    :cond_7
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    .line 291
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 290
    invoke-virtual {v0, v1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkBluetoothProfileToast(I)V

    .line 284
    return-void
.end method

.method public checkBluetoothVisible()Z
    .registers 3

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 307
    const/4 v0, 0x0

    return v0

    .line 310
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    .line 311
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 310
    invoke-virtual {v0, v1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkBluetoothVisible(I)Z

    move-result v0

    return v0
.end method

.method public checkCCmodePolicy(Landroid/content/Context;Landroid/content/ComponentName;I)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "who"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I

    .prologue
    .line 858
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 859
    const/4 v0, 0x0

    return v0

    .line 861
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterApplication()Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->checkCCmodePolicy(Landroid/content/Context;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public checkCIDMountServiceWhitelist()Z
    .registers 3

    .prologue
    .line 798
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_11

    .line 799
    const-string/jumbo v0, "MDMInterfaceImpl"

    const-string/jumbo v1, "checkCIDMountServiceWhitelist() : isAPILevelAllFeature() ==  false"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const/4 v0, 0x1

    return v0

    .line 802
    :cond_11
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    .line 803
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 802
    invoke-virtual {v0, v1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkCIDMountServiceWhitelist(I)Z

    move-result v0

    return v0
.end method

.method public checkDeviceEncryption()Z
    .registers 5

    .prologue
    .line 914
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v1

    .line 915
    .local v1, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v2

    .line 917
    .local v2, "userHandle":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEncryptionPolicy(Landroid/content/ComponentName;I)I

    move-result v0

    .line 919
    .local v0, "encryption":I
    packed-switch v0, :pswitch_data_14

    .line 925
    const/4 v3, 0x0

    return v3

    .line 921
    :pswitch_12
    const/4 v3, 0x1

    return v3

    .line 919
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_12
    .end packed-switch
.end method

.method public checkDisabledAccountManagerService(Landroid/content/Context;Landroid/accounts/Account;I)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "userHandle"    # I

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 633
    const/4 v0, 0x0

    return v0

    .line 635
    :cond_8
    const-string/jumbo v0, "MDMInterfaceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkDisabledAccountManagerService() account : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkDisabledAccountManagerService(Landroid/content/Context;Landroid/accounts/Account;I)Z

    move-result v0

    return v0
.end method

.method public checkDisabledClipboard(Z)Z
    .registers 4
    .param p1, "bShowToast"    # Z

    .prologue
    .line 679
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v0

    .line 680
    .local v0, "userHandle":I
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIClipboradAdapter()Lcom/lge/mdm/frameworks/LGMDMUIClipboardAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/lge/mdm/frameworks/LGMDMUIClipboardAdapter;->checkDisabledClipboard(ZI)Z

    move-result v1

    return v1
.end method

.method public checkDisabledGlobalAction(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "currentModuleName"    # Ljava/lang/String;

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 515
    const/4 v0, 0x0

    return v0

    .line 518
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterGlobalActions()Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;

    move-result-object v0

    .line 519
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 518
    invoke-virtual {v0, p1, p2, v1}, Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;->checkDisabled(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkDisabledLGVpn()Z
    .registers 3

    .prologue
    .line 790
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 791
    const/4 v0, 0x0

    return v0

    .line 793
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    .line 794
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 793
    invoke-virtual {v0, v1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkDisabledLGVpn(I)Z

    move-result v0

    return v0
.end method

.method public checkDisabledMountService(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "mContext"    # Landroid/content/Context;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    .line 167
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 166
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkDisabledMountService(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkDisabledMountServiceUSBHostStorage(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "mContext"    # Landroid/content/Context;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 699
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    .line 700
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 699
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkDisabledMountServiceUSBHostStorage(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkDisabledRemoveAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 209
    const/4 v0, 0x0

    return v0

    .line 211
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterApplication()Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->checkDisabledRemoveAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkDisabledSystemService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "currentModuleName"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_13

    .line 156
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    .line 157
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 156
    invoke-virtual {v0, p1, p2, v1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkDisabledSystemServiceForEAS(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 159
    :cond_13
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    .line 160
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 159
    invoke-virtual {v0, p1, p2, v1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkDisabledSystemService(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkDisabledTetherType(I)Z
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 660
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    .line 661
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 660
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkDisabledTetherType(II)Z

    move-result v0

    return v0
.end method

.method public checkDisabledUSBType(I)Z
    .registers 4
    .param p1, "usbType"    # I

    .prologue
    .line 655
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    .line 656
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 655
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkDisabledUSBType(II)Z

    move-result v0

    return v0
.end method

.method public checkDisabledVpn()Z
    .registers 3

    .prologue
    .line 781
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 782
    const/4 v0, 0x0

    return v0

    .line 784
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    .line 785
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 784
    invoke-virtual {v0, v1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkDisabledVpn(I)Z

    move-result v0

    return v0
.end method

.method public checkDisabledWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 586
    const/4 v0, 0x0

    return v0

    .line 589
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkDisabledWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkDisabledWifiDirect()Z
    .registers 3

    .prologue
    .line 685
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    .line 686
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 685
    invoke-virtual {v0, v1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkDisabledWifiDirect(I)Z

    move-result v0

    return v0
.end method

.method public checkDisabledWifiScanWithToast(Z)Z
    .registers 4
    .param p1, "needToast"    # Z

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 568
    const/4 v0, 0x0

    return v0

    .line 570
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    .line 571
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 570
    invoke-virtual {v0, v1, p1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkDisabledWifiScanWithToast(IZ)Z

    move-result v0

    return v0
.end method

.method public checkDisabledWifiSecurity(Landroid/net/wifi/WifiConfiguration;II)Z
    .registers 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "netID"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 577
    const/4 v0, 0x0

    return v0

    .line 580
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkDisabledWifiSecurity(Landroid/net/wifi/WifiConfiguration;II)Z

    move-result v0

    return v0
.end method

.method public checkEncryptionAvailable(I)Z
    .registers 4
    .param p1, "policy"    # I

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v1

    if-nez v1, :cond_8

    .line 389
    const/4 v1, 0x0

    return v1

    .line 391
    :cond_8
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 392
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkEncryptionAvailable(I)Z

    move-result v1

    return v1
.end method

.method public checkEnforceAirplaneMode()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 546
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v1

    if-nez v1, :cond_12

    .line 547
    const-string/jumbo v1, "MDMInterfaceImpl"

    const-string/jumbo v2, "checkEnforceAirplaneMode() : isAPILevelAllFeature() ==  false"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return v3

    .line 550
    :cond_12
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 551
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-eqz v0, :cond_21

    .line 552
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceAirplaneMode(Landroid/content/ComponentName;I)Z

    move-result v1

    return v1

    .line 554
    :cond_21
    return v3
.end method

.method public checkEnforceMuteDuringCall()Z
    .registers 4

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v1

    if-nez v1, :cond_11

    .line 834
    const-string/jumbo v1, "MDMInterfaceImpl"

    const-string/jumbo v2, "checkEnforceMuteDuringCall() : isAPILevelAllFeature() ==  false"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const/4 v1, 0x0

    return v1

    .line 837
    :cond_11
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 838
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkEnforceMuteDuringCall(I)Z

    move-result v1

    return v1
.end method

.method public checkInstallByMDM(I)Z
    .registers 4
    .param p1, "flags"    # I

    .prologue
    .line 734
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterApplication()Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    move-result-object v0

    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->checkInstallByMDM(II)Z

    move-result v0

    return v0
.end method

.method public checkLockoutRecoveryKey(Ljava/lang/String;)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 843
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 844
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkLockoutRecoveryKey(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public checkMDMSignature([Ljava/lang/String;)Z
    .registers 3
    .param p1, "signatureKeys"    # [Ljava/lang/String;

    .prologue
    .line 909
    const/4 v0, 0x0

    return v0
.end method

.method public checkMobileNetwork(ZI)Z
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 559
    const/4 v0, 0x0

    return v0

    .line 562
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkMobileNetwork(ZI)Z

    move-result v0

    return v0
.end method

.method public checkNotifyAccountManagerService(Landroid/content/Context;Landroid/accounts/Account;[Landroid/accounts/Account;I)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "accounts"    # [Landroid/accounts/Account;
    .param p4, "userHandle"    # I

    .prologue
    .line 691
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkNotifyAccountManagerService(Landroid/content/Context;Landroid/accounts/Account;[Landroid/accounts/Account;I)Z

    move-result v0

    return v0
.end method

.method public checkNotifySpecificProcessKillEvent(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 486
    return-void

    .line 490
    :cond_7
    const/4 v0, -0x1

    if-ne p2, v0, :cond_b

    .line 491
    const/4 p2, 0x0

    .line 493
    :cond_b
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterApplication()Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->checkNotifySpecificProcessKillEvent(Ljava/lang/String;I)V

    .line 484
    return-void
.end method

.method public checkOnClick(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "mCurrentModuleName"    # Ljava/lang/String;

    .prologue
    .line 743
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemUI()Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;->checkOnClick(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkOnLocationButton(Landroid/content/ComponentName;I)I
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 747
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemUI()Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;->checkOnLocationButton(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public checkPasswordRecovery(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 73
    .local v1, "userHandle":I
    const-string/jumbo v2, "MDMInterfaceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkPasswordRecovery userHandle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 75
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkPasswordRecovery(Ljava/lang/String;I)Z

    move-result v2

    return v2
.end method

.method public checkPoweroffGlobalAction(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "currentModuleName"    # Ljava/lang/String;

    .prologue
    .line 866
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 867
    const/4 v0, 0x0

    return v0

    .line 870
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterGlobalActions()Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;

    move-result-object v0

    .line 871
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 870
    invoke-virtual {v0, p1, p2, v1}, Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;->checkPowerOffDisabled(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkPutStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "mDatabaseName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 751
    sget-object v0, Lcom/lge/mdm/frameworks/MDMSettingsAdapter;->nameStrings:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 752
    return v1

    .line 755
    :cond_e
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->isDeclawingPolicyMode(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 756
    return v1

    .line 759
    :cond_19
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_24

    .line 760
    invoke-static {p1, p2, p3}, Lcom/lge/mdm/frameworks/MDMSettingsAdapter;->checkPutStringForUserForEAS(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 762
    :cond_24
    invoke-static {p1, p2, p3}, Lcom/lge/mdm/frameworks/MDMSettingsAdapter;->checkPutStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkReadyToConnectInBluetooth()Z
    .registers 4

    .prologue
    .line 900
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v1

    if-nez v1, :cond_11

    .line 901
    const-string/jumbo v1, "MDMInterfaceImpl"

    const-string/jumbo v2, "checkReadyToConnectInBluetooth() : isAPILevelAllFeature() ==  false"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const/4 v1, 0x1

    return v1

    .line 904
    :cond_11
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 905
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowReadyToConnectInBluetooth(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public checkSimplepasswordCorrect(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 404
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkSimplepasswordCorrect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkStartActivityLocked(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 13
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "resContext"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;
    .param p5, "userHandle"    # I

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_14

    .line 143
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterApplication()Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    move-result-object v0

    .line 145
    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    .line 143
    invoke-virtual/range {v0 .. v5}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->checkStartActivityLockedForEAS(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    return v0

    .line 147
    :cond_14
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterApplication()Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    move-result-object v0

    .line 149
    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    .line 147
    invoke-virtual/range {v0 .. v6}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->checkStartActivityLocked(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)I

    move-result v0

    return v0
.end method

.method public checkStartLockdownApps(Ljava/lang/String;Landroid/content/Intent;ZI)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "isdied"    # Z
    .param p4, "userHandle"    # I

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 473
    return-void

    .line 477
    :cond_7
    const/4 v0, -0x1

    if-ne p4, v0, :cond_b

    .line 478
    const/4 p4, 0x0

    .line 480
    :cond_b
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterApplication()Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->checkStartLockdownApps(Ljava/lang/String;Landroid/content/Intent;ZI)V

    .line 471
    return-void
.end method

.method public checkVpnSplitTunneling(Z)Z
    .registers 4
    .param p1, "popup"    # Z

    .prologue
    .line 818
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 820
    const/4 v0, 0x1

    return v0

    .line 822
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    .line 823
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 822
    invoke-virtual {v0, v1, p1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkVpnSplitTunneling(IZ)Z

    move-result v0

    return v0
.end method

.method public checkWebView(Ljava/lang/String;)Z
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterBrowser()Lcom/lge/mdm/frameworks/LGMDMUIBrowserAdapter;

    move-result-object v0

    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/frameworks/LGMDMUIBrowserAdapter;->checkWebView(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public dismissDialogForLockout(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 434
    return-void

    .line 437
    :cond_7
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIHandlerAdapter()Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->dismissDialogForLockout(Landroid/content/Context;)V

    .line 438
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterLockScreen()Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->dismissDialogForLockout()V

    .line 432
    return-void
.end method

.method public endDeclawingPolicies(J)V
    .registers 4
    .param p1, "identity"    # J

    .prologue
    .line 938
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 939
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->endDeclawingPolicies(J)V

    .line 936
    return-void
.end method

.method public existPolicyOfApplicationHided(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 738
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterApplication()Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    move-result-object v0

    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->existPolicyOfApplicationHided(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getAllowMultiUser(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 729
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 730
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMultiUser(Landroid/content/ComponentName;I)Z

    move-result v1

    return v1
.end method

.method public getAllowPasswordComplexForEAS(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 413
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 414
    .local v1, "userHandle":I
    const-string/jumbo v2, "MDMInterfaceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAllowPasswordComplexForEAS userHandle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 416
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowPasswordComplexForEAS(Landroid/content/ComponentName;)Z

    move-result v2

    return v2
.end method

.method public getAllowScreenPin(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 217
    const/4 v0, 0x1

    return v0

    .line 219
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterApplication()Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->getAllowScreenPin(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowSendingSms(Landroid/content/ComponentName;I)Z
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 203
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 204
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowSendingSMS(Landroid/content/ComponentName;I)Z

    move-result v1

    return v1
.end method

.method public getAllowSimplePasswordEx(Landroid/content/ComponentName;I)I
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 399
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 400
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowSimplePasswordEx(Landroid/content/ComponentName;I)I

    move-result v1

    return v1
.end method

.method public getAllowSpecificKey(II)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "action"    # I

    .prologue
    .line 615
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v1

    if-nez v1, :cond_8

    .line 616
    const/4 v1, 0x1

    return v1

    .line 618
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v0

    .line 619
    .local v0, "userHandle":I
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterKey()Lcom/lge/mdm/frameworks/LGMDMUIKeyAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/lge/mdm/frameworks/LGMDMUIKeyAdapter;->getAllowSpecificKey(III)Z

    move-result v1

    return v1
.end method

.method public getAllowUnknownSourceInstallation(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 329
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 330
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUnknownSourceInstallation(Landroid/content/ComponentName;I)Z

    move-result v1

    return v1
.end method

.method public getAllowWiFiProfileManagement(I)Z
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 625
    const/4 v0, 0x1

    return v0

    .line 627
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    .line 628
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 627
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->getAllowWiFiProfileManagement(II)Z

    move-result v0

    return v0
.end method

.method public getBluetoothVisibleDuration(I)I
    .registers 4
    .param p1, "duration"    # I

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 317
    return p1

    .line 320
    :cond_7
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    .line 321
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 320
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->getBluetoothVisibleDuration(II)I

    move-result v0

    return v0
.end method

.method public getEnforcePasswordChange()Z
    .registers 6

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v2

    if-nez v2, :cond_8

    .line 80
    const/4 v2, 0x0

    return v2

    .line 83
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 84
    .local v1, "userHandle":I
    const-string/jumbo v2, "MDMInterfaceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPasswordLeftDaysToExpire userHandle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 86
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforcePasswordChange(I)Z

    move-result v2

    return v2
.end method

.method public getEnforcePowerButtonLocks(Landroid/content/ComponentName;I)Z
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 827
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 828
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforcePowerButtonLocks(Landroid/content/ComponentName;I)Z

    move-result v1

    return v1
.end method

.method public getExternalMemoryMounted(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 375
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->getExternalMemoryMounted(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public getLockoutNow(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v2

    if-nez v2, :cond_8

    .line 97
    const/4 v2, 0x0

    return v2

    .line 100
    :cond_8
    const/4 v1, 0x0

    .line 101
    .local v1, "userHandle":I
    const-string/jumbo v2, "MDMInterfaceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLockoutNow userHandle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 103
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLockoutNow(Landroid/content/ComponentName;I)Z

    move-result v2

    return v2
.end method

.method public getMDMLocationPolicy(IZILjava/lang/String;)Z
    .registers 8
    .param p1, "flag"    # I
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 705
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 706
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v1

    if-nez v1, :cond_c

    .line 707
    const/4 v1, 0x1

    return v1

    .line 710
    :cond_c
    packed-switch p1, :pswitch_data_2a

    .line 717
    const-string/jumbo v1, "MDMInterfaceImpl"

    const-string/jumbo v2, "This function is not defined!"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const/4 v1, 0x0

    return v1

    .line 712
    :pswitch_1a
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowPassiveProvider(Landroid/content/ComponentName;I)Z

    move-result v1

    return v1

    .line 714
    :pswitch_20
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v1

    invoke-virtual {v1, p4, p3}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkWirelessLocationWithWhitelist(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 710
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_20
    .end packed-switch
.end method

.method public getManualSyncWhenRoaming()Z
    .registers 3

    .prologue
    .line 362
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 363
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getManualSyncWhenRoaming(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public getPasswordLeftDaysToExpire(Lcom/android/internal/widget/LockPatternUtils;)I
    .registers 6
    .param p1, "lpu"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 90
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 91
    .local v0, "userHandle":I
    const-string/jumbo v1, "MDMInterfaceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPasswordLeftDaysToExpire userHandle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterLockScreen()Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->getPasswordLeftDaysToExpire(Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result v1

    return v1
.end method

.method public getPasswordRecoveryByEas(Landroid/content/Context;)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 65
    .local v1, "userHandle":I
    const-string/jumbo v2, "MDMInterfaceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPasswordRecoveryByEas userHandle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 67
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getPasswordRecoveryByEas(I)Z

    move-result v2

    return v2
.end method

.method public googleErrorReportDisabled()Z
    .registers 3

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 507
    const/4 v0, 0x0

    return v0

    .line 509
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterApplication()Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    move-result-object v0

    .line 510
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 509
    invoke-virtual {v0, v1}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->googleErrorReportDisabled(I)Z

    move-result v0

    return v0
.end method

.method public handleManualSync(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 368
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIEmailAdapter()Lcom/lge/mdm/frameworks/LGMDMUIEmailAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/mdm/frameworks/LGMDMUIEmailAdapter;->handleManualSync(Landroid/content/ComponentName;)V

    .line 366
    return-void
.end method

.method public hasScreenCapturePolicy()Z
    .registers 2

    .prologue
    .line 943
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIScreencaptureAdapter()Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->hasScreenCapturePolicy()Z

    move-result v0

    return v0
.end method

.method public hasScreenCapturePolicy(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 947
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIScreencaptureAdapter()Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->hasScreenCapturePolicy(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAccountByMDM(Landroid/content/Context;Landroid/accounts/Account;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 642
    const/4 v0, 0x0

    return v0

    .line 644
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->isAccountByMDM(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method public isAdminActive()Z
    .registers 3

    .prologue
    .line 724
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 725
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->isAdminActive(I)Z

    move-result v1

    return v1
.end method

.method public isAllowSendMMS(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 137
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterMessage()Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;->isAllowSendMMS(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isAllowSendMessage(Landroid/content/ComponentName;Landroid/app/PendingIntent;)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 131
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterMessage()Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;

    move-result-object v0

    .line 132
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 131
    invoke-virtual {v0, p1, p2, v1}, Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;->isAllowSendMessage(Landroid/content/ComponentName;Landroid/app/PendingIntent;I)Z

    move-result v0

    return v0
.end method

.method public isAllowSendMessage(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 125
    .local p2, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterMessage()Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;

    move-result-object v0

    .line 126
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 125
    invoke-virtual {v0, p1, p2, v1}, Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;->isAllowSendMessage(Landroid/content/ComponentName;Ljava/util/ArrayList;I)Z

    move-result v0

    return v0
.end method

.method public isAllowedMockLocation()Z
    .registers 4

    .prologue
    .line 108
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 109
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 111
    .local v1, "userHandle":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMockLocation(Landroid/content/ComponentName;I)Z

    move-result v2

    return v2
.end method

.method public isDeviceEncryptedByMDM(Z)Z
    .registers 3
    .param p1, "hasToast"    # Z

    .prologue
    .line 192
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterEncryption()Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->isDeviceEncryptedByMDM(Z)Z

    move-result v0

    return v0
.end method

.method public isFailedInstallByMDM(Landroid/content/ComponentName;Ljava/lang/String;[Landroid/content/pm/Signature;ILjava/lang/String;Landroid/os/UserHandle;)Z
    .registers 14
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "signature"    # [Landroid/content/pm/Signature;
    .param p4, "flag"    # I
    .param p5, "versionName"    # Ljava/lang/String;
    .param p6, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 173
    const/4 v0, 0x0

    return v0

    .line 176
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterApplication()Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->isFailedInstallByMDM(Landroid/content/ComponentName;Ljava/lang/String;[Landroid/content/pm/Signature;ILjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public isFailedUninstallByMDM(Landroid/content/ComponentName;Ljava/lang/String;II)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "flag"    # I
    .param p4, "userHandle"    # I

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 182
    const/4 v0, 0x0

    return v0

    .line 184
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterApplication()Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->isFailedUninstallByMDM(Landroid/content/ComponentName;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public isNeedPasswordChangeNoti(Lcom/android/internal/widget/LockPatternUtils;)Z
    .registers 6
    .param p1, "lpu"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 608
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 609
    .local v0, "userHandle":I
    const-string/jumbo v1, "MDMInterfaceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNeedPasswordChangeNoti userHandle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterLockScreen()Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->isNeedPasswordChangeNoti(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v1

    return v1
.end method

.method public isShortcutKeyAllowed()Z
    .registers 4

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v1

    if-nez v1, :cond_11

    .line 770
    const-string/jumbo v1, "MDMInterfaceImpl"

    const-string/jumbo v2, "getAllowShortcutKey():  isAPILevelAllFeature() ==  false "

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const/4 v1, 0x1

    return v1

    .line 774
    :cond_11
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 775
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowShortcutKey(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public isStorageEncryptedByMDM(Z)Z
    .registers 3
    .param p1, "hasToast"    # Z

    .prologue
    .line 188
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterEncryption()Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/mdm/frameworks/LGMDMUIEncryptionAdapter;->isStorageEncryptedByMDM(Z)Z

    move-result v0

    return v0
.end method

.method public launchService(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    :try_start_0
    const-string/jumbo v1, "MDMInterfaceImpl"

    const-string/jumbo v2, "LGMDM Device Policy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v1, Lcom/lge/mdm/frameworks/LGMDMSystemServer;

    invoke-direct {v1, p1}, Lcom/lge/mdm/frameworks/LGMDMSystemServer;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_f

    .line 41
    :goto_e
    return-void

    .line 45
    :catch_f
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "MDMInterfaceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "starting LGMDMDevicePolicyService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public notificationCIDMountServiceWhitelist()Z
    .registers 3

    .prologue
    .line 807
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_11

    .line 808
    const-string/jumbo v0, "MDMInterfaceImpl"

    const-string/jumbo v1, "notificationCIDMountServiceWhitelist() : isAPILevelAllFeature() ==  false"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const/4 v0, 0x1

    return v0

    .line 812
    :cond_11
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    .line 813
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 812
    invoke-virtual {v0, v1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->notificationCIDMountServiceWhitelist(I)Z

    move-result v0

    return v0
.end method

.method public notificationChangePasswordDialogWarning(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lpu"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 603
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIHandlerAdapter()Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    move-result-object v0

    .line 604
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 603
    invoke-virtual {v0, p1, p2, v1}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->changePasswordDialogWarning(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 602
    return-void
.end method

.method public recevieIMEIntent(Ljava/lang/String;)Z
    .registers 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 464
    const/4 v0, 0x0

    return v0

    .line 467
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->recevieIMEIntent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public recevieMDMUsbIntent(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 354
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->recevieMDMUsbIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public recevieWifiP2pIntent(Ljava/lang/String;)Z
    .registers 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 343
    const/4 v0, 0x0

    return v0

    .line 346
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->recevieWifiP2pIntent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;I)V
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 223
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 224
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 222
    return-void
.end method

.method public removeDisallowFunction(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "functions"    # Ljava/lang/String;

    .prologue
    .line 650
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSystemService()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    .line 651
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 650
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->removeDisallowFunction(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendToastMessageId(I)V
    .registers 7
    .param p1, "resid"    # I

    .prologue
    .line 117
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 118
    .local v1, "userHandle":I
    const-string/jumbo v2, "MDMInterfaceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendToastMessageId userHandle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 120
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 115
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 228
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 229
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 227
    return-void
.end method

.method public setAirplaneModeDisplayMenu(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 524
    return-void

    .line 527
    :cond_7
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterGlobalActions()Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;

    move-result-object v0

    .line 528
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 527
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;->setAirplaneModeDisplayMenu(Landroid/view/View;I)V

    .line 522
    return-void
.end method

.method public setAllowWipeDataMaster(Z)V
    .registers 3
    .param p1, "allow"    # Z

    .prologue
    .line 423
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 424
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowWipeDataMaster(Z)V

    .line 422
    return-void
.end method

.method public setCameraState(Z)Z
    .registers 4
    .param p1, "isOpen"    # Z

    .prologue
    .line 242
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUICameraAdapter()Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;

    move-result-object v0

    .line 243
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 242
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->setCameraState(ZI)Z

    move-result v0

    return v0
.end method

.method public setCameraStop(ZI)V
    .registers 4
    .param p1, "cameraDisabled"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 196
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUICameraAdapter()Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->setCameraStop(ZI)V

    .line 195
    return-void
.end method

.method public setCrashAppliction(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 499
    return-void

    .line 501
    :cond_7
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterApplication()Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->setCrashAppliction(Ljava/lang/String;I)V

    .line 497
    return-void
.end method

.method public setCurrIMEpackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 453
    return-void

    .line 455
    :cond_7
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterMicrophone()Lcom/lge/mdm/frameworks/LGMDMUIMicrophoneAdapter;

    move-result-object v0

    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/frameworks/LGMDMUIMicrophoneAdapter;->setCurrIMEpackage(Ljava/lang/String;I)V

    .line 451
    return-void
.end method

.method public setPowerOffDisplayMenu(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 875
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 876
    return-void

    .line 879
    :cond_7
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterGlobalActions()Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;

    move-result-object v0

    .line 880
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 879
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;->setPowerOffDisplayMenu(Landroid/view/View;I)V

    .line 874
    return-void
.end method

.method public showEncryptionPolicyDialog(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->isAPILevelAllFeature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 380
    const/4 v0, 0x0

    return v0

    .line 383
    :cond_8
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterLockScreen()Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    move-result-object v0

    .line 384
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getCallingOrCurrentUserId()I

    move-result v1

    .line 383
    invoke-virtual {v0, p1, p2, v1}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->showEncryptionPolicyDialog(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public startDeclawingPolicies(I)J
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    .line 931
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 932
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->startDeclawingPolicies(I)J

    move-result-wide v2

    :goto_a
    return-wide v2

    :cond_b
    const-wide/16 v2, -0x1

    goto :goto_a
.end method

.method public systemReady()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/MDMInterfaceImpl;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 56
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->systemReady()V

    .line 54
    return-void
.end method

.method public wipeData(II)V
    .registers 4
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 428
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 429
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->wipeData(II)V

    .line 427
    return-void
.end method
