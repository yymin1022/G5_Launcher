.class public Lcom/lge/mdm/controller/LGMDMWifiController;
.super Ljava/lang/Object;
.source "LGMDMWifiController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/controller/LGMDMWifiController$UpdaterRunnable;,
        Lcom/lge/mdm/controller/LGMDMWifiController$GlobalSSIDUpdaterRunnable;,
        Lcom/lge/mdm/controller/LGMDMWifiController$GlobalMacAddressUpdaterRunnable;,
        Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;,
        Lcom/lge/mdm/controller/LGMDMWifiController$1;
    }
.end annotation


# static fields
.field private static synthetic -android_net_IpConfiguration$IpAssignmentSwitchesValues:[I = null

.field private static synthetic -android_net_IpConfiguration$ProxySettingsSwitchesValues:[I = null

.field private static synthetic -com_lge_mdm_config_LGMDMWifiConfiguration$IpAssignmentSwitchesValues:[I = null

.field private static synthetic -com_lge_mdm_config_LGMDMWifiConfiguration$ProxySettingsSwitchesValues:[I = null

.field private static final CORE_POOL_SIZE:I = 0x8

.field private static final ENGINE_ENABLE:Ljava/lang/String; = "1"

.field private static final FORCE_WIFIP2P_DISABLE:Ljava/lang/String; = "force_wifip2p_disable"

.field private static final KEEP_ALIVE_TIME:I = 0x1

.field private static final KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

.field private static final MAXIMUM_POOL_SIZE:I = 0x8

.field private static final MSG_CONFIRM_DISABLE_WIFI:I = 0x2

.field private static final MSG_CONFIRM_ENABLE_WIFI:I = 0x3

.field private static final MSG_DISABLE_WIFI:I = 0x0

.field private static final MSG_DISALBE_MIRACAST:I = 0x5

.field private static final MSG_ENABLE_WIFI:I = 0x1

.field private static final MSG_UPDATE_WIFI_CONFIG:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiController"

.field private static final WFD_REQ_DISABLE:Ljava/lang/String; = "com.lge.systemservice.core.wfdmanager.WFD_DISABLE"

.field private static instance:Lcom/lge/mdm/controller/LGMDMWifiController;


# instance fields
.field private final AUTO_CONNECT_ALLOW:I

.field private final AUTO_CONNECT_DISALLOW:I

.field private final MAX_TIMEOUT:I

.field private final WIFI_PROP_DISABLE_AUTO_CONNECT:Ljava/lang/String;

.field private mActivePossibleManageWiFiProfile:Z

.field mContext:Landroid/content/Context;

.field private mGlobalMacAddressBlackListSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalMacAddressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalMacAddressWhiteListSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalMacAddressWifiListUpdater:Lcom/lge/mdm/controller/LGMDMWifiController$UpdaterRunnable;

.field private mGlobalSSIDBlackListSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalSSIDList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalSSIDWhiteListSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalSSIDWifiListUpdater:Lcom/lge/mdm/controller/LGMDMWifiController$UpdaterRunnable;

.field private mHandler:Landroid/os/Handler;

.field private final mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

.field private mLazyThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field final mService:Ljava/lang/Object;

.field private mSetPolicyLock:Z

.field private mTimeoutWifi:I

.field private final mUserManager:Landroid/os/UserManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2PState:I

.field private final mWifiStateChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/lge/mdm/controller/LGMDMWifiController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/lge/mdm/controller/LGMDMWifiController;)I
    .registers 2

    iget v0, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mWifiP2PState:I

    return v0
.end method

.method private static synthetic -getandroid_net_IpConfiguration$IpAssignmentSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/lge/mdm/controller/LGMDMWifiController;->-android_net_IpConfiguration$IpAssignmentSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/lge/mdm/controller/LGMDMWifiController;->-android_net_IpConfiguration$IpAssignmentSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Landroid/net/IpConfiguration$IpAssignment;->values()[Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lcom/lge/mdm/controller/LGMDMWifiController;->-android_net_IpConfiguration$IpAssignmentSwitchesValues:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method

.method private static synthetic -getandroid_net_IpConfiguration$ProxySettingsSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/lge/mdm/controller/LGMDMWifiController;->-android_net_IpConfiguration$ProxySettingsSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/lge/mdm/controller/LGMDMWifiController;->-android_net_IpConfiguration$ProxySettingsSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Landroid/net/IpConfiguration$ProxySettings;->values()[Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3c

    :goto_17
    :try_start_17
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_3a

    :goto_21
    :try_start_21
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_2a} :catch_38

    :goto_2a
    :try_start_2a
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_33} :catch_36

    :goto_33
    sput-object v0, Lcom/lge/mdm/controller/LGMDMWifiController;->-android_net_IpConfiguration$ProxySettingsSwitchesValues:[I

    return-object v0

    :catch_36
    move-exception v1

    goto :goto_33

    :catch_38
    move-exception v1

    goto :goto_2a

    :catch_3a
    move-exception v1

    goto :goto_21

    :catch_3c
    move-exception v1

    goto :goto_17
.end method

.method private static synthetic -getcom_lge_mdm_config_LGMDMWifiConfiguration$IpAssignmentSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/lge/mdm/controller/LGMDMWifiController;->-com_lge_mdm_config_LGMDMWifiConfiguration$IpAssignmentSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/lge/mdm/controller/LGMDMWifiController;->-com_lge_mdm_config_LGMDMWifiConfiguration$IpAssignmentSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;->values()[Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;->DHCP:Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;->STATIC:Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;->UNASSIGNED:Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lcom/lge/mdm/controller/LGMDMWifiController;->-com_lge_mdm_config_LGMDMWifiConfiguration$IpAssignmentSwitchesValues:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method

.method private static synthetic -getcom_lge_mdm_config_LGMDMWifiConfiguration$ProxySettingsSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/lge/mdm/controller/LGMDMWifiController;->-com_lge_mdm_config_LGMDMWifiConfiguration$ProxySettingsSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/lge/mdm/controller/LGMDMWifiController;->-com_lge_mdm_config_LGMDMWifiConfiguration$ProxySettingsSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;->values()[Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;->NONE:Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;->STATIC:Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;->UNASSIGNED:Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lcom/lge/mdm/controller/LGMDMWifiController;->-com_lge_mdm_config_LGMDMWifiConfiguration$ProxySettingsSwitchesValues:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -set0(Lcom/lge/mdm/controller/LGMDMWifiController;I)I
    .registers 2

    iput p1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mWifiP2PState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/lge/mdm/controller/LGMDMWifiController;I)Z
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->getNeedUpdate(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/lge/mdm/controller/LGMDMWifiController;I)V
    .registers 2
    .param p1, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->updateGlobalMacAddressList(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/lge/mdm/controller/LGMDMWifiController;I)V
    .registers 2
    .param p1, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->updateGlobalSSIDList(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMWifiController;->instance:Lcom/lge/mdm/controller/LGMDMWifiController;

    .line 90
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/lge/mdm/controller/LGMDMWifiController;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 45
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 10
    .param p1, "service"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 52
    iput v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mTimeoutWifi:I

    .line 53
    const/16 v1, 0x2710

    iput v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->MAX_TIMEOUT:I

    .line 56
    iput v4, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->AUTO_CONNECT_ALLOW:I

    .line 57
    const/4 v1, 0x2

    iput v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->AUTO_CONNECT_DISALLOW:I

    .line 58
    const-string/jumbo v1, "wlan.lge.mdm.autoconnectpolicy"

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->WIFI_PROP_DISABLE_AUTO_CONNECT:Ljava/lang/String;

    .line 73
    iput v4, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mWifiP2PState:I

    .line 75
    iput-boolean v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mSetPolicyLock:Z

    .line 77
    iput-boolean v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mActivePossibleManageWiFiProfile:Z

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDList:Ljava/util/List;

    .line 83
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDWhiteListSet:Ljava/util/Set;

    .line 84
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDBlackListSet:Ljava/util/Set;

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressList:Ljava/util/List;

    .line 86
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressWhiteListSet:Ljava/util/Set;

    .line 87
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressBlackListSet:Ljava/util/Set;

    .line 162
    new-instance v1, Lcom/lge/mdm/controller/LGMDMWifiController$1;

    invoke-direct {v1, p0}, Lcom/lge/mdm/controller/LGMDMWifiController$1;-><init>(Lcom/lge/mdm/controller/LGMDMWifiController;)V

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mWifiStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 102
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mContext:Landroid/content/Context;

    .line 103
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mUserManager:Landroid/os/UserManager;

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string/jumbo v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mWifiStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mService:Ljava/lang/Object;

    .line 109
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_8c

    .line 110
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mHandler:Landroid/os/Handler;

    .line 113
    :cond_8c
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 114
    const-wide/16 v4, 0x1

    sget-object v6, Lcom/lge/mdm/controller/LGMDMWifiController;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    .line 113
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLazyThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 115
    new-instance v1, Lcom/lge/mdm/controller/LGMDMWifiController$GlobalSSIDUpdaterRunnable;

    invoke-direct {v1, p0}, Lcom/lge/mdm/controller/LGMDMWifiController$GlobalSSIDUpdaterRunnable;-><init>(Lcom/lge/mdm/controller/LGMDMWifiController;)V

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDWifiListUpdater:Lcom/lge/mdm/controller/LGMDMWifiController$UpdaterRunnable;

    .line 116
    new-instance v1, Lcom/lge/mdm/controller/LGMDMWifiController$GlobalMacAddressUpdaterRunnable;

    invoke-direct {v1, p0}, Lcom/lge/mdm/controller/LGMDMWifiController$GlobalMacAddressUpdaterRunnable;-><init>(Lcom/lge/mdm/controller/LGMDMWifiController;)V

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressWifiListUpdater:Lcom/lge/mdm/controller/LGMDMWifiController$UpdaterRunnable;

    .line 100
    return-void
.end method

.method private LGMDMWifiConfigurationToWifiConfiguration(Lcom/lge/mdm/config/LGMDMWifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .registers 5
    .param p1, "LGMDMConfig"    # Lcom/lge/mdm/config/LGMDMWifiConfiguration;

    .prologue
    .line 545
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 546
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getEapMethod()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    .line 547
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getEapMethod()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 549
    :cond_15
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getPhase2Method()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 550
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 551
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 552
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 553
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getCaCert()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 554
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getClientCert()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 555
    iget v1, p1, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->networkId:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 556
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 557
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 558
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 559
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->wepKeys:[Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 560
    iget v1, p1, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->wepTxKeyIndex:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 561
    iget v1, p1, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->priority:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 562
    iget-boolean v1, p1, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->hiddenSSID:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 563
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 564
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 565
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 566
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 567
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 568
    iget-object v1, p1, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 570
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMWifiController;->-getcom_lge_mdm_config_LGMDMWifiConfiguration$ProxySettingsSwitchesValues()[I

    move-result-object v1

    iget-object v2, p1, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->proxySettings:Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    invoke-virtual {v2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_d8

    .line 584
    :goto_92
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMWifiController;->-getcom_lge_mdm_config_LGMDMWifiConfiguration$IpAssignmentSwitchesValues()[I

    move-result-object v1

    iget-object v2, p1, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->ipAssignment:Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    invoke-virtual {v2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_e2

    .line 599
    :goto_a1
    return-object v0

    .line 572
    :pswitch_a2
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    goto :goto_92

    .line 575
    :pswitch_a8
    const-string/jumbo v1, "WifiController"

    const-string/jumbo v2, "ProxySettings selected STATIC"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    goto :goto_92

    .line 579
    :pswitch_b7
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    goto :goto_92

    .line 586
    :pswitch_bd
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    goto :goto_a1

    .line 589
    :pswitch_c3
    const-string/jumbo v1, "WifiController"

    const-string/jumbo v2, "IpAssignment selected STATIC"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    goto :goto_a1

    .line 593
    :pswitch_d2
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    goto :goto_a1

    .line 570
    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_a2
        :pswitch_a8
        :pswitch_b7
    .end packed-switch

    .line 584
    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_bd
        :pswitch_c3
        :pswitch_d2
    .end packed-switch
.end method

.method private WifiConfigurationToLGMDMWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Lcom/lge/mdm/config/LGMDMWifiConfiguration;
    .registers 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 479
    new-instance v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;

    invoke-direct {v0}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;-><init>()V

    .line 480
    .local v0, "LGMDMConfig":Lcom/lge/mdm/config/LGMDMWifiConfiguration;
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    .line 481
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->setEapMethod(I)V

    .line 483
    :cond_17
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->setPhase2Method(I)V

    .line 484
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->setIdentity(Ljava/lang/String;)V

    .line 485
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 486
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->setPassword(Ljava/lang/String;)V

    .line 487
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->setCaCert(Ljava/lang/String;)V

    .line 488
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "clientCert":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->setClientCert(Ljava/lang/String;)V

    .line 490
    if-eqz v1, :cond_5e

    .line 491
    invoke-virtual {v0, v1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->setKeyId(Ljava/lang/String;)V

    .line 492
    const-string/jumbo v2, "keystore"

    invoke-virtual {v0, v2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->setEngineId(Ljava/lang/String;)V

    .line 493
    const-string/jumbo v2, "1"

    invoke-virtual {v0, v2}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->setEngine(Ljava/lang/String;)V

    .line 496
    :cond_5e
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->networkId:I

    .line 497
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->SSID:Ljava/lang/String;

    .line 498
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->BSSID:Ljava/lang/String;

    .line 499
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 500
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 501
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iput v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->wepTxKeyIndex:I

    .line 502
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->priority:I

    .line 503
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->hiddenSSID:Z

    .line 504
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 505
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 506
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 507
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 508
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 509
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 511
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMWifiController;->-getandroid_net_IpConfiguration$ProxySettingsSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_ea

    .line 525
    :goto_a7
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMWifiController;->-getandroid_net_IpConfiguration$IpAssignmentSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_f4

    .line 540
    :goto_b8
    return-object v0

    .line 513
    :pswitch_b9
    sget-object v2, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;->NONE:Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->proxySettings:Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    goto :goto_a7

    .line 516
    :pswitch_be
    const-string/jumbo v2, "WifiController"

    const-string/jumbo v3, "ProxySettings selected STATIC"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    sget-object v2, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;->STATIC:Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->proxySettings:Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    goto :goto_a7

    .line 520
    :pswitch_cc
    sget-object v2, Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;->UNASSIGNED:Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->proxySettings:Lcom/lge/mdm/config/LGMDMWifiConfiguration$ProxySettings;

    goto :goto_a7

    .line 527
    :pswitch_d1
    sget-object v2, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;->DHCP:Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->ipAssignment:Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    goto :goto_b8

    .line 530
    :pswitch_d6
    const-string/jumbo v2, "WifiController"

    const-string/jumbo v3, "IpAssignment selected STATIC"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    sget-object v2, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;->STATIC:Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->ipAssignment:Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    goto :goto_b8

    .line 534
    :pswitch_e4
    sget-object v2, Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;->UNASSIGNED:Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    iput-object v2, v0, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->ipAssignment:Lcom/lge/mdm/config/LGMDMWifiConfiguration$IpAssignment;

    goto :goto_b8

    .line 511
    nop

    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_b9
        :pswitch_be
        :pswitch_cc
    .end packed-switch

    .line 525
    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_d1
        :pswitch_d6
        :pswitch_e4
    .end packed-switch
.end method

.method private getGlobalMacAddressListType(I)I
    .registers 9
    .param p1, "userHandle"    # I

    .prologue
    const/4 v6, 0x2

    .line 1404
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1405
    .local v2, "admins":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    const/4 v3, 0x0

    .line 1406
    .local v3, "retType":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 1407
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslistType:I

    if-ne v4, v6, :cond_1d

    .line 1408
    return v6

    .line 1409
    :cond_1d
    iget v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslistType:I

    .line 1410
    const/4 v5, 0x1

    .line 1409
    if-ne v4, v5, :cond_c

    .line 1411
    const/4 v3, 0x1

    goto :goto_c

    .line 1414
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_24
    return v3
.end method

.method private getGlobalSSIDListType(I)I
    .registers 9
    .param p1, "userHandle"    # I

    .prologue
    const/4 v6, 0x2

    .line 908
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 909
    .local v2, "admins":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    const/4 v3, 0x0

    .line 910
    .local v3, "retType":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 911
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlistType:I

    if-ne v4, v6, :cond_1d

    .line 912
    return v6

    .line 913
    :cond_1d
    iget v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlistType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    .line 914
    const/4 v3, 0x1

    goto :goto_c

    .line 917
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_24
    return v3
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMWifiController;
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 128
    sget-object v0, Lcom/lge/mdm/controller/LGMDMWifiController;->instance:Lcom/lge/mdm/controller/LGMDMWifiController;

    if-nez v0, :cond_c

    .line 129
    new-instance v0, Lcom/lge/mdm/controller/LGMDMWifiController;

    invoke-direct {v0, v1}, Lcom/lge/mdm/controller/LGMDMWifiController;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMWifiController;->instance:Lcom/lge/mdm/controller/LGMDMWifiController;

    .line 132
    :cond_c
    sget-object v0, Lcom/lge/mdm/controller/LGMDMWifiController;->instance:Lcom/lge/mdm/controller/LGMDMWifiController;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/lge/mdm/controller/LGMDMWifiController;
    .registers 2
    .param p0, "service"    # Ljava/lang/Object;

    .prologue
    .line 120
    sget-object v0, Lcom/lge/mdm/controller/LGMDMWifiController;->instance:Lcom/lge/mdm/controller/LGMDMWifiController;

    if-nez v0, :cond_b

    .line 121
    new-instance v0, Lcom/lge/mdm/controller/LGMDMWifiController;

    invoke-direct {v0, p0}, Lcom/lge/mdm/controller/LGMDMWifiController;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMWifiController;->instance:Lcom/lge/mdm/controller/LGMDMWifiController;

    .line 124
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMWifiController;->instance:Lcom/lge/mdm/controller/LGMDMWifiController;

    return-object v0
.end method

.method private getNeedUpdate(I)Z
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getWifiNeedUpdate(I)Z

    move-result v0

    return v0
.end method

.method private getWiFiSecurityType(Landroid/net/wifi/WifiConfiguration;)I
    .registers 8
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1098
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMWifiController;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    .line 1099
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_14

    .line 1100
    const-string/jumbo v1, "WifiController"

    const-string/jumbo v2, "getWiFiSecurityType : WifiManager is null"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    return v3

    .line 1104
    :cond_14
    if-nez p1, :cond_17

    .line 1105
    return v3

    .line 1107
    :cond_17
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1108
    return v4

    .line 1110
    :cond_20
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_30

    .line 1111
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    .line 1110
    if-eqz v1, :cond_31

    .line 1112
    :cond_30
    return v5

    .line 1114
    :cond_31
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v3

    if-eqz v1, :cond_38

    .line 1115
    return v2

    .line 1118
    :cond_38
    return v3
.end method

.method private getWiFiSecurityTypeForConfig(Landroid/net/wifi/WifiConfiguration;)I
    .registers 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 807
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 808
    return v3

    .line 810
    :cond_d
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 811
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    .line 810
    if-eqz v2, :cond_1e

    .line 812
    :cond_1d
    return v4

    .line 814
    :cond_1e
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_25

    :goto_24
    return v0

    :cond_25
    move v0, v1

    .line 815
    goto :goto_24
.end method

.method private getWifiManager()Landroid/net/wifi/WifiManager;
    .registers 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_11

    .line 203
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 205
    :cond_11
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private isWifiEnabled()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1283
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMWifiController;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v3

    .line 1284
    .local v3, "wm":Landroid/net/wifi/WifiManager;
    if-nez v3, :cond_11

    .line 1285
    const-string/jumbo v4, "WifiController"

    const-string/jumbo v5, "setWifiEnable : wifiManager == null"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    return v6

    .line 1289
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1291
    .local v0, "identity":J
    :try_start_15
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_28

    move-result v2

    .line 1292
    .local v2, "wifiState":I
    const/4 v4, 0x3

    if-eq v2, v4, :cond_1f

    .line 1293
    const/4 v4, 0x2

    if-ne v2, v4, :cond_24

    .line 1294
    :cond_1f
    const/4 v4, 0x1

    .line 1298
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1294
    return v4

    .line 1298
    :cond_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1296
    return v6

    .line 1297
    .end local v2    # "wifiState":I
    :catchall_28
    move-exception v4

    .line 1298
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1297
    throw v4
.end method

.method private sendIntentError(Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;)V
    .registers 8
    .param p1, "backupInfo"    # Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;

    .prologue
    .line 461
    const-string/jumbo v2, "WifiController"

    const-string/jumbo v3, "sendIntentError"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_e

    .line 464
    iget-object v0, p1, Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;->admin:Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 466
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_e
    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    .line 467
    iget-object v3, p1, Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;->sync:Ljava/lang/Object;

    monitor-enter v3

    .line 468
    :try_start_15
    iget-boolean v2, p1, Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;->backupPolicy:Z

    iput-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifi:Z

    .line 469
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    const-string/jumbo v4, "lgmdm_hardware_policies.xml"

    .line 470
    iget v5, p1, Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;->userHandle:I

    .line 469
    invoke-virtual {v2, v4, v5}, Lcom/lge/mdm/admin/LGMDMadministrator;->saveSettingsLocked(Ljava/lang/String;I)V
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_34

    monitor-exit v3

    .line 473
    :cond_24
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.lge.mdm.intent.action.WIFI_SET_FAILURE_RESULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 460
    return-void

    .line 467
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_34
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private setNeedUpdate(ZI)V
    .registers 6
    .param p1, "need"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 197
    const-string/jumbo v0, "WifiController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNeedUpdate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", userHandle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->setWifiNeedUpdate(ZI)V

    .line 196
    return-void
.end method

.method private setWifiEnable(ZLcom/lge/mdm/admin/LGMDMadminlist;Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;)V
    .registers 15
    .param p1, "enable"    # Z
    .param p2, "admin"    # Lcom/lge/mdm/admin/LGMDMadminlist;
    .param p3, "backupInfo"    # Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;

    .prologue
    const/4 v10, 0x1

    .line 257
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMWifiController;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v6

    .line 258
    .local v6, "wm":Landroid/net/wifi/WifiManager;
    if-nez v6, :cond_11

    .line 259
    const-string/jumbo v7, "WifiController"

    const-string/jumbo v8, "setWifiEnable : wifiManager == null"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void

    .line 263
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 265
    .local v0, "identity":J
    :try_start_15
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    .line 267
    .local v5, "wifiState":I
    if-eqz p1, :cond_6e

    .line 269
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApState()I
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_65

    move-result v4

    .line 270
    .local v4, "wifiApState":I
    const/16 v7, 0xc

    if-eq v4, v7, :cond_27

    .line 271
    const/16 v7, 0xd

    if-ne v4, v7, :cond_2e

    .line 273
    :cond_27
    :try_start_27
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_2e
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_2e} :catch_45
    .catchall {:try_start_27 .. :try_end_2e} :catchall_65

    .line 279
    :cond_2e
    :goto_2e
    if-eqz v5, :cond_32

    .line 280
    if-ne v5, v10, :cond_6a

    .line 282
    :cond_32
    :goto_32
    const/4 v7, 0x1

    :try_start_33
    iput-boolean v7, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mSetPolicyLock:Z

    .line 284
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 285
    .local v2, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_41
    .catchall {:try_start_33 .. :try_end_41} :catchall_65

    .line 305
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "wifiApState":I
    :cond_41
    :goto_41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 256
    return-void

    .line 274
    .restart local v4    # "wifiApState":I
    :catch_45
    move-exception v3

    .line 275
    .local v3, "se":Ljava/lang/SecurityException;
    :try_start_46
    const-string/jumbo v7, "WifiController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setWifiEnable : SecurityException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_46 .. :try_end_64} :catchall_65

    goto :goto_2e

    .line 304
    .end local v3    # "se":Ljava/lang/SecurityException;
    .end local v4    # "wifiApState":I
    .end local v5    # "wifiState":I
    :catchall_65
    move-exception v7

    .line 305
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 304
    throw v7

    .line 281
    .restart local v4    # "wifiApState":I
    .restart local v5    # "wifiState":I
    :cond_6a
    const/4 v7, 0x4

    if-ne v5, v7, :cond_41

    goto :goto_32

    .line 288
    .end local v4    # "wifiApState":I
    :cond_6e
    const/4 v7, 0x2

    if-eq v5, v7, :cond_74

    .line 289
    const/4 v7, 0x3

    if-ne v5, v7, :cond_89

    .line 290
    :cond_74
    const/4 v5, 0x3

    .line 291
    const/4 v5, 0x1

    .line 292
    const/4 v7, 0x1

    :try_start_77
    iput-boolean v7, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mSetPolicyLock:Z

    .line 294
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 295
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 296
    const/4 v7, 0x1

    iput-boolean v7, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateWifi:Z

    goto :goto_41

    .line 298
    .end local v2    # "msg":Landroid/os/Message;
    :cond_89
    const-string/jumbo v7, "WifiController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setWifiEnable : no work. wifi state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v7, 0x0

    iput-boolean v7, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateWifi:Z

    .line 301
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mSetPolicyLock:Z
    :try_end_a9
    .catchall {:try_start_77 .. :try_end_a9} :catchall_65

    goto :goto_41
.end method

.method private updateConfiguredNetworks(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 769
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->getWiFiSecurityLevel(Landroid/content/ComponentName;I)I

    move-result v0

    .line 770
    .local v0, "policy":I
    invoke-virtual {p0, v0, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->updateConfiguredNetworks(II)V

    .line 768
    return-void
.end method

.method private updateGlobalMacAddressBlackList(I)V
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    .line 1460
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressBlackListSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1462
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1464
    .local v2, "admins":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 1465
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslistType:I

    .line 1466
    const/4 v4, 0x1

    .line 1465
    if-ne v3, v4, :cond_f

    .line 1467
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressBlackListSet:Ljava/util/Set;

    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslist:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    .line 1470
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_28
    const-string/jumbo v3, "WifiController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Global MAC blacklist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressBlackListSet:Ljava/util/Set;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    return-void
.end method

.method private updateGlobalMacAddressList(I)V
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    .line 1479
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    if-nez v1, :cond_5

    .line 1480
    return-void

    .line 1483
    :cond_5
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->getGlobalMacAddressListType(I)I

    move-result v0

    .line 1484
    .local v0, "listType":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4d

    .line 1485
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->updateGlobalMacAddressWhiteList(I)V

    .line 1486
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->updateGlobalMacAddressBlackList(I)V

    .line 1488
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressList:Ljava/util/List;

    monitor-enter v2

    .line 1489
    :try_start_15
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1490
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressList:Ljava/util/List;

    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressWhiteListSet:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1492
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressList:Ljava/util/List;

    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressBlackListSet:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_4a

    monitor-exit v2

    .line 1494
    const-string/jumbo v1, "WifiController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Global MAC whitelist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressList:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    :goto_49
    return-void

    .line 1488
    :catchall_4a
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1495
    :cond_4d
    const/4 v1, 0x1

    if-ne v0, v1, :cond_87

    .line 1496
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->updateGlobalMacAddressBlackList(I)V

    .line 1498
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressList:Ljava/util/List;

    monitor-enter v2

    .line 1499
    :try_start_56
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1500
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressList:Ljava/util/List;

    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressBlackListSet:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_62
    .catchall {:try_start_56 .. :try_end_62} :catchall_84

    monitor-exit v2

    .line 1502
    const-string/jumbo v1, "WifiController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Global MAC blacklist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressList:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    .line 1498
    :catchall_84
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1504
    :cond_87
    const-string/jumbo v1, "WifiController"

    const-string/jumbo v2, "Global MAC list is empty"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressList:Ljava/util/List;

    monitor-enter v2

    .line 1506
    :try_start_93
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_98
    .catchall {:try_start_93 .. :try_end_98} :catchall_9a

    monitor-exit v2

    goto :goto_49

    .line 1505
    :catchall_9a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private updateGlobalMacAddressWhiteList(I)V
    .registers 9
    .param p1, "userHandle"    # I

    .prologue
    const/4 v6, 0x2

    .line 1433
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressWhiteListSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1437
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1438
    .local v2, "admins":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 1439
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslistType:I

    if-ne v3, v6, :cond_10

    .line 1441
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressWhiteListSet:Ljava/util/Set;

    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslist:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1446
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_27
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 1447
    .restart local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslistType:I

    if-ne v3, v6, :cond_2b

    .line 1449
    const-string/jumbo v3, "WifiController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "an admin MAC whitelist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslist:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressWhiteListSet:Ljava/util/Set;

    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslist:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    goto :goto_2b

    .line 1432
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_63
    return-void
.end method

.method private updateGlobalSSIDBlackList(I)V
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    .line 1163
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDBlackListSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1165
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1167
    .local v2, "admins":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 1168
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlistType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    .line 1169
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDBlackListSet:Ljava/util/Set;

    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlist:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    .line 1172
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_28
    const-string/jumbo v3, "WifiController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Global blacklist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDBlackListSet:Ljava/util/Set;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    return-void
.end method

.method private updateGlobalSSIDList(I)V
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    .line 1181
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    if-nez v1, :cond_5

    .line 1182
    return-void

    .line 1185
    :cond_5
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->getGlobalSSIDListType(I)I

    move-result v0

    .line 1186
    .local v0, "listType":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4d

    .line 1187
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->updateGlobalSSIDWhiteList(I)V

    .line 1188
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->updateGlobalSSIDBlackList(I)V

    .line 1190
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDList:Ljava/util/List;

    monitor-enter v2

    .line 1191
    :try_start_15
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1192
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDList:Ljava/util/List;

    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDWhiteListSet:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1194
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDList:Ljava/util/List;

    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDBlackListSet:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_4a

    monitor-exit v2

    .line 1196
    const-string/jumbo v1, "WifiController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Global SSID whitelist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDList:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    :goto_49
    return-void

    .line 1190
    :catchall_4a
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1197
    :cond_4d
    const/4 v1, 0x1

    if-ne v0, v1, :cond_87

    .line 1198
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->updateGlobalSSIDBlackList(I)V

    .line 1200
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDList:Ljava/util/List;

    monitor-enter v2

    .line 1201
    :try_start_56
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1202
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDList:Ljava/util/List;

    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDBlackListSet:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_62
    .catchall {:try_start_56 .. :try_end_62} :catchall_84

    monitor-exit v2

    .line 1204
    const-string/jumbo v1, "WifiController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Global SSID blacklist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDList:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    .line 1200
    :catchall_84
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1206
    :cond_87
    const-string/jumbo v1, "WifiController"

    const-string/jumbo v2, "Global SSID list is empty"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDList:Ljava/util/List;

    monitor-enter v2

    .line 1208
    :try_start_93
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_98
    .catchall {:try_start_93 .. :try_end_98} :catchall_9a

    monitor-exit v2

    goto :goto_49

    .line 1207
    :catchall_9a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private updateGlobalSSIDWhiteList(I)V
    .registers 9
    .param p1, "userHandle"    # I

    .prologue
    const/4 v6, 0x2

    .line 1138
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDWhiteListSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1142
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1143
    .local v2, "admins":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 1144
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlistType:I

    if-ne v3, v6, :cond_10

    .line 1145
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDWhiteListSet:Ljava/util/Set;

    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlist:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1150
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_27
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 1151
    .restart local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlistType:I

    if-ne v3, v6, :cond_2b

    .line 1152
    const-string/jumbo v3, "WifiController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "an admin SSID whitelist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlist:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDWhiteListSet:Ljava/util/Set;

    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlist:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    goto :goto_2b

    .line 1137
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_63
    return-void
.end method

.method private validateSSIDString(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 973
    .local p1, "ssidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 974
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_8

    .line 975
    return-object v0

    .line 978
    :cond_8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ssid$iterator":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 979
    .local v1, "ssid":Ljava/lang/String;
    const-string/jumbo v3, "WifiController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "validateSSIDString: oldList :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const-string/jumbo v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_62

    const-string/jumbo v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 981
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 986
    :goto_47
    const-string/jumbo v3, "WifiController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "validateSSIDString: newList :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 983
    :cond_62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 984
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 988
    .end local v1    # "ssid":Ljava/lang/String;
    :cond_81
    return-object v0
.end method


# virtual methods
.method public addNetwork(Lcom/lge/mdm/config/LGMDMWifiConfiguration;I)I
    .registers 8
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMWifiConfiguration;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, -0x1

    .line 621
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v3, "no_config_wifi"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 622
    const-string/jumbo v2, "WifiController"

    const-string/jumbo v3, "Disallow Configuration Wifi by AFW"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    return v4

    .line 625
    :cond_16
    const/4 v0, -0x1

    .line 626
    .local v0, "ret":I
    if-nez p1, :cond_23

    .line 627
    const-string/jumbo v2, "WifiController"

    const-string/jumbo v3, "LGMDMWifiConfiguration is null"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    return v4

    .line 631
    :cond_23
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->LGMDMWifiConfigurationToWifiConfiguration(Lcom/lge/mdm/config/LGMDMWifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 632
    .local v1, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    const-string/jumbo v2, "WifiController"

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mActivePossibleManageWiFiProfile:Z

    .line 634
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMWifiController;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 635
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mActivePossibleManageWiFiProfile:Z

    .line 636
    return v0
.end method

.method public disableMiracast()V
    .registers 6

    .prologue
    .line 322
    const-string/jumbo v3, "WifiController"

    const-string/jumbo v4, "disableMiracast "

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMWifiController;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v2

    .line 324
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    if-nez v2, :cond_19

    .line 325
    const-string/jumbo v3, "WifiController"

    const-string/jumbo v4, "setWifiEnable : wifiManager == null"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void

    .line 329
    :cond_19
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 331
    .local v1, "wifiState":I
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2f

    .line 332
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.lge.systemservice.core.wfdmanager.WFD_DISABLE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v0, "disableIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 321
    .end local v0    # "disableIntent":Landroid/content/Intent;
    :cond_2f
    return-void
.end method

.method public disableNetwork(II)Z
    .registers 4
    .param p1, "netId"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMWifiController;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    move-result v0

    return v0
.end method

.method public disconnect(I)Z
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMWifiController;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    move-result v0

    return v0
.end method

.method public enableNetwork(IZI)Z
    .registers 5
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 688
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMWifiController;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    return v0
.end method

.method public enableWifiP2p(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 310
    if-eqz p1, :cond_12

    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMWifiController;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_12

    .line 312
    const-string/jumbo v1, "WifiController"

    const-string/jumbo v2, "enableWifiP2p : return because wifi is off"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-void

    .line 315
    :cond_12
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.lge.mdm.intent.action.WIFIP2P_FORCE_DISABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, "disableIntent":Landroid/content/Intent;
    const-string/jumbo v2, "force_wifip2p_disable"

    if-eqz p1, :cond_2b

    const/4 v1, 0x0

    :goto_20
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 317
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 309
    return-void

    .line 316
    :cond_2b
    const/4 v1, 0x1

    goto :goto_20
.end method

.method protected getAllowDLNADiscovery(Landroid/content/ComponentName;I)Z
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 1648
    const/4 v0, 0x0

    .line 1649
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_29

    .line 1650
    const-string/jumbo v5, "WifiController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "who != null = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1652
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_28

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDLNADiscovery:Z

    :cond_28
    return v4

    .line 1654
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_29
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1655
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 1656
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    const-string/jumbo v5, "WifiController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAllowDLNA : admin.allowDLNA = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDLNADiscovery:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDLNADiscovery:Z

    if-nez v5, :cond_33

    .line 1658
    const-string/jumbo v4, "WifiController"

    const-string/jumbo v5, "getAllowDLNA : return false!!"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    const/4 v4, 0x0

    return v4

    .line 1662
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_6a
    const-string/jumbo v5, "WifiController"

    const-string/jumbo v6, "getAllowDLNA : return true!!"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    return v4
.end method

.method protected getAllowMiracast(Landroid/content/ComponentName;I)Z
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 753
    const/4 v0, 0x0

    .line 754
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_29

    .line 755
    const-string/jumbo v5, "WifiController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "who != null = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 757
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_28

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMiracast:Z

    :cond_28
    return v4

    .line 759
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_29
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 760
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 761
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMiracast:Z

    if-nez v5, :cond_33

    .line 762
    const/4 v4, 0x0

    return v4

    .line 765
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_45
    return v4
.end method

.method protected getAllowWiFiMacAddressList(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1385
    const/4 v0, 0x0

    .line 1386
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1387
    .local v2, "retList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_18

    .line 1388
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1389
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_17

    iget-object v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslist:Ljava/util/List;

    if-eqz v3, :cond_17

    .line 1390
    iget-object v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslist:Ljava/util/List;

    return-object v3

    .line 1392
    :cond_17
    return-object v2

    .line 1395
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_18
    const/4 v1, 0x0

    .line 1396
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressList:Ljava/util/List;

    monitor-enter v4

    .line 1397
    :try_start_1c
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressList:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_25

    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit v4

    .line 1399
    return-object v1

    .line 1396
    .end local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_25
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method protected getAllowWiFiMacAddressListType(Landroid/content/ComponentName;I)I
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1418
    const/4 v0, 0x0

    .line 1419
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_10

    .line 1420
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1421
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslistType:I

    :goto_d
    return v1

    .line 1422
    :cond_e
    const/4 v1, 0x0

    goto :goto_d

    .line 1425
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_10
    invoke-direct {p0, p2}, Lcom/lge/mdm/controller/LGMDMWifiController;->getGlobalMacAddressListType(I)I

    move-result v1

    return v1
.end method

.method protected getAllowWiFiProfileManagement(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 1224
    const/4 v0, 0x0

    .line 1225
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 1226
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1227
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWiFiProfileManagement:Z

    :cond_e
    return v4

    .line 1229
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1230
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

    .line 1231
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWiFiProfileManagement:Z

    if-nez v5, :cond_19

    .line 1232
    const/4 v4, 0x0

    return v4

    .line 1235
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowWiFiSSIDList(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 878
    const/4 v0, 0x0

    .line 879
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 880
    .local v2, "retSSIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_18

    .line 881
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 882
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_17

    iget-object v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlist:Ljava/util/List;

    if-eqz v3, :cond_17

    .line 883
    iget-object v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlist:Ljava/util/List;

    return-object v3

    .line 885
    :cond_17
    return-object v2

    .line 888
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_18
    const/4 v1, 0x0

    .line 889
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDList:Ljava/util/List;

    monitor-enter v4

    .line 890
    :try_start_1c
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDList:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_25

    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit v4

    .line 892
    return-object v1

    .line 889
    .end local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_25
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method protected getAllowWiFiSSIDListType(Landroid/content/ComponentName;I)I
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 896
    const/4 v0, 0x0

    .line 897
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_10

    .line 898
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 899
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlistType:I

    :goto_d
    return v1

    .line 900
    :cond_e
    const/4 v1, 0x0

    goto :goto_d

    .line 903
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_10
    invoke-direct {p0, p2}, Lcom/lge/mdm/controller/LGMDMWifiController;->getGlobalSSIDListType(I)I

    move-result v1

    return v1
.end method

.method protected getAllowWifi(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 211
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 212
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifi:Z

    :cond_e
    return v4

    .line 214
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 215
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

    .line 216
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifi:Z

    if-nez v5, :cond_19

    .line 217
    const/4 v4, 0x0

    return v4

    .line 220
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowWifiAutoConnection(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 1576
    const/4 v0, 0x0

    .line 1577
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 1578
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1579
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiAutoConnect:Z

    :cond_e
    return v4

    .line 1581
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1582
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

    .line 1583
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiAutoConnect:Z

    if-nez v5, :cond_19

    .line 1584
    const/4 v4, 0x0

    return v4

    .line 1587
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowWifiDirect(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 1244
    const/4 v0, 0x0

    .line 1245
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 1246
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1247
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiDirect:Z

    :cond_e
    return v4

    .line 1249
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1250
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

    .line 1251
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiDirect:Z

    if-nez v5, :cond_19

    .line 1252
    const/4 v4, 0x0

    return v4

    .line 1255
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowWifiScan(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 1305
    const/4 v0, 0x0

    .line 1306
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 1307
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1308
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiScan:Z

    :cond_e
    return v4

    .line 1310
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1311
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

    .line 1312
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiScan:Z

    if-nez v5, :cond_19

    .line 1313
    const/4 v4, 0x0

    return v4

    .line 1316
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method public getConfiguredNetworks(I)Ljava/util/List;
    .registers 10
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMWifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 603
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 605
    .local v2, "identity":J
    :try_start_4
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMWifiController;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    .line 606
    .local v6, "wifiConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v1, "LGMDMWifiConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMWifiConfiguration;>;"
    if-eqz v6, :cond_30

    .line 609
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "wifiConfig$iterator":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_30

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 610
    .local v4, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v4}, Lcom/lge/mdm/controller/LGMDMWifiController;->WifiConfigurationToLGMDMWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Lcom/lge/mdm/config/LGMDMWifiConfiguration;

    move-result-object v0

    .line 611
    .local v0, "LGMDMWifiConfig":Lcom/lge/mdm/config/LGMDMWifiConfiguration;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_2b

    goto :goto_17

    .line 615
    .end local v0    # "LGMDMWifiConfig":Lcom/lge/mdm/config/LGMDMWifiConfiguration;
    .end local v1    # "LGMDMWifiConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMWifiConfiguration;>;"
    .end local v4    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "wifiConfig$iterator":Ljava/util/Iterator;
    .end local v6    # "wifiConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :catchall_2b
    move-exception v7

    .line 616
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 615
    throw v7

    .line 616
    .restart local v1    # "LGMDMWifiConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMWifiConfiguration;>;"
    .restart local v6    # "wifiConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 614
    return-object v1
.end method

.method protected getDisallowWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 15
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 1038
    const-string/jumbo v8, "WifiController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getDisallowWifiConnection : ssid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " bssid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    const/4 v8, 0x0

    invoke-virtual {p0, v8, p3}, Lcom/lge/mdm/controller/LGMDMWifiController;->getAllowWiFiSSIDListType(Landroid/content/ComponentName;I)I

    move-result v5

    .line 1041
    .local v5, "ssidListType":I
    if-eqz p1, :cond_ac

    if-eqz v5, :cond_ac

    .line 1042
    const/4 v8, 0x0

    invoke-virtual {p0, v8, p3}, Lcom/lge/mdm/controller/LGMDMWifiController;->getAllowWiFiSSIDList(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v4

    .line 1043
    .local v4, "ssidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/lge/mdm/util/MDMLog;->getDebugmode()Z

    move-result v8

    if-eqz v8, :cond_72

    .line 1044
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "ssids$iterator":Ljava/util/Iterator;
    :goto_4b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_72

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1045
    .local v6, "ssids":Ljava/lang/String;
    const-string/jumbo v8, "WifiController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ssidList : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 1048
    .end local v6    # "ssids":Ljava/lang/String;
    .end local v7    # "ssids$iterator":Ljava/util/Iterator;
    :cond_72
    const/4 v8, 0x2

    if-ne v5, v8, :cond_8f

    .line 1049
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ac

    .line 1050
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v8

    .line 1051
    sget v9, Lcom/lge/internal/R$string;->sp_lgmdm_block_wifi_connect_NORMAL:I

    .line 1050
    invoke-virtual {v8, v9, p3}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    .line 1053
    const-string/jumbo v8, "WifiController"

    const-string/jumbo v9, "getDisallowWifiConnection  : whitelist disallow"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    const/4 v8, 0x1

    return v8

    .line 1056
    :cond_8f
    const/4 v8, 0x1

    if-ne v5, v8, :cond_ac

    .line 1057
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ac

    .line 1058
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v8

    .line 1059
    sget v9, Lcom/lge/internal/R$string;->sp_lgmdm_block_wifi_connect_NORMAL:I

    .line 1058
    invoke-virtual {v8, v9, p3}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    .line 1061
    const-string/jumbo v8, "WifiController"

    const-string/jumbo v9, "getDisallowWifiConnection  : blacklist disallow"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    const/4 v8, 0x1

    return v8

    .line 1068
    .end local v4    # "ssidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ac
    const/4 v8, 0x0

    invoke-virtual {p0, v8, p3}, Lcom/lge/mdm/controller/LGMDMWifiController;->getAllowWiFiMacAddressListType(Landroid/content/ComponentName;I)I

    move-result v1

    .line 1069
    .local v1, "bssidListType":I
    if-eqz p2, :cond_12c

    if-eqz v1, :cond_12c

    .line 1070
    const/4 v8, 0x0

    invoke-virtual {p0, v8, p3}, Lcom/lge/mdm/controller/LGMDMWifiController;->getAllowWiFiMacAddressList(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    .line 1071
    .local v0, "bssidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/lge/mdm/util/MDMLog;->getDebugmode()Z

    move-result v8

    if-eqz v8, :cond_f2

    .line 1072
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "bssids$iterator":Ljava/util/Iterator;
    :goto_c4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1073
    .local v2, "bssids":Ljava/lang/String;
    const-string/jumbo v8, "WifiController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "bssidList : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c4

    .line 1076
    .end local v2    # "bssids":Ljava/lang/String;
    .end local v3    # "bssids$iterator":Ljava/util/Iterator;
    :cond_f2
    const/4 v8, 0x2

    if-ne v1, v8, :cond_10f

    .line 1077
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12c

    .line 1078
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v8

    .line 1079
    sget v9, Lcom/lge/internal/R$string;->sp_lgmdm_block_wifi_connect_NORMAL:I

    .line 1078
    invoke-virtual {v8, v9, p3}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    .line 1081
    const-string/jumbo v8, "WifiController"

    const-string/jumbo v9, "getDisallowWifiConnection  : whitelist disallow"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    const/4 v8, 0x1

    return v8

    .line 1084
    :cond_10f
    const/4 v8, 0x1

    if-ne v1, v8, :cond_12c

    .line 1085
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12c

    .line 1086
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v8

    .line 1087
    sget v9, Lcom/lge/internal/R$string;->sp_lgmdm_block_wifi_connect_NORMAL:I

    .line 1086
    invoke-virtual {v8, v9, p3}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    .line 1089
    const-string/jumbo v8, "WifiController"

    const-string/jumbo v9, "getDisallowWifiConnection  : blacklist disallow"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    const/4 v8, 0x1

    return v8

    .line 1094
    .end local v0    # "bssidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_12c
    const/4 v8, 0x0

    return v8
.end method

.method protected getDisallowWifiSecurityLevel(Landroid/net/wifi/WifiConfiguration;II)Z
    .registers 16
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "netID"    # I
    .param p3, "userHandle"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 993
    if-nez p1, :cond_11

    const/4 v8, -0x1

    if-ne p2, v8, :cond_11

    .line 994
    const-string/jumbo v8, "WifiController"

    const-string/jumbo v9, "getDisallowWifiSecurityLevel : bad param"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    return v11

    .line 998
    :cond_11
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMWifiController;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v7

    .line 999
    .local v7, "wm":Landroid/net/wifi/WifiManager;
    if-nez v7, :cond_21

    .line 1000
    const-string/jumbo v8, "WifiController"

    const-string/jumbo v9, "getDisallowWifiSecurityLevel : WifiManager is null"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    return v11

    .line 1004
    :cond_21
    if-nez p1, :cond_52

    .line 1005
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1007
    .local v4, "identity":J
    :try_start_27
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    .line 1009
    .local v6, "wfcList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v6, :cond_3a

    .line 1010
    const-string/jumbo v8, "WifiController"

    const-string/jumbo v9, "getDisallowWifiSecurityLevel : wfcList is null"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_8a

    .line 1020
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1011
    return v11

    .line 1013
    :cond_3a
    :try_start_3a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1014
    .local v0, "c":Landroid/net/wifi/WifiConfiguration;
    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I
    :try_end_4c
    .catchall {:try_start_3a .. :try_end_4c} :catchall_8a

    if-ne v8, p2, :cond_3e

    .line 1015
    move-object p1, v0

    .line 1020
    .end local v0    # "c":Landroid/net/wifi/WifiConfiguration;
    :cond_4f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1024
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    .end local v4    # "identity":J
    .end local v6    # "wfcList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_52
    invoke-virtual {p0, v9, p3}, Lcom/lge/mdm/controller/LGMDMWifiController;->getWiFiSecurityLevel(Landroid/content/ComponentName;I)I

    move-result v3

    .line 1025
    .local v3, "securityLevel":I
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->getWiFiSecurityType(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 1026
    .local v2, "deviceLevel":I
    const-string/jumbo v8, "WifiController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getDisallowWifiSecurityLevel  : deviceLevel = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    if-ge v2, v3, :cond_8f

    .line 1028
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v8

    .line 1029
    sget v9, Lcom/lge/internal/R$string;->sp_lgmdm_block_wifi_connect_NORMAL:I

    .line 1028
    invoke-virtual {v8, v9, p3}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    .line 1030
    const-string/jumbo v8, "WifiController"

    const-string/jumbo v9, "getDisallowWifiSecurityLevel  : security level disallow"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const/4 v8, 0x1

    return v8

    .line 1019
    .end local v2    # "deviceLevel":I
    .end local v3    # "securityLevel":I
    .restart local v4    # "identity":J
    :catchall_8a
    move-exception v8

    .line 1020
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1019
    throw v8

    .line 1034
    .end local v4    # "identity":J
    .restart local v2    # "deviceLevel":I
    .restart local v3    # "securityLevel":I
    :cond_8f
    return v11
.end method

.method protected getPossibleManageWiFiProfile()Z
    .registers 2

    .prologue
    .line 1239
    iget-boolean v0, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mActivePossibleManageWiFiProfile:Z

    return v0
.end method

.method protected getWiFiSecurityLevel(Landroid/content/ComponentName;I)I
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 720
    const/4 v0, 0x0

    .line 721
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_10

    .line 722
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 723
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWiFiSecurity:I

    :goto_d
    return v5

    :cond_e
    const/4 v5, 0x0

    goto :goto_d

    .line 725
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_10
    const/4 v4, 0x0

    .line 726
    .local v4, "result":I
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 727
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 728
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWiFiSecurity:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 729
    const-string/jumbo v5, "WifiController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getWiFiSecurityLevel : admin.allowWiFiSecurity = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 730
    iget v7, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWiFiSecurity:I

    .line 729
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-string/jumbo v5, "WifiController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getWiFiSecurityLevel : Strong allowWiFiSecurity = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 733
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_64
    const-string/jumbo v5, "WifiController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getWiFiSecurityLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    return v4
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x2

    const/16 v13, 0x2710

    const/4 v10, 0x3

    const/4 v12, 0x0

    .line 339
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;

    .line 341
    .local v0, "backupInfo":Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMWifiController;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v8

    .line 342
    .local v8, "wm":Landroid/net/wifi/WifiManager;
    const-wide/16 v4, 0x0

    .line 343
    .local v4, "identity":J
    if-nez v8, :cond_1b

    .line 344
    iget v9, p1, Landroid/os/Message;->what:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_1a

    .line 345
    iput v12, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mTimeoutWifi:I

    .line 346
    iput-boolean v12, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mSetPolicyLock:Z

    .line 348
    :cond_1a
    return v12

    .line 351
    :cond_1b
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_196

    .line 450
    :goto_20
    return v12

    .line 353
    :pswitch_21
    invoke-virtual {v8, v12}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 354
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v11, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 355
    .local v2, "disableMsg":Landroid/os/Message;
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_20

    .line 358
    .end local v2    # "disableMsg":Landroid/os/Message;
    :pswitch_30
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 359
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 360
    .local v3, "enableMsg":Landroid/os/Message;
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_20

    .line 363
    .end local v3    # "enableMsg":Landroid/os/Message;
    :pswitch_40
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 365
    :try_start_44
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_70

    .line 366
    iget v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mTimeoutWifi:I

    if-ge v9, v13, :cond_70

    .line 367
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 369
    .local v1, "delayMsg":Landroid/os/Message;
    iget v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mTimeoutWifi:I

    add-int/lit8 v9, v9, 0x64

    iput v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mTimeoutWifi:I

    .line 370
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x64

    invoke-virtual {v9, v1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 371
    const-string/jumbo v9, "WifiController"

    const-string/jumbo v10, "MSG_CONFIRM_DISABLE_WIFI fail : check again"

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_44 .. :try_end_6c} :catchall_84

    .line 383
    .end local v1    # "delayMsg":Landroid/os/Message;
    :goto_6c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_20

    .line 372
    :cond_70
    :try_start_70
    iget v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mTimeoutWifi:I

    if-ge v9, v13, :cond_89

    .line 373
    const/4 v9, 0x0

    iput v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mTimeoutWifi:I

    .line 374
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mSetPolicyLock:Z

    .line 375
    const-string/jumbo v9, "WifiController"

    const-string/jumbo v10, "MSG_CONFIRM_DISABLE_WIFI success"

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_70 .. :try_end_83} :catchall_84

    goto :goto_6c

    .line 382
    :catchall_84
    move-exception v9

    .line 383
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 382
    throw v9

    .line 377
    :cond_89
    :try_start_89
    const-string/jumbo v9, "WifiController"

    const-string/jumbo v10, "MSG_CONFIRM_DISABLE_WIFI fail : timeout"

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const/4 v9, 0x0

    iput v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mTimeoutWifi:I

    .line 379
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mSetPolicyLock:Z

    .line 380
    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMWifiController;->sendIntentError(Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;)V
    :try_end_9b
    .catchall {:try_start_89 .. :try_end_9b} :catchall_84

    goto :goto_6c

    .line 387
    :pswitch_9c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 389
    :try_start_a0
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v9

    if-eq v9, v10, :cond_cc

    .line 390
    iget v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mTimeoutWifi:I

    if-ge v9, v13, :cond_cc

    .line 391
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x3

    invoke-virtual {v9, v10, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 393
    .restart local v1    # "delayMsg":Landroid/os/Message;
    iget v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mTimeoutWifi:I

    add-int/lit8 v9, v9, 0x64

    iput v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mTimeoutWifi:I

    .line 394
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x64

    invoke-virtual {v9, v1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 395
    const-string/jumbo v9, "WifiController"

    const-string/jumbo v10, "MSG_CONFIRM_ENABLE_WIFI fail : check again"

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c7
    .catchall {:try_start_a0 .. :try_end_c7} :catchall_e0

    .line 407
    .end local v1    # "delayMsg":Landroid/os/Message;
    :goto_c7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_20

    .line 396
    :cond_cc
    :try_start_cc
    iget v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mTimeoutWifi:I

    if-ge v9, v13, :cond_e5

    .line 397
    const/4 v9, 0x0

    iput v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mTimeoutWifi:I

    .line 398
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mSetPolicyLock:Z

    .line 399
    const-string/jumbo v9, "WifiController"

    const-string/jumbo v10, "MSG_CONFIRM_ENABLE_WIFI success"

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_df
    .catchall {:try_start_cc .. :try_end_df} :catchall_e0

    goto :goto_c7

    .line 406
    :catchall_e0
    move-exception v9

    .line 407
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 406
    throw v9

    .line 401
    :cond_e5
    :try_start_e5
    const-string/jumbo v9, "WifiController"

    const-string/jumbo v10, "MSG_CONFIRM_ENABLE_WIFI fail : timeout"

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const/4 v9, 0x0

    iput v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mTimeoutWifi:I

    .line 403
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mSetPolicyLock:Z
    :try_end_f4
    .catchall {:try_start_e5 .. :try_end_f4} :catchall_e0

    goto :goto_c7

    .line 411
    :pswitch_f5
    const-string/jumbo v9, "WifiController"

    const-string/jumbo v10, "MSG_UPDATE_WIFI_CONFIG : update"

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 413
    .local v6, "userHandle":I
    invoke-direct {p0, v6}, Lcom/lge/mdm/controller/LGMDMWifiController;->updateConfiguredNetworks(I)V

    .line 414
    invoke-virtual {p0, v6}, Lcom/lge/mdm/controller/LGMDMWifiController;->updateConfiguredNetworksWithSSIDList(I)V

    .line 415
    invoke-direct {p0, v12, v6}, Lcom/lge/mdm/controller/LGMDMWifiController;->setNeedUpdate(ZI)V

    goto/16 :goto_20

    .line 418
    .end local v6    # "userHandle":I
    :pswitch_10b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 420
    :try_start_10f
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v7

    .line 421
    .local v7, "wifiState":I
    if-ne v7, v10, :cond_120

    .line 423
    invoke-virtual {p0}, Lcom/lge/mdm/controller/LGMDMWifiController;->disableMiracast()V

    .line 424
    const/4 v9, 0x0

    iput v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mTimeoutWifi:I
    :try_end_11b
    .catchall {:try_start_10f .. :try_end_11b} :catchall_158

    .line 443
    :goto_11b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_20

    .line 425
    :cond_120
    if-ne v7, v11, :cond_17b

    .line 427
    :try_start_122
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 429
    .restart local v1    # "delayMsg":Landroid/os/Message;
    iget v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mTimeoutWifi:I

    add-int/lit8 v9, v9, 0x64

    iput v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mTimeoutWifi:I

    .line 430
    iget v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mTimeoutWifi:I

    if-ge v9, v13, :cond_15d

    .line 432
    const-string/jumbo v9, "WifiController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "MSG_DISALBE_MIRACAST retry : mTimeoutWifi = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mTimeoutWifi:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x64

    invoke-virtual {v9, v1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_157
    .catchall {:try_start_122 .. :try_end_157} :catchall_158

    goto :goto_11b

    .line 442
    .end local v1    # "delayMsg":Landroid/os/Message;
    .end local v7    # "wifiState":I
    :catchall_158
    move-exception v9

    .line 443
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 442
    throw v9

    .line 436
    .restart local v1    # "delayMsg":Landroid/os/Message;
    .restart local v7    # "wifiState":I
    :cond_15d
    :try_start_15d
    const-string/jumbo v9, "WifiController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "MSG_DISALBE_MIRACAST fail(timeout) : State = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const/4 v9, 0x0

    iput v9, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mTimeoutWifi:I

    goto :goto_11b

    .line 440
    .end local v1    # "delayMsg":Landroid/os/Message;
    :cond_17b
    const-string/jumbo v9, "WifiController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "MSG_DISALBE_MIRACAST : Already disabled : State = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_195
    .catchall {:try_start_15d .. :try_end_195} :catchall_158

    goto :goto_11b

    .line 351
    :pswitch_data_196
    .packed-switch 0x0
        :pswitch_21
        :pswitch_30
        :pswitch_40
        :pswitch_9c
        :pswitch_f5
        :pswitch_10b
    .end packed-switch
.end method

.method public removeNetwork(II)Z
    .registers 7
    .param p1, "netId"    # I
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 676
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_config_wifi"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 677
    const-string/jumbo v1, "WifiController"

    const-string/jumbo v2, "Disallow Configuration Wifi by AFW"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    return v3

    .line 680
    :cond_16
    const/4 v0, 0x0

    .line 681
    .local v0, "ret":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mActivePossibleManageWiFiProfile:Z

    .line 682
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMWifiController;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v0

    .line 683
    .local v0, "ret":Z
    iput-boolean v3, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mActivePossibleManageWiFiProfile:Z

    .line 684
    return v0
.end method

.method public saveConfiguration(I)Z
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 700
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMWifiController;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v0

    return v0
.end method

.method protected setAllowDLNADiscovery(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 1623
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1624
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDLNADiscovery:Z

    if-ne v1, p2, :cond_14

    .line 1625
    const-string/jumbo v1, "WifiController"

    const-string/jumbo v2, "setAllowDLNA : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    return-void

    .line 1629
    :cond_14
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDLNADiscovery:Z

    .line 1622
    return-void
.end method

.method protected setAllowMiracast(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 738
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 739
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMiracast:Z

    if-ne v2, p2, :cond_15

    .line 740
    const-string/jumbo v2, "WifiController"

    const-string/jumbo v3, "setAllowMiracast : same policy is called"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    return-void

    .line 744
    :cond_15
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMiracast:Z

    .line 746
    invoke-virtual {p0, v4, p3}, Lcom/lge/mdm/controller/LGMDMWifiController;->getAllowMiracast(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_29

    .line 747
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 748
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 737
    .end local v1    # "msg":Landroid/os/Message;
    :cond_29
    return-void
.end method

.method protected setAllowWiFiMacAddressList(Landroid/content/ComponentName;ILjava/util/List;I)Z
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "listType"    # I
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p3, "wblist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 1335
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1336
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1337
    .local v1, "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p3, :cond_f

    .line 1338
    move-object p3, v1

    .line 1340
    :cond_f
    const/4 v4, 0x1

    .line 1342
    .local v4, "needUpdate":Z
    iget-object v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslist:Ljava/util/List;

    if-nez v5, :cond_16

    .line 1343
    iput-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslist:Ljava/util/List;

    .line 1346
    :cond_16
    iget v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslistType:I

    if-ne v5, p2, :cond_47

    .line 1347
    iget-object v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslist:Ljava/util/List;

    invoke-interface {p3, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1348
    const-string/jumbo v5, "WifiController"

    const-string/jumbo v6, "setAllowWiFiMacAddressList : same white & black list"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    return v7

    .line 1351
    :cond_2c
    const/4 v5, 0x1

    if-ne p2, v5, :cond_78

    .line 1352
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3d

    iget-object v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslist:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    .line 1351
    if-eqz v5, :cond_78

    .line 1353
    :cond_3d
    const-string/jumbo v5, "WifiController"

    const-string/jumbo v6, "setAllowWiFiMacAddressList : there is no blacklist. Allow all!"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    const/4 v4, 0x0

    .line 1362
    :cond_47
    :goto_47
    invoke-static {}, Lcom/lge/mdm/util/MDMLog;->getDebugmode()Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 1363
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "macAddress$iterator":Ljava/util/Iterator;
    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1364
    .local v2, "macAddress":Ljava/lang/String;
    const-string/jumbo v5, "WifiController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "admin.allowWifiMacAddresslist add macAddress : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    .line 1355
    .end local v2    # "macAddress":Ljava/lang/String;
    .end local v3    # "macAddress$iterator":Ljava/util/Iterator;
    :cond_78
    const/4 v5, 0x2

    if-ne p2, v5, :cond_47

    .line 1356
    iget-object v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslist:Ljava/util/List;

    invoke-interface {p3, v5}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    .line 1355
    if-eqz v5, :cond_47

    .line 1357
    const-string/jumbo v5, "WifiController"

    const-string/jumbo v6, "setAllowWiFiMacAddressList : whitelist containsAll"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    const/4 v4, 0x0

    goto :goto_47

    .line 1368
    :cond_8e
    iput p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslistType:I

    .line 1369
    if-nez p2, :cond_c5

    .line 1370
    iput-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslist:Ljava/util/List;

    .line 1371
    const-string/jumbo v5, "WifiController"

    const-string/jumbo v6, "setAllowWiFiMacAddressList : listType is WIFI_MAC_ADDRESS_LIST_NOT_USED"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    const/4 v4, 0x0

    .line 1376
    :goto_9e
    const-string/jumbo v5, "WifiController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAllowWiFiMacAddressList : needUpdate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressWifiListUpdater:Lcom/lge/mdm/controller/LGMDMWifiController$UpdaterRunnable;

    invoke-virtual {v5, p4}, Lcom/lge/mdm/controller/LGMDMWifiController$UpdaterRunnable;->setUserHandle(I)V

    .line 1379
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLazyThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressWifiListUpdater:Lcom/lge/mdm/controller/LGMDMWifiController$UpdaterRunnable;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1381
    return v4

    .line 1374
    :cond_c5
    iput-object p3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslist:Ljava/util/List;

    goto :goto_9e
.end method

.method protected setAllowWiFiProfileManagement(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 1215
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1216
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWiFiProfileManagement:Z

    if-ne v1, p2, :cond_14

    .line 1217
    const-string/jumbo v1, "WifiController"

    const-string/jumbo v2, "setAllowWifi : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    return-void

    .line 1220
    :cond_14
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWiFiProfileManagement:Z

    .line 1214
    return-void
.end method

.method protected setAllowWiFiSSIDList(Landroid/content/ComponentName;ILjava/util/List;I)Z
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "listType"    # I
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p3, "wblist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 821
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 822
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    const/4 v2, 0x1

    .line 824
    .local v2, "needUpdate":Z
    if-ltz p2, :cond_d

    .line 825
    if-le p2, v6, :cond_f

    .line 826
    :cond_d
    const/4 v2, 0x0

    .line 827
    return v2

    .line 829
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 830
    .local v1, "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p3, :cond_17

    .line 831
    move-object p3, v1

    .line 834
    :cond_17
    iget-object v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlist:Ljava/util/List;

    if-nez v5, :cond_1d

    .line 835
    iput-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlist:Ljava/util/List;

    .line 839
    :cond_1d
    invoke-direct {p0, p3}, Lcom/lge/mdm/controller/LGMDMWifiController;->validateSSIDString(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 841
    iget v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlistType:I

    if-ne v5, p2, :cond_49

    .line 842
    iget-object v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlist:Ljava/util/List;

    invoke-interface {p3, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 843
    const-string/jumbo v5, "WifiController"

    const-string/jumbo v6, "setAllowWiFiSSIDList : same white & black list"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    return v7

    .line 846
    :cond_37
    const/4 v5, 0x1

    if-ne p2, v5, :cond_7a

    .line 847
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_48

    iget-object v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlist:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    .line 846
    if-eqz v5, :cond_7a

    .line 848
    :cond_48
    const/4 v2, 0x0

    .line 855
    :cond_49
    :goto_49
    invoke-static {}, Lcom/lge/mdm/util/MDMLog;->getDebugmode()Z

    move-result v5

    if-eqz v5, :cond_86

    .line 856
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "ssidName$iterator":Ljava/util/Iterator;
    :goto_53
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_86

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 857
    .local v3, "ssidName":Ljava/lang/String;
    const-string/jumbo v5, "WifiController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "admin.allowWifiSSIDlist add ssidName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    .line 849
    .end local v3    # "ssidName":Ljava/lang/String;
    .end local v4    # "ssidName$iterator":Ljava/util/Iterator;
    :cond_7a
    if-ne p2, v6, :cond_49

    .line 850
    iget-object v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlist:Ljava/util/List;

    invoke-interface {p3, v5}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    .line 849
    if-eqz v5, :cond_49

    .line 851
    const/4 v2, 0x0

    goto :goto_49

    .line 861
    :cond_86
    iput p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlistType:I

    .line 862
    if-nez p2, :cond_bd

    .line 863
    iput-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlist:Ljava/util/List;

    .line 864
    const-string/jumbo v5, "WifiController"

    const-string/jumbo v6, "setAllowWiFiSSIDList : listType is WIFI_SSIDLIST_NOT_USED"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const/4 v2, 0x0

    .line 869
    :goto_96
    const-string/jumbo v5, "WifiController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAllowWiFiSSIDList : needUpdate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDWifiListUpdater:Lcom/lge/mdm/controller/LGMDMWifiController$UpdaterRunnable;

    invoke-virtual {v5, p4}, Lcom/lge/mdm/controller/LGMDMWifiController$UpdaterRunnable;->setUserHandle(I)V

    .line 872
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLazyThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDWifiListUpdater:Lcom/lge/mdm/controller/LGMDMWifiController$UpdaterRunnable;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 874
    return v2

    .line 867
    :cond_bd
    iput-object p3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlist:Ljava/util/List;

    goto :goto_96
.end method

.method public setAllowWifi(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 224
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 226
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mSetPolicyLock:Z

    if-eqz v2, :cond_19

    .line 227
    const-string/jumbo v2, "WifiController"

    const-string/jumbo v3, "setAllowWifi : lock"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-direct {p0, v4}, Lcom/lge/mdm/controller/LGMDMWifiController;->sendIntentError(Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;)V

    .line 229
    return-void

    .line 232
    :cond_19
    iget-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifi:Z

    if-ne v2, p2, :cond_27

    .line 233
    const-string/jumbo v2, "WifiController"

    const-string/jumbo v3, "setAllowWifi : same policy is called"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void

    .line 237
    :cond_27
    new-instance v1, Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;

    invoke-direct {v1, p0, v4}, Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;-><init>(Lcom/lge/mdm/controller/LGMDMWifiController;Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;)V

    .line 238
    .local v1, "backupInfo":Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;
    iput-object v0, v1, Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;->admin:Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 239
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mService:Ljava/lang/Object;

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mService:Ljava/lang/Object;

    :goto_34
    iput-object v2, v1, Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;->sync:Ljava/lang/Object;

    .line 240
    iget-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifi:Z

    iput-boolean v2, v1, Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;->backupPolicy:Z

    .line 241
    iput p3, v1, Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;->userHandle:I

    .line 242
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifi:Z

    .line 244
    invoke-virtual {p0, v4, p3}, Lcom/lge/mdm/controller/LGMDMWifiController;->getAllowWifi(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 245
    iget-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateWifi:Z

    if-eqz v2, :cond_4e

    .line 246
    iput-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateWifi:Z

    .line 247
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/lge/mdm/controller/LGMDMWifiController;->setWifiEnable(ZLcom/lge/mdm/admin/LGMDMadminlist;Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;)V

    .line 223
    :cond_4e
    :goto_4e
    return-void

    :cond_4f
    move-object v2, p0

    .line 239
    goto :goto_34

    .line 250
    :cond_51
    invoke-direct {p0, v3, v0, v1}, Lcom/lge/mdm/controller/LGMDMWifiController;->setWifiEnable(ZLcom/lge/mdm/admin/LGMDMadminlist;Lcom/lge/mdm/controller/LGMDMWifiController$BackupPolicyInfo;)V

    .line 252
    invoke-virtual {p0, v3}, Lcom/lge/mdm/controller/LGMDMWifiController;->enableWifiP2p(Z)V

    goto :goto_4e
.end method

.method public setAllowWifiAutoConnection(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 1591
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1593
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiAutoConnect:Z

    if-ne v1, p2, :cond_14

    .line 1594
    const-string/jumbo v1, "WifiController"

    const-string/jumbo v2, "allowWifiAutoConnect : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    return-void

    .line 1598
    :cond_14
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiAutoConnect:Z

    .line 1599
    invoke-virtual {p0, p3}, Lcom/lge/mdm/controller/LGMDMWifiController;->syncWifiAutoConnectionPolicy(I)V

    .line 1590
    return-void
.end method

.method protected setAllowWifiDirect(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1259
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1261
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiDirect:Z

    if-ne v1, p2, :cond_16

    .line 1262
    const-string/jumbo v1, "WifiController"

    const-string/jumbo v2, "setAllowWifiDirect : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    return-void

    .line 1266
    :cond_16
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiDirect:Z

    .line 1268
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Lcom/lge/mdm/controller/LGMDMWifiController;->getAllowWifiDirect(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1269
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateWifiDirect:Z

    if-eqz v1, :cond_28

    .line 1270
    invoke-virtual {p0, v4}, Lcom/lge/mdm/controller/LGMDMWifiController;->enableWifiP2p(Z)V

    .line 1271
    iput-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateWifiDirect:Z

    .line 1258
    :cond_28
    :goto_28
    return-void

    .line 1274
    :cond_29
    iget v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mWifiP2PState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_30

    .line 1275
    iput-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateWifiDirect:Z

    .line 1278
    :cond_30
    invoke-virtual {p0, v3}, Lcom/lge/mdm/controller/LGMDMWifiController;->enableWifiP2p(Z)V

    goto :goto_28
.end method

.method public setAllowWifiScan(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 1321
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1323
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiScan:Z

    if-ne v1, p2, :cond_14

    .line 1324
    const-string/jumbo v1, "WifiController"

    const-string/jumbo v2, "setAllowWifiScan : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    return-void

    .line 1328
    :cond_14
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiScan:Z

    .line 1320
    return-void
.end method

.method protected setWiFiSecurityLevel(Landroid/content/ComponentName;II)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 704
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 706
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-ltz p2, :cond_c

    const/4 v2, 0x3

    if-le p2, v2, :cond_d

    .line 707
    :cond_c
    return v3

    .line 709
    :cond_d
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p3}, Lcom/lge/mdm/controller/LGMDMWifiController;->getWiFiSecurityLevel(Landroid/content/ComponentName;I)I

    move-result v1

    .line 710
    .local v1, "oldPolicy":I
    iput p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWiFiSecurity:I

    .line 712
    if-le p2, v1, :cond_21

    .line 713
    const-string/jumbo v2, "WifiController"

    const-string/jumbo v3, "setWiFiSecurityLevel : need updateWiFi Network List"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const/4 v2, 0x1

    return v2

    .line 716
    :cond_21
    return v3
.end method

.method protected syncWifiAutoConnectionPolicy(I)V
    .registers 11
    .param p1, "userHandle"    # I

    .prologue
    const/4 v7, 0x1

    .line 1603
    const-string/jumbo v6, "wlan.lge.mdm.autoconnectpolicy"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1604
    .local v1, "getProp":I
    if-gt v1, v7, :cond_66

    const/4 v4, 0x1

    .line 1605
    .local v4, "systemState":Z
    :goto_b
    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->getAllowWifiAutoConnection(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 1606
    .local v0, "acAllowed":Z
    const-string/jumbo v6, "WifiController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "syncWifiAutoConnectionPolicy : systemState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1607
    const-string/jumbo v8, "  acAllowed = "

    .line 1606
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    if-eq v0, v4, :cond_65

    .line 1609
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1611
    .local v2, "identity":J
    if-eqz v0, :cond_68

    const/4 v5, 0x1

    .line 1612
    .local v5, "value":I
    :goto_3e
    :try_start_3e
    const-string/jumbo v6, "WifiController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Change in wifi ac state [wlan.lge.mdm.autoconnectpolicy] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    const-string/jumbo v6, "wlan.lge.mdm.autoconnectpolicy"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_3e .. :try_end_62} :catchall_6a

    .line 1616
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1602
    .end local v2    # "identity":J
    .end local v5    # "value":I
    :cond_65
    return-void

    .line 1604
    .end local v0    # "acAllowed":Z
    .end local v4    # "systemState":Z
    :cond_66
    const/4 v4, 0x0

    .restart local v4    # "systemState":Z
    goto :goto_b

    .line 1611
    .restart local v0    # "acAllowed":Z
    .restart local v2    # "identity":J
    :cond_68
    const/4 v5, 0x2

    .restart local v5    # "value":I
    goto :goto_3e

    .line 1615
    :catchall_6a
    move-exception v6

    .line 1616
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1615
    throw v6
.end method

.method protected updateConfiguredNetworks(II)V
    .registers 12
    .param p1, "policy"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 774
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMWifiController;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v5

    .line 775
    .local v5, "wm":Landroid/net/wifi/WifiManager;
    if-nez v5, :cond_7

    .line 776
    return-void

    .line 778
    :cond_7
    if-nez p1, :cond_a

    .line 779
    return-void

    .line 781
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 783
    .local v2, "identity":J
    :try_start_e
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_26

    .line 784
    const/4 v6, 0x1

    invoke-direct {p0, v6, p2}, Lcom/lge/mdm/controller/LGMDMWifiController;->setNeedUpdate(ZI)V

    .line 785
    const-string/jumbo v6, "WifiController"

    const-string/jumbo v7, "updateConfiguredNetworks : wifi not enabled"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_7d

    .line 802
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 786
    return-void

    .line 789
    :cond_26
    :try_start_26
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_7d

    move-result-object v4

    .line 790
    .local v4, "wfcList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v4, :cond_30

    .line 802
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 791
    return-void

    .line 794
    :cond_30
    :try_start_30
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_34
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 795
    .local v0, "c":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMWifiController;->getWiFiSecurityTypeForConfig(Landroid/net/wifi/WifiConfiguration;)I

    move-result v6

    if-ge v6, p1, :cond_34

    .line 796
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v6, p2}, Lcom/lge/mdm/controller/LGMDMWifiController;->removeNetwork(II)Z

    .line 797
    invoke-virtual {p0, p2}, Lcom/lge/mdm/controller/LGMDMWifiController;->saveConfiguration(I)Z

    .line 798
    const-string/jumbo v6, "WifiController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SecurityLevel is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is removed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_30 .. :try_end_7c} :catchall_7d

    goto :goto_34

    .line 801
    .end local v0    # "c":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    .end local v4    # "wfcList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :catchall_7d
    move-exception v6

    .line 802
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 801
    throw v6

    .line 802
    .restart local v1    # "c$iterator":Ljava/util/Iterator;
    .restart local v4    # "wfcList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_82
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 773
    return-void
.end method

.method protected updateConfiguredNetworksWithMacAddressList(I)V
    .registers 15
    .param p1, "userHandle"    # I

    .prologue
    const/4 v12, 0x1

    .line 1512
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMWifiController;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v8

    .line 1513
    .local v8, "wm":Landroid/net/wifi/WifiManager;
    if-nez v8, :cond_8

    .line 1514
    return-void

    .line 1517
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1519
    .local v4, "identity":J
    :try_start_c
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_24

    .line 1520
    const/4 v9, 0x1

    invoke-direct {p0, v9, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->setNeedUpdate(ZI)V

    .line 1521
    const-string/jumbo v9, "WifiController"

    const-string/jumbo v10, "updateConfiguredNetworksWithMacAddressList : wifi not enabled"

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_c7

    .line 1569
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1522
    return-void

    .line 1524
    :cond_24
    :try_start_24
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_c7

    move-result-object v7

    .line 1525
    .local v7, "wfi":Landroid/net/wifi/WifiInfo;
    if-nez v7, :cond_2e

    .line 1569
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1526
    return-void

    .line 1533
    :cond_2e
    :try_start_2e
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 1534
    .local v0, "currentMacAddr":Ljava/lang/String;
    const-string/jumbo v9, "WifiController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "wifi mac address="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1537
    .local v2, "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    invoke-virtual {p0, v9, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->getAllowWiFiMacAddressListType(Landroid/content/ComponentName;I)I

    move-result v3

    .line 1538
    .local v3, "listType":I
    if-eqz v3, :cond_a8

    .line 1539
    const/4 v9, 0x0

    invoke-virtual {p0, v9, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->getAllowWiFiMacAddressList(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v6

    .line 1540
    .local v6, "macAddressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_60

    .line 1541
    move-object v6, v2

    .line 1543
    :cond_60
    move-object v1, v0

    .line 1544
    .local v1, "currentMacAddress":Ljava/lang/String;
    const-string/jumbo v9, "WifiController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateConfiguredNetworksWithMacAddressList address : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    const/4 v9, 0x2

    if-ne v3, v9, :cond_cc

    .line 1548
    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_ac

    .line 1549
    invoke-virtual {p0, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->disconnect(I)Z

    .line 1550
    const-string/jumbo v9, "WifiController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "WIFI_MAC_ADDRESS_LIST_WHITELIST("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1551
    const-string/jumbo v11, ") is removed"

    .line 1550
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a8
    .catchall {:try_start_2e .. :try_end_a8} :catchall_c7

    .line 1569
    .end local v1    # "currentMacAddress":Ljava/lang/String;
    .end local v6    # "macAddressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a8
    :goto_a8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1511
    return-void

    .line 1553
    .restart local v1    # "currentMacAddress":Ljava/lang/String;
    .restart local v6    # "macAddressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ac
    :try_start_ac
    const-string/jumbo v9, "WifiController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "macAddressList contains : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_ac .. :try_end_c6} :catchall_c7

    goto :goto_a8

    .line 1568
    .end local v0    # "currentMacAddr":Ljava/lang/String;
    .end local v1    # "currentMacAddress":Ljava/lang/String;
    .end local v2    # "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "listType":I
    .end local v6    # "macAddressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "wfi":Landroid/net/wifi/WifiInfo;
    :catchall_c7
    move-exception v9

    .line 1569
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1568
    throw v9

    .line 1555
    .restart local v0    # "currentMacAddr":Ljava/lang/String;
    .restart local v1    # "currentMacAddress":Ljava/lang/String;
    .restart local v2    # "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "listType":I
    .restart local v6    # "macAddressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "wfi":Landroid/net/wifi/WifiInfo;
    :cond_cc
    if-ne v3, v12, :cond_114

    .line 1557
    :try_start_ce
    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f9

    .line 1558
    invoke-virtual {p0, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->disconnect(I)Z

    .line 1559
    const-string/jumbo v9, "WifiController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "WIFI_MAC_ADDRESS_LIST_BLACKLIST("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1560
    const-string/jumbo v11, ") is removed"

    .line 1559
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a8

    .line 1562
    :cond_f9
    const-string/jumbo v9, "WifiController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "macAddressList contains false : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a8

    .line 1565
    :cond_114
    const-string/jumbo v9, "WifiController"

    const-string/jumbo v10, "No update wifi connection"

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11d
    .catchall {:try_start_ce .. :try_end_11d} :catchall_c7

    goto :goto_a8
.end method

.method protected updateConfiguredNetworksWithSSIDList(I)V
    .registers 14
    .param p1, "userHandle"    # I

    .prologue
    const/4 v11, 0x1

    .line 921
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMWifiController;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v7

    .line 922
    .local v7, "wm":Landroid/net/wifi/WifiManager;
    if-nez v7, :cond_8

    .line 923
    return-void

    .line 925
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 927
    .local v2, "identity":J
    :try_start_c
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_24

    .line 928
    const/4 v8, 0x1

    invoke-direct {p0, v8, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->setNeedUpdate(ZI)V

    .line 929
    const-string/jumbo v8, "WifiController"

    const-string/jumbo v9, "updateConfiguredNetworksWithSSIDList : wifi not enabled"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_ac

    .line 968
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 930
    return-void

    .line 933
    :cond_24
    :try_start_24
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_ac

    move-result-object v6

    .line 934
    .local v6, "wfi":Landroid/net/wifi/WifiInfo;
    if-nez v6, :cond_2e

    .line 968
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 935
    return-void

    .line 938
    :cond_2e
    :try_start_2e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 939
    .local v1, "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    invoke-virtual {p0, v8, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->getAllowWiFiSSIDListType(Landroid/content/ComponentName;I)I

    move-result v4

    .line 940
    .local v4, "listType":I
    if-eqz v4, :cond_8d

    .line 941
    const/4 v8, 0x0

    invoke-virtual {p0, v8, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->getAllowWiFiSSIDList(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v5

    .line 942
    .local v5, "ssidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_42

    .line 943
    move-object v5, v1

    .line 945
    :cond_42
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, "currentSsid":Ljava/lang/String;
    const-string/jumbo v8, "WifiController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateConfiguredNetworksWithSSIDList ssid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    const/4 v8, 0x2

    if-ne v4, v8, :cond_b1

    .line 949
    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_91

    .line 950
    invoke-virtual {p0, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->disconnect(I)Z

    .line 951
    const-string/jumbo v8, "WifiController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "WIFI_SSIDLIST_WHITELIST("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") is removed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_2e .. :try_end_8d} :catchall_ac

    .line 968
    .end local v0    # "currentSsid":Ljava/lang/String;
    .end local v5    # "ssidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8d
    :goto_8d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 920
    return-void

    .line 953
    .restart local v0    # "currentSsid":Ljava/lang/String;
    .restart local v5    # "ssidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_91
    :try_start_91
    const-string/jumbo v8, "WifiController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ssidList contains : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catchall {:try_start_91 .. :try_end_ab} :catchall_ac

    goto :goto_8d

    .line 967
    .end local v0    # "currentSsid":Ljava/lang/String;
    .end local v1    # "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "listType":I
    .end local v5    # "ssidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "wfi":Landroid/net/wifi/WifiInfo;
    :catchall_ac
    move-exception v8

    .line 968
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 967
    throw v8

    .line 955
    .restart local v0    # "currentSsid":Ljava/lang/String;
    .restart local v1    # "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "listType":I
    .restart local v5    # "ssidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "wfi":Landroid/net/wifi/WifiInfo;
    :cond_b1
    if-ne v4, v11, :cond_f9

    .line 957
    :try_start_b3
    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_de

    .line 958
    invoke-virtual {p0, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->disconnect(I)Z

    .line 959
    const-string/jumbo v8, "WifiController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "WIFI_SSIDLIST_BLACKLIST("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") is removed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    .line 961
    :cond_de
    const-string/jumbo v8, "WifiController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ssidList contains false : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    .line 964
    :cond_f9
    const-string/jumbo v8, "WifiController"

    const-string/jumbo v9, "No update wifi connection"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_102
    .catchall {:try_start_b3 .. :try_end_102} :catchall_ac

    goto :goto_8d
.end method

.method protected updateDLNADiscovery(ZI)V
    .registers 6
    .param p1, "allow"    # Z
    .param p2, "userHandle"    # I

    .prologue
    const/4 v2, -0x1

    .line 1633
    if-nez p1, :cond_20

    .line 1635
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v0

    .line 1636
    const-string/jumbo v1, "com.lge.smartshare.dlna"

    .line 1635
    invoke-virtual {v0, v1, v2, p2}, Lcom/lge/mdm/controller/LGMDMHandler;->forceStopSpecificApplication(Ljava/lang/String;II)V

    .line 1638
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v0

    .line 1639
    const-string/jumbo v1, "com.lge.smartshare"

    .line 1638
    invoke-virtual {v0, v1, v2, p2}, Lcom/lge/mdm/controller/LGMDMHandler;->forceStopSpecificApplication(Ljava/lang/String;II)V

    .line 1641
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->setBlockDLNADiscoveryPort(Z)V

    .line 1632
    :goto_1f
    return-void

    .line 1643
    :cond_20
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->setBlockDLNADiscoveryPort(Z)V

    goto :goto_1f
.end method

.method updateGlobalWifiLists(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDWifiListUpdater:Lcom/lge/mdm/controller/LGMDMWifiController$UpdaterRunnable;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/controller/LGMDMWifiController$UpdaterRunnable;->setUserHandle(I)V

    .line 1128
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressWifiListUpdater:Lcom/lge/mdm/controller/LGMDMWifiController$UpdaterRunnable;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/controller/LGMDMWifiController$UpdaterRunnable;->setUserHandle(I)V

    .line 1129
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLazyThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalSSIDWifiListUpdater:Lcom/lge/mdm/controller/LGMDMWifiController$UpdaterRunnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1130
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mLazyThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mGlobalMacAddressWifiListUpdater:Lcom/lge/mdm/controller/LGMDMWifiController$UpdaterRunnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1126
    return-void
.end method

.method public updateNetwork(Lcom/lge/mdm/config/LGMDMWifiConfiguration;I)I
    .registers 10
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMWifiConfiguration;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v6, -0x1

    .line 640
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v5, "no_config_wifi"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 641
    const-string/jumbo v4, "WifiController"

    const-string/jumbo v5, "Disallow Configuration Wifi by AFW"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    return v6

    .line 644
    :cond_16
    const/4 v2, -0x1

    .line 645
    .local v2, "ret":I
    if-nez p1, :cond_23

    .line 646
    const-string/jumbo v4, "WifiController"

    const-string/jumbo v5, "LGMDMWifiConfiguration is null"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    return v6

    .line 650
    :cond_23
    const/4 v0, 0x0

    .line 652
    .local v0, "count":I
    invoke-virtual {p0, p2}, Lcom/lge/mdm/controller/LGMDMWifiController;->getConfiguredNetworks(I)Ljava/util/List;

    move-result-object v1

    .line 654
    .local v1, "remembered":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMWifiConfiguration;>;"
    :goto_28
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v0, :cond_75

    .line 655
    iget v5, p1, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->networkId:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/mdm/config/LGMDMWifiConfiguration;

    iget v4, v4, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->networkId:I

    if-ne v5, v4, :cond_72

    .line 656
    iget-object v4, p1, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_58

    iget-object v5, p1, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/mdm/config/LGMDMWifiConfiguration;

    iget-object v4, v4, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_58

    .line 657
    const-string/jumbo v4, "WifiController"

    const-string/jumbo v5, "cannnot update, do not change SSID."

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    return v6

    .line 659
    :cond_58
    invoke-virtual {p1}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getAuthType()I

    move-result v5

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/mdm/config/LGMDMWifiConfiguration;

    invoke-virtual {v4}, Lcom/lge/mdm/config/LGMDMWifiConfiguration;->getAuthType()I

    move-result v4

    if-eq v5, v4, :cond_75

    .line 660
    const-string/jumbo v4, "WifiController"

    const-string/jumbo v5, "cannot update, do not change keymgmt."

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    return v6

    .line 665
    :cond_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 668
    :cond_75
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMWifiController;->LGMDMWifiConfigurationToWifiConfiguration(Lcom/lge/mdm/config/LGMDMWifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 669
    .local v3, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mActivePossibleManageWiFiProfile:Z

    .line 670
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMWifiController;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 671
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/lge/mdm/controller/LGMDMWifiController;->mActivePossibleManageWiFiProfile:Z

    .line 672
    return v2
.end method
