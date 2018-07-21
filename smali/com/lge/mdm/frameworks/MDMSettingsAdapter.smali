.class public final Lcom/lge/mdm/frameworks/MDMSettingsAdapter;
.super Ljava/lang/Object;
.source "MDMSettingsAdapter.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "LGMDMSettings"

.field public static nameStrings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Lcom/lge/mdm/frameworks/MDMSettingsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_57

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/lge/mdm/frameworks/MDMSettingsAdapter;->-assertionsDisabled:Z

    .line 27
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 28
    const-string/jumbo v3, "location_providers_allowed"

    aput-object v3, v0, v1

    .line 29
    const-string/jumbo v1, "airplane_mode_on"

    aput-object v1, v0, v2

    .line 30
    const-string/jumbo v1, "mobile_data"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 31
    const-string/jumbo v1, "data_roaming"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 32
    const-string/jumbo v1, "enabled_input_methods"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 33
    const-string/jumbo v1, "show_password"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 34
    const-string/jumbo v1, "install_non_market_apps"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 35
    const-string/jumbo v1, "location_mode"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 36
    const-string/jumbo v1, "shortcut_key_status"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 37
    const-string/jumbo v1, "data_network_user_background_setting_data"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 38
    const-string/jumbo v1, "lock_to_app_enabled"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 27
    sput-object v0, Lcom/lge/mdm/frameworks/MDMSettingsAdapter;->nameStrings:[Ljava/lang/String;

    .line 24
    return-void

    :cond_57
    move v0, v2

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPutStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 12
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 64
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v3

    .line 65
    .local v3, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-nez v3, :cond_b

    .line 66
    return v4

    .line 69
    :cond_b
    invoke-static {p0, p1, p2}, Lcom/lge/mdm/frameworks/MDMSettingsAdapter;->checkPutStringForUserForEAS(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 70
    return v5

    .line 73
    :cond_12
    const-string/jumbo v6, "airplane_mode_on"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 74
    const-string/jumbo v6, "0"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    .line 75
    invoke-virtual {v3, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowAirplaneModeOn(Landroid/content/ComponentName;I)Z

    move-result v6

    if-nez v6, :cond_232

    .line 76
    sget v4, Lcom/lge/internal/R$string;->sp_lgmdm_block_airplane_point:I

    invoke-virtual {v3, v4, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 77
    const-string/jumbo v4, "LGMDMSettings"

    const-string/jumbo v6, "LGMDM: Disallow AIRPLANE MODE"

    invoke-static {v4, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return v5

    .line 81
    :cond_39
    invoke-virtual {v3, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowAirplaneModeOn(Landroid/content/ComponentName;I)Z

    move-result v6

    if-nez v6, :cond_49

    .line 82
    const-string/jumbo v5, "LGMDMSettings"

    .line 83
    const-string/jumbo v6, "LGMDM: allow turn off airplane mode by disallow airplane mode policy"

    .line 82
    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return v4

    .line 86
    :cond_49
    invoke-virtual {v3, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceAirplaneMode(Landroid/content/ComponentName;I)Z

    move-result v6

    if-eqz v6, :cond_232

    .line 87
    invoke-virtual {v3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEmergencyCallStatus()Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 88
    const-string/jumbo v5, "LGMDMSettings"

    .line 89
    const-string/jumbo v6, "LGMDM: allow turn off airplane mode by dialing emergency call"

    .line 88
    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return v4

    .line 92
    :cond_5f
    sget v4, Lcom/lge/internal/R$string;->sp_lgmdm_enforce_airplane_point:I

    invoke-virtual {v3, v4, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 93
    const-string/jumbo v4, "LGMDMSettings"

    const-string/jumbo v6, "LGMDM: Enforce AIRPLANE MODE"

    invoke-static {v4, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return v5

    .line 97
    :cond_6e
    const-string/jumbo v6, "data_roaming"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_80

    const-string/jumbo v6, "0"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a7

    .line 104
    :cond_80
    const-string/jumbo v6, "mobile_data"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e0

    .line 105
    const-string/jumbo v6, "0"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bc

    .line 106
    invoke-virtual {v3, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;I)Z

    move-result v6

    if-eqz v6, :cond_232

    .line 108
    sget v4, Lcom/lge/internal/R$string;->sp_lgmdm_keep_data_connection_point:I

    .line 107
    invoke-virtual {v3, v4, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 110
    const-string/jumbo v4, "LGMDMSettings"

    const-string/jumbo v6, "LGMDM: enforce mobile data"

    invoke-static {v4, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return v5

    .line 98
    :cond_a7
    invoke-virtual {v3, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowDataRoaming(Landroid/content/ComponentName;I)Z

    move-result v6

    if-nez v6, :cond_232

    .line 99
    sget v4, Lcom/lge/internal/R$string;->sp_block_data_roaming_point:I

    invoke-virtual {v3, v4, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 101
    const-string/jumbo v4, "LGMDMSettings"

    const-string/jumbo v6, "LGMDM: Disallow DATA ROAMING"

    invoke-static {v4, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return v5

    .line 113
    :cond_bc
    const-string/jumbo v6, "1"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_232

    .line 114
    invoke-virtual {v3, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;I)Z

    move-result v6

    if-nez v6, :cond_232

    .line 115
    invoke-virtual {v3, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMobileNetwork(Landroid/content/ComponentName;I)Z

    move-result v6

    if-nez v6, :cond_232

    .line 116
    sget v4, Lcom/lge/internal/R$string;->sp_lgmdm_block_data_point:I

    invoke-virtual {v3, v4, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 118
    const-string/jumbo v4, "LGMDMSettings"

    const-string/jumbo v6, "LGMDM: Disallow mobile data"

    invoke-static {v4, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return v5

    .line 122
    :cond_e0
    const-string/jumbo v6, "auto_time"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f2

    const-string/jumbo v6, "1"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14a

    .line 129
    :cond_f2
    const-string/jumbo v6, "auto_time_zone"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_104

    const-string/jumbo v6, "1"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15f

    .line 136
    :cond_104
    const-string/jumbo v6, "show_password"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_116

    const-string/jumbo v6, "0"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_174

    .line 144
    :cond_116
    const-string/jumbo v6, "dual_window"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_128

    const-string/jumbo v6, "0"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_189

    .line 151
    :cond_128
    const-string/jumbo v6, "location_mode"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d7

    .line 152
    invoke-virtual {v3, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowGPSLocation(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 153
    .local v0, "enableGps":Z
    invoke-virtual {v3, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWirelessLocation(Landroid/content/ComponentName;I)Z

    move-result v1

    .line 154
    .local v1, "enableWireless":Z
    invoke-virtual {v3, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceGPSLocationEnabled(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 155
    .local v2, "enforceGps":Z
    if-nez v0, :cond_19e

    .line 156
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 155
    if-eqz v6, :cond_19e

    .line 157
    return v5

    .line 123
    .end local v0    # "enableGps":Z
    .end local v1    # "enableWireless":Z
    .end local v2    # "enforceGps":Z
    :cond_14a
    invoke-virtual {v3, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowChangeDateAndTime(Landroid/content/ComponentName;I)Z

    move-result v6

    if-nez v6, :cond_232

    .line 124
    sget v4, Lcom/lge/internal/R$string;->sp_lgmdm_enable_date_time_NORMAL:I

    invoke-virtual {v3, v4, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 126
    const-string/jumbo v4, "LGMDMSettings"

    const-string/jumbo v6, "LGMDM: Disallow CHANGE DATE AND TIME"

    invoke-static {v4, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return v5

    .line 130
    :cond_15f
    invoke-virtual {v3, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowChangeTimezone(Landroid/content/ComponentName;I)Z

    move-result v6

    if-nez v6, :cond_232

    .line 131
    sget v4, Lcom/lge/internal/R$string;->sp_lgmdm_enable_timezone_NORMAL:I

    invoke-virtual {v3, v4, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 133
    const-string/jumbo v4, "LGMDMSettings"

    const-string/jumbo v6, "LGMDM: Disallow CHANGE TIMEZONE"

    invoke-static {v4, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return v5

    .line 137
    :cond_174
    invoke-virtual {v3, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowPasswordTypingVisible(Landroid/content/ComponentName;I)Z

    move-result v6

    if-nez v6, :cond_232

    .line 138
    const-string/jumbo v4, "LGMDMSettings"

    const-string/jumbo v6, "checkDisallowPasswordTypingVisible : disallow mode"

    invoke-static {v4, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget v4, Lcom/lge/internal/R$string;->sp_lgmdm_block_password_typing_visible_point:I

    .line 139
    invoke-virtual {v3, v4, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 142
    return v5

    .line 145
    :cond_189
    invoke-virtual {v3, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowDualWindow(Landroid/content/ComponentName;I)Z

    move-result v6

    if-nez v6, :cond_232

    .line 146
    const-string/jumbo v4, "LGMDMSettings"

    const-string/jumbo v6, "LGMDM: Disalllow Dual Window"

    invoke-static {v4, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget v4, Lcom/lge/internal/R$string;->sp_lgmdm_block_dualwindow_NORMAL:I

    invoke-virtual {v3, v4, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 149
    return v5

    .line 159
    .restart local v0    # "enableGps":Z
    .restart local v1    # "enableWireless":Z
    .restart local v2    # "enforceGps":Z
    :cond_19e
    if-nez v1, :cond_1ab

    .line 160
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 159
    if-eqz v6, :cond_1ab

    .line 161
    return v5

    .line 163
    :cond_1ab
    if-eqz v0, :cond_1bb

    .end local v1    # "enableWireless":Z
    :goto_1ad
    if-nez v1, :cond_1bd

    .line 164
    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 163
    if-eqz v6, :cond_1bd

    .line 165
    return v5

    .restart local v1    # "enableWireless":Z
    :cond_1bb
    move v1, v4

    .line 163
    goto :goto_1ad

    .line 167
    .end local v1    # "enableWireless":Z
    :cond_1bd
    if-eqz v2, :cond_1ca

    .line 168
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 167
    if-eqz v6, :cond_1ca

    .line 169
    return v5

    .line 171
    :cond_1ca
    if-eqz v2, :cond_232

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_232

    .line 172
    return v5

    .line 174
    .end local v0    # "enableGps":Z
    .end local v2    # "enforceGps":Z
    :cond_1d7
    const-string/jumbo v6, "quick_view_enable"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f9

    .line 176
    const-string/jumbo v6, "1"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_232

    .line 177
    invoke-virtual {v3, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowQuickCircle(Landroid/content/ComponentName;I)Z

    move-result v6

    if-nez v6, :cond_232

    .line 178
    const-string/jumbo v4, "LGMDMSettings"

    const-string/jumbo v6, "getAllowQuickCircle : disallow mode"

    invoke-static {v4, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return v5

    .line 182
    :cond_1f9
    const-string/jumbo v6, "shortcut_key_status"

    invoke-static {v6, p0, p1}, Lcom/lge/mdm/frameworks/MDMSettingsAdapter;->isEnabled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20b

    .line 183
    invoke-virtual {v3, v7}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowShortcutKey(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_209

    :goto_208
    return v4

    :cond_209
    move v4, v5

    goto :goto_208

    .line 184
    :cond_20b
    const-string/jumbo v6, "data_network_user_background_setting_data"

    invoke-static {v6, p0, p1}, Lcom/lge/mdm/frameworks/MDMSettingsAdapter;->isEnabled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_220

    .line 185
    invoke-virtual {v3, v7}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceBackgroundDataRestricted(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_232

    .line 187
    sget v4, Lcom/lge/internal/R$string;->sp_lgmdm_block_restrict_background_data_NORMAL:I

    .line 186
    invoke-virtual {v3, v4, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 189
    return v5

    .line 191
    :cond_220
    const-string/jumbo v6, "lock_to_app_enabled"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_232

    const-string/jumbo v6, "0"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_233

    .line 200
    :cond_232
    return v4

    .line 192
    :cond_233
    invoke-virtual {v3, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowScreenPin(Landroid/content/ComponentName;I)Z

    move-result v6

    if-nez v6, :cond_232

    .line 193
    const-string/jumbo v4, "LGMDMSettings"

    const-string/jumbo v6, "getAllowScreenPin : disallow mode"

    invoke-static {v4, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget v4, Lcom/lge/internal/R$string;->sp_block_screen_pin_NORMAL:I

    invoke-virtual {v3, v4, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 196
    return v5
.end method

.method public static checkPutStringForUserForEAS(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v1

    .line 44
    .local v1, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-nez v1, :cond_a

    .line 45
    return v3

    .line 48
    :cond_a
    const-string/jumbo v2, "location_providers_allowed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 52
    :cond_19
    const-string/jumbo v2, "install_non_market_apps"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string/jumbo v2, "0"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 60
    :cond_2b
    return v3

    .line 49
    :cond_2c
    const-string/jumbo v2, "+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    const/4 v0, 0x1

    .line 50
    .local v0, "enabled":Z
    :goto_36
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterSettingsProvider()Lcom/lge/mdm/frameworks/LGMDMUISettingsProviderAdapter;

    move-result-object v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, p2}, Lcom/lge/mdm/frameworks/LGMDMUISettingsProviderAdapter;->checkGpsPolicy(Ljava/lang/String;ZI)Z

    move-result v2

    return v2

    .line 49
    .end local v0    # "enabled":Z
    :cond_43
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_36

    .line 53
    .end local v0    # "enabled":Z
    :cond_45
    invoke-virtual {v1, v5, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUnknownSourceInstallation(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 54
    sget v2, Lcom/lge/internal/R$string;->sp_block_unknownsource_NORMAL:I

    invoke-virtual {v1, v2, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 56
    const-string/jumbo v2, "LGMDMSettings"

    const-string/jumbo v3, "LGMDM: Disallow UNKNOWN SOURCE INSTALLATION"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return v4
.end method

.method private static final isEnabled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "tkey"    # Ljava/lang/String;
    .param p2, "tvalue"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 204
    sget-boolean v2, Lcom/lge/mdm/frameworks/MDMSettingsAdapter;->-assertionsDisabled:Z

    if-nez v2, :cond_13

    if-eqz p0, :cond_11

    move v2, v1

    :goto_9
    if-nez v2, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    move v2, v0

    goto :goto_9

    .line 206
    :cond_13
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string/jumbo v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_22
    :goto_22
    return v0

    :cond_23
    move v0, v1

    goto :goto_22
.end method
