.class public Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;
.super Ljava/lang/Object;
.source "LGMDMUISystemUIAdapter.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-string/jumbo v0, "LGMDMUISystemUIAdapter"

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;

    if-nez v0, :cond_b

    .line 31
    new-instance v0, Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;

    invoke-direct {v0}, Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;-><init>()V

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;

    .line 33
    :cond_b
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;

    return-object v0
.end method


# virtual methods
.method public checkNfcCardModeOnly()Z
    .registers 6

    .prologue
    .line 151
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUserManager;->getCallingOrCurrentUserId()I

    move-result v1

    .line 152
    .local v1, "userHandle":I
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkNfcCardModeOnly() userHandle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 156
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowNfc(Landroid/content/ComponentName;I)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_33

    .line 157
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Nfc policy is Card Mode Only"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v2, 0x1

    return v2

    .line 160
    :cond_33
    const/4 v2, 0x0

    return v2
.end method

.method public checkNfcDirectAndroidBeamMode()Z
    .registers 6

    .prologue
    .line 164
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUserManager;->getCallingOrCurrentUserId()I

    move-result v1

    .line 165
    .local v1, "userHandle":I
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkNfcDirectAndroidBeamMode() userHandle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 169
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowAndroidBeam(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_32

    .line 170
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Nfc policy is Disallow Android Beam"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v2, 0x1

    return v2

    .line 173
    :cond_32
    const/4 v2, 0x0

    return v2
.end method

.method public checkOnClick(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "mCurrentModuleName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 40
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUserManager;->getCallingOrCurrentUserId()I

    move-result v1

    .line 41
    .local v1, "userHandle":I
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkOnClick, who:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mCurrentModuleName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 42
    const-string/jumbo v4, ", userHandle:"

    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 45
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-nez p2, :cond_44

    .line 46
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mCurrentModuleName is null, return false"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return v5

    .line 49
    :cond_44
    const-string/jumbo v2, "LGMDMGPSUIAdpater"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 50
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowGPSLocation(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 51
    return v5

    .line 53
    :cond_54
    return v6

    .line 54
    :cond_55
    const-string/jumbo v2, "LGMDMEnfoceGPSUIAdpater"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 55
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceGPSLocationEnabled(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_65

    .line 56
    return v5

    .line 58
    :cond_65
    return v6

    .line 59
    :cond_66
    const-string/jumbo v2, "LGMDMWifiUIAdapter"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 60
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 61
    return v5

    .line 63
    :cond_76
    return v6

    .line 64
    :cond_77
    const-string/jumbo v2, "LGMDMMobileNetworkAdapter"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 65
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_8d

    .line 66
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMobileNetwork(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 67
    return v5

    .line 70
    :cond_8d
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Block MobileNetwork Quicksetting"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return v6

    .line 72
    :cond_96
    const-string/jumbo v2, "LGMDMBluetoothAdapter"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 73
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBluetooth(Landroid/content/ComponentName;I)I

    move-result v2

    if-eqz v2, :cond_a6

    .line 74
    return v5

    .line 76
    :cond_a6
    return v6

    .line 77
    :cond_a7
    const-string/jumbo v2, "LGMDMEmailUIAdapter"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 78
    invoke-virtual {v0, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->isManualSyncCurrent(I)Z

    move-result v2

    if-nez v2, :cond_b7

    .line 79
    return v5

    .line 81
    :cond_b7
    return v6

    .line 82
    :cond_b8
    const-string/jumbo v2, "LGMDMHotspotUIAdapter"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 83
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMTetheringAdapter;->getInstance()Lcom/lge/mdm/frameworks/MDMTetheringAdapter;

    move-result-object v2

    .line 84
    const/4 v3, 0x2

    .line 83
    invoke-virtual {v2, v3, v1}, Lcom/lge/mdm/frameworks/MDMTetheringAdapter;->getDisallowTetheringType(II)Z

    move-result v2

    return v2

    .line 85
    :cond_cb
    const-string/jumbo v2, "LGMDMNfcAdapter"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 86
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowNfc(Landroid/content/ComponentName;I)I

    move-result v2

    if-eqz v2, :cond_db

    .line 87
    return v5

    .line 89
    :cond_db
    return v6

    .line 90
    :cond_dc
    const-string/jumbo v2, "LGMDMAirplaneModeUIAdpater"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 91
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowAirplaneModeOn(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 92
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceAirplaneMode(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 93
    :cond_f1
    return v6

    .line 95
    :cond_f2
    return v5

    .line 96
    :cond_f3
    const-string/jumbo v2, "LGMDMStatusBarAdapter"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_104

    .line 97
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowStatusBarExpansion(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_103

    .line 98
    return v5

    .line 100
    :cond_103
    return v6

    .line 101
    :cond_104
    const-string/jumbo v2, "LGMDMNfcCardModeAdapter"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_112

    .line 102
    invoke-virtual {p0}, Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;->checkNfcCardModeOnly()Z

    move-result v2

    return v2

    .line 105
    :cond_112
    const-string/jumbo v2, "LGMDMWirelessStorageUIAdapter"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_123

    .line 106
    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWirelessStorage(Landroid/content/ComponentName;)I

    move-result v2

    if-eq v2, v6, :cond_122

    .line 107
    return v5

    .line 109
    :cond_122
    return v6

    .line 110
    :cond_123
    const-string/jumbo v2, "LGMDMDataRoamingAdapter"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_134

    .line 111
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowDataRoaming(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_133

    .line 112
    return v5

    .line 114
    :cond_133
    return v6

    .line 115
    :cond_134
    const-string/jumbo v2, "LGMDMEnforceMobileNetworkAdapter"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_145

    .line 116
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_144

    .line 117
    return v5

    .line 119
    :cond_144
    return v6

    .line 120
    :cond_145
    const-string/jumbo v2, "LGMDMMiracastUIAdapter"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_162

    .line 121
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMiracast(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_161

    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_161

    .line 122
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWifiDirect(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 121
    if-eqz v2, :cond_161

    .line 123
    return v5

    .line 125
    :cond_161
    return v6

    .line 126
    :cond_162
    const-string/jumbo v2, "LGMDMAndroidBeamUIAdapter"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_170

    .line 127
    invoke-virtual {p0}, Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;->checkNfcDirectAndroidBeamMode()Z

    move-result v2

    return v2

    .line 128
    :cond_170
    const-string/jumbo v2, "LGMDMWifiDirectUIAdapter"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_187

    .line 129
    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_186

    invoke-virtual {v0, p1, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWifiDirect(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_186

    .line 130
    return v5

    .line 132
    :cond_186
    return v6

    .line 134
    :cond_187
    return v5
.end method

.method public checkOnLocationButton(Landroid/content/ComponentName;I)I
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 138
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemUIAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkOnLocationButton, who:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", userHandle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 140
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowGPSLocation(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_34

    .line 141
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWirelessLocation(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 143
    :cond_34
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowGPSLocation(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 144
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceGPSLocationEnabled(Landroid/content/ComponentName;I)Z

    move-result v1

    .line 143
    if-eqz v1, :cond_44

    .line 145
    const/4 v1, 0x2

    return v1

    .line 142
    :cond_42
    const/4 v1, 0x1

    return v1

    .line 147
    :cond_44
    const/4 v1, 0x0

    return v1
.end method
