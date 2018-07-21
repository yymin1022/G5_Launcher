.class public Lcom/lge/launcher3/uninstallmode/UninstallModeManager;
.super Ljava/lang/Object;
.source "UninstallModeManager.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$badge$uninstall$UninstallBadgeUtils$UninstallType:[I

.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/lge/launcher3/uninstallmode/UninstallModeManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsBindingFinished:Z

.field mUninstallableItemList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/lge/launcher3/badge/uninstall/IUninstallBadgeView;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateUninstallTypeAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$launcher3$badge$uninstall$UninstallBadgeUtils$UninstallType()[I
    .registers 3

    .prologue
    .line 38
    sget-object v0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->$SWITCH_TABLE$com$lge$launcher3$badge$uninstall$UninstallBadgeUtils$UninstallType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;->values()[Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;->DELETE:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    invoke-virtual {v1}, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_2e

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;->DISABLE:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    invoke-virtual {v1}, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_2c

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;->UNINSTALL:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    invoke-virtual {v1}, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_2a

    :goto_27
    sput-object v0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->$SWITCH_TABLE$com$lge$launcher3$badge$uninstall$UninstallBadgeUtils$UninstallType:[I

    goto :goto_4

    :catch_2a
    move-exception v1

    goto :goto_27

    :catch_2c
    move-exception v1

    goto :goto_1e

    :catch_2e
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->sInstance:Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mContext:Landroid/content/Context;

    .line 45
    iput-object v0, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mUpdateUninstallTypeAsyncTask:Landroid/os/AsyncTask;

    .line 46
    iput-object v0, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mUninstallableItemList:Ljava/util/HashSet;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mIsBindingFinished:Z

    .line 71
    sget-object v0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->TAG:Ljava/lang/String;

    const-string v1, "Create a new UninstallModeManager instance."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/uninstallmode/UninstallModeManager;Lcom/android/launcher3/ItemInfo;)Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;
    .registers 3

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getUninstallType(Lcom/android/launcher3/ItemInfo;)Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    move-result-object v0

    return-object v0
.end method

.method private cancelUpdateUninstallTypeAsyncTask()V
    .registers 3

    .prologue
    .line 513
    iget-object v0, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mUpdateUninstallTypeAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_d

    .line 514
    iget-object v0, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mUpdateUninstallTypeAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mUpdateUninstallTypeAsyncTask:Landroid/os/AsyncTask;

    .line 517
    :cond_d
    return-void
.end method

.method private clearUninstallableItemList()V
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mUninstallableItemList:Ljava/util/HashSet;

    if-eqz v0, :cond_c

    .line 382
    iget-object v0, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mUninstallableItemList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mUninstallableItemList:Ljava/util/HashSet;

    .line 385
    :cond_c
    return-void
.end method

.method private getAllItemsList(Lcom/android/launcher3/Workspace;)Ljava/util/HashSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Workspace;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 212
    const/4 v1, 0x1

    new-instance v2, Lcom/lge/launcher3/uninstallmode/UninstallModeManager$2;

    invoke-direct {v2, p0, v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager$2;-><init>(Lcom/lge/launcher3/uninstallmode/UninstallModeManager;Ljava/util/HashSet;)V

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 221
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;
    .registers 3

    .prologue
    .line 55
    if-nez p0, :cond_b

    .line 56
    sget-object v0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->TAG:Ljava/lang/String;

    const-string v1, "Context is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    .line 64
    :goto_a
    return-object v0

    .line 60
    :cond_b
    sget-object v0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->sInstance:Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    if-nez v0, :cond_1a

    .line 61
    new-instance v0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->sInstance:Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    .line 64
    :cond_1a
    sget-object v0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->sInstance:Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    goto :goto_a
.end method

.method private getUninstallType(Lcom/android/launcher3/ItemInfo;)Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;
    .registers 4

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 195
    iget-object v1, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/lge/launcher3/droptarget/DisableDropTarget;->supportsDrop(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 196
    sget-object v0, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;->DISABLE:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    .line 203
    :cond_b
    :goto_b
    return-object v0

    .line 197
    :cond_c
    iget-object v1, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->supportsDrop(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 198
    sget-object v0, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;->UNINSTALL:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    goto :goto_b

    .line 199
    :cond_17
    invoke-static {p1}, Lcom/android/launcher3/DeleteDropTarget;->supportsDrop(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 200
    iget-object v1, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetUtils;->isShortcutWithApplicationType(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 201
    :cond_25
    sget-object v0, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;->DELETE:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    goto :goto_b
.end method

.method public static isDisabled()Z
    .registers 1

    .prologue
    .line 398
    invoke-static {}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static isEnabled()Z
    .registers 1

    .prologue
    .line 405
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_UNINSTALL_MODE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    return v0
.end method

.method private sendAccessibilityForUninstallMode(Lcom/android/launcher3/Launcher;)V
    .registers 5

    .prologue
    .line 291
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    const v2, 0x7f0f00ca

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const v2, 0x7f0f010f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget-object v0, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/util/TalkBackUtils;->sendAccessibilityEvent(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 297
    return-void
.end method

.method private setUninstallTypeForAllBadgeViews(Lcom/android/launcher3/Workspace;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 93
    if-nez p1, :cond_4

    .line 143
    :goto_3
    return-void

    .line 97
    :cond_4
    invoke-direct {p0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->cancelUpdateUninstallTypeAsyncTask()V

    .line 99
    invoke-direct {p0, p1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getAllItemsList(Lcom/android/launcher3/Workspace;)Ljava/util/HashSet;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 101
    :cond_13
    sget-object v1, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->TAG:Ljava/lang/String;

    const-string v2, "setUninstallTypeForAllBadgeViews() : allItemsList(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 105
    :cond_24
    new-instance v1, Lcom/lge/launcher3/uninstallmode/UninstallModeManager$1;

    invoke-direct {v1, p0, v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager$1;-><init>(Lcom/lge/launcher3/uninstallmode/UninstallModeManager;Ljava/util/HashSet;)V

    iput-object v1, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mUpdateUninstallTypeAsyncTask:Landroid/os/AsyncTask;

    .line 142
    iget-object v0, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mUpdateUninstallTypeAsyncTask:Landroid/os/AsyncTask;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3
.end method

.method private setVisibilityForAllUninstallBadges(Lcom/android/launcher3/Workspace;Z)V
    .registers 5

    .prologue
    .line 333
    if-nez p1, :cond_3

    .line 348
    :cond_2
    return-void

    .line 337
    :cond_3
    iget-object v0, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mUninstallableItemList:Ljava/util/HashSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mUninstallableItemList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mUninstallableItemList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/badge/uninstall/IUninstallBadgeView;

    .line 342
    if-eqz v0, :cond_15

    .line 346
    invoke-interface {v0, p2}, Lcom/lge/launcher3/badge/uninstall/IUninstallBadgeView;->setVisibilityForUninstallBadge(Z)V

    goto :goto_15
.end method

.method private setupAllUninstallableItemsList(Lcom/android/launcher3/Workspace;)V
    .registers 4

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->clearUninstallableItemList()V

    .line 357
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mUninstallableItemList:Ljava/util/HashSet;

    .line 358
    const/4 v0, 0x1

    new-instance v1, Lcom/lge/launcher3/uninstallmode/UninstallModeManager$3;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager$3;-><init>(Lcom/lge/launcher3/uninstallmode/UninstallModeManager;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 376
    return-void
.end method


# virtual methods
.method public checkAndShowUninstallPopup(Lcom/android/launcher3/Launcher;Landroid/view/View;)Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 413
    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    move v0, v2

    .line 455
    :goto_b
    return v0

    .line 417
    :cond_c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 418
    if-nez v1, :cond_14

    move v0, v2

    .line 419
    goto :goto_b

    :cond_14
    move-object v0, v1

    .line 421
    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 423
    sget-object v4, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->TAG:Ljava/lang/String;

    const-string v5, "checkAndShowUninstallPopup() : Skip to click an item.[%s]"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    instance-of v1, p2, Lcom/lge/launcher3/badge/uninstall/IUninstallBadgeView;

    if-nez v1, :cond_2c

    move v0, v3

    .line 426
    goto :goto_b

    :cond_2c
    move-object v1, p2

    .line 429
    check-cast v1, Lcom/lge/launcher3/badge/uninstall/IUninstallBadgeView;

    .line 430
    invoke-interface {v1}, Lcom/lge/launcher3/badge/uninstall/IUninstallBadgeView;->isUninstallable()Z

    move-result v2

    if-nez v2, :cond_37

    move v0, v3

    .line 431
    goto :goto_b

    .line 434
    :cond_37
    const-string v2, "Home_RemoveItemByUninstallMode"

    invoke-static {p1, v2}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;)V

    .line 435
    invoke-interface {v1}, Lcom/lge/launcher3/badge/uninstall/IUninstallBadgeView;->getUninstallType()Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    move-result-object v1

    .line 436
    invoke-static {}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->$SWITCH_TABLE$com$lge$launcher3$badge$uninstall$UninstallBadgeUtils$UninstallType()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_60

    :goto_4d
    move v0, v3

    .line 455
    goto :goto_b

    .line 438
    :pswitch_4f
    iput-boolean v3, p1, Lcom/android/launcher3/Launcher;->mSuppressCloseFolder:Z

    .line 439
    invoke-static {p1, v0}, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->startUninstallActivity(Lcom/android/launcher3/Launcher;Ljava/lang/Object;)Z

    goto :goto_4d

    .line 443
    :pswitch_55
    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog;->showDialogFragment(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;)V

    goto :goto_4d

    .line 447
    :pswitch_5a
    iput-boolean v3, p1, Lcom/android/launcher3/Launcher;->mSuppressCloseFolder:Z

    .line 448
    invoke-static {p1, v0}, Lcom/lge/launcher3/droptarget/DisableDropTarget;->startDisableActivity(Lcom/android/launcher3/Launcher;Ljava/lang/Object;)Z

    goto :goto_4d

    .line 436
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_55
        :pswitch_5a
    .end packed-switch
.end method

.method public checkToEnterUninstallMode(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/DropTarget;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;)Z
    .registers 14

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 234
    invoke-static {}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 255
    :cond_8
    :goto_8
    return v2

    .line 238
    :cond_9
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    .line 239
    if-eqz p4, :cond_8

    if-eqz p5, :cond_8

    .line 243
    if-ne p2, p3, :cond_44

    .line 244
    iget-wide v4, p4, Lcom/android/launcher3/ItemInfo;->container:J

    iget-wide v6, p5, Lcom/android/launcher3/ItemInfo;->container:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_44

    .line 245
    iget v0, p4, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v3, p5, Lcom/android/launcher3/ItemInfo;->cellX:I

    if-ne v0, v3, :cond_44

    .line 246
    iget v0, p4, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v3, p5, Lcom/android/launcher3/ItemInfo;->cellY:I

    if-ne v0, v3, :cond_44

    .line 247
    invoke-static {p1}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isSafeMode(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    if-nez v0, :cond_44

    move v0, v1

    .line 249
    :goto_30
    instance-of v3, p2, Lcom/android/launcher3/Workspace;

    if-eqz v3, :cond_46

    instance-of v3, p2, Lcom/android/launcher3/Workspace;

    if-eqz v3, :cond_46

    .line 250
    if-eqz v0, :cond_8

    iget-wide v4, p4, Lcom/android/launcher3/ItemInfo;->screenId:J

    iget-wide v6, p5, Lcom/android/launcher3/ItemInfo;->screenId:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_8

    move v2, v1

    goto :goto_8

    :cond_44
    move v0, v2

    .line 243
    goto :goto_30

    .line 251
    :cond_46
    instance-of v3, p2, Lcom/android/launcher3/Folder;

    if-eqz v3, :cond_8

    instance-of v3, p2, Lcom/android/launcher3/Folder;

    if-eqz v3, :cond_8

    .line 252
    if-eqz v0, :cond_8

    iget v0, p4, Lcom/android/launcher3/ItemInfo;->rank:I

    iget v3, p5, Lcom/android/launcher3/ItemInfo;->rank:I

    if-ne v0, v3, :cond_8

    move v2, v1

    goto :goto_8
.end method

.method public destroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 522
    sget-object v0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->TAG:Ljava/lang/String;

    const-string v1, "Destroy the UninstallModeManager instance."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-direct {p0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->clearUninstallableItemList()V

    .line 525
    invoke-direct {p0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->cancelUpdateUninstallTypeAsyncTask()V

    .line 526
    iput-object v2, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mContext:Landroid/content/Context;

    .line 528
    sput-object v2, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->sInstance:Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    .line 529
    return-void
.end method

.method public enterUninstallMode(Lcom/android/launcher3/Launcher;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 262
    invoke-static {}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 288
    :cond_d
    :goto_d
    return-void

    .line 266
    :cond_e
    if-eqz p1, :cond_d

    .line 269
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 270
    if-nez v0, :cond_1e

    .line 271
    sget-object v0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->TAG:Ljava/lang/String;

    const-string v1, "workspace is null."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 275
    :cond_1e
    sget-object v1, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->TAG:Ljava/lang/String;

    const-string v2, "enterUninstallMode()"

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {v0, v3}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$showAllCrossHair(Lcom/android/launcher3/Workspace;Z)V

    .line 279
    invoke-direct {p0, v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->setupAllUninstallableItemsList(Lcom/android/launcher3/Workspace;)V

    .line 280
    invoke-direct {p0, v0, v3}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->setVisibilityForAllUninstallBadges(Lcom/android/launcher3/Workspace;Z)V

    .line 282
    const-string v1, "Home_UninstallMode"

    invoke-static {p1, v1}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/launcher3/util/VibratorManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/util/VibratorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/util/VibratorManager;->vibrateIfSystemHapticFeedbackEnabled()V

    .line 285
    invoke-direct {p0, p1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->sendAccessibilityForUninstallMode(Lcom/android/launcher3/Launcher;)V

    .line 287
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->updateAccessibilityFlags()V

    goto :goto_d
.end method

.method public exitUninstallMode(Lcom/android/launcher3/Launcher;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 303
    invoke-static {}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v0

    if-nez v0, :cond_e

    .line 326
    :cond_d
    :goto_d
    return-void

    .line 307
    :cond_e
    if-eqz p1, :cond_d

    .line 310
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 311
    if-nez v0, :cond_1e

    .line 312
    sget-object v0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->TAG:Ljava/lang/String;

    const-string v1, "workspace is null."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 316
    :cond_1e
    sget-object v1, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->TAG:Ljava/lang/String;

    const-string v2, "exitUninstallMode()"

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    new-array v1, v3, [Z

    invoke-virtual {p1, v1}, Lcom/android/launcher3/Launcher;->closeFolder([Z)V

    .line 321
    invoke-direct {p0, v0, v3}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->setVisibilityForAllUninstallBadges(Lcom/android/launcher3/Workspace;Z)V

    .line 323
    invoke-direct {p0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->clearUninstallableItemList()V

    .line 325
    invoke-static {v0, v3}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$showAllCrossHair(Lcom/android/launcher3/Workspace;Z)V

    goto :goto_d
.end method

.method public getShirinkFactor(Lcom/android/launcher3/Workspace;)F
    .registers 4

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 501
    invoke-static {}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_a

    if-nez p1, :cond_b

    .line 507
    :cond_a
    :goto_a
    return v0

    .line 504
    :cond_b
    invoke-virtual {p0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 505
    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getSpringLoadedShrinkFactor()F

    move-result v0

    goto :goto_a
.end method

.method public isInUninstallMode()Z
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mUninstallableItemList:Ljava/util/HashSet;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onBindingFinished(Lcom/android/launcher3/Workspace;)V
    .registers 3

    .prologue
    .line 80
    invoke-static {}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 87
    :goto_6
    return-void

    .line 84
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mIsBindingFinished:Z

    .line 86
    invoke-direct {p0, p1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->setUninstallTypeForAllBadgeViews(Lcom/android/launcher3/Workspace;)V

    goto :goto_6
.end method

.method public removeFolderItem(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/ItemInfo;Landroid/view/View;)V
    .registers 6

    .prologue
    .line 464
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_7

    .line 494
    :cond_6
    :goto_6
    return-void

    .line 467
    :cond_7
    instance-of v0, p2, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_6

    .line 471
    check-cast p2, Lcom/android/launcher3/ShortcutInfo;

    .line 472
    const/4 v0, 0x1

    new-instance v1, Lcom/lge/launcher3/uninstallmode/UninstallModeManager$4;

    invoke-direct {v1, p0, p2}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager$4;-><init>(Lcom/lge/launcher3/uninstallmode/UninstallModeManager;Lcom/android/launcher3/ShortcutInfo;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    goto :goto_6
.end method

.method public setUninstallTypeForBadgeView(Landroid/view/View;)Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 150
    invoke-static {}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    .line 186
    :goto_9
    return v0

    .line 154
    :cond_a
    if-nez p1, :cond_1d

    .line 155
    sget-object v0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->TAG:Ljava/lang/String;

    const-string v1, "addToUninstallableItemList() : item is null."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 156
    goto :goto_9

    .line 159
    :cond_1d
    iget-boolean v0, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mIsBindingFinished:Z

    if-nez v0, :cond_23

    move v0, v2

    .line 160
    goto :goto_9

    .line 163
    :cond_23
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_2d

    instance-of v1, v0, Lcom/android/launcher3/ItemInfo;

    if-nez v1, :cond_3e

    .line 165
    :cond_2d
    sget-object v0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->TAG:Ljava/lang/String;

    const-string v1, "addToUninstallableItemList() : tag is null or not ItemInfo."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 166
    goto :goto_9

    .line 169
    :cond_3e
    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 170
    invoke-direct {p0, v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getUninstallType(Lcom/android/launcher3/ItemInfo;)Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    move-result-object v4

    move-object v1, p1

    .line 172
    check-cast v1, Lcom/lge/launcher3/badge/uninstall/IUninstallBadgeView;

    .line 173
    invoke-interface {v1, v4}, Lcom/lge/launcher3/badge/uninstall/IUninstallBadgeView;->setUninstallType(Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;)V

    .line 175
    if-nez v4, :cond_4e

    move v0, v2

    .line 176
    goto :goto_9

    .line 179
    :cond_4e
    sget-object v4, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->TAG:Ljava/lang/String;

    .line 180
    const-string v5, "addToUninstallableItemList() : An itemType [%d]\'s uninstall type is set."

    new-array v6, v3, [Ljava/lang/Object;

    iget v0, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    .line 179
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mUninstallableItemList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    .line 183
    invoke-interface {v1, v3}, Lcom/lge/launcher3/badge/uninstall/IUninstallBadgeView;->setVisibilityForUninstallBadge(Z)V

    .line 184
    iget-object v0, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mUninstallableItemList:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_79
    move v0, v3

    .line 186
    goto :goto_9
.end method
