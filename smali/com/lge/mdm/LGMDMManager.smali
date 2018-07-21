.class public Lcom/lge/mdm/LGMDMManager;
.super Ljava/lang/Object;
.source "LGMDMManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/LGMDMManager$LGMDMManagerHolder;,
        Lcom/lge/mdm/LGMDMManager$ApplicationType;,
        Lcom/lge/mdm/LGMDMManager$KeyType;,
        Lcom/lge/mdm/LGMDMManager$APNProfile;,
        Lcom/lge/mdm/LGMDMManager$CertType;
    }
.end annotation


# static fields
.field public static final ALERT_MOBILE_DATA:I = 0x1

.field public static final ALLOW_VPN:I = 0x0

.field public static final APILEVEL_ALL_FEATURES:I = 0x1

.field public static final APILEVEL_EAS_AND_KILLSWITCH_ONLY:I = 0x0

.field public static final ATCMD_NOT_SUPPORT:I = 0x0

.field public static final ATCMD_SET_FAIL:I = -0x1

.field public static final ATCMD_SET_SUCCEEDED:I = 0x1

.field public static final AUDIOPORTAPI_NOT_SUPPORT:I = 0x0

.field public static final AUDIOPORTAPI_SET_FAIL:I = -0x1

.field public static final AUDIOPORTAPI_SET_SUCCEEDED:I = 0x1

.field public static final COMMONCRITERIA_DISABLED:I = 0x1

.field public static final COMMONCRITERIA_ENABLED:I = 0x2

.field public static final COMMONCRITERIA_NONE:I = 0x0

.field public static final CON_INFO_ACCESS_ALLOW:I = 0x0

.field public static final CON_INFO_ACCESS_DISALLOW_WITHOUT_NOTI:I = 0x2

.field public static final CON_INFO_ACCESS_DISALLOW_WITH_NOTI:I = 0x1

.field public static final DEVICE_POWER_OFF:I = 0x0

.field public static final DEVICE_REBOOT:I = 0x1

.field public static final DISALLOW_VPN_ALL:I = 0x3

.field public static final DISALLOW_VPN_LG:I = 0x2

.field public static final DISALLOW_VPN_NATIVE:I = 0x1

.field public static final DOWNLOADMODE_NOT_SUPPORT:I = 0x0

.field public static final DOWNLOADMODE_SET_FAIL:I = -0x1

.field public static final DOWNLOADMODE_SET_SUCCEEDED:I = 0x1

.field public static final GOOGLE_ERROR_REPORT_ALLOW:I = 0x0

.field public static final GOOGLE_ERROR_REPORT_DISALLOW_ALL:I = 0x7fffffff

.field public static final IPTABLES_BLACKLIST:I = 0x1

.field public static final IPTABLES_NONE:I = 0x0

.field public static final IPTABLES_WHITELIST:I = 0x2

.field public static final LGMDMBLUETOOTH_DEVICE_ALL:I = 0x1f

.field public static final LGMDMBLUETOOTH_DEVICE_ETC:I = 0x10

.field public static final LGMDMBLUETOOTH_DEVICE_HEADSET:I = 0x1

.field public static final LGMDMBLUETOOTH_DEVICE_HID:I = 0x8

.field public static final LGMDMBLUETOOTH_DEVICE_MOBILEPHONE:I = 0x2

.field public static final LGMDMBLUETOOTH_DEVICE_NONE:I = 0x0

.field public static final LGMDMBLUETOOTH_DEVICE_PC:I = 0x4

.field public static final LGMDMBLUETOOTH_PROFILE_ALL_TYPE:I = 0xf

.field public static final LGMDMBLUETOOTH_PROFILE_AUDIO_TYPE:I = 0x1

.field public static final LGMDMBLUETOOTH_PROFILE_FILETRANSFER_TYPE:I = 0x2

.field public static final LGMDMBLUETOOTH_PROFILE_HID_TYPE:I = 0x8

.field public static final LGMDMBLUETOOTH_PROFILE_NETWORK_TYPE:I = 0x4

.field public static final LGMDMBLUETOOTH_PROFILE_NONE_TYPE:I = 0x0

.field public static final LGMDMBluetooth_ALLOW:I = 0x2

.field public static final LGMDMBluetooth_ALLOW_AUDIOONLY:I = 0x1

.field public static final LGMDMBluetooth_DISALLOW:I = 0x0

.field public static final LGMDMCERTIFICATE_ERROR:I = 0x5

.field public static final LGMDMCERTIFICATE_FILE_NOT_FOUND:I = 0x2

.field public static final LGMDMCERTIFICATE_FILE_NOT_READ:I = 0x4

.field public static final LGMDMCERTIFICATE_FILE_SIZE_LARGE:I = 0x3

.field public static final LGMDMCERTIFICATE_HAS_NO_CERTIFICATE:I = 0x7

.field public static final LGMDMCERTIFICATE_INSTALLED:I = 0x1

.field public static final LGMDMCERTIFICATE_KEYSTORE_LOCKED:I = 0x8

.field public static final LGMDMCERTIFICATE_PASSWORD_FAILED:I = 0x6

.field public static final LGMDMCERTIFICATE_TYPE_SYSTEM:I = 0x1

.field public static final LGMDMCERTIFICATE_TYPE_WIFI:I = 0x2

.field public static final LGMDMENCRYPTION_DEVICE:I = 0x1

.field public static final LGMDMENCRYPTION_DEVICE_AND_STORAGE:I = 0x3

.field public static final LGMDMENCRYPTION_DEVICE_AND_STORAGE_DISABLED:I = 0x6

.field public static final LGMDMENCRYPTION_DEVICE_DISABLED:I = 0x5

.field public static final LGMDMENCRYPTION_DISABLED:I = 0x0

.field public static final LGMDMENCRYPTION_NONE:I = 0x4

.field public static final LGMDMENCRYPTION_STORAGE:I = 0x2

.field public static final LIMIT_MOBILE_DATA:I = 0x0

.field public static final LOCKOUT_STATE:I = 0x1

.field public static final MAX_LOCKOUT_STATE:I = 0x1

.field public static final NFC_ALLOW:I = 0x1

.field public static final NFC_ALLOW_CARDMODE:I = 0x4

.field public static final NFC_DISALLOW:I = 0x0

.field public static final OWNERINFO_DISABLED:I = 0x2

.field public static final OWNERINFO_ENABLED:I = 0x1

.field public static final OWNERINFO_NONE:I = 0x0

.field public static final PERMISSION_GRANT_STATE_DEFAULT:I = 0x0

.field public static final PERMISSION_GRANT_STATE_DENIED:I = 0x2

.field public static final PERMISSION_GRANT_STATE_GRANTED:I = 0x1

.field public static final SIGNATURE_SET_FAIL:I = -0x1

.field public static final SIGNATURE_SET_SUCCEEDED:I = 0x1

.field public static final SIMPLE_PASSWORD_FOUR_LETTERS:I = 0x1

.field public static final SIMPLE_PASSWORD_MAX:I = 0x10

.field public static final SIMPLE_PASSWORD_NONE:I = 0x0

.field public static final SIMPLE_PASSWORD_THREE_LETTERS:I = 0x2

.field public static final START_APP_TYPE_ACTIVITY:I = 0x0

.field public static final START_APP_TYPE_ALL:I = 0x2

.field public static final START_APP_TYPE_SERVICE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LGMDMManager"

.field public static final UNLOCKOUT_STATE:I = 0x0

.field public static final WIFI_ADD_INVALID_STRING_EAP:I = -0xc

.field public static final WIFI_ADD_INVALID_STRING_PHASE2:I = -0xe

.field public static final WIFI_ADD_KEYSTORE_MISSING_CERT_NAME:I = -0xa

.field public static final WIFI_ADD_KEYSTOR_NO_UNLOCK:I = -0xb

.field public static final WIFI_ADD_SUCCESS:I = 0x0

.field public static final WIFI_MAC_ADDRESS_LIST_BLACKLIST:I = 0x1

.field public static final WIFI_MAC_ADDRESS_LIST_NOT_USED:I = 0x0

.field public static final WIFI_MAC_ADDRESS_LIST_WHITELIST:I = 0x2

.field public static final WIFI_SECURITY_EAP:I = 0x3

.field public static final WIFI_SECURITY_NONE:I = 0x0

.field public static final WIFI_SECURITY_WEP:I = 0x1

.field public static final WIFI_SECURITY_WPA:I = 0x2

.field public static final WIFI_SSIDLIST_BLACKLIST:I = 0x1

.field public static final WIFI_SSIDLIST_NOT_USED:I = 0x0

.field public static final WIFI_SSIDLIST_WHITELIST:I = 0x2

.field public static final WIRELESS_STORAGE_ALLOW:I = 0x0

.field public static final WIRELESS_STORAGE_DISALLOW:I = 0x1


# instance fields
.field private mDebug:Z

.field private mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;


# direct methods
.method private constructor <init>()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1099
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1100
    const-string/jumbo v2, "LGMDMManager"

    const-string/jumbo v3, "Create singleton instance"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2c

    :goto_17
    iput-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    .line 1103
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->create()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    .line 1104
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-nez v0, :cond_2b

    .line 1105
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getDebugMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    .line 1099
    :cond_2b
    return-void

    :cond_2c
    move v0, v1

    .line 1101
    goto :goto_17
.end method

.method synthetic constructor <init>(Lcom/lge/mdm/LGMDMManager;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/lge/mdm/LGMDMManager;-><init>()V

    return-void
.end method

.method private checkWho(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6833
    if-eqz p1, :cond_7

    .line 6834
    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6838
    .local v0, "resultWho":Ljava/lang/String;
    :goto_6
    return-object v0

    .line 6836
    .end local v0    # "resultWho":Ljava/lang/String;
    :cond_7
    const-string/jumbo v0, "NULL"

    .restart local v0    # "resultWho":Ljava/lang/String;
    goto :goto_6
.end method

.method public static getInstance()Lcom/lge/mdm/LGMDMManager;
    .registers 1

    .prologue
    .line 1115
    invoke-static {}, Lcom/lge/mdm/LGMDMManager$LGMDMManagerHolder;->-get0()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ExportCCauditLogFile(Landroid/content/ComponentName;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 10889
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->ExportCCauditLogFile(Landroid/content/ComponentName;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 10890
    .local v0, "ret":Landroid/os/ParcelFileDescriptor;
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_3a

    .line 10891
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cCLF("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10893
    :cond_3a
    return-object v0
.end method

.method public activateApn(Landroid/content/ComponentName;I)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "id"    # I

    .prologue
    .line 7457
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 7458
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "apncofig(gcapnl)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7460
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->activateApn(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public addApn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMApnConfiguration;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "config"    # Lcom/lge/mdm/config/LGMDMApnConfiguration;

    .prologue
    .line 7366
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 7367
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "apncofig(aapn)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7369
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->addApn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMApnConfiguration;)I

    move-result v0

    return v0
.end method

.method public addEmailCertConfig(Lcom/lge/mdm/config/LGMDMEmailCertConfig;)V
    .registers 4
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMEmailCertConfig;

    .prologue
    .line 4113
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_d

    .line 4114
    const-string/jumbo v0, "LGMDMManager"

    const-string/jumbo v1, "aECC()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4116
    :cond_d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->addEmailCertConfig(Lcom/lge/mdm/config/LGMDMEmailCertConfig;)V

    .line 4112
    return-void
.end method

.method public addExchangeConfig(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;)V
    .registers 4
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;

    .prologue
    .line 3852
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_d

    .line 3853
    const-string/jumbo v0, "LGMDMManager"

    const-string/jumbo v1, "aEC()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3855
    :cond_d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->addExchangeConfig(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;)V

    .line 3851
    return-void
.end method

.method public addLGVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMLgVpnProfile;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profile"    # Lcom/lge/mdm/config/LGMDMLgVpnProfile;

    .prologue
    .line 5644
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 5645
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "aLVP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5647
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->addLGVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMLgVpnProfile;)I

    move-result v0

    return v0
.end method

.method public addNetwork(Lcom/lge/mdm/config/LGMDMWifiConfiguration;)I
    .registers 6
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMWifiConfiguration;

    .prologue
    .line 1286
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->addNetwork(Lcom/lge/mdm/config/LGMDMWifiConfiguration;)I

    move-result v0

    .line 1287
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_24

    .line 1288
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "aN() ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    :cond_24
    return v0
.end method

.method public addPOPIMAPConfig(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;)V
    .registers 4
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;

    .prologue
    .line 3518
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_d

    .line 3519
    const-string/jumbo v0, "LGMDMManager"

    const-string/jumbo v1, "aPOPIMAPC()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3521
    :cond_d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->addPOPIMAPConfig(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;)V

    .line 3517
    return-void
.end method

.method public addVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profile"    # Lcom/lge/mdm/config/LGMDMVpnProfile;

    .prologue
    .line 5509
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 5510
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "aVP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5512
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->addVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;)V

    .line 5508
    return-void
.end method

.method public addWifiNetwork(Lcom/lge/mdm/config/LGMDMWifiConfiguration;)I
    .registers 6
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMWifiConfiguration;

    .prologue
    .line 1324
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->addNetwork(Lcom/lge/mdm/config/LGMDMWifiConfiguration;)I

    move-result v0

    .line 1325
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_24

    .line 1326
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "aWN() ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :cond_24
    return v0
.end method

.method public checkRootDetection(Landroid/content/ComponentName;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7339
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkRootDetection(Landroid/content/ComponentName;)I

    move-result v0

    .line 7340
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 7341
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cRD("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7343
    :cond_33
    return v0
.end method

.method public connectLgVpn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMLgVpnProfile;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "lProfile"    # Lcom/lge/mdm/config/LGMDMLgVpnProfile;

    .prologue
    .line 6159
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 6160
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cLVp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6163
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->connectVpn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;Lcom/lge/mdm/config/LGMDMLgVpnProfile;)I

    move-result v0

    return v0
.end method

.method public connectNativeVpn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "nProfile"    # Lcom/lge/mdm/config/LGMDMVpnProfile;

    .prologue
    .line 6126
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 6127
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cNVp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6130
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->connectVpn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;Lcom/lge/mdm/config/LGMDMLgVpnProfile;)I

    move-result v0

    return v0
.end method

.method public deleteApn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMApnConfiguration;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "config"    # Lcom/lge/mdm/config/LGMDMApnConfiguration;

    .prologue
    .line 7405
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 7406
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "apncofig(dapn)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7408
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->deleteApn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMApnConfiguration;)Z

    move-result v0

    return v0
.end method

.method public deleteEmailCertConfig(Ljava/lang/String;)V
    .registers 4
    .param p1, "sEmailCertID"    # Ljava/lang/String;

    .prologue
    .line 4182
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_d

    .line 4183
    const-string/jumbo v0, "LGMDMManager"

    const-string/jumbo v1, "dECC()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4185
    :cond_d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->deleteEmailCertConfig(Ljava/lang/String;)V

    .line 4181
    return-void
.end method

.method public deleteExchangeConfig(Ljava/lang/String;)V
    .registers 4
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 4044
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_d

    .line 4045
    const-string/jumbo v0, "LGMDMManager"

    const-string/jumbo v1, "dEC()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4047
    :cond_d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->deleteExchangeConfig(Ljava/lang/String;)V

    .line 4043
    return-void
.end method

.method public deleteLGVpnProfile(Landroid/content/ComponentName;Ljava/lang/String;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "pName"    # Ljava/lang/String;

    .prologue
    .line 5705
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 5706
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dLVP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5708
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->deleteLGVpnProfile(Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deletePOPIMAPConfig(Ljava/lang/String;)V
    .registers 4
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 3676
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_d

    .line 3677
    const-string/jumbo v0, "LGMDMManager"

    const-string/jumbo v1, "dPOPIMAPC()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3679
    :cond_d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->deletePOPIMAPConfig(Ljava/lang/String;I)V

    .line 3675
    return-void
.end method

.method public deletePOPIMAPConfig(Ljava/lang/String;I)V
    .registers 5
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # I

    .prologue
    .line 3756
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_d

    .line 3757
    const-string/jumbo v0, "LGMDMManager"

    const-string/jumbo v1, "dPOPIMAPC()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3759
    :cond_d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->deletePOPIMAPConfig(Ljava/lang/String;I)V

    .line 3755
    return-void
.end method

.method public deleteVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profile"    # Lcom/lge/mdm/config/LGMDMVpnProfile;

    .prologue
    .line 5570
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 5571
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dVP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5573
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->deleteVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;)V

    .line 5569
    return-void
.end method

.method public devicePowerOff(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "devicefunction"    # I

    .prologue
    .line 9000
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 9001
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dPO("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") devicefunction : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9003
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->devicePowerOff(Landroid/content/ComponentName;I)V

    .line 8999
    return-void
.end method

.method public disableNetwork(I)Z
    .registers 6
    .param p1, "netId"    # I

    .prologue
    .line 1496
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->disableNetwork(I)Z

    move-result v0

    .line 1497
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_24

    .line 1498
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dN() ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    :cond_24
    return v0
.end method

.method public disableWifiNetwork(I)Z
    .registers 6
    .param p1, "netId"    # I

    .prologue
    .line 1516
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->disableNetwork(I)Z

    move-result v0

    .line 1517
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_24

    .line 1518
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dWN() ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    :cond_24
    return v0
.end method

.method public disconnect()Z
    .registers 5

    .prologue
    .line 1534
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->disconnect()Z

    move-result v0

    .line 1535
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_24

    .line 1536
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disconnect() ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :cond_24
    return v0
.end method

.method public disconnectLgVpn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMLgVpnProfile;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "lProfile"    # Lcom/lge/mdm/config/LGMDMLgVpnProfile;

    .prologue
    .line 6222
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 6223
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dLVp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6226
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->disconnectVpn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;Lcom/lge/mdm/config/LGMDMLgVpnProfile;)I

    move-result v0

    return v0
.end method

.method public disconnectNativeVpn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "nProfile"    # Lcom/lge/mdm/config/LGMDMVpnProfile;

    .prologue
    .line 6197
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 6198
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dNVp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6201
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->disconnectVpn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;Lcom/lge/mdm/config/LGMDMLgVpnProfile;)I

    move-result v0

    return v0
.end method

.method public disconnectWifi()Z
    .registers 5

    .prologue
    .line 1551
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->disconnect()Z

    move-result v0

    .line 1552
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_24

    .line 1553
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dW() ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_24
    return v0
.end method

.method public enableNetwork(IZ)Z
    .registers 7
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 1452
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->enableNetwork(IZ)Z

    move-result v0

    .line 1453
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_24

    .line 1454
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "eN() ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :cond_24
    return v0
.end method

.method public enableWifiNetwork(IZ)Z
    .registers 7
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 1475
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->enableNetwork(IZ)Z

    move-result v0

    .line 1476
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_24

    .line 1477
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "eWN() ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    :cond_24
    return v0
.end method

.method public enumCertificateId(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6442
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 6443
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "eCeI("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6445
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->enumCertificateId(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public enumCertificateIdSelectUsetype(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "useType"    # I
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
    .line 6468
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 6469
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "eCeI("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6471
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->enumCertificateId(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public enumCertificateInfo(Landroid/content/ComponentName;Lcom/lge/mdm/LGMDMManager$CertType;)Ljava/util/List;
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "type"    # Lcom/lge/mdm/LGMDMManager$CertType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Lcom/lge/mdm/LGMDMManager$CertType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMCredentials;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 6418
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2a

    .line 6419
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "eCeIn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6421
    :cond_2a
    if-eqz p2, :cond_37

    .line 6422
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {p2}, Lcom/lge/mdm/LGMDMManager$CertType;->ordinal()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->enumCertificateInfo(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 6424
    :cond_37
    return-object v3
.end method

.method public enumLGVpnAvailableCertificate(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5837
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 5838
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "eLVAC("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5840
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->enumLGVpnAvailableCertificate(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public enumLGVpnInstalledCertificate(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5857
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 5858
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "eLVIC("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5860
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->enumLGVpnInstalledCertificate(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public enumLGVpnProfile(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMLgVpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5725
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 5726
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "eLVP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5728
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->enumLGVpnProfile(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public enumVpnProfile(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMVpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5591
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 5592
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "eVP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5594
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->enumVpnProfile(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public eraseStorage(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7890
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->eraseStorage(Landroid/content/ComponentName;)V

    .line 7891
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2e

    .line 7892
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "eSDc("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7889
    :cond_2e
    return-void
.end method

.method public get3G4GDataUsageInformation(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "startDate"    # Ljava/lang/String;
    .param p4, "endDate"    # Ljava/lang/String;

    .prologue
    .line 7034
    iget-object v2, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->get3G4GDataUsageInformation(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 7036
    .local v0, "ret":J
    iget-boolean v2, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v2, :cond_54

    .line 7037
    const-string/jumbo v2, "LGMDMManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "g3GDUI("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 7038
    const-string/jumbo v4, " StartDate:"

    .line 7037
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 7038
    const-string/jumbo v4, " endDay:"

    .line 7037
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7040
    :cond_54
    return-wide v0
.end method

.method public getActiveSyncID(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I

    .prologue
    .line 4409
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getActiveSyncID(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v0

    .line 4410
    .local v0, "ret":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 4411
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gASID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4413
    :cond_33
    return-object v0
.end method

.method public getAllowAirplaneModeOn(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6874
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowAirplaneModeOn(Landroid/content/ComponentName;)Z

    move-result v0

    .line 6875
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 6876
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAAMO("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6878
    :cond_33
    return v0
.end method

.method public getAllowAndroidBeam(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 9407
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowAndroidBeam(Landroid/content/ComponentName;)Z

    move-result v0

    .line 9408
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 9409
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAAB("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9411
    :cond_33
    return v0
.end method

.method public getAllowAutoRestore(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 8806
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowAutoRestore(Landroid/content/ComponentName;)Z

    move-result v0

    .line 8807
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 8808
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAAR("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8810
    :cond_33
    return v0
.end method

.method public getAllowAutoSync(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 8895
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowAutoSync(Landroid/content/ComponentName;)Z

    move-result v0

    .line 8896
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 8897
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAAS("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8899
    :cond_33
    return v0
.end method

.method public getAllowBackgroundProcessLimit(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 8520
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBackgroundProcessLimit(Landroid/content/ComponentName;)Z

    move-result v0

    .line 8521
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 8522
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gABPL("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8524
    :cond_33
    return v0
.end method

.method public getAllowBluetooth(Landroid/content/ComponentName;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2184
    const/4 v0, 0x0

    .line 2185
    .local v0, "ret":I
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBluetooth(Landroid/content/ComponentName;)I

    move-result v0

    .line 2186
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_34

    .line 2187
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAB("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    :cond_34
    return v0
.end method

.method public getAllowBluetoothPairing(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7685
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBluetoothPairing(Landroid/content/ComponentName;)Z

    move-result v0

    .line 7686
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 7687
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gBP("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7689
    :cond_33
    return v0
.end method

.method public getAllowBluetoothProfiles(Landroid/content/ComponentName;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7549
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBluetoothProfiles(Landroid/content/ComponentName;)I

    move-result v0

    .line 7550
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 7551
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gABP("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7553
    :cond_33
    return v0
.end method

.method public getAllowBluetoothTethering(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1775
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBluetoothTethering(Landroid/content/ComponentName;)Z

    move-result v0

    .line 1776
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 1777
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gABT("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    :cond_33
    return v0
.end method

.method public getAllowBluetoothVisible(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7500
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBluetoothVisible(Landroid/content/ComponentName;)Z

    move-result v0

    .line 7501
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 7502
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gABV("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7504
    :cond_33
    return v0
.end method

.method public getAllowBluetoothWithMACWhitelist(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7783
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBluetoothWithMACWhitelist(Landroid/content/ComponentName;)Z

    move-result v0

    .line 7785
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 7786
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gABMAL("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7789
    :cond_33
    return v0
.end method

.method public getAllowBrowser(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2918
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowNonWebkitBrowser(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2919
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 2920
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gANWB("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    :cond_33
    return v0
.end method

.method public getAllowBrowserProxySetup(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7837
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBrowserProxySetup(Landroid/content/ComponentName;)Z

    move-result v0

    .line 7838
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 7839
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gABPS("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7841
    :cond_33
    return v0
.end method

.method public getAllowCIDWithWhitelist(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2110
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowCIDWithWhitelist(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2111
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 2112
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gACIDWL("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    :cond_33
    return v0
.end method

.method public getAllowCallInRoaming(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 8359
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowCallInRoaming(Landroid/content/ComponentName;)Z

    move-result v0

    .line 8360
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 8361
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gACIR("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8363
    :cond_33
    return v0
.end method

.method public getAllowCameraWithWhitelist(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2336
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowCameraWithWhitelist(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2337
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 2338
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gACWL("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    :cond_33
    return v0
.end method

.method public getAllowChangeDateAndTime(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 9538
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowChangeDateAndTime(Landroid/content/ComponentName;)Z

    move-result v0

    .line 9539
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 9540
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gACDAT("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9542
    :cond_33
    return v0
.end method

.method public getAllowChangeTimezone(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 9582
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowChangeTimezone(Landroid/content/ComponentName;)Z

    move-result v0

    .line 9583
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 9584
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gACT("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9586
    :cond_33
    return v0
.end method

.method public getAllowChangingMobileDataUsageCycle(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 9624
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowChangingMobileDataUsageCycle(Landroid/content/ComponentName;)Z

    move-result v0

    .line 9625
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 9626
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gACMDUC("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9628
    :cond_33
    return v0
.end method

.method public getAllowClipboard(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 8604
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowClipboard(Landroid/content/ComponentName;)Z

    move-result v0

    .line 8605
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 8606
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAC("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8608
    :cond_33
    return v0
.end method

.method public getAllowCommandForInternetAccess(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7300
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowCommandForInternetAccess(Landroid/content/ComponentName;)Z

    move-result v0

    .line 7301
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 7302
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gACFIA("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7304
    :cond_33
    return v0
.end method

.method public getAllowConsumerEmail(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4252
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowConsumerEmail(Landroid/content/ComponentName;)Z

    move-result v0

    .line 4253
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 4254
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gACE("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4256
    :cond_33
    return v0
.end method

.method public getAllowContactInfoAccess(Landroid/content/ComponentName;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 10080
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowContactInfoAccess(Landroid/content/ComponentName;)I

    move-result v0

    .line 10081
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 10082
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gACIA("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10084
    :cond_33
    return v0
.end method

.method public getAllowDLNADiscovery(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 10290
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowDLNADiscovery(Landroid/content/ComponentName;)Z

    move-result v0

    .line 10291
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 10292
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gADD("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10295
    :cond_33
    return v0
.end method

.method public getAllowDataRoaming(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2958
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowDataRoaming(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2959
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 2960
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gADR("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    :cond_33
    return v0
.end method

.method public getAllowDataTransmissionViaAudioPort(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 9823
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowDataTransmissionViaAudioPort(Landroid/content/ComponentName;)Z

    move-result v0

    .line 9824
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 9825
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gADTVAP("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9827
    :cond_33
    return v0
.end method

.method public getAllowDeveloperMode(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 10205
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowDeveloperMode(Landroid/content/ComponentName;)Z

    move-result v0

    .line 10206
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 10207
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gDM("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10209
    :cond_33
    return v0
.end method

.method public getAllowDownloadMode(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 9468
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowDownloadMode(Landroid/content/ComponentName;)Z

    move-result v0

    .line 9469
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 9470
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gADM("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9472
    :cond_33
    return v0
.end method

.method public getAllowDualWindow(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 10726
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowDualWindow(Landroid/content/ComponentName;)Z

    move-result v0

    .line 10727
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 10728
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gADW("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10731
    :cond_33
    return v0
.end method

.method public getAllowExternalMemorySlot(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2045
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowExternalMemorySlot(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2046
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 2047
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAEMS("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    :cond_33
    return v0
.end method

.method public getAllowGPSLocation(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1922
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowGPSLocation(Landroid/content/ComponentName;)Z

    move-result v0

    .line 1923
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 1924
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAGPSL("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    :cond_33
    return v0
.end method

.method public getAllowGoogleBackup(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 8768
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowGoogleBackup(Landroid/content/ComponentName;)Z

    move-result v0

    .line 8769
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 8770
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAGB("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8772
    :cond_33
    return v0
.end method

.method public getAllowGoogleErrorReport(Landroid/content/ComponentName;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5427
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowGoogleErrorReport(Landroid/content/ComponentName;)I

    move-result v0

    .line 5428
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 5429
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAGER("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5431
    :cond_33
    return v0
.end method

.method public getAllowHardwareFactoryreset(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6970
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowHardwareFactoryreset(Landroid/content/ComponentName;)Z

    move-result v0

    .line 6971
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 6972
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAHF("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6974
    :cond_33
    return v0
.end method

.method public getAllowHotspot(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1684
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowHotspot(Landroid/content/ComponentName;)Z

    move-result v0

    .line 1685
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 1686
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAH("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    :cond_33
    return v0
.end method

.method public getAllowInfraredPort(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 10335
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowInfraredPort(Landroid/content/ComponentName;)Z

    move-result v0

    .line 10336
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 10337
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAIP("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10340
    :cond_33
    return v0
.end method

.method public getAllowInstallApplication(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4667
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowInstallApplication(Landroid/content/ComponentName;)Z

    move-result v0

    .line 4668
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 4669
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAIA("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4671
    :cond_33
    return v0
.end method

.method public getAllowLGVpn(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6006
    const/4 v0, 0x1

    .line 6008
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowVpn(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 6009
    const/4 v0, 0x0

    .line 6012
    :cond_b
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_38

    .line 6013
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gALVp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6016
    :cond_38
    return v0
.end method

.method public getAllowListForInternetAccess(Landroid/content/ComponentName;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7196
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowListForInternetAccess(Landroid/content/ComponentName;)I

    move-result v0

    .line 7197
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 7198
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gALFIA("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7200
    :cond_33
    return v0
.end method

.method public getAllowLockdownApps(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4968
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowLockdownApps(Landroid/content/ComponentName;)Z

    move-result v0

    .line 4969
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 4970
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gALdA("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4972
    :cond_33
    return v0
.end method

.method public getAllowMaximumRepeatedPassword(Landroid/content/ComponentName;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 9921
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMaximumRepeatedPassword(Landroid/content/ComponentName;)I

    move-result v0

    .line 9923
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 9924
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gASP("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9927
    :cond_33
    return v0
.end method

.method public getAllowMaximumSequentialPassword(Landroid/content/ComponentName;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 9962
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMaximumSequentialPassword(Landroid/content/ComponentName;)I

    move-result v0

    .line 9964
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 9965
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAMSP("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9968
    :cond_33
    return v0
.end method

.method public getAllowMicrophone(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6324
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMicrophone(Landroid/content/ComponentName;)Z

    move-result v0

    .line 6325
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 6326
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAM("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6328
    :cond_33
    return v0
.end method

.method public getAllowMiracast(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 9367
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMiracast(Landroid/content/ComponentName;)Z

    move-result v0

    .line 9368
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 9369
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAMir("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9371
    :cond_33
    return v0
.end method

.method public getAllowMobileNetwork(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2998
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMobileNetwork(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2999
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 3000
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAMN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    :cond_33
    return v0
.end method

.method public getAllowMockLocation(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2003
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMockLocation(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2004
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 2005
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAML("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    :cond_33
    return v0
.end method

.method public getAllowMultiUser(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 9138
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMultiUser(Landroid/content/ComponentName;)Z

    move-result v0

    .line 9139
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 9140
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAMU("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9142
    :cond_33
    return v0
.end method

.method public getAllowNativeVpn(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5943
    const/4 v0, 0x1

    .line 5945
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowVpn(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 5946
    const/4 v0, 0x0

    .line 5949
    :cond_b
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_38

    .line 5950
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gANVp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5953
    :cond_38
    return v0
.end method

.method public getAllowNfc(Landroid/content/ComponentName;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6820
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowNfc(Landroid/content/ComponentName;)I

    move-result v0

    .line 6821
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 6822
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6824
    :cond_33
    return v0
.end method

.method public getAllowNonWebkitBrowser(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 9448
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowNonWebkitBrowser(Landroid/content/ComponentName;)Z

    move-result v0

    .line 9449
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 9450
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gANWB("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9452
    :cond_33
    return v0
.end method

.method public getAllowNotifySpecificProcessKillEvent(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5141
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowNotifySpecificProcessKillEvent(Landroid/content/ComponentName;)Z

    move-result v0

    .line 5142
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 5143
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gANSPKE("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5145
    :cond_33
    return v0
.end method

.method public getAllowOSUpdate(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 8232
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowOSUpdate(Landroid/content/ComponentName;)Z

    move-result v0

    .line 8233
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 8234
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAOSU("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8236
    :cond_33
    return v0
.end method

.method public getAllowOwnerInfo(Landroid/content/ComponentName;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 9286
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowOwnerInfo(Landroid/content/ComponentName;)I

    move-result v0

    .line 9287
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 9288
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAOI("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9290
    :cond_33
    return v0
.end method

.method public getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4329
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v0

    .line 4330
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 4331
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAPOPIMAPE("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4333
    :cond_33
    return v0
.end method

.method public getAllowPassiveProvider(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 9119
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowPassiveProvider(Landroid/content/ComponentName;)Z

    move-result v0

    .line 9120
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 9121
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAPP("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9123
    :cond_33
    return v0
.end method

.method public getAllowPasswordComplexForEAS(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2454
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowPasswordComplexForEAS(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2455
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 2456
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAPCFEAS("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    :cond_33
    return v0
.end method

.method public getAllowPasswordTypingVisible(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 8825
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowPasswordTypingVisible(Landroid/content/ComponentName;)Z

    move-result v0

    .line 8826
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 8827
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAPTV("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8829
    :cond_33
    return v0
.end method

.method public getAllowPasswordVisible(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 9178
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowPasswordVisible(Landroid/content/ComponentName;)Z

    move-result v0

    .line 9179
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 9180
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAPV("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9182
    :cond_33
    return v0
.end method

.method public getAllowPowerOff(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 10485
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowPowerOff(Landroid/content/ComponentName;)Z

    move-result v0

    .line 10486
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 10487
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAPO("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10489
    :cond_33
    return v0
.end method

.method public getAllowProcessWatcherandKeeper(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5120
    invoke-virtual {p0, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowNotifySpecificProcessKillEvent(Landroid/content/ComponentName;)Z

    move-result v0

    .line 5121
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_31

    .line 5122
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAPWK("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5124
    :cond_31
    return v0
.end method

.method public getAllowQuickCircle(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 10531
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowQuickCircle(Landroid/content/ComponentName;)Z

    move-result v0

    .line 10532
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 10533
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAQC("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10536
    :cond_33
    return v0
.end method

.method public getAllowReadyToConnectInBluetooth(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 10815
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowReadyToConnectInBluetooth(Landroid/content/ComponentName;)Z

    move-result v0

    .line 10816
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 10817
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gARTCIB("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10820
    :cond_33
    return v0
.end method

.method public getAllowReceivingSmsMms(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 10028
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowReceivingSmsMms(Landroid/content/ComponentName;)Z

    move-result v0

    .line 10029
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 10030
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gARSM("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10032
    :cond_33
    return v0
.end method

.method public getAllowRemoveDeviceAdmin(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4582
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowRemoveDeviceAdmin(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    .line 4583
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_3e

    .line 4584
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gARDA("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4586
    :cond_3e
    return v0
.end method

.method public getAllowRemoveGoogleAccount(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 8688
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowRemoveGoogleAccount(Landroid/content/ComponentName;)Z

    move-result v0

    .line 8689
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 8690
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gARGA("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8692
    :cond_33
    return v0
.end method

.method public getAllowSafeMode(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 10769
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowSafeMode(Landroid/content/ComponentName;)Z

    move-result v0

    .line 10770
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 10771
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gASM("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10774
    :cond_33
    return v0
.end method

.method public getAllowScreenCapture(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3086
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowScreenCapture(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3087
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 3088
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gASC("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    :cond_33
    return v0
.end method

.method public getAllowScreenCaptureBlacklistWithoutADB(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3218
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowScreenCaptureBlacklistWithoutADB(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3219
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 3220
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gASCWBWithoutADB("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    :cond_33
    return v0
.end method

.method public getAllowScreenCaptureWhitelistWithoutADB(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3295
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowScreenCaptureWhitelistWithoutADB(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3296
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 3297
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gASCWLWADB("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    :cond_33
    return v0
.end method

.method public getAllowScreenCaptureWithBlacklist(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3171
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowScreenCaptureWithBlacklist(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3172
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 3173
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gASCWB("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    :cond_33
    return v0
.end method

.method public getAllowScreenCaptureWithoutADB(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3124
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowScreenCaptureWithoutADB(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3125
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 3126
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gASCWithoutADB("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    :cond_33
    return v0
.end method

.method public getAllowScreenPin(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 9219
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowScreenPin(Landroid/content/ComponentName;)Z

    move-result v0

    .line 9220
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 9221
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gASP("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9223
    :cond_33
    return v0
.end method

.method public getAllowSendingSms(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3375
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowSendingSMS(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3376
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 3377
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gASS("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    :cond_33
    return v0
.end method

.method public getAllowShortcutKey(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5472
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowShortcutKey(Landroid/content/ComponentName;)Z

    move-result v0

    .line 5473
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 5474
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gASK("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5476
    :cond_33
    return v0
.end method

.method public getAllowSignatureState(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5237
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowSignatureState(Landroid/content/ComponentName;)Z

    move-result v0

    .line 5238
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 5239
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gASS("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5241
    :cond_33
    return v0
.end method

.method public getAllowSimplePassword(Landroid/content/ComponentName;)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x0

    .line 2406
    iget-object v2, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMaximumRepeatedPassword(Landroid/content/ComponentName;)I

    move-result v0

    .line 2407
    .local v0, "ret1":I
    iget-object v2, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMaximumSequentialPassword(Landroid/content/ComponentName;)I

    move-result v1

    .line 2409
    .local v1, "ret2":I
    iget-boolean v2, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v2, :cond_45

    .line 2410
    const-string/jumbo v2, "LGMDMManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "gASP("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") ret1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ret2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    :cond_45
    if-nez v0, :cond_4b

    if-nez v1, :cond_4b

    .line 2414
    const/4 v2, 0x1

    return v2

    .line 2417
    :cond_4b
    return v5
.end method

.method public getAllowSimplePasswordEx(Landroid/content/ComponentName;)I
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 9984
    iget-object v2, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMaximumRepeatedPassword(Landroid/content/ComponentName;)I

    move-result v0

    .line 9985
    .local v0, "ret1":I
    iget-object v2, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMaximumSequentialPassword(Landroid/content/ComponentName;)I

    move-result v1

    .line 9987
    .local v1, "ret2":I
    iget-boolean v2, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v2, :cond_44

    .line 9988
    const-string/jumbo v2, "LGMDMManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "gASPE("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") ret1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ret2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9991
    :cond_44
    if-le v0, v1, :cond_47

    .end local v0    # "ret1":I
    :goto_46
    return v0

    .restart local v0    # "ret1":I
    :cond_47
    move v0, v1

    goto :goto_46
.end method

.method public getAllowSpecificApplication(Landroid/content/ComponentName;Lcom/lge/mdm/LGMDMManager$ApplicationType;)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "applicationType"    # Lcom/lge/mdm/LGMDMManager$ApplicationType;

    .prologue
    .line 5377
    const/4 v1, 0x1

    .line 5378
    .local v1, "ret":Z
    if-eqz p2, :cond_d

    .line 5379
    invoke-virtual {p2}, Lcom/lge/mdm/LGMDMManager$ApplicationType;->name()Ljava/lang/String;

    move-result-object v0

    .line 5380
    .local v0, "applicationName":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v2, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowSpecificApplication(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1

    .line 5382
    .end local v0    # "applicationName":Ljava/lang/String;
    .end local v1    # "ret":Z
    :cond_d
    iget-boolean v2, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v2, :cond_3a

    .line 5383
    const-string/jumbo v2, "LGMDMManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "gASpA("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5385
    :cond_3a
    return v1
.end method

.method public getAllowSpecificKey(Landroid/content/ComponentName;Lcom/lge/mdm/LGMDMManager$KeyType;)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "keyType"    # Lcom/lge/mdm/LGMDMManager$KeyType;

    .prologue
    .line 8183
    const/4 v0, 0x1

    .line 8184
    .local v0, "ret":Z
    if-eqz p2, :cond_d

    .line 8185
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {p2}, Lcom/lge/mdm/LGMDMManager$KeyType;->ordinal()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowSpecificKey(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 8187
    .end local v0    # "ret":Z
    :cond_d
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_3a

    .line 8188
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gASpK("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8190
    :cond_3a
    return v0
.end method

.method public getAllowStatusBarExpansion(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 8936
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowStatusBarExpansion(Landroid/content/ComponentName;)Z

    move-result v0

    .line 8937
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 8938
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gASBE("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8940
    :cond_33
    return v0
.end method

.method public getAllowTethering(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1638
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowTethering(Landroid/content/ComponentName;)Z

    move-result v0

    .line 1639
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 1640
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAT("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    :cond_33
    return v0
.end method

.method public getAllowUSBDebugging(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3334
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUSBDebugging(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3335
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 3336
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gUd("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3338
    :cond_33
    return v0
.end method

.method public getAllowUSBHostStorage(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 9078
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUSBHostStorage(Landroid/content/ComponentName;)Z

    move-result v0

    .line 9079
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 9080
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAUHS("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9082
    :cond_33
    return v0
.end method

.method public getAllowUSBMtp(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 8397
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUSBMtp(Landroid/content/ComponentName;)Z

    move-result v0

    .line 8398
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 8399
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAUM("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8401
    :cond_33
    return v0
.end method

.method public getAllowUSBPtp(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 8435
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUSBPtp(Landroid/content/ComponentName;)Z

    move-result v0

    .line 8436
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 8437
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAUP("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8439
    :cond_33
    return v0
.end method

.method public getAllowUSBStorage(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 8481
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUSBStorage(Landroid/content/ComponentName;)Z

    move-result v0

    .line 8482
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 8483
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAUS("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8485
    :cond_33
    return v0
.end method

.method public getAllowUSBTethering(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1729
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUSBTethering(Landroid/content/ComponentName;)Z

    move-result v0

    .line 1730
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 1731
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAUT("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    :cond_33
    return v0
.end method

.method public getAllowUninstallApplication(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4709
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUninstallApplication(Landroid/content/ComponentName;)Z

    move-result v0

    .line 4710
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 4711
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAUA("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4713
    :cond_33
    return v0
.end method

.method public getAllowUnknownSourceInstallation(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4476
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUnknownSourceInstallation(Landroid/content/ComponentName;)Z

    move-result v0

    .line 4477
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 4478
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAUSI("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4480
    :cond_33
    return v0
.end method

.method public getAllowUnsignedApplication(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4835
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUnsignedApplication(Landroid/content/ComponentName;)Z

    move-result v0

    .line 4836
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 4837
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAUsA("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4839
    :cond_33
    return v0
.end method

.method public getAllowUsb(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2226
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUsb(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2227
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 2228
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAU("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    :cond_33
    return v0
.end method

.method public getAllowUsbData(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2296
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUsbData(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2297
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 2298
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAUDt("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    :cond_33
    return v0
.end method

.method public getAllowUsbDrive(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2250
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUsbDrive(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2251
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 2252
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAUDrv("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    :cond_33
    return v0
.end method

.method public getAllowUsbPort(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2273
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUsbPort(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2274
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 2275
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAUPrt("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    :cond_33
    return v0
.end method

.method public getAllowVPNSplitTunneling(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6064
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowVPNSplitTunneling(Landroid/content/ComponentName;)Z

    move-result v0

    .line 6065
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 6066
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAVST("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6069
    :cond_33
    return v0
.end method

.method public getAllowVerizonLocation(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 9038
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowVerizonLocation(Landroid/content/ComponentName;)Z

    move-result v0

    .line 9039
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 9040
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAVL("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9042
    :cond_33
    return v0
.end method

.method public getAllowVpn(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5880
    const/4 v0, 0x1

    .line 5882
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowVpn(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    .line 5883
    const/4 v0, 0x0

    .line 5886
    :cond_b
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_38

    .line 5887
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAVp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5890
    :cond_38
    return v0
.end method

.method public getAllowWiFiMacAddressList(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8060
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWiFiMacAddressList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 8061
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_39

    .line 8062
    const-string/jumbo v2, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAWMAL("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8063
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8062
    :goto_2e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8065
    :cond_39
    return-object v0

    .line 8063
    :cond_3a
    const-string/jumbo v1, "null"

    goto :goto_2e
.end method

.method public getAllowWiFiMacAddressListType(Landroid/content/ComponentName;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 8081
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWiFiMacAddressListType(Landroid/content/ComponentName;)I

    move-result v0

    .line 8082
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 8083
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAWMALT("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8085
    :cond_33
    return v0
.end method

.method public getAllowWiFiProfileManagement(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 8254
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWiFiProfileManagement(Landroid/content/ComponentName;)Z

    move-result v0

    .line 8255
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 8256
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAWPM("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8258
    :cond_33
    return v0
.end method

.method public getAllowWiFiSSIDList(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7964
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWiFiSSIDList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 7965
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_39

    .line 7966
    const-string/jumbo v2, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAWSL("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 7967
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7966
    :goto_2e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7969
    :cond_39
    return-object v0

    .line 7967
    :cond_3a
    const-string/jumbo v1, "null"

    goto :goto_2e
.end method

.method public getAllowWiFiSSIDListType(Landroid/content/ComponentName;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7985
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWiFiSSIDListType(Landroid/content/ComponentName;)I

    move-result v0

    .line 7986
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 7987
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAWSLT("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7989
    :cond_33
    return v0
.end method

.method public getAllowWifi(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1181
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v0

    .line 1182
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 1183
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAW("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :cond_33
    return v0
.end method

.method public getAllowWifiAutoConnection(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 8127
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWifiAutoConnection(Landroid/content/ComponentName;)Z

    move-result v0

    .line 8128
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 8129
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAWAC("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8131
    :cond_33
    return v0
.end method

.method public getAllowWifiDirect(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 8649
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWifiDirect(Landroid/content/ComponentName;)Z

    move-result v0

    .line 8650
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 8651
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAWDi("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8653
    :cond_33
    return v0
.end method

.method public getAllowWifiScan(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1224
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWifiScan(Landroid/content/ComponentName;)Z

    move-result v0

    .line 1225
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 1226
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAWS("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_33
    return v0
.end method

.method public getAllowWipeData(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3414
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWipeData(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3415
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 3416
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAWD("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3418
    :cond_33
    return v0
.end method

.method public getAllowWirelessLocation(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1839
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWirelessLocation(Landroid/content/ComponentName;)Z

    move-result v0

    .line 1840
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 1841
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAWL("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    :cond_33
    return v0
.end method

.method public getAllowWirelessLocationWithWhitelist(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1883
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWirelessLocationWithWhitelist(Landroid/content/ComponentName;)Z

    move-result v0

    .line 1884
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 1885
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAWLWL("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    :cond_33
    return v0
.end method

.method public getAllowWirelessStorage(Landroid/content/ComponentName;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 8542
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWirelessStorage(Landroid/content/ComponentName;)I

    move-result v0

    .line 8543
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 8544
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAWLST("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8546
    :cond_33
    return v0
.end method

.method public getAppVersionState(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMAppVersionState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4796
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 4797
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gAVS("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4799
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAppVersionState(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationState(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMApplicationState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4754
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 4755
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gAS("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4757
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getApplicationState(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableMDMFunctionList()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 1053
    invoke-static {}, Lcom/lge/mdm/LGMDMFunction;->getAvailableMDMFunctionList()[Ljava/lang/String;

    move-result-object v0

    .line 1054
    .local v0, "ret":[Ljava/lang/String;
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_13

    .line 1055
    if-eqz v0, :cond_14

    .line 1056
    const-string/jumbo v1, "LGMDMManager"

    const-string/jumbo v2, "gAMDMFL() getAvailableMDMFunctionList != null"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_13
    :goto_13
    return-object v0

    .line 1058
    :cond_14
    const-string/jumbo v1, "LGMDMManager"

    const-string/jumbo v2, "gAMDMFL() getAvailableMDMFunctionList == null"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public getAvailableMDMFunctionList(I)[Ljava/lang/String;
    .registers 6
    .param p1, "version"    # I

    .prologue
    .line 1073
    invoke-static {p1}, Lcom/lge/mdm/LGMDMFunction;->getAvailableMDMFunctionList(I)[Ljava/lang/String;

    move-result-object v0

    .line 1074
    .local v0, "ret":[Ljava/lang/String;
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_2b

    .line 1075
    if-eqz v0, :cond_2c

    .line 1076
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAMDMFL("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") getAvailableMDMFunctionList != null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_2b
    :goto_2b
    return-object v0

    .line 1078
    :cond_2c
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gAMDMFL("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") getAvailableMDMFunctionList == null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method public getBlockingConsumerEmailList(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4284
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 4285
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gBCEL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4287
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getBlockingConsumerEmailList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothMACWhitelist(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7759
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getBluetoothMACWhitelist(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 7760
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_39

    .line 7761
    const-string/jumbo v2, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gBMAL("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 7762
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7761
    :goto_2e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7764
    :cond_39
    return-object v0

    .line 7762
    :cond_3a
    const-string/jumbo v1, "null"

    goto :goto_2e
.end method

.method public getBluetoothMaxVisiblityTimeOut(Landroid/content/ComponentName;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7597
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getBluetoothMaxVisiblityTimeOut(Landroid/content/ComponentName;)I

    move-result v0

    .line 7598
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 7599
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gBMV("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7601
    :cond_33
    return v0
.end method

.method public getBluetoothSearchedDeviceType(Landroid/content/ComponentName;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7644
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getBluetoothSearchedDeviceType(Landroid/content/ComponentName;)I

    move-result v0

    .line 7645
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 7646
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gBSD("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7648
    :cond_33
    return v0
.end method

.method public getBrowserProxyIPAddress(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7853
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getBrowserProxyIPAddress(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 7854
    .local v0, "ip":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 7855
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gBPIPA("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") IPAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7857
    :cond_33
    return-object v0
.end method

.method public getBrowserProxyPortNumber(Landroid/content/ComponentName;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7869
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getBrowserProxyPortNumber(Landroid/content/ComponentName;)I

    move-result v0

    .line 7870
    .local v0, "port":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 7871
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gBPPN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") PortNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7873
    :cond_33
    return v0
.end method

.method public getCIDWithWhitelist(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2130
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getCIDWithWhitelist(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 2131
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_39

    .line 2132
    const-string/jumbo v2, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gCIDWL("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2133
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2132
    :goto_2e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    :cond_39
    return-object v0

    .line 2133
    :cond_3a
    const-string/jumbo v1, "null"

    goto :goto_2e
.end method

.method public getCameraWhitelist(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2355
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getCameraWhitelist(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 2356
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_39

    .line 2357
    const-string/jumbo v2, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gCWL("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2358
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2357
    :goto_2e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    :cond_39
    return-object v0

    .line 2358
    :cond_3a
    const-string/jumbo v1, "null"

    goto :goto_2e
.end method

.method public getCommandListForInternetAccess(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7318
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getCommandListForInternetAccess(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 7319
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_39

    .line 7320
    const-string/jumbo v2, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gCLFIA("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 7321
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7320
    :goto_2e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7323
    :cond_39
    return-object v0

    .line 7321
    :cond_3a
    const-string/jumbo v1, "No command"

    goto :goto_2e
.end method

.method public getCommonCriteriaMode(Landroid/content/ComponentName;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 10611
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getCommonCriteriaMode(Landroid/content/ComponentName;)I

    move-result v0

    .line 10612
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 10613
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gECC("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10615
    :cond_33
    return v0
.end method

.method public getConfiguredApnList(Landroid/content/ComponentName;Lcom/lge/mdm/LGMDMManager$APNProfile;)Ljava/util/List;
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "option"    # Lcom/lge/mdm/LGMDMManager$APNProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Lcom/lge/mdm/LGMDMManager$APNProfile;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMApnConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 7431
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2a

    .line 7432
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "apncofig(gcapnl)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7434
    :cond_2a
    if-eqz p2, :cond_37

    .line 7435
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {p2}, Lcom/lge/mdm/LGMDMManager$APNProfile;->ordinal()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getConfiguredApnList(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 7437
    :cond_37
    return-object v3
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMWifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1256
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_d

    .line 1257
    const-string/jumbo v0, "LGMDMManager"

    const-string/jumbo v1, "gCN()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentConnectionLgVpn(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6244
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 6245
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gCCLVp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6248
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getCurrentConnectionLgVpn(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentConnectionVpn(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6266
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 6267
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gCCVp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6270
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getCurrentConnectionVpn(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDebugMode()Z
    .registers 2

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getDebugMode()Z

    move-result v0

    return v0
.end method

.method public getEmailAccountList(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMEmailAccountState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4432
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 4433
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gEAL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4435
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEmailAccountList(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionPolicy(Landroid/content/ComponentName;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2563
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEncryptionPolicy(Landroid/content/ComponentName;)I

    move-result v0

    .line 2564
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 2565
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gEP("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    :cond_33
    return v0
.end method

.method public getEncryptionPolicyForEas(Landroid/content/ComponentName;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2615
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEncryptionPolicyForEas(Landroid/content/ComponentName;)I

    move-result v0

    .line 2616
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 2617
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gEPFE("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    :cond_33
    return v0
.end method

.method public getEnforceAirplaneMode(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6930
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceAirplaneMode(Landroid/content/ComponentName;)Z

    move-result v0

    .line 6931
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 6932
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gEAM("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6934
    :cond_33
    return v0
.end method

.method public getEnforceAlertMobileDataUsage(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 9720
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceAlertMobileDataUsage(Landroid/content/ComponentName;)Z

    move-result v0

    .line 9721
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 9722
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gEAMDU("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9724
    :cond_33
    return v0
.end method

.method public getEnforceBackgroundDataRestricted(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 8729
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceBackgroundDataRestricted(Landroid/content/ComponentName;)Z

    move-result v0

    .line 8730
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 8731
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gEBDR("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8733
    :cond_33
    return v0
.end method

.method public getEnforceEmergencyCallOnly(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 8319
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceEmergencyCallOnly(Landroid/content/ComponentName;)Z

    move-result v0

    .line 8320
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 8321
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gEECO("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8323
    :cond_33
    return v0
.end method

.method public getEnforceGPSLocationEnabled(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1963
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceGPSLocationEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 1964
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 1965
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gEGLE("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    :cond_33
    return v0
.end method

.method public getEnforceLimitMobileDataUsage(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 9672
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceLimitMobileDataUsage(Landroid/content/ComponentName;)Z

    move-result v0

    .line 9673
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 9674
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gELMDU("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9676
    :cond_33
    return v0
.end method

.method public getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3046
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3047
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 3048
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gEMNE("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    :cond_33
    return v0
.end method

.method public getEnforceMuteDuringCall(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 10389
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceMuteDuringCall(Landroid/content/ComponentName;)Z

    move-result v0

    .line 10390
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 10391
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gEMDC("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10393
    :cond_33
    return v0
.end method

.method public getEnforcePasswordChange()Z
    .registers 5

    .prologue
    .line 2732
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforcePasswordChange()Z

    move-result v0

    .line 2733
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_24

    .line 2734
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gEPC() ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    :cond_24
    return v0
.end method

.method public getEnforcePowerButtonLocks(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 10246
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforcePowerButtonLocks(Landroid/content/ComponentName;)Z

    move-result v0

    .line 10247
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 10248
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gEPBL("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10250
    :cond_33
    return v0
.end method

.method public getEnforceUsbModeAsNone(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 10440
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceUsbModeAsNone(Landroid/content/ComponentName;)Z

    move-result v0

    .line 10441
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 10442
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gEUAN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10445
    :cond_33
    return v0
.end method

.method public getExternalMemoryCID(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2068
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getExternalMemoryCID(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 2069
    .local v0, "ret":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 2070
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gEMCID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    :cond_33
    return-object v0
.end method

.method public getGranularControlOnCCMode()I
    .registers 5

    .prologue
    .line 10680
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getGranularControlOnCCMode()I

    move-result v0

    .line 10681
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_24

    .line 10682
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gGCOCC(), ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10684
    :cond_24
    return v0
.end method

.method public getListForInternetAccess(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7253
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getListForInternetAccess(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 7254
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 7255
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gLFIA("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7257
    :cond_33
    return-object v0
.end method

.method public getLockdownAppsPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4988
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLockdownAppsPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 4989
    .local v0, "packagename":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 4990
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gLdAP("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") packagename:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4992
    :cond_33
    return-object v0
.end method

.method public getLockoutDescript(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2876
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLockoutDescript(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 2877
    .local v0, "ret":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 2878
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gLND("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    :cond_33
    return-object v0
.end method

.method public getLockoutLevel(Landroid/content/ComponentName;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2839
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLockoutLevel(Landroid/content/ComponentName;)I

    move-result v0

    .line 2840
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 2841
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gLNL("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    :cond_33
    return v0
.end method

.method public getLockoutNow(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2858
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLockoutNow(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2859
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 2860
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gLN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    :cond_33
    return v0
.end method

.method public getMDMVersion()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1039
    invoke-static {}, Lcom/lge/mdm/util/LGMDMVersionInfo;->getMDMVersion()Ljava/lang/String;

    move-result-object v0

    .line 1040
    .local v0, "versionName":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_22

    .line 1041
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMDMVersion ver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_22
    return-object v0
.end method

.method public getManualSyncWhenRoaming(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4378
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getManualSyncWhenRoaming(Landroid/content/ComponentName;)Z

    move-result v0

    .line 4379
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 4380
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gMSWR("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4382
    :cond_33
    return v0
.end method

.method public getMicrophoneWhitelist(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6368
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 6369
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gAMW("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6371
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getMicrophoneWhitelist(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMobileDataUsageInfo(Landroid/content/ComponentName;I)J
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 9750
    iget-object v2, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v2, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getMobileDataUsageInfo(Landroid/content/ComponentName;I)J

    move-result-wide v0

    .line 9751
    .local v0, "ret":J
    iget-boolean v2, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v2, :cond_33

    .line 9752
    const-string/jumbo v2, "LGMDMManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "gMDUI("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9754
    :cond_33
    return-wide v0
.end method

.method public getMobileDataUsageInformation(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9780
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getMobileDataUsageInformation(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    .line 9781
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 9782
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gMDUI("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9784
    :cond_33
    return-object v0
.end method

.method public getNotifyRemoveGoogleAccountDisabled(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 8978
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getNotifyRemoveGoogleAccountDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 8979
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 8980
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gNRGAD("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8982
    :cond_33
    return v0
.end method

.method public getNotifySpecificProcessKillEventList(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5185
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getNotifySpecificProcessKillEventList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 5186
    .local v0, "packagelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 5187
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gNSPKEL("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") packagelist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5189
    :cond_33
    return-object v0
.end method

.method public getOwnerInfo(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 9324
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getOwnerInfo(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 9325
    .local v0, "ret":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 9326
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gOI("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") String:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9328
    :cond_33
    return-object v0
.end method

.method public getPasswordMinimumChange(Landroid/content/ComponentName;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2501
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getPasswordMinimumChange(Landroid/content/ComponentName;)I

    move-result v0

    .line 2502
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 2503
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gPMC("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    :cond_33
    return v0
.end method

.method public getPasswordRecoveryEnabled(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2698
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getPasswordRecoveryEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2699
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 2700
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gPRE("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    :cond_33
    return v0
.end method

.method public getPreInstalledAppList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5272
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getPreInstalledAppList()Ljava/util/List;

    move-result-object v0

    .line 5273
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_24

    .line 5274
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gPIAL() result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5276
    :cond_24
    return-object v0
.end method

.method public getProcessWatcherandKeeperList(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5164
    invoke-virtual {p0, p1}, Lcom/lge/mdm/LGMDMManager;->getNotifySpecificProcessKillEventList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 5165
    .local v0, "packagelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_31

    .line 5166
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gPWKL("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") packagelist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5168
    :cond_31
    return-object v0
.end method

.method public getRuntimePermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;

    .prologue
    .line 10870
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getRuntimePermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 10872
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 10873
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gRTP("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10875
    :cond_33
    return v0
.end method

.method public getScreenCaptureBlacklist(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3236
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 3237
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gSCB("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getScreenCaptureBlacklist(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScreenCaptureWhitelist(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3253
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 3254
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gSCW("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getScreenCaptureWhitelist(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureStateList(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMSignatureState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5256
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 5257
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gSSL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5259
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getSignatureStateList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStorageEncryptionStatus(I)I
    .registers 6
    .param p1, "flags"    # I

    .prologue
    .line 6285
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getStorageEncryptionStatus(I)I

    move-result v0

    .line 6286
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_24

    .line 6287
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gSES() ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6289
    :cond_24
    return v0
.end method

.method public getTrueRepartValue(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 9792
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getTrueRepartValue(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 9793
    .local v0, "ret":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 9794
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gTRV("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9796
    :cond_33
    return-object v0
.end method

.method public getWIFIDataUsageInformation(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "startDate"    # Ljava/lang/String;
    .param p4, "endDate"    # Ljava/lang/String;

    .prologue
    .line 7001
    iget-object v2, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getWIFIDataUsageInformation(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 7003
    .local v0, "ret":J
    iget-boolean v2, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v2, :cond_54

    .line 7004
    const-string/jumbo v2, "LGMDMManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "gWDUI("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 7005
    const-string/jumbo v4, " startDay:"

    .line 7004
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 7005
    const-string/jumbo v4, " endDay:"

    .line 7004
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7007
    :cond_54
    return-wide v0
.end method

.method public getWarningMsg(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 10123
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getWarningMsg(Landroid/content/ComponentName;)Z

    move-result v0

    .line 10124
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 10125
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gWM("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10127
    :cond_33
    return v0
.end method

.method public getWarningMsgStr(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 10142
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getWarningMsgStr(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 10143
    .local v0, "ret":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 10144
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gWMS("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10146
    :cond_33
    return-object v0
.end method

.method public getWiFiSecurityLevel(Landroid/content/ComponentName;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7104
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getWiFiSecurityLevel(Landroid/content/ComponentName;)I

    move-result v0

    .line 7105
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 7106
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gWFSL("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7108
    :cond_33
    return v0
.end method

.method public getWirelessLocationWhitelist(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1902
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getWirelessLocationWhitelist(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 1903
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_39

    .line 1904
    const-string/jumbo v2, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gWLWL("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1905
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1904
    :goto_2e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    :cond_39
    return-object v0

    .line 1905
    :cond_3a
    const-string/jumbo v1, "null"

    goto :goto_2e
.end method

.method public gotoOSUpdateActivity(Landroid/content/ComponentName;)I
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7804
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_22

    .line 7805
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "swU("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7807
    :cond_22
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->gotoOSUpdateActivity(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public initializeCertificate(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 6393
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->initializeCertificate(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    .line 6394
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 6395
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iCe("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6397
    :cond_33
    return v0
.end method

.method public installApplication(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 4604
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 4605
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "iAp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4607
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->installApplication(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4603
    return-void
.end method

.method public installCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 6653
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    .line 6654
    const/4 v2, 0x1

    .line 6653
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->installCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 6655
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_34

    .line 6656
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "inCer("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6658
    :cond_34
    return v0
.end method

.method public installCertificate(Landroid/content/ComponentName;[BLjava/lang/String;)I
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "certificate"    # [B
    .param p3, "certificateId"    # Ljava/lang/String;

    .prologue
    .line 6498
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    .line 6499
    const/4 v2, 0x1

    .line 6498
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->installCertificate(Landroid/content/ComponentName;[BLjava/lang/String;I)I

    move-result v0

    .line 6500
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_34

    .line 6501
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iCer("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6503
    :cond_34
    return v0
.end method

.method public installCertificate(Landroid/content/ComponentName;[BLjava/lang/String;Ljava/lang/String;)I
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "certificate"    # [B
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "certificateId"    # Ljava/lang/String;

    .prologue
    .line 6575
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    .line 6576
    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 6575
    invoke-virtual/range {v0 .. v5}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->installCertificate(Landroid/content/ComponentName;[BLjava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 6577
    .local v6, "ret":I
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_38

    .line 6578
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "iCert("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6580
    :cond_38
    return v6
.end method

.method public installCertificateSelectUsetype(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "useType"    # I

    .prologue
    .line 6696
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->installCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 6697
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 6698
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "inCer("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6700
    :cond_33
    return v0
.end method

.method public installCertificateSelectUsetype(Landroid/content/ComponentName;[BLjava/lang/String;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "certificate"    # [B
    .param p3, "certificateId"    # Ljava/lang/String;
    .param p4, "useType"    # I

    .prologue
    .line 6541
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->installCertificate(Landroid/content/ComponentName;[BLjava/lang/String;I)I

    move-result v0

    .line 6543
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 6544
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iCer("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6546
    :cond_33
    return v0
.end method

.method public installCertificateSelectUsetype(Landroid/content/ComponentName;[BLjava/lang/String;Ljava/lang/String;I)I
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "certificate"    # [B
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "certificateId"    # Ljava/lang/String;
    .param p5, "useType"    # I

    .prologue
    .line 6619
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->installCertificate(Landroid/content/ComponentName;[BLjava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 6621
    .local v6, "ret":I
    const-string/jumbo v0, "LGMDMCertificateController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "manager useType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6622
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_52

    .line 6623
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "iCert("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6625
    :cond_52
    return v6
.end method

.method public installLGVpnCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 5756
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 5757
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "iSLVC("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5759
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->installLGVpnCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isAuthentecVpn(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5612
    const/4 v0, 0x0

    .line 5613
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_2e

    .line 5614
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iAV("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5616
    :cond_2e
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->isAuthentecVpn(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public isAvailableMDMFunction(Ljava/lang/String;)Z
    .registers 6
    .param p1, "mdm_function_name"    # Ljava/lang/String;

    .prologue
    .line 1092
    invoke-static {p1}, Lcom/lge/mdm/LGMDMFunction;->isAvailableMDMFunction(Ljava/lang/String;)Z

    move-result v0

    .line 1093
    .local v0, "isAvailable":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_2d

    .line 1094
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iAMDMF() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_2d
    return v0
.end method

.method public isDeviceOwnerProvisioned(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 10907
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->isDeviceOwnerProvisioned(Landroid/content/ComponentName;)Z

    move-result v0

    .line 10908
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 10909
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iDOP("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10911
    :cond_33
    return v0
.end method

.method public isManualSyncCurrent()Z
    .registers 5

    .prologue
    .line 4390
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->isManualSyncCurrent()Z

    move-result v0

    .line 4391
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_24

    .line 4392
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iMSC() ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4394
    :cond_24
    return v0
.end method

.method public isProfileOwnerProvisioned(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 10925
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->isProfileOwnerProvisioned(Landroid/content/ComponentName;)Z

    move-result v0

    .line 10926
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 10927
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iPOP("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10929
    :cond_33
    return v0
.end method

.method public listen(Landroid/content/Context;Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;
    .param p3, "events"    # I

    .prologue
    .line 4210
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_d

    .line 4211
    const-string/jumbo v0, "LGMDMManager"

    const-string/jumbo v1, "listen()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4213
    :cond_d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->listen(Landroid/content/Context;Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;I)V

    .line 4209
    return-void
.end method

.method public modifyApn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMApnConfiguration;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "config"    # Lcom/lge/mdm/config/LGMDMApnConfiguration;

    .prologue
    .line 7386
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 7387
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "apncofig(mapn)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7389
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->modifyApn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMApnConfiguration;)I

    move-result v0

    return v0
.end method

.method public modifyExchangeConfig(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;)V
    .registers 4
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;

    .prologue
    .line 3948
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_d

    .line 3949
    const-string/jumbo v0, "LGMDMManager"

    const-string/jumbo v1, "mEC()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3951
    :cond_d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->modifyExchangeConfig(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;)V

    .line 3947
    return-void
.end method

.method public modifyLGVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMLgVpnProfile;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profile"    # Lcom/lge/mdm/config/LGMDMLgVpnProfile;

    .prologue
    .line 5675
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 5676
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLVP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5678
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->modifyLGVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMLgVpnProfile;)I

    move-result v0

    return v0
.end method

.method public modifyPOPIMAPConfig(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;)V
    .registers 4
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;

    .prologue
    .line 3596
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_d

    .line 3597
    const-string/jumbo v0, "LGMDMManager"

    const-string/jumbo v1, "mPOPIMAPC()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3599
    :cond_d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->modifyPOPIMAPConfig(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;)V

    .line 3595
    return-void
.end method

.method public modifyVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profile"    # Lcom/lge/mdm/config/LGMDMVpnProfile;

    .prologue
    .line 5540
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 5541
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mVP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5543
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->modifyVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;)V

    .line 5539
    return-void
.end method

.method public removeNetwork(I)Z
    .registers 6
    .param p1, "netId"    # I

    .prologue
    .line 1409
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->removeNetwork(I)Z

    move-result v0

    .line 1410
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_24

    .line 1411
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rN() ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    :cond_24
    return v0
.end method

.method public removeWifiNetwork(I)Z
    .registers 6
    .param p1, "netId"    # I

    .prologue
    .line 1428
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->removeNetwork(I)Z

    move-result v0

    .line 1429
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_24

    .line 1430
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rWN() ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    :cond_24
    return v0
.end method

.method public resetCredentials(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6718
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 6719
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rCr("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6721
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->resetCredentials(Landroid/content/ComponentName;)V

    .line 6717
    return-void
.end method

.method public resetDeveloperOptions(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 10163
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 10164
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sDMR("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10166
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->resetDeveloperOptions(Landroid/content/ComponentName;)V

    .line 10162
    return-void
.end method

.method public saveConfiguration()Z
    .registers 5

    .prologue
    .line 1571
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->saveConfiguration()Z

    move-result v0

    .line 1572
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_24

    .line 1573
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sC() ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :cond_24
    return v0
.end method

.method public saveWifiConfiguration()Z
    .registers 5

    .prologue
    .line 1590
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->saveConfiguration()Z

    move-result v0

    .line 1591
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_24

    .line 1592
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sWC() ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :cond_24
    return v0
.end method

.method public setAllowAirplaneModeOn(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 6856
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 6857
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAAMO("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6859
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowAirplaneModeOn(Landroid/content/ComponentName;Z)V

    .line 6855
    return-void
.end method

.method public setAllowAndroidBeam(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 9389
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 9390
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAAB("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9392
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowAndroidBeam(Landroid/content/ComponentName;Z)V

    .line 9388
    return-void
.end method

.method public setAllowAutoRestore(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 8789
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 8790
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAAR("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8792
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowAutoRestore(Landroid/content/ComponentName;Z)V

    .line 8788
    return-void
.end method

.method public setAllowAutoSync(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 8876
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 8877
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAAS("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8879
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowAutoSync(Landroid/content/ComponentName;Z)V

    .line 8875
    return-void
.end method

.method public setAllowBackgroundProcessLimit(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 8502
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 8503
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sABPL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8505
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowBackgroundProcessLimit(Landroid/content/ComponentName;Z)V

    .line 8501
    return-void
.end method

.method public setAllowBluetooth(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # I

    .prologue
    .line 2163
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 2164
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAB("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowBluetooth(Landroid/content/ComponentName;I)V

    .line 2162
    return-void
.end method

.method public setAllowBluetoothPairing(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "bAllow"    # Z

    .prologue
    .line 7667
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 7668
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sBP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") bAllow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7670
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowBluetoothPairing(Landroid/content/ComponentName;Z)V

    .line 7666
    return-void
.end method

.method public setAllowBluetoothProfiles(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "nBluetoothProfile"    # I

    .prologue
    .line 7532
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 7533
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sABP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") nBluetoothProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7535
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowBluetoothProfiles(Landroid/content/ComponentName;I)V

    .line 7531
    return-void
.end method

.method public setAllowBluetoothTethering(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 1757
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 1758
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sABT("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowBluetoothTethering(Landroid/content/ComponentName;Z)V

    .line 1756
    return-void
.end method

.method public setAllowBluetoothVisible(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 7482
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 7483
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sABV("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7485
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowBluetoothVisible(Landroid/content/ComponentName;Z)V

    .line 7481
    return-void
.end method

.method public setAllowBluetoothWithMACWhitelist(Landroid/content/ComponentName;ZLjava/util/List;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7738
    .local p3, "maclist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 7739
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sABMAL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7741
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowBluetoothWithMACWhitelist(Landroid/content/ComponentName;ZLjava/util/List;)V

    .line 7737
    return-void
.end method

.method public setAllowBrowser(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 2899
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 2900
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sANWB("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowNonWebkitBrowser(Landroid/content/ComponentName;Z)V

    .line 2898
    return-void
.end method

.method public setAllowBrowserProxySetup(Landroid/content/ComponentName;ZLjava/lang/String;I)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "ip"    # Ljava/lang/String;
    .param p4, "port"    # I

    .prologue
    .line 7821
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 7822
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sABPS("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7824
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowBrowserProxySetup(Landroid/content/ComponentName;ZLjava/lang/String;I)V

    .line 7820
    return-void
.end method

.method public setAllowCIDWithWhitelist(Landroid/content/ComponentName;ZLjava/util/List;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2092
    .local p3, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 2093
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sACIDWL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowCIDWithWhitelist(Landroid/content/ComponentName;ZLjava/util/List;)V

    .line 2091
    return-void
.end method

.method public setAllowCallInRoaming(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 8341
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 8342
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sACIR("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8344
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowCallInRoaming(Landroid/content/ComponentName;Z)V

    .line 8340
    return-void
.end method

.method public setAllowCameraWithWhitelist(Landroid/content/ComponentName;ZLjava/util/List;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2318
    .local p3, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 2319
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sACWL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowCameraWithWhitelist(Landroid/content/ComponentName;ZLjava/util/List;)V

    .line 2317
    return-void
.end method

.method public setAllowChangeDateAndTime(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 9519
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 9520
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sACDAT("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9522
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowChangeDateAndTime(Landroid/content/ComponentName;Z)V

    .line 9518
    return-void
.end method

.method public setAllowChangeTimezone(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 9563
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 9564
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sACT("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9566
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowChangeTimezone(Landroid/content/ComponentName;Z)V

    .line 9562
    return-void
.end method

.method public setAllowChangingMobileDataUsageCycle(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "cycleDate"    # I

    .prologue
    .line 9606
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_38

    .line 9607
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sACMDUC("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cycleDate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9609
    :cond_38
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowChangingMobileDataUsageCycle(Landroid/content/ComponentName;ZI)V

    .line 9605
    return-void
.end method

.method public setAllowClipboard(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 8586
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 8587
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAC("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8589
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowClipboard(Landroid/content/ComponentName;Z)V

    .line 8585
    return-void
.end method

.method public setAllowCommandForInternetAccess(Landroid/content/ComponentName;ZLjava/util/List;)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 7280
    .local p3, "commandList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 7281
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowCommandForInternetAccess(Landroid/content/ComponentName;ZLjava/util/List;)Z

    move-result v0

    .line 7282
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_34

    .line 7283
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sACFIA("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7285
    :cond_34
    return v0
.end method

.method public setAllowConsumerEmail(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 4234
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 4235
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sACE("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4237
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowConsumerEmail(Landroid/content/ComponentName;Z)V

    .line 4233
    return-void
.end method

.method public setAllowContactInfoAccess(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I

    .prologue
    .line 10055
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 10056
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sACIA("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10058
    :cond_2d
    const/4 v0, 0x1

    if-ne p2, v0, :cond_31

    .line 10059
    const/4 p2, 0x2

    .line 10061
    :cond_31
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowContactInfoAccess(Landroid/content/ComponentName;I)V

    .line 10054
    return-void
.end method

.method public setAllowDLNADiscovery(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 10270
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 10271
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sADD("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10274
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowDLNADiscovery(Landroid/content/ComponentName;Z)V

    .line 10269
    return-void
.end method

.method public setAllowDataRoaming(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 2940
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 2941
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sADR("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowDataRoaming(Landroid/content/ComponentName;Z)V

    .line 2939
    return-void
.end method

.method public setAllowDataTransmissionViaAudioPort(Landroid/content/ComponentName;Z)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 9850
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 9851
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sADTVAP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9853
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowDataTransmissionViaAudioPort(Landroid/content/ComponentName;Z)I

    move-result v0

    return v0
.end method

.method public setAllowDeveloperMode(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 10186
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 10187
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sDM("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10189
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowDeveloperMode(Landroid/content/ComponentName;Z)V

    .line 10185
    return-void
.end method

.method public setAllowDownloadMode(Landroid/content/ComponentName;Z)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 9495
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 9496
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sADM("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9498
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowDownloadMode(Landroid/content/ComponentName;Z)I

    move-result v0

    return v0
.end method

.method public setAllowDualWindow(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 10706
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 10707
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sADW("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10710
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowDualWindow(Landroid/content/ComponentName;Z)V

    .line 10705
    return-void
.end method

.method public setAllowExternalMemorySlot(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 2027
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 2028
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAEMS("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowExternalMemorySlot(Landroid/content/ComponentName;Z)V

    .line 2026
    return-void
.end method

.method public setAllowGPSLocation(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 1797
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 1798
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAGPSL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowGPSLocation(Landroid/content/ComponentName;Z)V

    .line 1796
    return-void
.end method

.method public setAllowGoogleBackup(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 8751
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 8752
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAGB("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8754
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowGoogleBackup(Landroid/content/ComponentName;Z)V

    .line 8750
    return-void
.end method

.method public setAllowGoogleErrorReport(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # I

    .prologue
    .line 5407
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 5408
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAGER("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5410
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowGoogleErrorReport(Landroid/content/ComponentName;I)V

    .line 5406
    return-void
.end method

.method public setAllowHardwareFactoryreset(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 6952
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 6953
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAHF("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6955
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowHardwareFactoryreset(Landroid/content/ComponentName;Z)V

    .line 6951
    return-void
.end method

.method public setAllowHotspot(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 1666
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 1667
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAH("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowHotspot(Landroid/content/ComponentName;Z)V

    .line 1665
    return-void
.end method

.method public setAllowInfraredPort(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 10316
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 10317
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAIP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10320
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowInfraredPort(Landroid/content/ComponentName;Z)V

    .line 10315
    return-void
.end method

.method public setAllowInstallApplication(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 4647
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 4648
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAIA("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4650
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowInstallApplication(Landroid/content/ComponentName;Z)V

    .line 4646
    return-void
.end method

.method public setAllowLGVpn(Landroid/content/ComponentName;Z)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 6038
    const/4 v0, 0x0

    .line 6040
    .local v0, "mVpnMode":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_2e

    .line 6041
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sALVp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") allow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6044
    :cond_2e
    if-nez p2, :cond_31

    .line 6046
    const/4 v0, 0x2

    .line 6049
    :cond_31
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowVpn(Landroid/content/ComponentName;I)V

    .line 6037
    return-void
.end method

.method public setAllowListForInternetAccess(Landroid/content/ComponentName;ILjava/util/List;)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 7232
    .local p3, "internetAccessList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 7233
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowListForInternetAccess(Landroid/content/ComponentName;ILjava/util/List;)Z

    move-result v0

    .line 7235
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_3f

    .line 7236
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sALFIA("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7238
    :cond_3f
    return v0
.end method

.method public setAllowLockdownApps(Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;I)Z
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "isContinuousRunning"    # Z
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "runningApplicationMaxCrashNum"    # I

    .prologue
    .line 4945
    const/4 v6, 0x0

    .line 4946
    .local v6, "result":Z
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2e

    .line 4947
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sALdA("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4949
    :cond_2e
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowLockdownApps(Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    .line 4951
    .local v6, "result":Z
    return v6
.end method

.method public setAllowMaximumRepeatedPassword(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "max"    # I

    .prologue
    .line 9904
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 9905
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAMRP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9908
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowMaximumRepeatedPassword(Landroid/content/ComponentName;I)V

    .line 9903
    return-void
.end method

.method public setAllowMaximumSequentialPassword(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "max"    # I

    .prologue
    .line 9945
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 9946
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAMSP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9949
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowMaximumSequentialPassword(Landroid/content/ComponentName;I)V

    .line 9944
    return-void
.end method

.method public setAllowMicrophone(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 6306
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 6307
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAM("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6309
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowMicrophone(Landroid/content/ComponentName;Z)V

    .line 6305
    return-void
.end method

.method public setAllowMiracast(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 9347
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 9348
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAMir("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9350
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowMiracast(Landroid/content/ComponentName;Z)V

    .line 9346
    return-void
.end method

.method public setAllowMobileNetwork(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 2980
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 2981
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAMN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowMobileNetwork(Landroid/content/ComponentName;Z)V

    .line 2979
    return-void
.end method

.method public setAllowMockLocation(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 1985
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 1986
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAML("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowMockLocation(Landroid/content/ComponentName;Z)V

    .line 1984
    return-void
.end method

.method public setAllowMultiUser(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 9161
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 9162
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAMU("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9164
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowMultiUser(Landroid/content/ComponentName;Z)V

    .line 9160
    return-void
.end method

.method public setAllowNativeVpn(Landroid/content/ComponentName;Z)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 5975
    const/4 v0, 0x0

    .line 5977
    .local v0, "mVpnMode":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_2e

    .line 5978
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sANVp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") allow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5981
    :cond_2e
    if-nez p2, :cond_31

    .line 5983
    const/4 v0, 0x1

    .line 5986
    :cond_31
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowVpn(Landroid/content/ComponentName;I)V

    .line 5974
    return-void
.end method

.method public setAllowNfc(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # I

    .prologue
    .line 6800
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 6801
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6803
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowNfc(Landroid/content/ComponentName;I)V

    .line 6799
    return-void
.end method

.method public setAllowNonWebkitBrowser(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 9430
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 9431
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sANWB("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9433
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowNonWebkitBrowser(Landroid/content/ComponentName;Z)V

    .line 9429
    return-void
.end method

.method public setAllowNotifySpecificProcessKillEvent(Landroid/content/ComponentName;ZLjava/util/List;)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5097
    .local p3, "packagelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowNotifySpecificProcessKillEvent(Landroid/content/ComponentName;ZLjava/util/List;)Z

    move-result v0

    .line 5099
    .local v0, "retValue":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_3e

    .line 5100
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sANSPKE("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") allow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", retValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5102
    :cond_3e
    return v0
.end method

.method public setAllowOSUpdate(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 8211
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 8212
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAOSU("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8214
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowOSUpdate(Landroid/content/ComponentName;Z)V

    .line 8210
    return-void
.end method

.method public setAllowOwnerInfo(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I

    .prologue
    .line 9267
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 9268
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAOI("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") policy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9270
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowOwnerInfo(Landroid/content/ComponentName;I)V

    .line 9266
    return-void
.end method

.method public setAllowPOPIMAPEmail(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 4310
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 4311
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAPOPIMAPE("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4313
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowPOPIMAPEmail(Landroid/content/ComponentName;Z)V

    .line 4309
    return-void
.end method

.method public setAllowPassiveProvider(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 9101
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 9102
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAPP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9104
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowPassiveProvider(Landroid/content/ComponentName;Z)V

    .line 9100
    return-void
.end method

.method public setAllowPasswordComplexForEAS(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 2435
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 2436
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAPCFEAS("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowPasswordComplexForEAS(Landroid/content/ComponentName;Z)V

    .line 2434
    return-void
.end method

.method public setAllowPasswordTypingVisible(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 8847
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 8848
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAPTV("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8850
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowPasswordTypingVisible(Landroid/content/ComponentName;Z)V

    .line 8846
    return-void
.end method

.method public setAllowPasswordVisible(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 9201
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 9202
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAPV("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9204
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowPasswordVisible(Landroid/content/ComponentName;Z)V

    .line 9200
    return-void
.end method

.method public setAllowPowerOff(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 10465
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 10466
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAPO("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10469
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowPowerOff(Landroid/content/ComponentName;Z)V

    .line 10464
    return-void
.end method

.method public setAllowProcessWatcherandKeeper(Landroid/content/ComponentName;ZLjava/util/List;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p4, "processwatcherandkeeperMaxCrashNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 5044
    .local p3, "packagelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/mdm/LGMDMManager;->setAllowNotifySpecificProcessKillEvent(Landroid/content/ComponentName;ZLjava/util/List;)Z

    move-result v0

    .line 5045
    .local v0, "retValue":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_3c

    .line 5046
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sAPWK("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") allow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", retValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5048
    :cond_3c
    return v0
.end method

.method public setAllowQuickCircle(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 10512
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 10513
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAQC("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10516
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowQuickCircle(Landroid/content/ComponentName;Z)V

    .line 10511
    return-void
.end method

.method public setAllowReadyToConnectInBluetooth(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 10796
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 10797
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sARTCIB("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10799
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowReadyToConnectInBluetooth(Landroid/content/ComponentName;Z)V

    .line 10795
    return-void
.end method

.method public setAllowReceivingSmsMms(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 10010
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 10011
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sARSM("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10013
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowReceivingSmsMms(Landroid/content/ComponentName;Z)V

    .line 10009
    return-void
.end method

.method public setAllowRemoveDeviceAdmin(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 4559
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 4560
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sARDA("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4562
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowRemoveDeviceAdmin(Landroid/content/ComponentName;Z)V

    .line 4558
    return-void
.end method

.method public setAllowRemoveGoogleAccount(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 8671
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 8672
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sARGA("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8674
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowRemoveGoogleAccount(Landroid/content/ComponentName;Z)V

    .line 8670
    return-void
.end method

.method public setAllowSafeMode(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 10750
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 10751
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sASM("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10753
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowSafeMode(Landroid/content/ComponentName;Z)V

    .line 10749
    return-void
.end method

.method public setAllowScreenCapture(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 3068
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 3069
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sASC("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowScreenCapture(Landroid/content/ComponentName;Z)V

    .line 3067
    return-void
.end method

.method public setAllowScreenCaptureBlacklistWithoutADB(Landroid/content/ComponentName;ZLjava/util/List;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3200
    .local p3, "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 3201
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sASCWBWithoutADB("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowScreenCaptureBlacklistWithoutADB(Landroid/content/ComponentName;ZLjava/util/List;)V

    .line 3199
    return-void
.end method

.method public setAllowScreenCaptureWhitelistWithoutADB(Landroid/content/ComponentName;ZLjava/util/List;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3277
    .local p3, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 3278
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sASCWLWADB("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowScreenCaptureWhitelistWithoutADB(Landroid/content/ComponentName;ZLjava/util/List;)V

    .line 3276
    return-void
.end method

.method public setAllowScreenCaptureWithBlacklist(Landroid/content/ComponentName;ZLjava/util/List;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3153
    .local p3, "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 3154
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sASCWB("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3156
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowScreenCaptureWithBlacklist(Landroid/content/ComponentName;ZLjava/util/List;)V

    .line 3152
    return-void
.end method

.method public setAllowScreenCaptureWithoutADB(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 3106
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 3107
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sASCWithoutADB("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowScreenCaptureWithoutADB(Landroid/content/ComponentName;Z)V

    .line 3105
    return-void
.end method

.method public setAllowScreenPin(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 9242
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 9243
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sASP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9245
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowScreenPin(Landroid/content/ComponentName;Z)V

    .line 9241
    return-void
.end method

.method public setAllowSendingSms(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 3357
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 3358
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sASS("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3360
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowSendingSMS(Landroid/content/ComponentName;Z)V

    .line 3356
    return-void
.end method

.method public setAllowShortcutKey(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 5451
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 5452
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sASK("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5454
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowShortcutKey(Landroid/content/ComponentName;Z)V

    .line 5450
    return-void
.end method

.method public setAllowSignatureState(Landroid/content/ComponentName;ZLjava/util/List;)I
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMSignatureState;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 5217
    .local p3, "signatureStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMSignatureState;>;"
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowSignatureState(Landroid/content/ComponentName;ZLjava/util/List;)I

    move-result v0

    .line 5218
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_3e

    .line 5219
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sASiS("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") allow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5221
    :cond_3e
    return v0
.end method

.method public setAllowSimplePassword(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 2381
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2f

    .line 2382
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sASP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    :cond_2f
    if-nez p2, :cond_3c

    .line 2386
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, v4}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowMaximumRepeatedPassword(Landroid/content/ComponentName;I)V

    .line 2387
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, v4}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowMaximumSequentialPassword(Landroid/content/ComponentName;I)V

    .line 2380
    :goto_3b
    return-void

    .line 2389
    :cond_3c
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, v3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowMaximumRepeatedPassword(Landroid/content/ComponentName;I)V

    .line 2390
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, v3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowMaximumSequentialPassword(Landroid/content/ComponentName;I)V

    goto :goto_3b
.end method

.method public setAllowSimplePasswordEx(Landroid/content/ComponentName;I)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I

    .prologue
    .line 9875
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_2d

    .line 9876
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sASPE("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9878
    :cond_2d
    const/4 v0, 0x0

    .line 9879
    .local v0, "maxValue":I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3d

    .line 9880
    const/4 v0, 0x4

    .line 9885
    :cond_32
    :goto_32
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowMaximumRepeatedPassword(Landroid/content/ComponentName;I)V

    .line 9886
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowMaximumSequentialPassword(Landroid/content/ComponentName;I)V

    .line 9874
    return-void

    .line 9881
    :cond_3d
    const/4 v1, 0x2

    if-ne p2, v1, :cond_32

    .line 9882
    const/4 v0, 0x3

    goto :goto_32
.end method

.method public setAllowSpecificApplication(Landroid/content/ComponentName;Lcom/lge/mdm/LGMDMManager$ApplicationType;Z)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "applicationType"    # Lcom/lge/mdm/LGMDMManager$ApplicationType;
    .param p3, "allow"    # Z

    .prologue
    .line 5348
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_2d

    .line 5349
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sASpA("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") allow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5351
    :cond_2d
    if-eqz p2, :cond_38

    .line 5352
    invoke-virtual {p2}, Lcom/lge/mdm/LGMDMManager$ApplicationType;->name()Ljava/lang/String;

    move-result-object v0

    .line 5353
    .local v0, "applicationName":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1, v0, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowSpecificApplication(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 5347
    .end local v0    # "applicationName":Ljava/lang/String;
    :cond_38
    return-void
.end method

.method public setAllowSpecificKey(Landroid/content/ComponentName;Lcom/lge/mdm/LGMDMManager$KeyType;Z)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "keyType"    # Lcom/lge/mdm/LGMDMManager$KeyType;
    .param p3, "allow"    # Z

    .prologue
    .line 8157
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 8158
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sASpK("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8160
    :cond_2d
    if-eqz p2, :cond_38

    .line 8161
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {p2}, Lcom/lge/mdm/LGMDMManager$KeyType;->ordinal()I

    move-result v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowSpecificKey(Landroid/content/ComponentName;IZ)V

    .line 8156
    :cond_38
    return-void
.end method

.method public setAllowStatusBarExpansion(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 8918
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 8919
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sASBE("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8921
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowStatusBarExpansion(Landroid/content/ComponentName;Z)V

    .line 8917
    return-void
.end method

.method public setAllowTethering(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 1620
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 1621
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAT("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowTethering(Landroid/content/ComponentName;Z)V

    .line 1619
    return-void
.end method

.method public setAllowUSBDebugging(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 3316
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 3317
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAUd("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3319
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowUSBDebugging(Landroid/content/ComponentName;Z)V

    .line 3315
    return-void
.end method

.method public setAllowUSBHostStorage(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 9060
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 9061
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAUHS("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9063
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowUSBHostStorage(Landroid/content/ComponentName;Z)V

    .line 9059
    return-void
.end method

.method public setAllowUSBMtp(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 8379
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 8380
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAUM("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8382
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowUSBMtp(Landroid/content/ComponentName;Z)V

    .line 8378
    return-void
.end method

.method public setAllowUSBPtp(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 8417
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 8418
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAUP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8420
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowUSBPtp(Landroid/content/ComponentName;Z)V

    .line 8416
    return-void
.end method

.method public setAllowUSBStorage(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 8460
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 8461
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAUS("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8463
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowUSBStorage(Landroid/content/ComponentName;Z)V

    .line 8459
    return-void
.end method

.method public setAllowUSBTethering(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 1711
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 1712
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAUT("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowUSBTethering(Landroid/content/ComponentName;Z)V

    .line 1710
    return-void
.end method

.method public setAllowUninstallApplication(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 4689
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 4690
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAUA("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4692
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowUninstallApplication(Landroid/content/ComponentName;Z)V

    .line 4688
    return-void
.end method

.method public setAllowUnknownSourceInstallation(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 4456
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 4457
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAUSI("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4459
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowUnknownSourceInstallation(Landroid/content/ComponentName;Z)V

    .line 4455
    return-void
.end method

.method public setAllowUnsignedApplication(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 4815
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 4816
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAUsA("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4818
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowUnsignedApplication(Landroid/content/ComponentName;Z)V

    .line 4814
    return-void
.end method

.method public setAllowUsb(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 2208
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 2209
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAU("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowUsb(Landroid/content/ComponentName;Z)V

    .line 2207
    return-void
.end method

.method public setAllowUsbData(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 2285
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 2286
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAUDt("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowUsbData(Landroid/content/ComponentName;Z)V

    .line 2284
    return-void
.end method

.method public setAllowUsbDrive(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 2238
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 2239
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAUDrv("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowUsbDrive(Landroid/content/ComponentName;Z)V

    .line 2237
    return-void
.end method

.method public setAllowUsbPort(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 2262
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 2263
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAUPrt("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowUsbPort(Landroid/content/ComponentName;Z)V

    .line 2261
    return-void
.end method

.method public setAllowVPNSplitTunneling(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 6088
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 6089
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAVST("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6092
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowVPNSplitTunneling(Landroid/content/ComponentName;Z)V

    .line 6087
    return-void
.end method

.method public setAllowVerizonLocation(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 9020
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 9021
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAVL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9023
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowVerizonLocation(Landroid/content/ComponentName;Z)V

    .line 9019
    return-void
.end method

.method public setAllowVpn(Landroid/content/ComponentName;Z)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 5912
    const/4 v0, 0x0

    .line 5914
    .local v0, "mVpnMode":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_2e

    .line 5915
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sAVp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") allow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5918
    :cond_2e
    if-nez p2, :cond_31

    .line 5920
    const/4 v0, 0x3

    .line 5923
    :cond_31
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowVpn(Landroid/content/ComponentName;I)V

    .line 5911
    return-void
.end method

.method public setAllowWiFiMacAddressList(Landroid/content/ComponentName;ILjava/util/List;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "listType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8035
    .local p3, "wblist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 8036
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAWMAL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8038
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowWiFiMacAddressList(Landroid/content/ComponentName;ILjava/util/List;)V

    .line 8034
    return-void
.end method

.method public setAllowWiFiProfileManagement(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 8279
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 8280
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAWPM("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8282
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowWiFiProfileManagement(Landroid/content/ComponentName;Z)V

    .line 8278
    return-void
.end method

.method public setAllowWiFiSSIDList(Landroid/content/ComponentName;ILjava/util/List;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "listType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7939
    .local p3, "wblist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 7940
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAWSL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7942
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowWiFiSSIDList(Landroid/content/ComponentName;ILjava/util/List;)V

    .line 7938
    return-void
.end method

.method public setAllowWifi(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 1161
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 1162
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAW("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowWifi(Landroid/content/ComponentName;Z)V

    .line 1160
    return-void
.end method

.method public setAllowWifiAutoConnection(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 8107
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 8108
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAWAC("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8110
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowWifiAutoConnection(Landroid/content/ComponentName;Z)V

    .line 8106
    return-void
.end method

.method public setAllowWifiDirect(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 8629
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 8630
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAWDi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8632
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowWifiDirect(Landroid/content/ComponentName;Z)V

    .line 8628
    return-void
.end method

.method public setAllowWifiScan(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 1204
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 1205
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAWS("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowWifiScan(Landroid/content/ComponentName;Z)V

    .line 1203
    return-void
.end method

.method public setAllowWipeData(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 3396
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 3397
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAWD("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3399
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowWipeData(Landroid/content/ComponentName;Z)V

    .line 3395
    return-void
.end method

.method public setAllowWirelessLocation(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 1821
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 1822
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAWL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowWirelessLocation(Landroid/content/ComponentName;Z)V

    .line 1820
    return-void
.end method

.method public setAllowWirelessLocationWithWhitelist(Landroid/content/ComponentName;ZLjava/util/List;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1865
    .local p3, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 1866
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAWLWL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowWirelessLocationWithWhitelist(Landroid/content/ComponentName;ZLjava/util/List;)V

    .line 1864
    return-void
.end method

.method public setAllowWirelessStorage(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I

    .prologue
    .line 8565
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 8566
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAWLST("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") policy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8568
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowWirelessStorage(Landroid/content/ComponentName;I)V

    .line 8564
    return-void
.end method

.method public setAppVersionState(Landroid/content/ComponentName;Ljava/util/List;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMAppVersionState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4779
    .local p2, "appVersionStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMAppVersionState;>;"
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 4780
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAVS("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4782
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAppVersionState(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 4778
    return-void
.end method

.method public setApplicationState(Landroid/content/ComponentName;Ljava/util/List;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMApplicationState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4736
    .local p2, "applicationStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMApplicationState;>;"
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 4737
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAS("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4739
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setApplicationState(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 4735
    return-void
.end method

.method public setBlockingConsumerEmailList(Landroid/content/ComponentName;Ljava/util/ArrayList;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4268
    .local p2, "consumerEmailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 4269
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sBCEL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4271
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setBlockingConsumerEmailList(Landroid/content/ComponentName;Ljava/util/ArrayList;)V

    .line 4267
    return-void
.end method

.method public setBluetoothMaxVisiblityTimeOut(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "nSec"    # I

    .prologue
    .line 7580
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 7581
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sBMV("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") nSec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7583
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setBluetoothMaxVisiblityTimeOut(Landroid/content/ComponentName;I)V

    .line 7579
    return-void
.end method

.method public setBluetoothScanMode(Landroid/content/ComponentName;II)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I
    .param p3, "duration"    # I

    .prologue
    .line 7177
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setBluetoothScanMode(Landroid/content/ComponentName;II)Z

    move-result v0

    .line 7178
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_49

    .line 7179
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sBSM("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 7180
    const-string/jumbo v3, " ret:"

    .line 7179
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7182
    :cond_49
    return v0
.end method

.method public setBluetoothSearchedDeviceType(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "nDeviceType"    # I

    .prologue
    .line 7627
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 7628
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sBSD("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") nDeviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7630
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setBluetoothSearchedDeviceType(Landroid/content/ComponentName;I)V

    .line 7626
    return-void
.end method

.method public setCommonCriteriaMode(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I

    .prologue
    .line 10588
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 10589
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sECC("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10591
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setCommonCriteriaMode(Landroid/content/ComponentName;I)V

    .line 10587
    return-void
.end method

.method public setDebugMode(Z)V
    .registers 4
    .param p1, "debug"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1123
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setDebugMode(Z)V

    .line 1124
    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_11

    .line 1125
    iput-boolean p1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    .line 1122
    :cond_11
    return-void
.end method

.method public setEncryptionPolicy(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I

    .prologue
    .line 2537
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 2538
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sEP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setEncryptionPolicy(Landroid/content/ComponentName;I)V

    .line 2536
    return-void
.end method

.method public setEncryptionPolicyForEas(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I

    .prologue
    .line 2592
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 2593
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sEPFE("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") policy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setEncryptionPolicyForEas(Landroid/content/ComponentName;I)V

    .line 2591
    return-void
.end method

.method public setEnforceAirplaneMode(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enforce"    # Z

    .prologue
    .line 6908
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 6909
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sEAM("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") enforce:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6911
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setEnforceAirplaneMode(Landroid/content/ComponentName;Z)V

    .line 6907
    return-void
.end method

.method public setEnforceAlertMobileDataUsage(Landroid/content/ComponentName;ZJ)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enforce"    # Z
    .param p3, "warn"    # J

    .prologue
    .line 9702
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_38

    .line 9703
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sEAMDU("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") enforce:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " warn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9705
    :cond_38
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setEnforceAlertMobileDataUsage(Landroid/content/ComponentName;ZJ)V

    .line 9701
    return-void
.end method

.method public setEnforceBackgroundDataRestricted(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 8711
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 8712
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sEBDR("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8714
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setEnforceBackgroundDataRestricted(Landroid/content/ComponentName;Z)V

    .line 8710
    return-void
.end method

.method public setEnforceEmergencyCallOnly(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 8301
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 8302
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sEECO("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8304
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setEnforceEmergencyCallOnly(Landroid/content/ComponentName;Z)V

    .line 8300
    return-void
.end method

.method public setEnforceGPSLocationEnabled(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enforce"    # Z

    .prologue
    .line 1945
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 1946
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sEGLE("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") enforce:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setEnforceGPSLocationEnabled(Landroid/content/ComponentName;Z)V

    .line 1944
    return-void
.end method

.method public setEnforceLimitMobileDataUsage(Landroid/content/ComponentName;ZJ)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enforce"    # Z
    .param p3, "limit"    # J

    .prologue
    .line 9654
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_38

    .line 9655
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sELMDU("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") enforce:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " limit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9657
    :cond_38
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setEnforceLimitMobileDataUsage(Landroid/content/ComponentName;ZJ)V

    .line 9653
    return-void
.end method

.method public setEnforceMobileNetworkEnabled(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enforce"    # Z

    .prologue
    .line 3028
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 3029
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sEMNE("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") enforce:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setEnforceMobileNetworkEnabled(Landroid/content/ComponentName;Z)V

    .line 3027
    return-void
.end method

.method public setEnforceMuteDuringCall(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enforce"    # Z

    .prologue
    .line 10368
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 10369
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sEMDC("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") enfore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10372
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setEnforceMuteDuringCall(Landroid/content/ComponentName;Z)V

    .line 10367
    return-void
.end method

.method public setEnforcePasswordChange(Z)V
    .registers 5
    .param p1, "allow"    # Z

    .prologue
    .line 2716
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_1e

    .line 2717
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sEPC() allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    :cond_1e
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setEnforcePasswordChange(Z)V

    .line 2715
    return-void
.end method

.method public setEnforcePowerButtonLocks(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 10228
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 10229
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sEPBL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10231
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setEnforcePowerButtonLocks(Landroid/content/ComponentName;Z)V

    .line 10227
    return-void
.end method

.method public setEnforceRecoveryPassword(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 2680
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 2681
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sERP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setEnforceRecoveryPassword(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 2679
    return-void
.end method

.method public setEnforceUsbModeAsNone(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enforce"    # Z

    .prologue
    .line 10420
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 10421
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sEUAN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") enforce: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10424
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setEnforceUsbModeAsNone(Landroid/content/ComponentName;Z)V

    .line 10419
    return-void
.end method

.method public setGranularControlOnCCMode(Landroid/content/ComponentName;I)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "function"    # I

    .prologue
    .line 10648
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setGranularControlOnCCMode(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 10650
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_3e

    .line 10651
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sGCOCC("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") function: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10652
    const-string/jumbo v3, ", ret:"

    .line 10651
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10654
    :cond_3e
    return v0
.end method

.method public setLockoutNow(Landroid/content/ComponentName;ILjava/lang/String;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "level"    # I
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    .line 2764
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_38

    .line 2765
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sLN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", str:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    :cond_38
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setLockoutNow(Landroid/content/ComponentName;ILjava/lang/String;)V

    .line 2763
    return-void
.end method

.method public setLockoutNow(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "level"    # I
    .param p3, "str"    # Ljava/lang/String;
    .param p4, "recoveryKey"    # Ljava/lang/String;

    .prologue
    .line 2799
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_43

    .line 2800
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sLN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", str:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2801
    const-string/jumbo v2, ", recoveryKey:"

    .line 2800
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    :cond_43
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setLockoutNow(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setManualSyncWhenRoaming(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 4359
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 4360
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sMSWR("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4362
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setManualSyncWhenRoaming(Landroid/content/ComponentName;Z)V

    .line 4358
    return-void
.end method

.method public setMicrophoneWhitelist(Landroid/content/ComponentName;ZLjava/util/List;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6350
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 6351
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAMW("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6353
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setMicrophoneWhitelist(Landroid/content/ComponentName;ZLjava/util/List;)V

    .line 6349
    return-void
.end method

.method public setNotifyRemoveGoogleAccountDisabled(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 8961
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 8962
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sNRGAD("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8964
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setNotifyRemoveGoogleAccountDisabled(Landroid/content/ComponentName;Z)V

    .line 8960
    return-void
.end method

.method public setOwnerInfo(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 9307
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 9308
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sOI("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") str:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9310
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setOwnerInfo(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 9306
    return-void
.end method

.method public setPasswordMinimumChange(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "number"    # I

    .prologue
    .line 2482
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 2483
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sPMC("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setPasswordMinimumChange(Landroid/content/ComponentName;I)V

    .line 2481
    return-void
.end method

.method public setPasswordRecoveryEnabled(Landroid/content/ComponentName;Z)Ljava/lang/String;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 2638
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 2639
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sPRE("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setPasswordRecoveryEnabled(Landroid/content/ComponentName;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setPasswordRecoveryEnabled(Landroid/content/ComponentName;ZZ)Ljava/lang/String;
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "isEas"    # Z

    .prologue
    .line 2663
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setPasswordRecoveryEnabled(Landroid/content/ComponentName;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 2664
    .local v0, "ret":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 2665
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sPREiE("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    :cond_33
    return-object v0
.end method

.method public setRuntimePermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "grantState"    # I

    .prologue
    .line 10844
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setRuntimePermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 10846
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 10847
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sRTP("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10849
    :cond_33
    return v0
.end method

.method public setTrueRepartValue(Landroid/content/ComponentName;Ljava/lang/String;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 9804
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 9805
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sTRV("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") val:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9807
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setTrueRepartValue(Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setUnlockoutNow(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2819
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 2820
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sUN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setUnlockoutNow(Landroid/content/ComponentName;)V

    .line 2818
    return-void
.end method

.method public setWarningMsg(Landroid/content/ComponentName;ZLjava/lang/String;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    .line 10104
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_38

    .line 10105
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sWM("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", str:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10107
    :cond_38
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setWarningMsg(Landroid/content/ComponentName;ZLjava/lang/String;)V

    .line 10103
    return-void
.end method

.method public setWiFiSecurityLevel(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I

    .prologue
    .line 7080
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 7081
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sWFSL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") policy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7083
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setWiFiSecurityLevel(Landroid/content/ComponentName;I)V

    .line 7079
    return-void
.end method

.method public startApplication(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "subInfo"    # Ljava/lang/String;
    .param p4, "type"    # I

    .prologue
    .line 4864
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_43

    .line 4865
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sttA("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " subInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4866
    const-string/jumbo v2, " type:"

    .line 4865
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4868
    :cond_43
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->startApplication(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4863
    return-void
.end method

.method public stopApplication(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4892
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 4893
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stpA("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4895
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->stopApplication(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4891
    return-void
.end method

.method public turnOn3G4GDataNetwork(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 7146
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 7147
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tODN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7149
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->turnOn3G4GDataNetwork(Landroid/content/ComponentName;Z)V

    .line 7145
    return-void
.end method

.method public turnOnOffGPS(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "turningOn"    # Z

    .prologue
    .line 7125
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 7126
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAGPSL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") turningOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7128
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->turnOnOffGPS(Landroid/content/ComponentName;Z)V

    .line 7124
    return-void
.end method

.method public unInstallLGVpnCertificate(Landroid/content/ComponentName;Ljava/lang/String;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 5787
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 5788
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uILVC("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5790
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->unInstallLGVpnCertificate(Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public uninstallApplication(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4626
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 4627
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uAp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4629
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->uninstallApplication(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4625
    return-void
.end method

.method public uninstallCertificate(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "certificateId"    # Ljava/lang/String;

    .prologue
    .line 6739
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    .line 6740
    const/4 v2, 0x1

    .line 6739
    invoke-virtual {v1, p1, p2, v2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->uninstallCertificate(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0

    .line 6741
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_34

    .line 6742
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uCe("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6744
    :cond_34
    return v0
.end method

.method public uninstallCertificateSelectUsetype(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "certificateId"    # Ljava/lang/String;
    .param p3, "useType"    # I

    .prologue
    .line 6773
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->uninstallCertificate(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0

    .line 6774
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_33

    .line 6775
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uCe("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6777
    :cond_33
    return v0
.end method

.method public uninstallSignatureApp(Landroid/content/ComponentName;Ljava/util/List;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5319
    .local p2, "packagelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 5320
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uAp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5322
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->uninstallSignatureApp(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 5318
    return-void
.end method

.method public updateLGVpnCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "newCertName"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "oldCertName"    # Ljava/lang/String;

    .prologue
    .line 5817
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_29

    .line 5818
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uDLVC("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5820
    :cond_29
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->updateLGVpnCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateNetwork(Lcom/lge/mdm/config/LGMDMWifiConfiguration;)I
    .registers 6
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMWifiConfiguration;

    .prologue
    .line 1357
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->updateNetwork(Lcom/lge/mdm/config/LGMDMWifiConfiguration;)I

    move-result v0

    .line 1358
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_24

    .line 1359
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uN() ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :cond_24
    return v0
.end method

.method public updateWifiNetwork(Lcom/lge/mdm/config/LGMDMWifiConfiguration;)I
    .registers 6
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMWifiConfiguration;

    .prologue
    .line 1388
    iget-object v1, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->updateNetwork(Lcom/lge/mdm/config/LGMDMWifiConfiguration;)I

    move-result v0

    .line 1389
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v1, :cond_24

    .line 1390
    const-string/jumbo v1, "LGMDMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uWN() ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :cond_24
    return v0
.end method

.method public wipeApplicationCache(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4517
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 4518
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wAC("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4520
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->wipeApplicationCache(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4516
    return-void
.end method

.method public wipeApplicationData(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4497
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 4498
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wAD("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4500
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->wipeApplicationData(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4496
    return-void
.end method

.method public wipeApplicationDefault(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4538
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 4539
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wAD("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mdm/LGMDMManager;->checkWho(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4541
    :cond_2d
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->wipeApplicationDefault(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4537
    return-void
.end method

.method public wipeData(I)V
    .registers 5
    .param p1, "flags"    # I

    .prologue
    .line 3436
    iget-boolean v0, p0, Lcom/lge/mdm/LGMDMManager;->mDebug:Z

    if-eqz v0, :cond_1e

    .line 3437
    const-string/jumbo v0, "LGMDMManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wD() flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3439
    :cond_1e
    iget-object v0, p0, Lcom/lge/mdm/LGMDMManager;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->wipeData(I)V

    .line 3435
    return-void
.end method
