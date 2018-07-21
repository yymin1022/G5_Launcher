.class public Lcom/lge/launcher3/util/VdfDataPopupConnectivityUtils;
.super Ljava/lang/Object;
.source "VdfDataPopupConnectivityUtils.java"


# static fields
.field private static final LOGD:Z = false

.field private static final MOBILE_DATA_NETWORK_TYPES:[I

.field private static final TAG:Ljava/lang/String; = "ConnectivityUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x1

    .line 23
    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x5

    aput v2, v0, v1

    .line 22
    sput-object v0, Lcom/lge/launcher3/util/VdfDataPopupConnectivityUtils;->MOBILE_DATA_NETWORK_TYPES:[I

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMobileDataConnectionState(Landroid/content/Context;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 65
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 67
    invoke-static {p0}, Lcom/lge/launcher3/util/VdfDataPopupConnectivityUtils;->isMobileDataEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 68
    if-eqz v2, :cond_33

    .line 71
    :try_start_f
    sget-object v3, Lcom/lge/launcher3/util/VdfDataPopupConnectivityUtils;->MOBILE_DATA_NETWORK_TYPES:[I

    array-length v4, v3

    move v2, v1

    :goto_13
    if-lt v2, v4, :cond_18

    move v0, v1

    :goto_16
    move v1, v0

    .line 87
    :cond_17
    return v1

    .line 71
    :cond_18
    aget v5, v3, v2

    .line 72
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 75
    if-eqz v5, :cond_17

    .line 78
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_23} :catch_2b

    move-result v5

    if-eqz v5, :cond_28

    .line 79
    const/4 v0, 0x1

    .line 80
    goto :goto_16

    .line 71
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 83
    :catch_2b
    move-exception v0

    .line 84
    const-string v2, "ConnectivityUtils"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_33
    move v0, v1

    goto :goto_16
.end method

.method public static getRequestedPermissions(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .prologue
    .line 160
    const/4 v1, 0x0

    .line 162
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x1000

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_a} :catch_14

    move-result-object v0

    .line 166
    :goto_b
    if-eqz v0, :cond_1e

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 167
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 170
    :goto_13
    return-object v0

    .line 163
    :catch_14
    move-exception v0

    .line 164
    const-string v2, "ConnectivityUtils"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_b

    .line 169
    :cond_1e
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_13
.end method

.method public static getWifiConnectionState(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 37
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 41
    const/4 v2, 0x1

    :try_start_a
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_1f

    .line 44
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_15

    move-result v0

    .line 51
    :goto_14
    return v0

    .line 47
    :catch_15
    move-exception v0

    .line 48
    const-string v2, "ConnectivityUtils"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 49
    goto :goto_14

    :cond_1f
    move v0, v1

    goto :goto_14
.end method

.method public static isDataInRoamingEnabled(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_f

    :goto_e
    return v0

    :cond_f
    move v0, v1

    .line 127
    goto :goto_e
.end method

.method public static isInternetPermissionRequested(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-static {p0, p1}, Lcom/lge/launcher3/util/VdfDataPopupConnectivityUtils;->getRequestedPermissions(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 183
    if-eqz v2, :cond_d

    .line 184
    const-string v0, "android.permission.INTERNET"

    move v0, v1

    .line 185
    :goto_a
    array-length v3, v2

    if-lt v0, v3, :cond_e

    .line 194
    :cond_d
    :goto_d
    return v1

    .line 189
    :cond_e
    aget-object v3, v2, v0

    const-string v4, "android.permission.INTERNET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 190
    const/4 v1, 0x1

    goto :goto_d

    .line 185
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public static isMobileDataEnabled(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isSimStateReady(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 204
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 205
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isWiFiEnabled(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static setWiFiState(Landroid/content/Context;Z)V
    .registers 3

    .prologue
    .line 140
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 141
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 142
    return-void
.end method
