.class public Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;
.super Ljava/lang/Object;
.source "HomeSettingsSharedPreferences.java"


# static fields
.field private static final ENABLE_QMEMOPLUSPANEL:Ljava/lang/String; = "enable_qmemopluspanel"

.field private static final SELECTED_SCREEN_EFFECT_INDEX:Ljava/lang/String; = "selected_screen_effect_index"

.field private static final SELECTED_SORT_APPS_BY_INDEX:Ljava/lang/String; = "selected_sort_apps_by_index"

.field private static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "homesettings_shared_prefs"

.field private static sSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->sSharedPref:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->getHomeSettingsSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    :cond_1a
    return-void
.end method

.method public static getEnableQmemopluspanel(Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 105
    const/4 v0, 0x4

    .line 104
    invoke-static {p0, v0}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->getHomeSettingsSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    const-string v1, "enable_qmemopluspanel"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getGoogleNowEnabled(Landroid/content/Context;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 124
    sget-object v1, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_GOOGLE_NOW:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v1}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 126
    sget-object v1, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$GoogleNowKey;->IS_ENABLED:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$GoogleNowKey;

    .line 125
    invoke-static {p0, v0, v1}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->contains(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;)Z

    move-result v1

    .line 126
    if-nez v1, :cond_1a

    .line 128
    sget-object v1, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_GOOGLE_NOW_INIT_VALUE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v1}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v1

    .line 127
    invoke-static {p0, v1}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->setGoogleNowEnabled(Landroid/content/Context;Z)Z

    .line 131
    :cond_1a
    sget-object v1, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$GoogleNowKey;->IS_ENABLED:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$GoogleNowKey;

    .line 130
    invoke-static {p0, v0, v1, v0}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->getBoolean(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;Z)Z

    move-result v0

    .line 133
    :cond_20
    return v0
.end method

.method public static getHomeSettingsSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 33
    sget-object v0, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->sSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_11

    .line 35
    :try_start_4
    const-string v0, "android.app.LGSharedPreferences"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 36
    const-string v0, "homesettings_shared_prefs"

    invoke-static {p0, v0, p1}, Landroid/app/LGSharedPreferences;->get(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/LGSharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->sSharedPref:Landroid/content/SharedPreferences;
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_11} :catch_14

    .line 41
    :cond_11
    :goto_11
    sget-object v0, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->sSharedPref:Landroid/content/SharedPreferences;

    return-object v0

    .line 38
    :catch_14
    move-exception v0

    const-string v0, "homesettings_shared_prefs"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->sSharedPref:Landroid/content/SharedPreferences;

    goto :goto_11
.end method

.method public static getSelectedScreenEffect(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 63
    const/4 v0, 0x4

    .line 62
    invoke-static {p0, v0}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->getHomeSettingsSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 65
    const v2, 0x7f0c0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 66
    const-string v2, "selected_screen_effect_index"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSelectedSortAppsBy(Landroid/content/Context;I)I
    .registers 4

    .prologue
    .line 88
    const/4 v0, 0x4

    .line 87
    invoke-static {p0, v0}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->getHomeSettingsSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 89
    const-string v1, "selected_sort_apps_by_index"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static putEnableQmemopluspanel(Landroid/content/Context;Z)V
    .registers 4

    .prologue
    .line 111
    const/4 v0, 0x4

    .line 110
    invoke-static {p0, v0}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->getHomeSettingsSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enable_qmemopluspanel"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    return-void
.end method

.method public static putSelectedScreenEffect(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 75
    const-string v0, "Home_ChangeEffect"

    invoke-static {p0, v0}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x4

    .line 77
    invoke-static {p0, v0}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->getHomeSettingsSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "selected_screen_effect_index"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    return-void
.end method

.method public static putSelectedSortAppsBy(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 99
    const/4 v0, 0x4

    .line 98
    invoke-static {p0, v0}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->getHomeSettingsSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "selected_sort_apps_by_index"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    return-void
.end method

.method public static setGoogleNowEnabled(Landroid/content/Context;Z)Z
    .registers 4

    .prologue
    .line 116
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_GOOGLE_NOW:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 117
    const/4 v0, 0x0

    .line 118
    sget-object v1, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$GoogleNowKey;->IS_ENABLED:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$GoogleNowKey;

    .line 117
    invoke-static {p0, v0, v1, p1}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->putBoolean(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;Z)Z

    .line 120
    :cond_e
    const/4 v0, 0x1

    return v0
.end method
