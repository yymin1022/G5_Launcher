.class public Lcom/lge/mdm/controller/LGMDMTetheringController;
.super Ljava/lang/Object;
.source "LGMDMTetheringController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;,
        Lcom/lge/mdm/controller/LGMDMTetheringController$1;
    }
.end annotation


# static fields
.field private static final DELAY_TIMEOUT:I = 0x64

.field private static final MSG_CONFIRM_DISABLE_HOTSPOT:I = 0x1

.field private static final MSG_DISABLE_HOTSPOT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TetheringController"

.field private static final WIFI_SAVED_STATE_DISABLED:I = 0x0

.field private static final WIFI_SAVED_STATE_ENABLED:I = 0x1

.field private static instance:Lcom/lge/mdm/controller/LGMDMTetheringController;


# instance fields
.field private final MAX_TIMEOUT:I

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothPendingStats:Z

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

.field private final mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field final mService:Ljava/lang/Object;

.field private mSetPolicyLock:Z

.field private mTimeoutHotspot:I

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/lge/mdm/controller/LGMDMTetheringController;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2

    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/lge/mdm/controller/LGMDMTetheringController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mBluetoothPendingStats:Z

    return v0
.end method

.method static synthetic -set0(Lcom/lge/mdm/controller/LGMDMTetheringController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mBluetoothPendingStats:Z

    return p1
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMTetheringController;->instance:Lcom/lge/mdm/controller/LGMDMTetheringController;

    .line 32
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 5
    .param p1, "service"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 38
    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 39
    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 42
    iput v2, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mTimeoutHotspot:I

    .line 43
    const/16 v0, 0x2710

    iput v0, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->MAX_TIMEOUT:I

    .line 50
    iput-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mSetPolicyLock:Z

    .line 337
    new-instance v0, Lcom/lge/mdm/controller/LGMDMTetheringController$1;

    invoke-direct {v0, p0}, Lcom/lge/mdm/controller/LGMDMTetheringController$1;-><init>(Lcom/lge/mdm/controller/LGMDMTetheringController;)V

    .line 336
    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 56
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 57
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mContext:Landroid/content/Context;

    .line 58
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mService:Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_3a

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mHandler:Landroid/os/Handler;

    .line 55
    :cond_3a
    return-void
.end method

.method private findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "ifaces"    # [Ljava/lang/String;
    .param p2, "regexes"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 449
    array-length v5, p1

    move v4, v3

    :goto_3
    if-ge v4, v5, :cond_1b

    aget-object v0, p1, v4

    .line 450
    .local v0, "iface":Ljava/lang/String;
    array-length v6, p2

    move v2, v3

    :goto_9
    if-ge v2, v6, :cond_17

    aget-object v1, p2, v2

    .line 451
    .local v1, "regex":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 452
    return-object v0

    .line 450
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 449
    .end local v1    # "regex":Ljava/lang/String;
    :cond_17
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    .line 456
    .end local v0    # "iface":Ljava/lang/String;
    :cond_1b
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMTetheringController;
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 73
    sget-object v0, Lcom/lge/mdm/controller/LGMDMTetheringController;->instance:Lcom/lge/mdm/controller/LGMDMTetheringController;

    if-nez v0, :cond_15

    .line 74
    const-string/jumbo v0, "TetheringController"

    const-string/jumbo v1, "LGMDMTetheringController getInstance() new!!!"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/lge/mdm/controller/LGMDMTetheringController;

    invoke-direct {v0, v2}, Lcom/lge/mdm/controller/LGMDMTetheringController;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMTetheringController;->instance:Lcom/lge/mdm/controller/LGMDMTetheringController;

    .line 77
    :cond_15
    sget-object v0, Lcom/lge/mdm/controller/LGMDMTetheringController;->instance:Lcom/lge/mdm/controller/LGMDMTetheringController;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/lge/mdm/controller/LGMDMTetheringController;
    .registers 3
    .param p0, "service"    # Ljava/lang/Object;

    .prologue
    .line 65
    sget-object v0, Lcom/lge/mdm/controller/LGMDMTetheringController;->instance:Lcom/lge/mdm/controller/LGMDMTetheringController;

    if-nez v0, :cond_14

    .line 66
    const-string/jumbo v0, "TetheringController"

    const-string/jumbo v1, "LGMDMTetheringController getInstance(service) new!!!"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/lge/mdm/controller/LGMDMTetheringController;

    invoke-direct {v0, p0}, Lcom/lge/mdm/controller/LGMDMTetheringController;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMTetheringController;->instance:Lcom/lge/mdm/controller/LGMDMTetheringController;

    .line 69
    :cond_14
    sget-object v0, Lcom/lge/mdm/controller/LGMDMTetheringController;->instance:Lcom/lge/mdm/controller/LGMDMTetheringController;

    return-object v0
.end method

.method private getUsbManager()Landroid/hardware/usb/UsbManager;
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_11

    .line 89
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 91
    :cond_11
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method private getUsbTetherFunctionEnabled()Z
    .registers 5

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMTetheringController;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v1

    .line 273
    .local v1, "um":Landroid/hardware/usb/UsbManager;
    if-nez v1, :cond_11

    .line 274
    const-string/jumbo v2, "TetheringController"

    const-string/jumbo v3, "getUsbTetherFunctionEnabled : usbManager == null"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return v0

    .line 277
    :cond_11
    const-string/jumbo v2, "rndis"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 278
    const/4 v0, 0x1

    .line 284
    :cond_1b
    :goto_1b
    return v0

    .line 280
    :cond_1c
    const-string/jumbo v2, "pc_suite"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 281
    invoke-static {}, Lcom/lge/mdm/util/LGMDMConfig;->isVerizonOperator()Z

    move-result v2

    .line 280
    if-eqz v2, :cond_1b

    .line 282
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method private getWifiManager()Landroid/net/wifi/WifiManager;
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_11

    .line 82
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 84
    :cond_11
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private sendIntentError(Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;)V
    .registers 8
    .param p1, "backupInfo"    # Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;

    .prologue
    .line 515
    const-string/jumbo v2, "TetheringController"

    const-string/jumbo v3, "sendIntentError"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_e

    .line 518
    iget-object v0, p1, Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;->admin:Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 520
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_e
    if-eqz v0, :cond_28

    if-eqz p1, :cond_28

    .line 521
    iget-object v3, p1, Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;->sync:Ljava/lang/Object;

    monitor-enter v3

    .line 522
    :try_start_15
    iget-boolean v2, p1, Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;->isHotspotPolicy:Z

    if-eqz v2, :cond_38

    .line 523
    iget-boolean v2, p1, Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;->backupPolicy:Z

    iput-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowHotspot:Z

    .line 527
    :goto_1d
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    const-string/jumbo v4, "lgmdm_hardware_policies.xml"

    .line 528
    iget v5, p1, Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;->userHandle:I

    .line 527
    invoke-virtual {v2, v4, v5}, Lcom/lge/mdm/admin/LGMDMadministrator;->saveSettingsLocked(Ljava/lang/String;I)V
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_3d

    monitor-exit v3

    .line 532
    :cond_28
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.lge.mdm.intent.action.TETHER_HOTSPOT_SET_FAILURE_RESULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 514
    return-void

    .line 525
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_38
    :try_start_38
    iget-boolean v2, p1, Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;->backupPolicy:Z

    iput-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowTethering:Z
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3d

    goto :goto_1d

    .line 521
    :catchall_3d
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private setSoftapEnabled(Z)V
    .registers 14
    .param p1, "enable"    # Z

    .prologue
    const/4 v11, 0x1

    .line 400
    iget-object v8, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 404
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMTetheringController;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v5

    .line 405
    .local v5, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v5, :cond_17

    .line 406
    const-string/jumbo v8, "TetheringController"

    const-string/jumbo v9, "wifiManager is null"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-void

    .line 409
    :cond_17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 411
    .local v2, "identity":J
    :try_start_1b
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v7

    .line 412
    .local v7, "wifiState":I
    if-eqz p1, :cond_32

    .line 413
    const/4 v8, 0x2

    if-eq v7, v8, :cond_27

    const/4 v8, 0x3

    if-ne v7, v8, :cond_32

    .line 414
    :cond_27
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 415
    const-string/jumbo v8, "wifi_saved_state"

    .line 416
    const/4 v9, 0x1

    .line 415
    invoke-static {v0, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_32
    .catchall {:try_start_1b .. :try_end_32} :catchall_7d

    .line 420
    :cond_32
    const/4 v8, 0x0

    :try_start_33
    invoke-virtual {v5, v8, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v8

    if-nez v8, :cond_42

    .line 421
    const-string/jumbo v8, "TetheringController"

    const-string/jumbo v9, "setWifiApEnabled error"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/SecurityException; {:try_start_33 .. :try_end_42} :catch_5d
    .catchall {:try_start_33 .. :try_end_42} :catchall_7d

    .line 430
    :cond_42
    :goto_42
    if-nez p1, :cond_59

    .line 431
    const/4 v6, 0x0

    .line 433
    .local v6, "wifiSavedState":I
    :try_start_45
    const-string/jumbo v8, "wifi_saved_state"

    invoke-static {v0, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_4b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_45 .. :try_end_4b} :catch_82
    .catchall {:try_start_45 .. :try_end_4b} :catchall_7d

    move-result v6

    .line 437
    :goto_4c
    if-ne v6, v11, :cond_59

    .line 438
    const/4 v8, 0x1

    :try_start_4f
    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 439
    const-string/jumbo v8, "wifi_saved_state"

    .line 440
    const/4 v9, 0x0

    .line 439
    invoke-static {v0, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_7d

    .line 444
    .end local v6    # "wifiSavedState":I
    :cond_59
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 399
    return-void

    .line 423
    :catch_5d
    move-exception v4

    .line 424
    .local v4, "se":Ljava/lang/SecurityException;
    :try_start_5e
    const-string/jumbo v8, "TetheringController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setSoftapEnabled : setWifiApEnabled "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_5e .. :try_end_7c} :catchall_7d

    goto :goto_42

    .line 443
    .end local v4    # "se":Ljava/lang/SecurityException;
    .end local v7    # "wifiState":I
    :catchall_7d
    move-exception v8

    .line 444
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 443
    throw v8

    .line 434
    .restart local v6    # "wifiSavedState":I
    .restart local v7    # "wifiState":I
    :catch_82
    move-exception v1

    .line 435
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    :try_start_83
    const-string/jumbo v8, "TetheringController"

    const-string/jumbo v9, "Failed talking with LGMDM controller"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8c
    .catchall {:try_start_83 .. :try_end_8c} :catchall_7d

    goto :goto_4c
.end method

.method private setUsbFunctionChargeOnly()V
    .registers 6

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMTetheringController;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v2

    .line 385
    .local v2, "usbManager":Landroid/hardware/usb/UsbManager;
    if-nez v2, :cond_10

    .line 386
    const-string/jumbo v3, "TetheringController"

    const-string/jumbo v4, "setUsbFunctionChargeOnly : usbManager == null"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return-void

    .line 390
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 392
    .local v0, "identity":J
    :try_start_14
    const-string/jumbo v3, "charge_only"

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_27

    .line 394
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 396
    const-string/jumbo v3, "TetheringController"

    const-string/jumbo v4, "setUsbFunctionChargeOnly : setCurrentFunction to ChargeOnly"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void

    .line 393
    :catchall_27
    move-exception v3

    .line 394
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 393
    throw v3
.end method


# virtual methods
.method protected getAllowBluetoothTethering(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 212
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 213
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothTethering:Z

    :cond_e
    return v4

    .line 216
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 217
    .local v3, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admin_i$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 218
    .local v1, "admin_i":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothTethering:Z

    if-nez v5, :cond_19

    .line 219
    const/4 v4, 0x0

    return v4

    .line 222
    .end local v1    # "admin_i":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowHotspot(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 139
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 140
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowHotspot:Z

    :cond_e
    return v4

    .line 143
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 144
    .local v3, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admin_i$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 145
    .local v1, "admin_i":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowHotspot:Z

    if-nez v5, :cond_19

    .line 146
    const/4 v4, 0x0

    return v4

    .line 149
    .end local v1    # "admin_i":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowTethering(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 97
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 98
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowTethering:Z

    :cond_e
    return v4

    .line 100
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 101
    .local v3, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admin_i$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 102
    .local v1, "admin_i":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowTethering:Z

    if-nez v5, :cond_19

    .line 103
    const/4 v4, 0x0

    return v4

    .line 106
    .end local v1    # "admin_i":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowUSBTethering(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 183
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 184
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUSBTethering:Z

    :cond_e
    return v4

    .line 187
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 188
    .local v3, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admin_i$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 189
    .local v1, "admin_i":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUSBTethering:Z

    if-nez v5, :cond_19

    .line 190
    const/4 v4, 0x0

    return v4

    .line 193
    .end local v1    # "admin_i":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x2710

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 461
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;

    .line 463
    .local v0, "backupInfo":Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_98

    .line 503
    :goto_d
    return v10

    .line 465
    :pswitch_e
    invoke-direct {p0, v10}, Lcom/lge/mdm/controller/LGMDMTetheringController;->setSoftapEnabled(Z)V

    .line 466
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 467
    .local v2, "disableMsg":Landroid/os/Message;
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d

    .line 470
    .end local v2    # "disableMsg":Landroid/os/Message;
    :pswitch_1d
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMTetheringController;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v3

    .line 471
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v3, :cond_28

    .line 472
    iput v10, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mTimeoutHotspot:I

    .line 473
    iput-boolean v10, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mSetPolicyLock:Z

    goto :goto_d

    .line 477
    :cond_28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 479
    .local v4, "identity":J
    :try_start_2c
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v6

    const/16 v7, 0xb

    if-eq v6, v7, :cond_59

    .line 480
    iget v6, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mTimeoutHotspot:I

    if-ge v6, v8, :cond_59

    .line 481
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 483
    .local v1, "delayMsg":Landroid/os/Message;
    iget v6, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mTimeoutHotspot:I

    add-int/lit8 v6, v6, 0x64

    iput v6, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mTimeoutHotspot:I

    .line 484
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 485
    const-string/jumbo v6, "TetheringController"

    const-string/jumbo v7, "MSG_CONFIRM_DISABLE_HOTSPOT fail : check again"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_2c .. :try_end_55} :catchall_80

    .line 497
    .end local v1    # "delayMsg":Landroid/os/Message;
    :goto_55
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d

    .line 486
    :cond_59
    :try_start_59
    iget v6, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mTimeoutHotspot:I

    if-ge v6, v8, :cond_85

    .line 487
    const-string/jumbo v6, "TetheringController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MSG_CONFIRM_DISABLE_HOTSPOT success : time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mTimeoutHotspot:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const/4 v6, 0x0

    iput v6, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mTimeoutHotspot:I

    .line 489
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mSetPolicyLock:Z
    :try_end_7f
    .catchall {:try_start_59 .. :try_end_7f} :catchall_80

    goto :goto_55

    .line 496
    :catchall_80
    move-exception v6

    .line 497
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 496
    throw v6

    .line 491
    :cond_85
    :try_start_85
    const-string/jumbo v6, "TetheringController"

    const-string/jumbo v7, "MSG_CONFIRM_DISABLE_HOTSPOT fail : timeout"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const/4 v6, 0x0

    iput v6, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mTimeoutHotspot:I

    .line 493
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mSetPolicyLock:Z

    .line 494
    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMTetheringController;->sendIntentError(Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;)V
    :try_end_97
    .catchall {:try_start_85 .. :try_end_97} :catchall_80

    goto :goto_55

    .line 463
    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_e
        :pswitch_1d
    .end packed-switch
.end method

.method protected setAllowBluetoothTethering(Landroid/content/ComponentName;ZI)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 226
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 228
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothTethering:Z

    if-ne v1, p2, :cond_14

    .line 229
    const-string/jumbo v1, "TetheringController"

    const-string/jumbo v2, "setAllowBluetoothTethering : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void

    .line 233
    :cond_14
    const-string/jumbo v1, "TetheringController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAllowBluetoothTethering : allow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothTethering:Z

    .line 225
    return-void
.end method

.method protected setAllowHotspot(Landroid/content/ComponentName;ZI)Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 153
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 155
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    const-string/jumbo v2, "TetheringController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAllowHotspot : allow = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mSetPolicyLock:Z

    if-eqz v2, :cond_32

    .line 158
    const-string/jumbo v2, "TetheringController"

    const-string/jumbo v3, "setAllowHotspot : lock"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, v5}, Lcom/lge/mdm/controller/LGMDMTetheringController;->sendIntentError(Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;)V

    .line 160
    return-object v5

    .line 163
    :cond_32
    iget-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowHotspot:Z

    if-ne v2, p2, :cond_40

    .line 164
    const-string/jumbo v2, "TetheringController"

    const-string/jumbo v3, "setAllowHotspot : same policy is called"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-object v5

    .line 168
    :cond_40
    new-instance v1, Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;

    invoke-direct {v1, p0}, Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;-><init>(Lcom/lge/mdm/controller/LGMDMTetheringController;)V

    .line 169
    .local v1, "backupInfo":Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;
    iput-object v0, v1, Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;->admin:Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 170
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mService:Ljava/lang/Object;

    if-eqz v2, :cond_4d

    iget-object p0, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mService:Ljava/lang/Object;

    .end local p0    # "this":Lcom/lge/mdm/controller/LGMDMTetheringController;
    :cond_4d
    iput-object p0, v1, Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;->sync:Ljava/lang/Object;

    .line 171
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;->isHotspotPolicy:Z

    .line 172
    iget-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowHotspot:Z

    iput-boolean v2, v1, Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;->backupPolicy:Z

    .line 173
    iput p3, v1, Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;->userHandle:I

    .line 175
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowHotspot:Z

    .line 177
    return-object v1
.end method

.method protected setAllowTethering(Landroid/content/ComponentName;ZI)Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 110
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 112
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    const-string/jumbo v2, "TetheringController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAllowTethering : allow = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mSetPolicyLock:Z

    if-eqz v2, :cond_32

    .line 114
    const-string/jumbo v2, "TetheringController"

    const-string/jumbo v3, "setAllowTethering : lock"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, v5}, Lcom/lge/mdm/controller/LGMDMTetheringController;->sendIntentError(Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;)V

    .line 116
    return-object v5

    .line 119
    :cond_32
    iget-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowTethering:Z

    if-ne v2, p2, :cond_40

    .line 120
    const-string/jumbo v2, "TetheringController"

    const-string/jumbo v3, "setAllowTethering : same policy is called"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-object v5

    .line 124
    :cond_40
    new-instance v1, Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;

    invoke-direct {v1, p0}, Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;-><init>(Lcom/lge/mdm/controller/LGMDMTetheringController;)V

    .line 125
    .local v1, "backupInfo":Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;
    iput-object v0, v1, Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;->admin:Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 126
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;->isHotspotPolicy:Z

    .line 127
    iget-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowTethering:Z

    iput-boolean v2, v1, Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;->backupPolicy:Z

    .line 129
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowTethering:Z

    .line 131
    return-object v1
.end method

.method protected setAllowUSBTethering(Landroid/content/ComponentName;ZI)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 197
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 199
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUSBTethering:Z

    if-ne v1, p2, :cond_14

    .line 200
    const-string/jumbo v1, "TetheringController"

    const-string/jumbo v2, "setAllowUSBTethering : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void

    .line 204
    :cond_14
    const-string/jumbo v1, "TetheringController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAllowUSBTethering : allow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUSBTethering:Z

    .line 196
    return-void
.end method

.method protected setBluetoothTetheringDisable()V
    .registers 12

    .prologue
    .line 288
    iget-object v8, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mContext:Landroid/content/Context;

    .line 289
    const-string/jumbo v9, "connectivity"

    .line 288
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 290
    .local v3, "cm":Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 292
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v3, :cond_1b

    .line 293
    const-string/jumbo v8, "TetheringController"

    const-string/jumbo v9, "setBluetoothTetheringDisable : ConnectivityManager is null"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void

    .line 296
    :cond_1b
    if-nez v0, :cond_27

    .line 297
    const-string/jumbo v8, "TetheringController"

    const-string/jumbo v9, "setBluetoothTetheringDisable : BluetoothAdapter is null"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void

    .line 301
    :cond_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 303
    .local v4, "identity":J
    :try_start_2b
    iget-object v8, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v10, 0x5

    invoke-virtual {v0, v8, v9, v10}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 304
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 305
    const-string/jumbo v8, "TetheringController"

    .line 306
    const-string/jumbo v9, "setBluetoothTetheringDisable : this device supported tethering feature"

    .line 305
    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v7

    .line 308
    .local v7, "tethered":[Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 309
    .local v6, "mBtRegexs":[Ljava/lang/String;
    invoke-direct {p0, v7, v6}, Lcom/lge/mdm/controller/LGMDMTetheringController;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "btIface":Ljava/lang/String;
    if-eqz v2, :cond_68

    .line 312
    const-string/jumbo v8, "TetheringController"

    const-string/jumbo v9, "setAllowTethering : bluetooth tethering enabled"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_80

    .line 314
    const-string/jumbo v8, "TetheringController"

    const-string/jumbo v9, "setBluetoothTetheringDisable : cm.unther() error"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_68
    :goto_68
    iget-object v8, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 322
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_8f

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v8

    if-eqz v8, :cond_8f

    .line 323
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V
    :try_end_7c
    .catchall {:try_start_2b .. :try_end_7c} :catchall_8a

    .line 331
    .end local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    .end local v2    # "btIface":Ljava/lang/String;
    .end local v6    # "mBtRegexs":[Ljava/lang/String;
    .end local v7    # "tethered":[Ljava/lang/String;
    :cond_7c
    :goto_7c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 287
    return-void

    .line 317
    .restart local v2    # "btIface":Ljava/lang/String;
    .restart local v6    # "mBtRegexs":[Ljava/lang/String;
    .restart local v7    # "tethered":[Ljava/lang/String;
    :cond_80
    :try_start_80
    const-string/jumbo v8, "TetheringController"

    const-string/jumbo v9, "setBluetoothTetheringDisable : cm.unther() success"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_8a

    goto :goto_68

    .line 330
    .end local v2    # "btIface":Ljava/lang/String;
    .end local v6    # "mBtRegexs":[Ljava/lang/String;
    .end local v7    # "tethered":[Ljava/lang/String;
    :catchall_8a
    move-exception v8

    .line 331
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 330
    throw v8

    .line 326
    .restart local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    .restart local v2    # "btIface":Ljava/lang/String;
    .restart local v6    # "mBtRegexs":[Ljava/lang/String;
    .restart local v7    # "tethered":[Ljava/lang/String;
    :cond_8f
    :try_start_8f
    const-string/jumbo v8, "TetheringController"

    const-string/jumbo v9, "setBluetoothTetheringDisable bluetoothPan is null!!!"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mBluetoothPendingStats:Z
    :try_end_9b
    .catchall {:try_start_8f .. :try_end_9b} :catchall_8a

    goto :goto_7c
.end method

.method protected setHotspotDisable(Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;)V
    .registers 10
    .param p1, "backupInfo"    # Lcom/lge/mdm/controller/LGMDMTetheringController$BackupPolicyInfo;

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMTetheringController;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v4

    .line 359
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v4, :cond_10

    .line 360
    const-string/jumbo v5, "TetheringController"

    const-string/jumbo v6, "setHotspotDisable : getUsbManager() == null"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void

    .line 364
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 366
    .local v2, "identity":J
    :try_start_14
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 368
    .local v0, "hotspotState":I
    const/16 v5, 0xc

    if-eq v0, v5, :cond_20

    .line 369
    const/16 v5, 0xd

    if-ne v0, v5, :cond_33

    .line 370
    :cond_20
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mSetPolicyLock:Z

    .line 372
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 373
    .local v1, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_51

    .line 379
    .end local v1    # "msg":Landroid/os/Message;
    :goto_2f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 357
    return-void

    .line 375
    :cond_33
    :try_start_33
    const-string/jumbo v5, "TetheringController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setHotspotDisable : no work. hotspot state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mSetPolicyLock:Z
    :try_end_50
    .catchall {:try_start_33 .. :try_end_50} :catchall_51

    goto :goto_2f

    .line 378
    .end local v0    # "hotspotState":I
    :catchall_51
    move-exception v5

    .line 379
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 378
    throw v5
.end method

.method protected setUsbTetheringDisable()V
    .registers 10

    .prologue
    .line 239
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMTetheringController;->mContext:Landroid/content/Context;

    .line 240
    const-string/jumbo v8, "connectivity"

    .line 239
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 241
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_17

    .line 242
    const-string/jumbo v7, "TetheringController"

    const-string/jumbo v8, "setUsbTetheringDisable : ConnectivityManager is null"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void

    .line 245
    :cond_17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 247
    .local v2, "identity":J
    :try_start_1b
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v7

    if-eqz v7, :cond_65

    .line 248
    const-string/jumbo v7, "TetheringController"

    const-string/jumbo v8, "setUsbTetheringDisable : this device supported tethering feature"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, "mUsbRegexs":[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v5

    .line 252
    .local v5, "tethered":[Ljava/lang/String;
    invoke-direct {p0, v5, v4}, Lcom/lge/mdm/controller/LGMDMTetheringController;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, "usbIface":Ljava/lang/String;
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMTetheringController;->getUsbTetherFunctionEnabled()Z

    move-result v1

    .line 254
    .local v1, "isUsbTetherEnabled":Z
    if-nez v6, :cond_3e

    if-eqz v1, :cond_65

    .line 255
    :cond_3e
    const-string/jumbo v7, "TetheringController"

    const-string/jumbo v8, "setAllowTethering : usb tethering enabled"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v7

    if-eqz v7, :cond_57

    .line 257
    const-string/jumbo v7, "TetheringController"

    const-string/jumbo v8, "setAllowTethering : fail to disable usb tethering"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_57
    const-string/jumbo v7, "TetheringController"

    const-string/jumbo v8, "setAllowTethering : success to disable usb tethering"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    if-eqz v1, :cond_65

    .line 261
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMTetheringController;->setUsbFunctionChargeOnly()V
    :try_end_65
    .catchall {:try_start_1b .. :try_end_65} :catchall_69

    .line 266
    .end local v1    # "isUsbTetherEnabled":Z
    .end local v4    # "mUsbRegexs":[Ljava/lang/String;
    .end local v5    # "tethered":[Ljava/lang/String;
    .end local v6    # "usbIface":Ljava/lang/String;
    :cond_65
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 238
    return-void

    .line 265
    :catchall_69
    move-exception v7

    .line 266
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 265
    throw v7
.end method
