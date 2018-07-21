.class public Lcom/lge/launcher3/util/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# static fields
.field public static final ANDROID_INTENT_ACTION_MAIN:Ljava/lang/String; = "android.intent.action.MAIN"

.field public static final ANDROID_INTENT_CATEGORY_HOME:Ljava/lang/String; = "android.intent.category.HOME"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/lge/launcher3/util/PackageUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/util/PackageUtils;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableRecentUninstall(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 187
    const-string v0, "com.lge.launcher3.CreateShortcuts"

    .line 188
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.lge.launcher3.CreateShortcuts"

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_RECENT_UNINSTALL_APP:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v2}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 191
    invoke-static {p0}, Lcom/lge/launcher3/util/ManagedProfileUtils;->isAFW(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 192
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    if-ne v2, v3, :cond_2e

    .line 212
    :cond_2d
    :goto_2d
    return-void

    .line 195
    :cond_2e
    invoke-virtual {v1, v0, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 199
    sget-object v0, Lcom/lge/launcher3/util/PackageUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CreateShortcuts activity-alias is enabled by "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 202
    :cond_46
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    if-eq v2, v4, :cond_2d

    .line 205
    invoke-virtual {v1, v0, v4, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 209
    sget-object v0, Lcom/lge/launcher3/util/PackageUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CreateShortcuts activity-alias is disabled by "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d
.end method

.method public static getActivityResolveInfoList(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 249
    if-nez v0, :cond_12

    .line 250
    sget-object v0, Lcom/lge/launcher3/util/PackageUtils;->TAG:Ljava/lang/String;

    const-string v1, "PackageManager is null"

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    .line 251
    const/4 v0, 0x0

    .line 253
    :goto_11
    return-object v0

    .line 254
    :cond_12
    const v1, 0x10040

    .line 253
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    goto :goto_11
.end method

.method public static getApplicationInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 37
    if-eqz p0, :cond_7

    if-nez p1, :cond_1a

    .line 38
    :cond_7
    sget-object v1, Lcom/lge/launcher3/util/PackageUtils;->TAG:Ljava/lang/String;

    const-string v2, "Invalid : context(%s), packageName(%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v5

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_19
    return-object v0

    .line 44
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 46
    const/16 v2, 0x80

    .line 45
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_23} :catch_25
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_23} :catch_3c

    move-result-object v0

    goto :goto_19

    .line 47
    :catch_25
    move-exception v1

    .line 48
    sget-object v2, Lcom/lge/launcher3/util/PackageUtils;->TAG:Ljava/lang/String;

    const-string v3, "NameNotFoundException(%s)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [I

    invoke-static {v2, v1, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_19

    .line 49
    :catch_3c
    move-exception v1

    .line 50
    sget-object v2, Lcom/lge/launcher3/util/PackageUtils;->TAG:Ljava/lang/String;

    const-string v3, "Exception(%s)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [I

    invoke-static {v2, v1, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_19
.end method

.method public static getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 332
    const/4 v1, 0x0

    .line 334
    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_b} :catch_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_2d

    move-result-object v0

    .line 349
    :goto_c
    if-eqz v0, :cond_6e

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_12
    check-cast v0, Ljava/lang/String;

    .line 350
    return-object v0

    .line 335
    :catch_15
    move-exception v0

    .line 336
    sget-object v3, Lcom/lge/launcher3/util/PackageUtils;->TAG:Ljava/lang/String;

    const-string v4, "NameNotFoundException(%s)"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v6, [I

    invoke-static {v3, v0, v4}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    move-object v0, v1

    goto :goto_c

    .line 337
    :catch_2d
    move-exception v0

    .line 338
    invoke-static {p0}, Lcom/lge/launcher3/util/ManagedProfileUtils;->hasProfileOwner(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 340
    :try_start_34
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 341
    const/16 v3, 0x2000

    .line 340
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_3f

    move-object v0, v1

    .line 342
    goto :goto_c

    :catch_3f
    move-exception v0

    .line 343
    sget-object v3, Lcom/lge/launcher3/util/PackageUtils;->TAG:Ljava/lang/String;

    const-string v4, "getApplicationLabel1 Exception(%s)"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v6, [I

    invoke-static {v3, v0, v4}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    move-object v0, v1

    .line 345
    goto :goto_c

    .line 346
    :cond_57
    sget-object v3, Lcom/lge/launcher3/util/PackageUtils;->TAG:Ljava/lang/String;

    const-string v4, "getApplicationLabel2 Exception(%s)"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v6, [I

    invoke-static {v3, v0, v4}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    move-object v0, v1

    goto :goto_c

    .line 349
    :cond_6e
    const-string v0, "(unknown)"

    goto :goto_12
.end method

.method public static getBackupRestoreFeatureforLGHome4(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 304
    const-string v1, "android.resource://com.lge.launcher2/bool/config_feature_use_backup_restore"

    .line 306
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 307
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 310
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 311
    const/4 v3, 0x1

    aget-object v3, v2, v3

    .line 312
    const/4 v4, 0x2

    aget-object v2, v2, v4

    .line 314
    const-string v4, "bool"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 327
    :goto_23
    return v0

    .line 318
    :cond_24
    :try_start_24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 319
    invoke-virtual {v4, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 320
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_33} :catch_35
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_24 .. :try_end_33} :catch_3a

    move-result v0

    goto :goto_23

    .line 321
    :catch_35
    move-exception v1

    .line 322
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_23

    .line 323
    :catch_3a
    move-exception v1

    .line 324
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_23
.end method

.method public static getDefaultHomeActivityResolveInfo(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;
    .registers 4

    .prologue
    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 232
    if-nez v0, :cond_12

    .line 233
    sget-object v0, Lcom/lge/launcher3/util/PackageUtils;->TAG:Ljava/lang/String;

    const-string v1, "PackageManager is null"

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    .line 234
    const/4 v0, 0x0

    .line 237
    :goto_11
    return-object v0

    .line 236
    :cond_12
    invoke-static {}, Lcom/lge/launcher3/util/PackageUtils;->getHomeActivityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 237
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_11
.end method

.method public static getHomeActivityIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 218
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 219
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    return-object v0
.end method

.method public static getPackageName(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 99
    const/high16 v1, 0x10000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/lge/launcher3/util/PackageUtils;->getPackageName(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    if-nez p0, :cond_4

    .line 109
    const/4 v0, 0x0

    .line 116
    :goto_3
    return-object v0

    .line 112
    :cond_4
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 113
    if-nez v0, :cond_a

    .line 114
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 116
    :cond_a
    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    goto :goto_3
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 79
    const/4 v0, 0x0

    .line 81
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 83
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_12} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_12} :catch_2a

    .line 89
    :goto_12
    return-object v0

    .line 84
    :catch_13
    move-exception v1

    .line 85
    sget-object v2, Lcom/lge/launcher3/util/PackageUtils;->TAG:Ljava/lang/String;

    const-string v3, "NameNotFoundException(%s)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [I

    invoke-static {v2, v1, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_12

    .line 86
    :catch_2a
    move-exception v1

    .line 87
    sget-object v2, Lcom/lge/launcher3/util/PackageUtils;->TAG:Ljava/lang/String;

    const-string v3, "NullPointerException(%s)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [I

    invoke-static {v2, v1, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_12
.end method

.method public static isEnableBackupRestore(Landroid/content/Context;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 286
    invoke-static {p0}, Lcom/lge/launcher3/util/PackageUtils;->getDefaultHomeActivityResolveInfo(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 287
    if-eqz v2, :cond_32

    .line 288
    sget-object v3, Lcom/lge/launcher3/util/PackageUtils;->TAG:Ljava/lang/String;

    const-string v4, "isEnableBackupRestore() : defHomeResolveInfo(%s)"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static {v2}, Lcom/lge/launcher3/util/PackageUtils;->isResolverActivity(Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 290
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.lge.launcher2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 296
    :goto_29
    invoke-static {p0}, Lcom/lge/launcher3/util/PackageUtils;->getBackupRestoreFeatureforLGHome4(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 299
    :goto_2f
    return v0

    :cond_30
    move v0, v1

    goto :goto_2f

    :cond_32
    move v0, v1

    goto :goto_29
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/lge/launcher3/util/PackageUtils;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isPackageOnSdcard(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 355
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 357
    const/16 v2, 0x2000

    .line 356
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 358
    if-nez v1, :cond_f

    .line 367
    :goto_e
    return v0

    .line 361
    :cond_f
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isExternalAsec()Z
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_12} :catch_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_2b

    move-result v0

    goto :goto_e

    .line 362
    :catch_14
    move-exception v1

    .line 363
    sget-object v2, Lcom/lge/launcher3/util/PackageUtils;->TAG:Ljava/lang/String;

    const-string v3, "NameNotFoundException(%s)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [I

    invoke-static {v2, v1, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_e

    .line 364
    :catch_2b
    move-exception v1

    .line 365
    sget-object v2, Lcom/lge/launcher3/util/PackageUtils;->TAG:Ljava/lang/String;

    const-string v3, "Exception(%s)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [I

    invoke-static {v2, v1, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_e
.end method

.method public static isPackageUninstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 71
    invoke-static {p0, p1}, Lcom/lge/launcher3/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static isResolverActivity(Landroid/content/pm/ResolveInfo;)Z
    .registers 3

    .prologue
    .line 262
    if-eqz p0, :cond_c

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_c

    .line 263
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 264
    :cond_c
    const/4 v0, 0x0

    .line 266
    :goto_d
    return v0

    :cond_e
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_d
.end method

.method public static isSafeMode(Landroid/content/Context;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 274
    if-nez p0, :cond_4

    .line 281
    :cond_3
    :goto_3
    return v0

    .line 277
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 278
    if-eqz v1, :cond_3

    .line 281
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    goto :goto_3
.end method

.method public static setItemsVisibleInSettingSearchForLGHome4(Landroid/content/Context;Z)V
    .registers 7

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 164
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 165
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.lge.launcher2"

    .line 166
    const-string v4, "com.lge.launcher2.SettingSearchChangedRecevier"

    .line 165
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/16 v3, 0x80

    .line 164
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_13} :catch_36

    move-result-object v0

    .line 172
    :goto_14
    if-eqz v0, :cond_35

    .line 174
    const-string v1, ""

    .line 175
    const-string v1, ""

    .line 177
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "change_visibility_action"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "change_visibility_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 184
    :cond_35
    return-void

    .line 169
    :catch_36
    move-exception v1

    sget-object v1, Lcom/lge/launcher3/util/PackageUtils;->TAG:Ljava/lang/String;

    const-string v2, "NameNotFoundException : cannot find LGHome4"

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method

.method public static setPrefHomeSetting(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 121
    const-string v1, "com.lge.launcher3.intent.action.SHOW_SETTING"

    .line 123
    if-nez v3, :cond_a

    .line 156
    :cond_9
    :goto_9
    return-void

    .line 127
    :cond_a
    if-eqz p1, :cond_9

    .line 131
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 132
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 134
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    const v1, 0x10040

    .line 135
    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 138
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 139
    new-array v7, v6, [Landroid/content/ComponentName;

    move v2, v0

    move v1, v0

    .line 141
    :goto_2a
    if-lt v2, v6, :cond_51

    .line 149
    new-instance v0, Landroid/content/ComponentName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".homesettings.HomeSettingsPrefActivity"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :try_start_44
    invoke-virtual {v3, v4, v1, v7, v0}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    :try_end_47
    .catch Ljava/lang/SecurityException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_9

    .line 154
    :catch_48
    move-exception v0

    sget-object v0, Lcom/lge/launcher3/util/PackageUtils;->TAG:Ljava/lang/String;

    const-string v1, "relpacePreferredActivity security"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 142
    :cond_51
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 143
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v7, v2

    .line 144
    iget v8, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v8, v1, :cond_71

    .line 145
    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 141
    :goto_6c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_2a

    :cond_71
    move v0, v1

    goto :goto_6c
.end method
