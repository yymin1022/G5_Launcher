.class public Lcom/lge/launcher3/homesettings/SearchIndexableItem;
.super Ljava/lang/Object;
.source "SearchIndexableItem.java"


# static fields
.field private static final CLASS_NAME_HOMESETTING:Ljava/lang/String;

.field private static final CLASS_NAME_HOME_SELECTOR:Ljava/lang/String; = "com.lge.homeselector.HomeSelector"

.field private static final INTENT_ACTION_HOMESETTING_FRAGMENT:Ljava/lang/String; = "com.lge.setting.intent.action.SHOW_FRAGMENT_HOME_SETTING"

.field private static final INTENT_ACTION_HOMESETTING_HELP_FRAGMENT:Ljava/lang/String; = "com.lge.setting.intent.action.SHOW_FRAGMENT_HOME_SETTING_HELP"

.field private static final PACKAGE_NAME_HOME_SELECTOR:Ljava/lang/String; = "com.lge.homeselector"

.field private static final PREF_TYPE_NONE:Ljava/lang/String;

.field private static final PREF_TYPE_SWITCH:Ljava/lang/String; = "Switch"

.field private static final SCREEN_TITLE_MAIN:Ljava/lang/String; = "main"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsPrebuiltLGHome4:Z

.field private mIsSplitView:Z

.field private mRawData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/homesettings/SearchIndexableRaw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->PREF_TYPE_NONE:Ljava/lang/String;

    .line 28
    const-class v0, Lcom/lge/launcher3/homesettings/HomeSettingsPrefActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->CLASS_NAME_HOMESETTING:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mRawData:Ljava/util/ArrayList;

    .line 42
    iput-object p1, p0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    .line 43
    new-instance v2, Lcom/lge/launcher3/homesettings/HomeSettingContext;

    iget-object v0, p0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/lge/launcher3/homesettings/HomeSettingContext;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    .line 46
    :try_start_15
    const-string v3, "com.lge.launcher3"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/lge/launcher3/homesettings/HomeSettingContext;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_1b} :catch_44

    move-result-object v0

    .line 51
    :goto_1c
    invoke-static {v0}, Lcom/lge/launcher3/util/LGHomeFeature;->init(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 53
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_5d

    move v0, v1

    .line 52
    :goto_3e
    iput-boolean v0, p0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mIsSplitView:Z

    .line 54
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setIndexablItemList()V

    .line 55
    return-void

    .line 47
    :catch_44
    move-exception v2

    .line 48
    sget-object v3, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "homesettingContext.createPackageContext :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1c

    .line 53
    :cond_5d
    const/4 v0, 0x1

    goto :goto_3e
.end method

.method private getPrebuiltLGHome4()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 274
    iget-object v1, p0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 277
    :try_start_7
    const-string v2, "com.lge.launcher2"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 278
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_11} :catch_17

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    .line 282
    :cond_16
    :goto_16
    return v0

    .line 280
    :catch_17
    move-exception v1

    sget-object v1, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->TAG:Ljava/lang/String;

    const-string v2, "LGHome4 NameNotFoundException"

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method private getPreferredHomePackage()Ljava/lang/String;
    .registers 5

    .prologue
    .line 263
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/util/PackageUtils;->getDefaultHomeActivityResolveInfo(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_2f

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_2f

    .line 265
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_2f

    .line 266
    sget-object v1, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "preferredLauncher : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 269
    :goto_2e
    return-object v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method private setDDTThemeIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 23

    .prologue
    .line 152
    sget-object v1, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_SETTING_DDT_THEME:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v1}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v15

    .line 153
    const-string v2, "homesettingsprefs_key_ddt_theme"

    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0f009b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 155
    sget-object v9, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->CLASS_NAME_HOMESETTING:Ljava/lang/String;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 156
    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    move-object/from16 v8, p4

    move-object/from16 v10, p3

    .line 153
    invoke-direct/range {v1 .. v16}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setSearchIndexData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 157
    return-void
.end method

.method private setDynamicGridIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 23

    .prologue
    .line 190
    sget-object v1, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_DYNAMIC_GRID:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v1}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 191
    sget-object v1, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_EDITMODE_DYNAMICGRID:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v1}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 192
    if-eqz p5, :cond_3a

    .line 190
    const/4 v15, 0x1

    .line 193
    :goto_13
    const-string v2, "homesettingsprefs_key_dynamic_grid"

    .line 194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0f00da

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 195
    sget-object v9, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->CLASS_NAME_HOMESETTING:Ljava/lang/String;

    sget-object v12, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->PREF_TYPE_NONE:Ljava/lang/String;

    .line 196
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    move-object/from16 v8, p4

    move-object/from16 v10, p3

    move/from16 v11, p5

    .line 193
    invoke-direct/range {v1 .. v16}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setSearchIndexData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 197
    return-void

    .line 190
    :cond_3a
    const/4 v15, 0x0

    goto :goto_13
.end method

.method private setGoogleNowIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 23

    .prologue
    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->getGoogleNowEnabled(Landroid/content/Context;)Z

    move-result v16

    .line 226
    sget-object v1, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_GOOGLE_NOW:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v1}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v15

    .line 227
    const-string v2, "homesettingsprefs_key_google_now"

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0175

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 229
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 231
    sget-object v9, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->CLASS_NAME_HOMESETTING:Ljava/lang/String;

    const-string v12, "Switch"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    move-object/from16 v8, p4

    move-object/from16 v10, p3

    move/from16 v11, p5

    .line 227
    invoke-direct/range {v1 .. v16}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setSearchIndexData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 233
    return-void
.end method

.method private setHelpIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 23

    .prologue
    .line 210
    if-eqz p5, :cond_44

    .line 211
    sget-object v1, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    sget-object v1, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    const-string v2, "ATT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 210
    :cond_16
    const/4 v15, 0x1

    .line 212
    :goto_17
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mIsSplitView:Z

    if-eqz v1, :cond_46

    .line 213
    const-string v2, "homesettingsprefs_key_help"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0152

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 214
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "com.lge.setting.intent.action.SHOW_FRAGMENT_HOME_SETTING_HELP"

    sget-object v9, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->CLASS_NAME_HOMESETTING:Ljava/lang/String;

    .line 215
    sget-object v12, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->PREF_TYPE_NONE:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    move-object/from16 v10, p3

    move/from16 v11, p5

    .line 213
    invoke-direct/range {v1 .. v16}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setSearchIndexData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 221
    :goto_43
    return-void

    .line 210
    :cond_44
    const/4 v15, 0x0

    goto :goto_17

    .line 217
    :cond_46
    const-string v2, "homesettingsprefs_key_help"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0152

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 218
    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v9, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->CLASS_NAME_HOMESETTING:Ljava/lang/String;

    .line 219
    sget-object v12, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->PREF_TYPE_NONE:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    move-object/from16 v8, p4

    move-object/from16 v10, p3

    move/from16 v11, p5

    .line 217
    invoke-direct/range {v1 .. v16}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setSearchIndexData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_43
.end method

.method private setHideAppsIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 23

    .prologue
    .line 93
    const-string v2, "homesettingsprefs_key_hide_apps"

    .line 94
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0170

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 95
    sget-object v9, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->CLASS_NAME_HOMESETTING:Ljava/lang/String;

    sget-object v12, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->PREF_TYPE_NONE:Ljava/lang/String;

    .line 96
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    move-object/from16 v8, p4

    move-object/from16 v10, p3

    move/from16 v11, p5

    move/from16 v15, p5

    .line 93
    invoke-direct/range {v1 .. v16}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setSearchIndexData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 97
    return-void
.end method

.method private setHomeSelectorIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 22

    .prologue
    .line 110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/launcher3/homesettings/HomeSettingsUtils;->isHomeSelectorExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_37

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mIsPrebuiltLGHome4:Z

    if-nez v1, :cond_37

    const/4 v15, 0x1

    .line 111
    :goto_11
    const-string v2, "homesettingsprefs_key_select_launcher"

    .line 112
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0f00d0

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 113
    const-string v9, "com.lge.homeselector.HomeSelector"

    const-string v10, "com.lge.homeselector"

    const/4 v11, 0x1

    .line 114
    sget-object v12, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->PREF_TYPE_NONE:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    move-object/from16 v8, p4

    .line 111
    invoke-direct/range {v1 .. v16}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setSearchIndexData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 115
    return-void

    .line 110
    :cond_37
    const/4 v15, 0x0

    goto :goto_11
.end method

.method private setHomeSettingsCategoryIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 23

    .prologue
    .line 101
    if-nez p5, :cond_26

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mIsPrebuiltLGHome4:Z

    if-eqz v1, :cond_26

    const/4 v15, 0x0

    .line 102
    :goto_9
    const-string v2, "homesettingsprefs_homescreen"

    .line 103
    const-string v5, "main"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 104
    sget-object v9, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->CLASS_NAME_HOMESETTING:Ljava/lang/String;

    const/4 v11, 0x1

    sget-object v12, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->PREF_TYPE_NONE:Ljava/lang/String;

    const/4 v13, 0x0

    .line 105
    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v8, p4

    move-object/from16 v10, p3

    .line 102
    invoke-direct/range {v1 .. v16}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setSearchIndexData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 106
    return-void

    .line 101
    :cond_26
    const/4 v15, 0x1

    goto :goto_9
.end method

.method private setIndexablItemList()V
    .registers 9

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    const v1, 0x7f0f00ca

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    const-class v0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 60
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 61
    const-string v4, "android.intent.action.MAIN"

    .line 63
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->getPreferredHomePackage()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 65
    const-string v6, "com.lge.launcher2"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->getPrebuiltLGHome4()Z

    move-result v0

    if-eqz v0, :cond_8e

    const/4 v0, 0x1

    :goto_2e
    iput-boolean v0, p0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mIsPrebuiltLGHome4:Z

    .line 66
    sget-object v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "LGHome5 : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", prebuiltLGHome4 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mIsPrebuiltLGHome4:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-boolean v0, p0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mIsSplitView:Z

    if-eqz v0, :cond_57

    .line 70
    const/4 v3, 0x0

    .line 71
    const-string v4, "com.lge.setting.intent.action.SHOW_FRAGMENT_HOME_SETTING"

    :cond_57
    move-object v0, p0

    .line 74
    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setHomeSettingsCategoryIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 75
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setHomeSelectorIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 76
    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setSmartBulletinIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, p0

    .line 77
    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setQMemoPlusIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, p0

    .line 78
    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setThemeIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, p0

    .line 79
    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setWallpaperIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 80
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setTWallpaperIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 81
    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setScreenEffectIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, p0

    .line 82
    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setDDTThemeIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, p0

    .line 83
    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setDynamicGridIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, p0

    .line 84
    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setSortAppsByIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, p0

    .line 85
    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setHelpIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, p0

    .line 86
    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setHideAppsIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, p0

    .line 87
    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setGoogleNowIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 88
    return-void

    .line 65
    :cond_8e
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method private setQMemoPlusIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 23

    .prologue
    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->getEnableQmemopluspanel(Landroid/content/Context;)Z

    move-result v16

    .line 133
    sget-object v1, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_QMEMOPLUS_PANEL:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v1}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v1

    if-eqz v1, :cond_4c

    if-eqz p5, :cond_4c

    const/4 v15, 0x1

    .line 134
    :goto_13
    const-string v2, "homesettingsprefs_key_qmemoplus_panel"

    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0f00d1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0f00d2

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0f00d2

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 138
    sget-object v9, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->CLASS_NAME_HOMESETTING:Ljava/lang/String;

    const-string v12, "Switch"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    move-object/from16 v8, p4

    move-object/from16 v10, p3

    move/from16 v11, p5

    .line 134
    invoke-direct/range {v1 .. v16}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setSearchIndexData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 140
    return-void

    .line 133
    :cond_4c
    const/4 v15, 0x0

    goto :goto_13
.end method

.method private setScreenEffectIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 23

    .prologue
    .line 182
    const-string v2, "homesettingsprefs_key_screeneffect"

    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0f00fb

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 184
    sget-object v9, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->CLASS_NAME_HOMESETTING:Ljava/lang/String;

    .line 185
    sget-object v12, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->PREF_TYPE_NONE:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    move-object/from16 v8, p4

    move-object/from16 v10, p3

    move/from16 v11, p5

    move/from16 v15, p5

    .line 182
    invoke-direct/range {v1 .. v16}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setSearchIndexData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 186
    return-void
.end method

.method private setSearchIndexData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 19

    .prologue
    .line 239
    new-instance v1, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;

    invoke-direct {v1}, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;-><init>()V

    .line 240
    iput-object p1, v1, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 241
    iput-object p2, v1, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 242
    iput-object p3, v1, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 243
    iput-object p4, v1, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 244
    iput-object p5, v1, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 245
    iput-object p6, v1, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 246
    iput-object p7, v1, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    .line 247
    iput-object p8, v1, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->intentClass:Ljava/lang/String;

    .line 248
    iput-object p9, v1, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->intentPackage:Ljava/lang/String;

    .line 249
    iput-boolean p10, v1, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->enable:Z

    .line 250
    iput-object p11, v1, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->preferenceType:Ljava/lang/String;

    .line 251
    iput-object p12, v1, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->settingsDbTable:Ljava/lang/String;

    .line 252
    move-object/from16 v0, p13

    iput-object v0, v1, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->settingsDbField:Ljava/lang/String;

    .line 253
    move/from16 v0, p14

    iput-boolean v0, v1, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->visible:Z

    .line 254
    move/from16 v0, p15

    iput-boolean v0, v1, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->checkValue:Z

    .line 255
    iget-object v2, p0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mRawData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    return-void
.end method

.method private setSmartBulletinIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 23

    .prologue
    .line 119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->existSmartBulletinItemInDataBase(Landroid/content/Context;)Z

    move-result v16

    .line 120
    sget-object v1, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_SMARTBULLETIN:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v1}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v1

    if-eqz v1, :cond_4c

    if-eqz p5, :cond_4c

    const/4 v15, 0x1

    .line 121
    :goto_13
    const-string v2, "homesettingsprefs_key_smartbulletin"

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0075

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0076

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 124
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0076

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 125
    sget-object v9, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->CLASS_NAME_HOMESETTING:Ljava/lang/String;

    .line 126
    const-string v12, "Switch"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    move-object/from16 v8, p4

    move-object/from16 v10, p3

    move/from16 v11, p5

    .line 121
    invoke-direct/range {v1 .. v16}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setSearchIndexData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 128
    return-void

    .line 120
    :cond_4c
    const/4 v15, 0x0

    goto :goto_13
.end method

.method private setSortAppsByIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 23

    .prologue
    .line 202
    const-string v2, "homesettingsprefs_key_sort_apps_by"

    .line 203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0144

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 204
    sget-object v9, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->CLASS_NAME_HOMESETTING:Ljava/lang/String;

    sget-object v12, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->PREF_TYPE_NONE:Ljava/lang/String;

    .line 205
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    move-object/from16 v8, p4

    move-object/from16 v10, p3

    move/from16 v11, p5

    move/from16 v15, p5

    .line 202
    invoke-direct/range {v1 .. v16}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setSearchIndexData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 206
    return-void
.end method

.method private setTWallpaperIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 22

    .prologue
    .line 170
    sget-object v1, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    const-string v2, "SKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0004

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-static {v1, v2}, Lcom/lge/launcher3/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 172
    if-eqz v1, :cond_45

    .line 170
    const/4 v15, 0x1

    .line 173
    :goto_20
    const-string v2, "homesettingsprefs_key_t_wallpaper"

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0f00d6

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 175
    sget-object v9, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->CLASS_NAME_HOMESETTING:Ljava/lang/String;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 176
    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    move-object/from16 v8, p4

    move-object/from16 v10, p3

    .line 173
    invoke-direct/range {v1 .. v16}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setSearchIndexData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 177
    return-void

    .line 170
    :cond_45
    const/4 v15, 0x0

    goto :goto_20
.end method

.method private setThemeIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 23

    .prologue
    .line 143
    invoke-static {}, Lcom/lge/launcher3/util/LGHomeFeature;->getInstance()Lcom/lge/launcher3/util/LGHomeFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/util/LGHomeFeature;->useTheme()Z

    move-result v1

    if-eqz v1, :cond_32

    if-eqz p5, :cond_32

    const/4 v15, 0x1

    .line 144
    :goto_d
    const-string v2, "homesettingsprefs_key_theme"

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0f009b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 146
    sget-object v9, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->CLASS_NAME_HOMESETTING:Ljava/lang/String;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 147
    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    move-object/from16 v8, p4

    move-object/from16 v10, p3

    .line 144
    invoke-direct/range {v1 .. v16}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setSearchIndexData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 148
    return-void

    .line 143
    :cond_32
    const/4 v15, 0x0

    goto :goto_d
.end method

.method private setWallpaperIndexableItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 23

    .prologue
    .line 161
    if-nez p5, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mIsPrebuiltLGHome4:Z

    if-eqz v1, :cond_2e

    const/4 v15, 0x0

    .line 162
    :goto_9
    const-string v2, "homesettingsprefs_key_wallpaper"

    .line 163
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0f00d4

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 164
    sget-object v9, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->CLASS_NAME_HOMESETTING:Ljava/lang/String;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 165
    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    move-object/from16 v8, p4

    move-object/from16 v10, p3

    .line 162
    invoke-direct/range {v1 .. v16}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->setSearchIndexData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 166
    return-void

    .line 161
    :cond_2e
    const/4 v15, 0x1

    goto :goto_9
.end method


# virtual methods
.method public final values()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/homesettings/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->mRawData:Ljava/util/ArrayList;

    return-object v0
.end method
