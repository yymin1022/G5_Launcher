.class public Lcom/lge/launcher3/droptarget/UninstallerActivity;
.super Landroid/app/Activity;
.source "UninstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;,
        Lcom/lge/launcher3/droptarget/UninstallerActivity$UninstallAlertDialogFragment;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final PREF_DO_NOT_SHOW_AGAIN:Ljava/lang/String; = "showmoredlgdisableuninstall"

.field private static final PREF_KEY_UNINSTALL:Ljava/lang/String; = "ISCHECKINUNINSTALL"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialogInfo:Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-class v0, Lcom/lge/launcher3/droptarget/UninstallerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->TAG:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/droptarget/UninstallerActivity;)V
    .registers 1

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->disable()V

    return-void
.end method

.method static synthetic access$2(Lcom/lge/launcher3/droptarget/UninstallerActivity;)V
    .registers 1

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->startReinstallerActivity()V

    return-void
.end method

.method private disable()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 322
    sget-object v0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Disable Package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mPackageName:Ljava/lang/String;

    .line 325
    const/4 v2, 0x3

    .line 324
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 329
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 330
    iget-object v1, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mPackageName:Ljava/lang/String;

    aput-object v1, v0, v3

    .line 331
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 332
    new-instance v2, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x2

    .line 333
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v5

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 332
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 334
    return-void
.end method

.method private isCheckedDoNotShowAgain()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 281
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 282
    const-string v2, "showmoredlgdisableuninstall"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 284
    if-eqz v1, :cond_13

    .line 285
    const-string v2, "ISCHECKINUNINSTALL"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 287
    :cond_13
    return v0
.end method

.method private isCheckedReintallerDoNotShowAgain()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "showmoredlgreinstall"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 347
    if-eqz v1, :cond_13

    .line 348
    const-string v2, "ISCHECKINREINSTALL"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 350
    :cond_13
    return v0
.end method

.method private showConfirmationDialog()V
    .registers 3

    .prologue
    .line 269
    sget-object v0, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->isCheckedDoNotShowAgain()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 270
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->startUninstallProgress()V

    .line 272
    const v0, 0x7f0f0119

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/lge/launcher3/util/TalkBackUtils;->sendAccessibilityEvent(Landroid/content/Context;IZ)V

    .line 274
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->finish()V

    .line 278
    :goto_1d
    return-void

    .line 277
    :cond_1e
    new-instance v0, Lcom/lge/launcher3/droptarget/UninstallerActivity$UninstallAlertDialogFragment;

    invoke-direct {v0}, Lcom/lge/launcher3/droptarget/UninstallerActivity$UninstallAlertDialogFragment;-><init>()V

    invoke-direct {p0, v0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->showDialogFragment(Landroid/app/DialogFragment;)V

    goto :goto_1d
.end method

.method private showDialogFragment(Landroid/app/DialogFragment;)V
    .registers 5

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 292
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;

    iget-object v2, v2, Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;->startedBy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 293
    if-eqz v1, :cond_19

    .line 294
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 296
    :cond_19
    iget-object v1, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;

    iget-object v1, v1, Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;->startedBy:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 297
    return-void
.end method

.method private startReinstallerActivity()V
    .registers 4

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->isCheckedReintallerDoNotShowAgain()Z

    move-result v0

    if-nez v0, :cond_18

    .line 338
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_REINSTALL_DIALOG:Lcom/lge/launcher3/config/IntentConst$Action;

    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->startActivity(Landroid/content/Intent;)V

    .line 341
    :cond_18
    return-void
.end method


# virtual methods
.method dispatchAborted()V
    .registers 5

    .prologue
    .line 354
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;

    iget-object v0, v0, Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;->callback:Landroid/os/IBinder;

    if-eqz v0, :cond_1a

    .line 356
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;

    iget-object v0, v0, Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;->callback:Landroid/os/IBinder;

    .line 355
    invoke-static {v0}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v0

    .line 358
    :try_start_12
    iget-object v1, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mPackageName:Ljava/lang/String;

    const/4 v2, -0x5

    .line 359
    const-string v3, "Cancelled by user"

    .line 358
    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1a} :catch_1b

    .line 365
    :cond_1a
    :goto_1a
    return-void

    .line 360
    :catch_1b
    move-exception v0

    .line 362
    sget-object v1, Lcom/lge/launcher3/droptarget/UninstallerActivity;->TAG:Ljava/lang/String;

    const-string v2, "dispatchAborted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method

.method public finish()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 369
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 371
    invoke-virtual {p0, v0, v0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->overridePendingTransition(II)V

    .line 372
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 186
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 191
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->requestWindowFeature(I)Z

    .line 192
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->setTheme()V

    .line 194
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 196
    if-nez v2, :cond_1d

    .line 197
    sget-object v0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->TAG:Ljava/lang/String;

    const-string v1, "No package URI in intent"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :goto_1c
    return-void

    .line 201
    :cond_1d
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mPackageName:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_3c

    .line 203
    sget-object v0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid package name in URI: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 208
    :cond_3c
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 210
    new-instance v0, Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;

    invoke-direct {v0}, Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;

    .line 212
    iget-object v4, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;

    const-string v0, "android.intent.extra.USER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, v4, Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    .line 213
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;

    iget-object v0, v0, Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    if-nez v0, :cond_67

    .line 214
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    iput-object v4, v0, Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    .line 217
    :cond_67
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;

    const-string v4, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;->allUsers:Z

    .line 218
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;

    const-string v4, "android.content.pm.extra.CALLBACK"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v0, Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;->callback:Landroid/os/IBinder;

    .line 221
    :try_start_7b
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;

    iget-object v4, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mPackageName:Ljava/lang/String;

    .line 222
    const/16 v5, 0x2000

    iget-object v6, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;

    iget-object v6, v6, Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 221
    invoke-interface {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iput-object v4, v0, Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_8f} :catch_ad

    .line 227
    :goto_8f
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;

    iget-object v0, v0, Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_b6

    .line 228
    sget-object v0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid packageName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 224
    :catch_ad
    move-exception v0

    sget-object v0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->TAG:Ljava/lang/String;

    const-string v4, "Unable to get packageName. Package manager is dead?"

    invoke-static {v0, v4}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8f

    .line 232
    :cond_b6
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;

    iget-object v4, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/lge/launcher3/util/VplApps;->contains(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;->vpl:Z

    .line 235
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;

    const-string v4, "startedBy"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;->startedBy:Ljava/lang/String;

    .line 241
    invoke-virtual {v2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_e8

    .line 244
    :try_start_d0
    iget-object v1, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;

    .line 245
    new-instance v2, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mPackageName:Ljava/lang/String;

    invoke-direct {v2, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 246
    iget-object v4, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;

    iget-object v4, v4, Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 244
    invoke-interface {v3, v2, v0, v4}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_e8
    .catch Landroid/os/RemoteException; {:try_start_d0 .. :try_end_e8} :catch_ed

    .line 253
    :cond_e8
    :goto_e8
    invoke-direct {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->showConfirmationDialog()V

    goto/16 :goto_1c

    .line 248
    :catch_ed
    move-exception v0

    sget-object v0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get className. Package manager is dead?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e8
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 376
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 377
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->finish()V

    .line 378
    return-void
.end method

.method public setTheme()V
    .registers 4

    .prologue
    .line 259
    :try_start_0
    sget v0, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_b

    .line 260
    const v0, 0x7f100010

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->setTheme(I)V

    .line 262
    :cond_b
    sget v0, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_Alert:I

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->setTheme(I)V
    :try_end_10
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_10} :catch_11

    .line 266
    :goto_10
    return-void

    .line 264
    :catch_11
    move-exception v0

    sget-object v0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->TAG:Ljava/lang/String;

    const-string v1, "WhiteTheme  unsupported "

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_10
.end method

.method startUninstallProgress()V
    .registers 7

    .prologue
    .line 300
    sget-object v0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Delete Package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;

    iget-object v0, v0, Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    .line 303
    iget-object v1, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;

    iget-boolean v1, v1, Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;->allUsers:Z

    .line 306
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 309
    :try_start_28
    iget-object v3, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 310
    if-eqz v1, :cond_3f

    const/4 v0, 0x2

    .line 309
    :goto_32
    invoke-interface {v2, v3, v4, v5, v0}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_35} :catch_41

    .line 316
    :goto_35
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/UninstallerActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;

    iget-boolean v0, v0, Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;->vpl:Z

    if-eqz v0, :cond_3e

    .line 317
    invoke-direct {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->disable()V

    .line 319
    :cond_3e
    return-void

    .line 310
    :cond_3f
    const/4 v0, 0x0

    goto :goto_32

    .line 311
    :catch_41
    move-exception v0

    .line 313
    sget-object v1, Lcom/lge/launcher3/droptarget/UninstallerActivity;->TAG:Ljava/lang/String;

    const-string v2, "Failed to talk to package manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35
.end method
