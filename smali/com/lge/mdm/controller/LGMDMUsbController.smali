.class public Lcom/lge/mdm/controller/LGMDMUsbController;
.super Ljava/lang/Object;
.source "LGMDMUsbController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/controller/LGMDMUsbController$BatteryChangeReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbController"

.field private static instance:Lcom/lge/mdm/controller/LGMDMUsbController;


# instance fields
.field private mBatteryChangeReceiver:Lcom/lge/mdm/controller/LGMDMUsbController$BatteryChangeReceiver;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field private final mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

.field private mPrevUSBCharging:Z

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUSBCharging:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mtpRestore:Z

.field private ptpRestore:Z


# direct methods
.method static synthetic -get0(Lcom/lge/mdm/controller/LGMDMUsbController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mPrevUSBCharging:Z

    return v0
.end method

.method static synthetic -get1(Lcom/lge/mdm/controller/LGMDMUsbController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mUSBCharging:Z

    return v0
.end method

.method static synthetic -set0(Lcom/lge/mdm/controller/LGMDMUsbController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mPrevUSBCharging:Z

    return p1
.end method

.method static synthetic -set1(Lcom/lge/mdm/controller/LGMDMUsbController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mUSBCharging:Z

    return p1
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMUsbController;->instance:Lcom/lge/mdm/controller/LGMDMUsbController;

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v1, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mtpRestore:Z

    .line 44
    iput-boolean v1, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->ptpRestore:Z

    .line 45
    iput-boolean v1, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mUSBCharging:Z

    .line 46
    iput-boolean v1, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mPrevUSBCharging:Z

    .line 47
    new-instance v1, Lcom/lge/mdm/controller/LGMDMUsbController$BatteryChangeReceiver;

    invoke-direct {v1, p0}, Lcom/lge/mdm/controller/LGMDMUsbController$BatteryChangeReceiver;-><init>(Lcom/lge/mdm/controller/LGMDMUsbController;)V

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mBatteryChangeReceiver:Lcom/lge/mdm/controller/LGMDMUsbController$BatteryChangeReceiver;

    .line 89
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 90
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mContext:Landroid/content/Context;

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mBatteryChangeReceiver:Lcom/lge/mdm/controller/LGMDMUsbController$BatteryChangeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    return-void
.end method

.method private containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x2c

    const/4 v5, 0x0

    .line 749
    const/4 v2, 0x1

    .line 752
    .local v2, "ret":Z
    const-string/jumbo v6, ":"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 754
    .local v4, "strs":[Ljava/lang/String;
    array-length v6, v4

    :goto_c
    if-ge v5, v6, :cond_37

    aget-object v3, v4, v5

    .line 755
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 756
    .local v1, "index":I
    if-gez v1, :cond_17

    .line 757
    const/4 v2, 0x0

    .line 759
    :cond_17
    if-lez v1, :cond_22

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_22

    .line 760
    const/4 v2, 0x0

    .line 762
    :cond_22
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int v0, v1, v7

    .line 763
    .local v0, "charAfter":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_35

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_35

    .line 764
    const/4 v2, 0x0

    .line 766
    :cond_35
    if-eqz v2, :cond_38

    .line 770
    .end local v0    # "charAfter":I
    .end local v1    # "index":I
    .end local v3    # "str":Ljava/lang/String;
    :cond_37
    return v2

    .line 754
    .restart local v0    # "charAfter":I
    .restart local v1    # "index":I
    .restart local v3    # "str":Ljava/lang/String;
    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_c
.end method

.method private disableADB(Lcom/lge/mdm/admin/LGMDMadminlist;)V
    .registers 7
    .param p1, "admin"    # Lcom/lge/mdm/admin/LGMDMadminlist;

    .prologue
    .line 242
    iget-boolean v2, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->preUsbAdbEnabled:Z

    if-eqz v2, :cond_21

    .line 243
    const-string/jumbo v2, "UsbController"

    const-string/jumbo v3, "setEnforceUSBModeAsNone : admin.enforceUSBasNone = true"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 246
    .local v0, "identity":J
    :try_start_11
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 247
    const-string/jumbo v3, "adb_enabled"

    const/4 v4, 0x0

    .line 246
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_22

    .line 249
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 240
    .end local v0    # "identity":J
    :cond_21
    return-void

    .line 248
    .restart local v0    # "identity":J
    :catchall_22
    move-exception v2

    .line 249
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 248
    throw v2
.end method

.method private disableUSB(Ljava/lang/String;)V
    .registers 8
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 491
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 493
    .local v0, "identity":J
    :try_start_4
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 494
    const-string/jumbo v3, "UsbController"

    const-string/jumbo v4, "usb tethering set false"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 498
    :cond_1b
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 499
    const-string/jumbo v3, "UsbController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "USB_FUNCTION set : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_4 .. :try_end_42} :catchall_55

    .line 503
    :cond_42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 507
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.lge.mdm.intent.action.USB_FORCE_DISABLE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 490
    return-void

    .line 502
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_55
    move-exception v3

    .line 503
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 502
    throw v3
.end method

.method private disableUSBFunction(Ljava/lang/String;)V
    .registers 8
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 708
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getCurrnetUsbFunctions()Ljava/lang/String;

    move-result-object v0

    .line 709
    .local v0, "currentFunctions":Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 710
    invoke-direct {p0, v0, p1}, Lcom/lge/mdm/controller/LGMDMUsbController;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 711
    const-string/jumbo v4, "UsbController"

    const-string/jumbo v5, "disableUSBFunction : not found function"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    return-void

    .line 715
    :cond_16
    const-string/jumbo v4, "UsbController"

    const-string/jumbo v5, "disableUSBFunction : currentFunctions is null"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    return-void

    .line 719
    :cond_20
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v1

    .line 720
    .local v1, "m":Landroid/hardware/usb/UsbManager;
    if-eqz v1, :cond_3c

    .line 721
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 723
    .local v2, "identity":J
    :try_start_2a
    const-string/jumbo v4, "UsbController"

    const-string/jumbo v5, "USB_FUNCTION_CHARGE_ONLY set"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string/jumbo v4, "charge_only"

    invoke-virtual {v1, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_3d

    .line 726
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 706
    .end local v2    # "identity":J
    :cond_3c
    return-void

    .line 725
    .restart local v2    # "identity":J
    :catchall_3d
    move-exception v4

    .line 726
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 725
    throw v4
.end method

.method private enableUSB(Ljava/lang/String;)V
    .registers 4
    .param p1, "usbState"    # Ljava/lang/String;

    .prologue
    .line 512
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.lge.mdm.intent.action.USB_FORCE_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 511
    return-void
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_11

    .line 107
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mContext:Landroid/content/Context;

    .line 108
    const-string/jumbo v1, "connectivity"

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 110
    :cond_11
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getCurrnetUsbFunctions()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 732
    const-string/jumbo v0, "/sys/class/android_usb/android0/functions"

    .line 733
    .local v0, "FUNCTIONS_PATH":Ljava/lang/String;
    const/4 v2, 0x0

    .line 735
    .local v2, "functions":Ljava/lang/String;
    :try_start_5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_31

    move-result-object v2

    .line 739
    .end local v2    # "functions":Ljava/lang/String;
    :goto_14
    if-eqz v2, :cond_4d

    .line 740
    const-string/jumbo v3, "UsbController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCurrnetUsbFunctions : functions : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    return-object v2

    .line 736
    .restart local v2    # "functions":Ljava/lang/String;
    :catch_31
    move-exception v1

    .line 737
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "UsbController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCurrnetUsbFunctions : IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 743
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "functions":Ljava/lang/String;
    :cond_4d
    const-string/jumbo v3, "UsbController"

    const-string/jumbo v4, "getCurrnetUsbFunctions : functions is null"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    return-object v6
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMUsbController;
    .registers 2

    .prologue
    .line 97
    const-string/jumbo v0, "UsbController"

    const-string/jumbo v1, "start LGMDMUsbController"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/lge/mdm/controller/LGMDMUsbController;->instance:Lcom/lge/mdm/controller/LGMDMUsbController;

    if-nez v0, :cond_14

    .line 99
    new-instance v0, Lcom/lge/mdm/controller/LGMDMUsbController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMUsbController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMUsbController;->instance:Lcom/lge/mdm/controller/LGMDMUsbController;

    .line 102
    :cond_14
    sget-object v0, Lcom/lge/mdm/controller/LGMDMUsbController;->instance:Lcom/lge/mdm/controller/LGMDMUsbController;

    return-object v0
.end method

.method private getStorageManager()Landroid/os/storage/StorageManager;
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_11

    .line 115
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 117
    :cond_11
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method private getUsbManager()Landroid/hardware/usb/UsbManager;
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_11

    .line 122
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 124
    :cond_11
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method private restoreUsbFunctions(Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 536
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 538
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-nez v0, :cond_9

    .line 539
    return-void

    .line 543
    :cond_9
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preUsbAdbEnabled:Z

    if-eqz v1, :cond_14

    .line 544
    const/4 v1, 0x6

    invoke-virtual {p0, v1, p2}, Lcom/lge/mdm/controller/LGMDMUsbController;->getDisallowUSBType(II)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 535
    :cond_14
    :goto_14
    return-void

    .line 545
    :cond_15
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preUsbAdbEnabled:Z

    .line 546
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 548
    .local v2, "identity":J
    :try_start_1c
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "adb_enabled"

    .line 549
    const/4 v5, 0x1

    .line 548
    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_36

    .line 551
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 553
    const-string/jumbo v1, "UsbController"

    const-string/jumbo v4, "restoreUsbFunctions : set adb enable"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 550
    :catchall_36
    move-exception v1

    .line 551
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 550
    throw v1
.end method

.method private updateUsbState()V
    .registers 3

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->usbConnectedState()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "state":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 257
    return-void

    .line 259
    :cond_7
    const-string/jumbo v1, "CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string/jumbo v1, "CONFIGURED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 260
    :cond_19
    const-string/jumbo v1, "CONNECTED"

    invoke-direct {p0, v1}, Lcom/lge/mdm/controller/LGMDMUsbController;->enableUSB(Ljava/lang/String;)V

    .line 261
    const-string/jumbo v1, "CONFIGURED"

    invoke-direct {p0, v1}, Lcom/lge/mdm/controller/LGMDMUsbController;->enableUSB(Ljava/lang/String;)V

    .line 254
    :cond_25
    return-void
.end method

.method private usbConnectedState()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 518
    const-string/jumbo v0, "/sys/class/android_usb/android0/state"

    .line 519
    .local v0, "STATE_PATH":Ljava/lang/String;
    const/4 v2, 0x0

    .line 521
    .local v2, "state":Ljava/lang/String;
    :try_start_5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_31

    move-result-object v2

    .line 526
    .end local v2    # "state":Ljava/lang/String;
    :goto_14
    if-eqz v2, :cond_4d

    .line 527
    const-string/jumbo v3, "UsbController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isUsbConnected : USB state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    return-object v2

    .line 522
    .restart local v2    # "state":Ljava/lang/String;
    :catch_31
    move-exception v1

    .line 523
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "UsbController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isUsbConnected : IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 530
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "state":Ljava/lang/String;
    :cond_4d
    const-string/jumbo v3, "UsbController"

    const-string/jumbo v4, "isUsbConnected : state is null"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    return-object v6
.end method


# virtual methods
.method public backupUsbFunctions(Lcom/lge/mdm/admin/LGMDMadminlist;)V
    .registers 8
    .param p1, "admin"    # Lcom/lge/mdm/admin/LGMDMadminlist;

    .prologue
    const/4 v2, 0x0

    .line 558
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 560
    .local v0, "identity":J
    :try_start_5
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 561
    const-string/jumbo v4, "adb_enabled"

    const/4 v5, 0x0

    .line 560
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_16

    const/4 v2, 0x1

    :cond_16
    iput-boolean v2, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->preUsbAdbEnabled:Z
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_38

    .line 563
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 565
    const-string/jumbo v2, "UsbController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "backupUsbFunctions : preUsbAdbEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->preUsbAdbEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    return-void

    .line 562
    :catchall_38
    move-exception v2

    .line 563
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 562
    throw v2
.end method

.method protected getAllowUSBDebugging(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 571
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 572
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUSBdebugging:Z

    :cond_e
    return v4

    .line 575
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 576
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 577
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUSBdebugging:Z

    if-nez v5, :cond_19

    .line 578
    const/4 v4, 0x0

    return v4

    .line 581
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowUSBMtp(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 620
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 621
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbMtp:Z

    :cond_e
    return v4

    .line 624
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 625
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 626
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbMtp:Z

    if-nez v5, :cond_19

    .line 627
    const/4 v4, 0x0

    return v4

    .line 630
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowUSBPtp(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 651
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 652
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbPtp:Z

    :cond_e
    return v4

    .line 655
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 656
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 657
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbPtp:Z

    if-nez v5, :cond_19

    .line 658
    const/4 v4, 0x0

    return v4

    .line 661
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowUSBStorage(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 680
    const/4 v0, 0x0

    .line 681
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 682
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 683
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbStorage:Z

    :cond_e
    return v4

    .line 686
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 687
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 688
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbStorage:Z

    if-nez v5, :cond_19

    .line 689
    const/4 v4, 0x0

    return v4

    .line 692
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method getAllowUsb(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 128
    const/4 v0, 0x0

    .line 131
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 132
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 133
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsb:Z

    :cond_e
    return v4

    .line 136
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 137
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 138
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsb:Z

    if-nez v5, :cond_19

    .line 139
    const/4 v4, 0x0

    return v4

    .line 143
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method getAllowUsbData(Landroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x1

    .line 294
    const/4 v0, 0x0

    .line 296
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 297
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 298
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbData:Z

    :cond_e
    return v3

    .line 301
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v2

    .line 302
    .local v2, "listSize":I
    const/4 v1, 0x0

    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .local v1, "i":I
    :goto_16
    if-ge v1, v2, :cond_29

    .line 303
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, v1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminList(II)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 304
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_24

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbData:Z

    if-eqz v4, :cond_27

    .line 302
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 305
    :cond_27
    const/4 v3, 0x0

    return v3

    .line 309
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_29
    return v3
.end method

.method getAllowUsbDrive(Landroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x1

    .line 323
    const/4 v0, 0x0

    .line 325
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 326
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 327
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbDrive:Z

    :cond_e
    return v3

    .line 330
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v2

    .line 331
    .local v2, "listSize":I
    const/4 v1, 0x0

    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .local v1, "i":I
    :goto_16
    if-ge v1, v2, :cond_29

    .line 332
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, v1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminList(II)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 333
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_24

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbDrive:Z

    if-eqz v4, :cond_27

    .line 331
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 334
    :cond_27
    const/4 v3, 0x0

    return v3

    .line 338
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_29
    return v3
.end method

.method getAllowUsbPort(Landroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x1

    .line 413
    const/4 v0, 0x0

    .line 415
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 416
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 417
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbPort:Z

    :cond_e
    return v3

    .line 420
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v2

    .line 421
    .local v2, "listSize":I
    const/4 v1, 0x0

    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .local v1, "i":I
    :goto_16
    if-ge v1, v2, :cond_29

    .line 422
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, v1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminList(II)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 423
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_24

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbPort:Z

    if-eqz v4, :cond_27

    .line 421
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 424
    :cond_27
    const/4 v3, 0x0

    return v3

    .line 428
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_29
    return v3
.end method

.method protected getDisallowUSBType(II)Z
    .registers 18
    .param p1, "usbType"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 774
    const/4 v2, 0x0

    .line 775
    .local v2, "ret":Z
    const/4 v12, 0x0

    move/from16 v0, p2

    invoke-virtual {p0, v12, v0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getEnforceUsbModeAsNone(Landroid/content/ComponentName;I)Z

    move-result v1

    .line 776
    .local v1, "enforcedUsbAsNonePolicy":Z
    const/4 v12, 0x0

    move/from16 v0, p2

    invoke-virtual {p0, v12, v0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getAllowUsb(Landroid/content/ComponentName;I)Z

    move-result v8

    .line 777
    .local v8, "usbPolicy":Z
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMTetheringController;->getInstance()Lcom/lge/mdm/controller/LGMDMTetheringController;

    move-result-object v12

    const/4 v13, 0x0

    move/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Lcom/lge/mdm/controller/LGMDMTetheringController;->getAllowTethering(Landroid/content/ComponentName;I)Z

    move-result v5

    .line 779
    .local v5, "tetherPolicy":Z
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMTetheringController;->getInstance()Lcom/lge/mdm/controller/LGMDMTetheringController;

    move-result-object v12

    const/4 v13, 0x0

    move/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Lcom/lge/mdm/controller/LGMDMTetheringController;->getAllowUSBTethering(Landroid/content/ComponentName;I)Z

    move-result v11

    .line 781
    .local v11, "usbTetherPolicy":Z
    const/4 v12, 0x0

    move/from16 v0, p2

    invoke-virtual {p0, v12, v0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getAllowUSBMtp(Landroid/content/ComponentName;I)Z

    move-result v7

    .line 782
    .local v7, "usbMtpPolicy":Z
    const/4 v12, 0x0

    move/from16 v0, p2

    invoke-virtual {p0, v12, v0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getAllowUSBPtp(Landroid/content/ComponentName;I)Z

    move-result v9

    .line 783
    .local v9, "usbPtpPolicy":Z
    const/4 v12, 0x0

    move/from16 v0, p2

    invoke-virtual {p0, v12, v0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getAllowUSBStorage(Landroid/content/ComponentName;I)Z

    move-result v10

    .line 784
    .local v10, "usbStoragePolicy":Z
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->getInstance()Lcom/lge/mdm/controller/LGMDMScreenCaptureController;

    move-result-object v12

    const/4 v13, 0x0

    move/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->isAllowedScreenCapture(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 786
    .local v4, "scPolicy":Z
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->getInstance()Lcom/lge/mdm/controller/LGMDMScreenCaptureController;

    move-result-object v12

    .line 787
    const/4 v13, 0x0

    .line 786
    move/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->isAllowedScreenCaptureBlacklist(Landroid/content/ComponentName;I)Z

    move-result v3

    .line 788
    .local v3, "scBlicklistPolicy":Z
    const/4 v12, 0x0

    move/from16 v0, p2

    invoke-virtual {p0, v12, v0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getAllowUSBDebugging(Landroid/content/ComponentName;I)Z

    move-result v6

    .line 790
    .local v6, "usbDebugPolicy":Z
    packed-switch p1, :pswitch_data_d2

    .line 832
    const-string/jumbo v12, "UsbController"

    const-string/jumbo v13, "no USB type number and return allow"

    invoke-static {v12, v13}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const/4 v2, 0x0

    .line 836
    :cond_64
    :goto_64
    const-string/jumbo v12, "UsbController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getDisAllowUSBType("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ") = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " (true:Disallow)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    return v2

    .line 792
    :pswitch_93
    if-nez v1, :cond_99

    if-eqz v8, :cond_99

    if-nez v7, :cond_64

    .line 793
    :cond_99
    const/4 v2, 0x1

    goto :goto_64

    .line 797
    :pswitch_9b
    if-nez v1, :cond_a1

    if-eqz v8, :cond_a1

    if-nez v9, :cond_64

    .line 798
    :cond_a1
    const/4 v2, 0x1

    goto :goto_64

    .line 802
    :pswitch_a3
    if-nez v1, :cond_a9

    if-eqz v8, :cond_a9

    if-nez v10, :cond_64

    .line 803
    :cond_a9
    const/4 v2, 0x1

    goto :goto_64

    .line 807
    :pswitch_ab
    if-nez v1, :cond_b3

    if-eqz v8, :cond_b3

    if-eqz v11, :cond_b3

    if-nez v5, :cond_64

    .line 808
    :cond_b3
    const/4 v2, 0x1

    goto :goto_64

    .line 812
    :pswitch_b5
    if-nez v1, :cond_b9

    if-nez v8, :cond_64

    .line 813
    :cond_b9
    const/4 v2, 0x1

    goto :goto_64

    .line 817
    :pswitch_bb
    if-nez v1, :cond_c5

    if-eqz v8, :cond_c5

    if-eqz v6, :cond_c5

    if-eqz v3, :cond_c5

    if-nez v4, :cond_64

    .line 818
    :cond_c5
    const/4 v2, 0x1

    goto :goto_64

    .line 822
    :pswitch_c7
    if-nez v1, :cond_cb

    if-nez v8, :cond_64

    .line 823
    :cond_cb
    const/4 v2, 0x1

    goto :goto_64

    .line 827
    :pswitch_cd
    if-eqz v1, :cond_64

    .line 828
    const/4 v2, 0x1

    goto :goto_64

    .line 790
    nop

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_93
        :pswitch_9b
        :pswitch_a3
        :pswitch_ab
        :pswitch_b5
        :pswitch_bb
        :pswitch_c7
        :pswitch_cd
    .end packed-switch
.end method

.method getEnforceUsbModeAsNone(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 176
    const/4 v0, 0x0

    .line 179
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 180
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 181
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceUsbAsNone:Z

    :cond_e
    return v4

    .line 186
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 187
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 188
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v1, :cond_19

    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceUsbAsNone:Z

    if-eqz v5, :cond_19

    .line 189
    const/4 v4, 0x1

    return v4

    .line 193
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2d
    return v4
.end method

.method protected setAllowUSBDebugging(Landroid/content/ComponentName;ZI)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 585
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 587
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUSBdebugging:Z

    if-ne v1, p2, :cond_14

    .line 588
    const-string/jumbo v1, "UsbController"

    const-string/jumbo v4, "setAllowUSBDebugging : same policy is called"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    return-void

    .line 592
    :cond_14
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUSBdebugging:Z

    .line 593
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 595
    .local v2, "identity":J
    :try_start_1a
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUSBdebugging:Z

    if-nez v1, :cond_43

    .line 596
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 597
    const-string/jumbo v4, "adb_enabled"

    const/4 v5, 0x0

    .line 596
    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUSBAdb:I

    .line 599
    iget v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUSBAdb:I

    if-lez v1, :cond_3f

    .line 600
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 601
    const-string/jumbo v4, "adb_enabled"

    const/4 v5, 0x0

    .line 600
    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3f
    .catchall {:try_start_1a .. :try_end_3f} :catchall_5f

    .line 612
    :cond_3f
    :goto_3f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 584
    return-void

    .line 604
    :cond_43
    :try_start_43
    iget v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUSBAdb:I

    if-lez v1, :cond_3f

    .line 605
    const/4 v1, 0x6

    invoke-virtual {p0, v1, p3}, Lcom/lge/mdm/controller/LGMDMUsbController;->getDisallowUSBType(II)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 606
    const/4 v1, 0x0

    iput v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUSBAdb:I

    .line 607
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 608
    const-string/jumbo v4, "adb_enabled"

    const/4 v5, 0x1

    .line 607
    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_5e
    .catchall {:try_start_43 .. :try_end_5e} :catchall_5f

    goto :goto_3f

    .line 611
    :catchall_5f
    move-exception v1

    .line 612
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 611
    throw v1
.end method

.method protected setAllowUSBMtp(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 634
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 636
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbMtp:Z

    if-ne v1, p2, :cond_14

    .line 637
    const-string/jumbo v1, "UsbController"

    const-string/jumbo v2, "setAllowUSBMtp : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    return-void

    .line 641
    :cond_14
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbMtp:Z

    .line 642
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Lcom/lge/mdm/controller/LGMDMUsbController;->getAllowUSBMtp(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_23

    .line 643
    const-string/jumbo v1, "mtp"

    invoke-direct {p0, v1}, Lcom/lge/mdm/controller/LGMDMUsbController;->disableUSBFunction(Ljava/lang/String;)V

    .line 633
    :cond_23
    return-void
.end method

.method protected setAllowUSBPtp(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 665
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 667
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbPtp:Z

    if-ne v1, p2, :cond_14

    .line 668
    const-string/jumbo v1, "UsbController"

    const-string/jumbo v2, "setallowUsbPtp : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    return-void

    .line 672
    :cond_14
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbPtp:Z

    .line 673
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Lcom/lge/mdm/controller/LGMDMUsbController;->getAllowUSBPtp(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_23

    .line 674
    const-string/jumbo v1, "ptp"

    invoke-direct {p0, v1}, Lcom/lge/mdm/controller/LGMDMUsbController;->disableUSBFunction(Ljava/lang/String;)V

    .line 664
    :cond_23
    return-void
.end method

.method protected setAllowUSBStorage(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 696
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 698
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbStorage:Z

    if-ne v1, p2, :cond_14

    .line 699
    const-string/jumbo v1, "UsbController"

    const-string/jumbo v2, "setAllowUSBStorage : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    return-void

    .line 703
    :cond_14
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbStorage:Z

    .line 695
    return-void
.end method

.method setAllowUsb(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 147
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 149
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsb:Z

    if-ne v1, p2, :cond_14

    .line 150
    const-string/jumbo v1, "UsbController"

    const-string/jumbo v2, "setAllowUsb : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void

    .line 155
    :cond_14
    if-eqz p2, :cond_34

    .line 156
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsb:Z

    if-nez v1, :cond_33

    .line 157
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsb:Z

    .line 158
    const-string/jumbo v1, "UsbController"

    const-string/jumbo v2, "setAllowUsb : admin.allowUsb = true"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Lcom/lge/mdm/controller/LGMDMUsbController;->getAllowUsb(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 160
    invoke-direct {p0, p1, p3}, Lcom/lge/mdm/controller/LGMDMUsbController;->restoreUsbFunctions(Landroid/content/ComponentName;I)V

    .line 161
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->updateUsbState()V

    .line 146
    :cond_33
    :goto_33
    return-void

    .line 166
    :cond_34
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsb:Z

    if-eqz v1, :cond_33

    .line 167
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMUsbController;->backupUsbFunctions(Lcom/lge/mdm/admin/LGMDMadminlist;)V

    .line 168
    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMUsbController;->disableADB(Lcom/lge/mdm/admin/LGMDMadminlist;)V

    .line 169
    const-string/jumbo v1, "charge_only"

    invoke-direct {p0, v1}, Lcom/lge/mdm/controller/LGMDMUsbController;->disableUSB(Ljava/lang/String;)V

    .line 170
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsb:Z

    goto :goto_33
.end method

.method setAllowUsbData(Landroid/content/ComponentName;ZI)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 313
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 315
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    const-string/jumbo v1, "UsbController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAllowUsbData : allow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbData:Z

    .line 312
    return-void
.end method

.method setAllowUsbDrive(Landroid/content/ComponentName;ZI)V
    .registers 15
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 343
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v7, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 345
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p2, :cond_8b

    .line 346
    iget-boolean v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbDrive:Z

    if-nez v7, :cond_55

    .line 347
    iput-boolean v10, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbDrive:Z

    .line 348
    const-string/jumbo v7, "UsbController"

    const-string/jumbo v8, "setAllowUsbDrive : admin.allowUsbDrive = true"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 351
    .local v2, "identity":J
    const/4 v7, 0x0

    :try_start_1e
    invoke-virtual {p0, v7, p3}, Lcom/lge/mdm/controller/LGMDMUsbController;->getAllowUsbDrive(Landroid/content/ComponentName;I)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 352
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->usbConnectedState()Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_7b

    move-result-object v6

    .line 353
    .local v6, "state":Ljava/lang/String;
    if-nez v6, :cond_2e

    .line 373
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 354
    return-void

    .line 356
    :cond_2e
    :try_start_2e
    iget-boolean v7, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mtpRestore:Z

    if-eqz v7, :cond_56

    iget-boolean v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbPort:Z

    if-eqz v7, :cond_56

    .line 357
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mtpRestore:Z

    .line 358
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v7

    if-eqz v7, :cond_52

    .line 359
    const-string/jumbo v7, "UsbController"

    const-string/jumbo v8, "USB_FUNCTION_MTP set"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v7

    const-string/jumbo v8, "mtp"

    invoke-virtual {v7, v8}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_2e .. :try_end_52} :catchall_7b

    .line 373
    .end local v6    # "state":Ljava/lang/String;
    :cond_52
    :goto_52
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 341
    .end local v2    # "identity":J
    :cond_55
    :goto_55
    return-void

    .line 362
    .restart local v2    # "identity":J
    .restart local v6    # "state":Ljava/lang/String;
    :cond_56
    :try_start_56
    iget-boolean v7, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->ptpRestore:Z

    if-eqz v7, :cond_80

    iget-boolean v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbPort:Z

    if-eqz v7, :cond_80

    .line 363
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->ptpRestore:Z

    .line 364
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v7

    if-eqz v7, :cond_52

    .line 365
    const-string/jumbo v7, "UsbController"

    const-string/jumbo v8, "USB_FUNCTION_PTP set"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v7

    const-string/jumbo v8, "ptp"

    invoke-virtual {v7, v8}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_56 .. :try_end_7a} :catchall_7b

    goto :goto_52

    .line 372
    .end local v6    # "state":Ljava/lang/String;
    :catchall_7b
    move-exception v7

    .line 373
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 372
    throw v7

    .line 369
    .restart local v6    # "state":Ljava/lang/String;
    :cond_80
    :try_start_80
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v7

    const-string/jumbo v8, "charge_only"

    invoke-virtual {v7, v8}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_80 .. :try_end_8a} :catchall_7b

    goto :goto_52

    .line 377
    .end local v2    # "identity":J
    .end local v6    # "state":Ljava/lang/String;
    :cond_8b
    iget-boolean v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbDrive:Z

    if-eqz v7, :cond_55

    .line 378
    const-string/jumbo v7, "UsbController"

    const-string/jumbo v8, "setAllowUsbDrive : admin.allowUsbDrive = false"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "storage"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 381
    .local v5, "mStorageManager":Landroid/os/storage/StorageManager;
    if-eqz v5, :cond_ae

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v7

    if-eqz v7, :cond_ae

    .line 382
    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    .line 384
    :cond_ae
    iput-boolean v9, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mtpRestore:Z

    .line 385
    iput-boolean v9, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->ptpRestore:Z

    .line 386
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getCurrnetUsbFunctions()Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "currentFunctions":Ljava/lang/String;
    if-eqz v1, :cond_c3

    .line 388
    const-string/jumbo v7, "mtp"

    invoke-direct {p0, v1, v7}, Lcom/lge/mdm/controller/LGMDMUsbController;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f6

    .line 389
    iput-boolean v10, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mtpRestore:Z

    .line 395
    :cond_c3
    :goto_c3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 398
    .restart local v2    # "identity":J
    :try_start_c7
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v7

    if-eqz v7, :cond_e0

    .line 399
    const-string/jumbo v7, "UsbController"

    const-string/jumbo v8, "USB_FUNCTION_CHARGE_ONLY set"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v7

    const-string/jumbo v8, "charge_only"

    invoke-virtual {v7, v8}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V
    :try_end_e0
    .catchall {:try_start_c7 .. :try_end_e0} :catchall_102

    .line 403
    :cond_e0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 405
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "com.lge.mdm.intent.action.USB_FORCE_DISABLE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 407
    iput-boolean v9, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbDrive:Z

    goto/16 :goto_55

    .line 390
    .end local v2    # "identity":J
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_f6
    const-string/jumbo v7, "ptp"

    invoke-direct {p0, v1, v7}, Lcom/lge/mdm/controller/LGMDMUsbController;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c3

    .line 391
    iput-boolean v10, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->ptpRestore:Z

    goto :goto_c3

    .line 402
    .restart local v2    # "identity":J
    :catchall_102
    move-exception v7

    .line 403
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 402
    throw v7
.end method

.method setAllowUsbPort(Landroid/content/ComponentName;ZI)V
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 432
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 434
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbPort:Z

    if-ne v4, p2, :cond_16

    .line 435
    const-string/jumbo v4, "UsbController"

    const-string/jumbo v5, "setAllowUsbPort : same policy is called"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    return-void

    .line 438
    :cond_16
    if-eqz p2, :cond_5b

    .line 439
    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbPort:Z

    if-nez v4, :cond_55

    .line 440
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbPort:Z

    .line 441
    const-string/jumbo v4, "UsbController"

    const-string/jumbo v5, "setAllowUsbPort : admin.allowUsbPort = true"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0, v6, p3}, Lcom/lge/mdm/controller/LGMDMUsbController;->getAllowUsbPort(Landroid/content/ComponentName;I)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 443
    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbDrive:Z

    if-eqz v4, :cond_35

    .line 444
    invoke-direct {p0, p1, p3}, Lcom/lge/mdm/controller/LGMDMUsbController;->restoreUsbFunctions(Landroid/content/ComponentName;I)V

    .line 446
    :cond_35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 448
    .local v2, "identity":J
    :try_start_39
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v4

    if-eqz v4, :cond_52

    .line 449
    const-string/jumbo v4, "UsbController"

    const-string/jumbo v5, "USB_FUNCTION_CHARGE_ONLY set"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v4

    const-string/jumbo v5, "charge_only"

    invoke-virtual {v4, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_39 .. :try_end_52} :catchall_56

    .line 453
    :cond_52
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 431
    .end local v2    # "identity":J
    :cond_55
    :goto_55
    return-void

    .line 452
    .restart local v2    # "identity":J
    :catchall_56
    move-exception v4

    .line 453
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 452
    throw v4

    .line 459
    .end local v2    # "identity":J
    :cond_5b
    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbPort:Z

    if-eqz v4, :cond_55

    .line 460
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMUsbController;->backupUsbFunctions(Lcom/lge/mdm/admin/LGMDMadminlist;)V

    .line 461
    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preUsbAdbEnabled:Z

    if-eqz v4, :cond_83

    .line 462
    const-string/jumbo v4, "UsbController"

    const-string/jumbo v5, "setAllowUsbPort : admin.preUsbAdbEnabled = true"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 465
    .restart local v2    # "identity":J
    :try_start_73
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 466
    const-string/jumbo v5, "adb_enabled"

    const/4 v6, 0x0

    .line 465
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_80
    .catchall {:try_start_73 .. :try_end_80} :catchall_b5

    .line 468
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 473
    .end local v2    # "identity":J
    :cond_83
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 475
    .restart local v2    # "identity":J
    :try_start_87
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v4

    if-eqz v4, :cond_a0

    .line 476
    const-string/jumbo v4, "UsbController"

    const-string/jumbo v5, "USB_FUNCTION_PORT_RESTRICT set"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v4

    const-string/jumbo v5, "port_restrict"

    invoke-virtual {v4, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V
    :try_end_a0
    .catchall {:try_start_87 .. :try_end_a0} :catchall_ba

    .line 480
    :cond_a0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 482
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.lge.mdm.intent.action.USB_FORCE_DISABLE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 484
    iput-boolean v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbPort:Z

    goto :goto_55

    .line 467
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_b5
    move-exception v4

    .line 468
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 467
    throw v4

    .line 479
    :catchall_ba
    move-exception v4

    .line 480
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 479
    throw v4
.end method

.method setEnforceUsbModeAsNone(Landroid/content/ComponentName;ZI)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enforce"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 197
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 199
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceUsbAsNone:Z

    if-ne v1, p2, :cond_15

    .line 200
    const-string/jumbo v1, "UsbController"

    const-string/jumbo v4, "setEnforceUSBModeAsNone : same policy is called"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void

    .line 204
    :cond_15
    if-nez p2, :cond_59

    .line 205
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceUsbAsNone:Z

    if-eqz v1, :cond_53

    .line 206
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceUsbAsNone:Z

    .line 207
    const-string/jumbo v1, "UsbController"

    const-string/jumbo v4, "setEnforceUSBModeAsNone : admin.enforceUSBasNone = false"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0, v5, p3}, Lcom/lge/mdm/controller/LGMDMUsbController;->getEnforceUsbModeAsNone(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_53

    .line 209
    invoke-direct {p0, p1, p3}, Lcom/lge/mdm/controller/LGMDMUsbController;->restoreUsbFunctions(Landroid/content/ComponentName;I)V

    .line 211
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 213
    .local v2, "identity":J
    :try_start_34
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 214
    const-string/jumbo v1, "UsbController"

    const-string/jumbo v4, "USB_FUNCTION_CHARGE_ONLY set"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v1

    .line 216
    const-string/jumbo v4, "charge_only"

    .line 215
    invoke-virtual {v1, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_34 .. :try_end_4d} :catchall_54

    .line 219
    :cond_4d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 221
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->updateUsbState()V

    .line 196
    .end local v2    # "identity":J
    :cond_53
    :goto_53
    return-void

    .line 218
    .restart local v2    # "identity":J
    :catchall_54
    move-exception v1

    .line 219
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 218
    throw v1

    .line 225
    .end local v2    # "identity":J
    :cond_59
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceUsbAsNone:Z

    if-nez v1, :cond_53

    .line 226
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMUsbController;->backupUsbFunctions(Lcom/lge/mdm/admin/LGMDMadminlist;)V

    .line 227
    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMUsbController;->disableADB(Lcom/lge/mdm/admin/LGMDMadminlist;)V

    .line 228
    const-string/jumbo v1, "none"

    invoke-direct {p0, v1}, Lcom/lge/mdm/controller/LGMDMUsbController;->disableUSB(Ljava/lang/String;)V

    .line 229
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceUsbAsNone:Z

    .line 231
    iget-boolean v1, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mUSBCharging:Z

    if-eqz v1, :cond_53

    .line 232
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v1

    .line 233
    sget v4, Lcom/lge/internal/R$string;->sp_lgmdm_usb_none_configuration_NORMAL:I

    .line 232
    invoke-virtual {v1, v4, p3}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    goto :goto_53
.end method

.method public setUsbToChargeMode(Z)V
    .registers 7
    .param p1, "preAdbEnabled"    # Z

    .prologue
    .line 266
    if-eqz p1, :cond_16

    .line 267
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 269
    .local v0, "identity":J
    :try_start_6
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMUsbController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "adb_enabled"

    .line 270
    const/4 v4, 0x1

    .line 269
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_3a

    .line 272
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 275
    .end local v0    # "identity":J
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 277
    .restart local v0    # "identity":J
    :try_start_1a
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 278
    const-string/jumbo v2, "UsbController"

    const-string/jumbo v3, "USB_FUNCTION_CHARGE_ONLY set"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v2

    .line 280
    const-string/jumbo v3, "charge_only"

    .line 279
    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_1a .. :try_end_33} :catchall_3f

    .line 283
    :cond_33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 285
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMUsbController;->updateUsbState()V

    .line 265
    return-void

    .line 271
    :catchall_3a
    move-exception v2

    .line 272
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 271
    throw v2

    .line 282
    :catchall_3f
    move-exception v2

    .line 283
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 282
    throw v2
.end method
