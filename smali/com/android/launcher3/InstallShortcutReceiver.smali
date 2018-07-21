.class public Lcom/android/launcher3/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;
    }
.end annotation


# static fields
.field private static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final APPS_PENDING_INSTALL:Ljava/lang/String; = "apps_to_install"

.field private static final APP_SHORTCUT_TYPE_KEY:Ljava/lang/String; = "isAppShortcut"

.field private static final DBG:Z = false

.field private static final ICON_KEY:Ljava/lang/String; = "icon"

.field private static final ICON_RESOURCE_NAME_KEY:Ljava/lang/String; = "iconResource"

.field private static final ICON_RESOURCE_PACKAGE_NAME_KEY:Ljava/lang/String; = "iconResourcePackage"

.field private static final LAUNCH_INTENT_KEY:Ljava/lang/String; = "intent.launch"

.field private static final NAME_KEY:Ljava/lang/String; = "name"

.field public static final NEW_SHORTCUT_BOUNCE_DURATION:I = 0x1c2

.field public static final NEW_SHORTCUT_STAGGER_DELAY:I = 0x55

.field private static final TAG:Ljava/lang/String; = "InstallShortcutReceiver"

.field private static final USER_HANDLE_KEY:Ljava/lang/String; = "userHandle"

.field private static mUseInstallQueue:Z

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/InstallShortcutReceiver;->sLock:Ljava/lang/Object;

    .line 142
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/InstallShortcutReceiver;->mUseInstallQueue:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static addToInstallQueue(Landroid/content/SharedPreferences;Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;)V
    .registers 6

    .prologue
    .line 75
    sget-object v1, Lcom/android/launcher3/InstallShortcutReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_3
    invoke-virtual {p1}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->encodeToString()Ljava/lang/String;

    move-result-object v2

    .line 77
    if-eqz v2, :cond_28

    .line 78
    const-string v0, "apps_to_install"

    const/4 v3, 0x0

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 79
    if-nez v3, :cond_2a

    .line 80
    new-instance v0, Ljava/util/HashSet;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 84
    :goto_18
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "apps_to_install"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    :cond_28
    monitor-exit v1

    .line 88
    return-void

    .line 82
    :cond_2a
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_18

    .line 75
    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v0
.end method

.method private static convertToLauncherActivityIfPossible(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;)Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .registers 4

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->isLuncherActivity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 437
    :cond_6
    :goto_6
    return-object p0

    .line 421
    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 422
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 427
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 428
    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 430
    if-eqz v0, :cond_6

    .line 436
    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->fromResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    move-result-object v1

    .line 437
    new-instance v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    iget-object v2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Landroid/content/Context;)V

    move-object p0, v0

    goto :goto_6
.end method

.method private static decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 366
    :try_start_1
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 367
    const-string v2, "intent.launch"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 369
    const-string v3, "isAppShortcut"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 371
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v3

    .line 372
    const-string v4, "userHandle"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    .line 373
    if-nez v0, :cond_30

    .line 407
    :goto_2f
    return-object v1

    .line 377
    :cond_30
    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v3

    .line 378
    invoke-virtual {v3, v2, v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;)Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    move-result-object v2

    .line 379
    if-nez v2, :cond_3d

    move-object v0, v1

    :goto_3b
    move-object v1, v0

    goto :goto_2f

    :cond_3d
    new-instance v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {v0, v2, p1}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Landroid/content/Context;)V
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_42} :catch_43
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_42} :catch_b6

    goto :goto_3b

    .line 402
    :catch_43
    move-exception v0

    .line 403
    const-string v2, "InstallShortcutReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception reading shortcut to add: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 382
    :cond_59
    :try_start_59
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 383
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 384
    const-string v2, "android.intent.extra.shortcut.NAME"

    const-string v4, "name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string v2, "icon"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 387
    const-string v4, "iconResource"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 388
    const-string v5, "iconResourcePackage"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    if-eqz v2, :cond_9f

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9f

    .line 390
    const/4 v0, 0x0

    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 391
    const/4 v2, 0x0

    array-length v4, v0

    invoke-static {v0, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 392
    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 401
    :cond_98
    :goto_98
    new-instance v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {v0, v3, p1}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    move-object v1, v0

    goto :goto_2f

    .line 393
    :cond_9f
    if-eqz v4, :cond_98

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_98

    .line 395
    new-instance v2, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v2}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 396
    iput-object v4, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 397
    iput-object v0, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 398
    const-string v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_b5
    .catch Lorg/json/JSONException; {:try_start_59 .. :try_end_b5} :catch_43
    .catch Ljava/net/URISyntaxException; {:try_start_59 .. :try_end_b5} :catch_b6

    goto :goto_98

    .line 404
    :catch_b6
    move-exception v0

    .line 405
    const-string v2, "InstallShortcutReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception reading shortcut to add: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f
.end method

.method static disableAndFlushInstallQueue(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 195
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/InstallShortcutReceiver;->mUseInstallQueue:Z

    .line 196
    invoke-static {p0}, Lcom/android/launcher3/InstallShortcutReceiver;->flushInstallQueue(Landroid/content/Context;)V

    .line 197
    return-void
.end method

.method static enableInstallQueue()V
    .registers 1

    .prologue
    .line 192
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/InstallShortcutReceiver;->mUseInstallQueue:Z

    .line 193
    return-void
.end method

.method static ensureValidName(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 6

    .prologue
    .line 236
    if-nez p2, :cond_13

    .line 238
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 239
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 240
    invoke-virtual {v1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_12} :catch_14

    move-result-object p2

    .line 245
    :cond_13
    :goto_13
    return-object p2

    .line 242
    :catch_14
    move-exception v0

    const-string p2, ""

    goto :goto_13
.end method

.method static flushInstallQueue(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 199
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    .line 200
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 201
    invoke-static {v0, p0}, Lcom/android/launcher3/InstallShortcutReceiver;->getAndClearInstallQueue(Landroid/content/SharedPreferences;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    .line 203
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 204
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 205
    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_34

    .line 224
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 225
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/android/launcher3/LauncherModel;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 229
    :cond_33
    return-void

    .line 206
    :cond_34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    .line 207
    iget-object v3, v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 210
    invoke-virtual {v0}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 212
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v4

    .line 213
    invoke-static {p0, v3, v4}, Lcom/android/launcher3/LauncherModel;->isValidPackage(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 220
    :cond_50
    invoke-virtual {v0}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->getShortcutInfo()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c
.end method

.method public static fromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/ShortcutInfo;
    .registers 4

    .prologue
    .line 160
    new-instance v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    .line 161
    iget-object v1, v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    if-nez v1, :cond_f

    .line 163
    :cond_d
    const/4 v0, 0x0

    .line 170
    :goto_e
    return-object v0

    .line 166
    :cond_f
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v1

    if-nez v1, :cond_19

    .line 167
    invoke-static {v0}, Lcom/android/launcher3/InstallShortcutReceiver;->convertToLauncherActivityIfPossible(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;)Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-result-object v0

    .line 170
    :cond_19
    invoke-virtual {v0}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->getShortcutInfo()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v0

    goto :goto_e
.end method

.method private static getAndClearInstallQueue(Landroid/content/SharedPreferences;Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    sget-object v2, Lcom/android/launcher3/InstallShortcutReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 122
    :try_start_3
    const-string v0, "apps_to_install"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 124
    if-nez v0, :cond_13

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v2

    .line 136
    :goto_12
    return-object v0

    .line 128
    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1c
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_37

    .line 135
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "apps_to_install"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    monitor-exit v2

    move-object v0, v1

    goto :goto_12

    .line 129
    :cond_37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    invoke-static {v0, p1}, Lcom/android/launcher3/InstallShortcutReceiver;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_1c

    .line 132
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 121
    :catchall_47
    move-exception v0

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v0
.end method

.method private static final onReceive_aroundBody0(Lcom/android/launcher3/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 145
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 157
    :cond_c
    :goto_c
    return-void

    .line 149
    :cond_d
    new-instance v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {v0, p2, p1}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    .line 150
    iget-object v1, v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 155
    invoke-static {v0}, Lcom/android/launcher3/InstallShortcutReceiver;->convertToLauncherActivityIfPossible(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;)Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-result-object v0

    .line 156
    invoke-static {v0, p1}, Lcom/android/launcher3/InstallShortcutReceiver;->queuePendingShortcutInfo(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;)V

    goto :goto_c
.end method

.method private static final onReceive_aroundBody1$advice(Lcom/android/launcher3/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;Lcom/lge/launcher3/InstallShortcutReceiverAspect;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 13

    .prologue
    const/4 v5, 0x0

    .line 39
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p5, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 42
    sget-object v2, Lcom/lge/launcher3/InstallShortcutReceiverAspect;->TAG:Ljava/lang/String;

    .line 43
    const-string v3, "InstallShortcutReceiver.onReceive() : %s{%s}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    aput-object v0, v4, v1

    .line 42
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    invoke-static {v0, v5}, Lcom/lge/launcher3/memory/MemoryUtils;->hasAvailableFileSystemMemory(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_35

    .line 46
    sget-object v0, Lcom/lge/launcher3/InstallShortcutReceiverAspect;->TAG:Ljava/lang/String;

    .line 47
    const-string v1, "Memory is full. so InstallShortcutReceiver.onReceive() is canceled."

    .line 46
    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_34
    return-void

    .line 51
    :cond_35
    invoke-static {p0, p4, p5}, Lcom/android/launcher3/InstallShortcutReceiver;->onReceive_aroundBody0(Lcom/android/launcher3/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_34
.end method

.method static queueInstallShortcut(Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 174
    new-instance v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Landroid/content/Context;)V

    invoke-static {v0, p1}, Lcom/android/launcher3/InstallShortcutReceiver;->queuePendingShortcutInfo(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;)V

    .line 175
    return-void
.end method

.method private static queuePendingShortcutInfo(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;)V
    .registers 8

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->aspectOf()Lcom/lge/launcher3/allappsless/AllAppsLessAspect;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/InstallShortcutReceiver;->queuePendingShortcutInfo_aroundBody3$advice(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;Lorg/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method

.method private static final queuePendingShortcutInfo_aroundBody2(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 180
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    .line 183
    :goto_17
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 185
    invoke-static {v1, p0}, Lcom/android/launcher3/InstallShortcutReceiver;->addToInstallQueue(Landroid/content/SharedPreferences;Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;)V

    .line 186
    sget-boolean v1, Lcom/android/launcher3/InstallShortcutReceiver;->mUseInstallQueue:Z

    if-nez v1, :cond_2b

    if-nez v0, :cond_2b

    .line 187
    invoke-static {p1}, Lcom/android/launcher3/InstallShortcutReceiver;->flushInstallQueue(Landroid/content/Context;)V

    .line 189
    :cond_2b
    return-void

    :cond_2c
    move v0, v1

    .line 181
    goto :goto_17
.end method

.method private static final queuePendingShortcutInfo_aroundBody3$advice(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 7

    .prologue
    .line 111
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p3}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->isLuncherActivity()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 116
    :goto_c
    return-void

    .line 115
    :cond_d
    invoke-static {p3, p4}, Lcom/android/launcher3/InstallShortcutReceiver;->queuePendingShortcutInfo_aroundBody2(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;)V

    goto :goto_c
.end method

.method public static removeFromInstallQueue(Landroid/content/Context;Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 117
    :goto_6
    return-void

    .line 95
    :cond_7
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    .line 96
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 97
    sget-object v2, Lcom/android/launcher3/InstallShortcutReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 98
    :try_start_13
    const-string v0, "apps_to_install"

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_38

    .line 104
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 105
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 106
    :cond_25
    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 114
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "apps_to_install"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    :cond_38
    monitor-exit v2

    goto :goto_6

    :catchall_3a
    move-exception v0

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_13 .. :try_end_3c} :catchall_3a

    throw v0

    .line 107
    :cond_3d
    :try_start_3d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    invoke-static {v0, p0}, Lcom/android/launcher3/InstallShortcutReceiver;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 110
    iget-object v0, v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 111
    :cond_5b
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_5e
    .catchall {:try_start_3d .. :try_end_5e} :catchall_3a

    goto :goto_25
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .prologue
    .line 145
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Lcom/lge/launcher3/InstallShortcutReceiverAspect;->aspectOf()Lcom/lge/launcher3/InstallShortcutReceiverAspect;

    move-result-object v3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/InstallShortcutReceiver;->onReceive_aroundBody1$advice(Lcom/android/launcher3/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;Lcom/lge/launcher3/InstallShortcutReceiverAspect;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method
