.class public Lcom/lge/launcher3/homesettings/SettingsSearchUtils;
.super Ljava/lang/Object;
.source "SettingsSearchUtils.java"


# static fields
.field private static final ACTION_SETTINGS_SEARCH:Ljava/lang/String; = "com.lge.settings.SETTINGS_SEARCH"

.field private static final SETTINGS_SEARCH_CONTENT_URI:Ljava/lang/String; = "content://com.android.settings.search.SearchDBupdateProvider/prefs_index"

.field private static final TAG:Ljava/lang/String; = "SettingsSearch"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBooleanResource(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 51
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 52
    const/4 v3, 0x1

    aget-object v3, v2, v3

    .line 53
    const/4 v4, 0x2

    aget-object v2, v2, v4

    .line 55
    const-string v4, "bool"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 68
    :goto_21
    return v0

    .line 59
    :cond_22
    :try_start_22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 60
    invoke-virtual {v4, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 61
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_31} :catch_33
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_31} :catch_38

    move-result v0

    goto :goto_21

    .line 62
    :catch_33
    move-exception v1

    .line 63
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_21

    .line 64
    :catch_38
    move-exception v1

    .line 65
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_21
.end method

.method public static hasNewSettingSearchFeature(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 30
    const-string v0, "android.resource://com.android.settings/bool/config_new_settings_search_enable"

    .line 31
    invoke-static {p0, v0}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 32
    return v0
.end method

.method public static hasSettingSearchFeature(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 24
    const-string v0, "android.resource://com.android.settings/bool/config_settings_search_enable"

    .line 25
    invoke-static {p0, v0}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 26
    return v0
.end method

.method public static startSettingsSearchActivity(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 37
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 38
    const-string v1, "com.lge.settings.SETTINGS_SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v1, "search"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_13
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_13} :catch_14

    .line 44
    :goto_13
    return-void

    .line 41
    :catch_14
    move-exception v0

    .line 42
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_13
.end method

.method public static updateCheckValue(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7

    .prologue
    .line 72
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 73
    const-string v0, "SettingsSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Update check value: key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v2, "check_value"

    if-eqz p2, :cond_33

    const/4 v0, 0x1

    :goto_28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 75
    invoke-static {p0, p1, v1}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateValue(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 76
    return-void

    .line 74
    :cond_33
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public static updateEnable(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7

    .prologue
    .line 79
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 80
    const-string v0, "SettingsSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Update enable: key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "current_enable"

    if-eqz p2, :cond_33

    const/4 v0, 0x1

    :goto_28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    invoke-static {p0, p1, v1}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateValue(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 83
    return-void

    .line 81
    :cond_33
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public static updateGoogleNowEnabled(Landroid/content/Context;Z)V
    .registers 3

    .prologue
    .line 114
    const-string v0, "homesettingsprefs_key_google_now"

    invoke-static {p0, v0, p1}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateCheckValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 115
    return-void
.end method

.method public static updateSettingSearchDB(Landroid/content/Context;ZZ)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 118
    const-string v3, "homesettingsprefs_homescreen"

    if-eqz p1, :cond_97

    move v0, v1

    :goto_7
    invoke-static {p0, v3, v0}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateVisible(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 119
    invoke-static {p0}, Lcom/lge/launcher3/homesettings/HomeSettingsUtils;->isHomeSelectorExist(Landroid/content/Context;)Z

    move-result v0

    .line 120
    if-eqz v0, :cond_9a

    if-nez p1, :cond_9a

    .line 121
    const-string v0, "homesettingsprefs_key_select_launcher"

    invoke-static {p0, v0, v2}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateVisible(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 125
    :goto_17
    const-string v0, "homesettingsprefs_key_wallpaper"

    if-eqz p1, :cond_a1

    :goto_1b
    invoke-static {p0, v0, v1}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateVisible(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 126
    const-string v0, "homesettingsprefs_key_screeneffect"

    invoke-static {p0, v0, p2}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateVisible(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 127
    invoke-static {}, Lcom/lge/launcher3/util/LGHomeFeature;->getInstance()Lcom/lge/launcher3/util/LGHomeFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature;->useTheme()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 128
    const-string v0, "homesettingsprefs_key_theme"

    invoke-static {p0, v0, p2}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateVisible(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 130
    :cond_32
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_SETTING_DDT_THEME:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 131
    const-string v0, "homesettingsprefs_key_ddt_theme"

    invoke-static {p0, v0, p2}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateVisible(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 133
    :cond_3f
    const-string v0, "homesettingsprefs_key_sort_apps_by"

    invoke-static {p0, v0, p2}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateVisible(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 134
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_DYNAMIC_GRID:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 135
    const-string v0, "homesettingsprefs_key_dynamic_grid"

    invoke-static {p0, v0, p2}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateVisible(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 137
    :cond_51
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_SMARTBULLETIN:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 138
    const-string v0, "homesettingsprefs_key_smartbulletin"

    invoke-static {p0, v0, p2}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateVisible(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 140
    :cond_5e
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_QMEMOPLUS_PANEL:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 141
    const-string v0, "homesettingsprefs_key_qmemoplus_panel"

    invoke-static {p0, v0, p2}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateVisible(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 143
    :cond_6b
    const-string v0, "homesettingsprefs_key_hide_apps"

    invoke-static {p0, v0, p2}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateVisible(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 144
    sget-object v0, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    sget-object v0, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 145
    :cond_84
    const-string v0, "homesettingsprefs_key_help"

    invoke-static {p0, v0, p2}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateVisible(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 147
    :cond_89
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_GOOGLE_NOW:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 148
    const-string v0, "homesettingsprefs_key_google_now"

    invoke-static {p0, v0, p2}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateVisible(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 150
    :cond_96
    return-void

    :cond_97
    move v0, v2

    .line 118
    goto/16 :goto_7

    .line 123
    :cond_9a
    const-string v0, "homesettingsprefs_key_select_launcher"

    invoke-static {p0, v0, v1}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateVisible(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_17

    :cond_a1
    move v1, v2

    .line 125
    goto/16 :goto_1b
.end method

.method public static updateSmartBulletinOnOff(Landroid/content/Context;Z)V
    .registers 3

    .prologue
    .line 110
    const-string v0, "homesettingsprefs_key_smartbulletin"

    invoke-static {p0, v0, p1}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateCheckValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 111
    return-void
.end method

.method private static updateValue(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 93
    invoke-static {p0}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->hasSettingSearchFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->hasNewSettingSearchFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 107
    :goto_d
    return-void

    .line 97
    :cond_e
    const-string v0, "SettingsSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Update value: key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 99
    const-string v1, "data_key_reference=? AND class_name=?"

    .line 102
    :try_start_32
    const-string v2, "content://com.android.settings.search.SearchDBupdateProvider/prefs_index"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 103
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 102
    invoke-virtual {v0, v2, p2, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_4a} :catch_4b

    goto :goto_d

    .line 104
    :catch_4b
    move-exception v0

    .line 105
    const-string v1, "SettingsSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateValue IllegalArgumentException :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [I

    invoke-static {v1, v0, v2}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_d
.end method

.method public static updateVisible(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7

    .prologue
    .line 86
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 87
    const-string v0, "SettingsSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Update visible: key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "visible"

    if-eqz p2, :cond_33

    const/4 v0, 0x1

    :goto_28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    invoke-static {p0, p1, v1}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateValue(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 90
    return-void

    .line 88
    :cond_33
    const/4 v0, 0x0

    goto :goto_28
.end method
