.class public Lcom/lge/mdm/controller/LGMDMScreenCaptureController;
.super Ljava/lang/Object;
.source "LGMDMScreenCaptureController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/controller/LGMDMScreenCaptureController$1;,
        Lcom/lge/mdm/controller/LGMDMScreenCaptureController$2;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x8

.field private static final KEEP_ALIVE_TIME:I = 0x1

.field private static final KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

.field private static final MAXIMUM_POOL_SIZE:I = 0x8

.field private static final TAG:Ljava/lang/String; = "LGMDMScreenCaptureController"

.field private static mInstance:Lcom/lge/mdm/controller/LGMDMScreenCaptureController;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFetcherForGlobalBlackList:Ljava/lang/Runnable;

.field private final mFetcherForGlobalWhiteList:Ljava/lang/Runnable;

.field private final mGlobalScreenCaptureBlacklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalScreenCaptureWhitelist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

.field private final mLazyThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final mLazyWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/lge/mdm/controller/LGMDMScreenCaptureController;I)V
    .registers 2
    .param p1, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->updateGlobalScreenCaptureBlacklist(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/lge/mdm/controller/LGMDMScreenCaptureController;I)V
    .registers 2
    .param p1, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->updateGlobalScreenCaptureWhitelist(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .registers 9

    .prologue
    const/16 v2, 0x8

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController$1;

    invoke-direct {v0, p0}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController$1;-><init>(Lcom/lge/mdm/controller/LGMDMScreenCaptureController;)V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mFetcherForGlobalWhiteList:Ljava/lang/Runnable;

    .line 59
    new-instance v0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController$2;

    invoke-direct {v0, p0}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController$2;-><init>(Lcom/lge/mdm/controller/LGMDMScreenCaptureController;)V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mFetcherForGlobalBlackList:Ljava/lang/Runnable;

    .line 311
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mGlobalScreenCaptureBlacklist:Ljava/util/Set;

    .line 341
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mGlobalScreenCaptureWhitelist:Ljava/util/Set;

    .line 76
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 77
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mLazyWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 80
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 81
    const-wide/16 v4, 0x1

    sget-object v6, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mLazyWorkQueue:Ljava/util/concurrent/BlockingQueue;

    move v3, v2

    .line 80
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mLazyThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 83
    invoke-virtual {p0}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->fetchPolicies()V

    .line 75
    return-void
.end method

.method private _isAllowedScreenCapture(Lcom/lge/mdm/controller/policy/PolicyVerifier;Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "pm"    # Lcom/lge/mdm/controller/policy/PolicyVerifier;
    .param p2, "who"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x1

    .line 160
    if-eqz p2, :cond_10

    .line 161
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p2, p3}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 163
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_f

    invoke-interface {p1, v0}, Lcom/lge/mdm/controller/policy/PolicyVerifier;->verify(Lcom/lge/mdm/admin/LGMDMadminlist;)Z

    move-result v3

    :cond_f
    return v3

    .line 166
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_10
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p3}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 167
    .local v2, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 168
    .restart local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    invoke-interface {p1, v0}, Lcom/lge/mdm/controller/policy/PolicyVerifier;->verify(Lcom/lge/mdm/admin/LGMDMadminlist;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 169
    const/4 v3, 0x0

    return v3

    .line 173
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2e
    return v3
.end method

.method private closeInvalidMediaProjection(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 474
    const-string/jumbo v6, "media_projection"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 475
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v5

    .line 477
    .local v5, "mgr":Landroid/media/projection/IMediaProjectionManager;
    invoke-static {v5, v7}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 478
    return-void

    .line 481
    :cond_13
    const/4 v4, 0x0

    .line 482
    .local v4, "info":Landroid/media/projection/MediaProjectionInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 484
    .local v2, "identity":J
    if-eqz p1, :cond_21

    :try_start_1a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_28

    .line 485
    :cond_21
    invoke-interface {v5}, Landroid/media/projection/IMediaProjectionManager;->stopActiveProjectionOnlyForLGMDM()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_24} :catch_4a
    .catchall {:try_start_1a .. :try_end_24} :catchall_6d

    .line 502
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 486
    return-void

    .line 489
    :cond_28
    :try_start_28
    invoke-interface {v5}, Landroid/media/projection/IMediaProjectionManager;->getActiveProjectionInfoForLGMDM()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v4

    .line 490
    .local v4, "info":Landroid/media/projection/MediaProjectionInfo;
    if-nez v4, :cond_35

    .line 491
    invoke-interface {v5}, Landroid/media/projection/IMediaProjectionManager;->stopActiveProjectionOnlyForLGMDM()V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_31} :catch_4a
    .catchall {:try_start_28 .. :try_end_31} :catchall_6d

    .line 502
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 492
    return-void

    .line 495
    :cond_35
    :try_start_35
    invoke-virtual {v4}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_46

    .line 496
    invoke-interface {v5}, Landroid/media/projection/IMediaProjectionManager;->stopActiveProjectionOnlyForLGMDM()V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_42} :catch_4a
    .catchall {:try_start_35 .. :try_end_42} :catchall_6d

    .line 502
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 497
    return-void

    .line 502
    :cond_46
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 473
    .end local v4    # "info":Landroid/media/projection/MediaProjectionInfo;
    :goto_49
    return-void

    .line 499
    :catch_4a
    move-exception v1

    .line 500
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4b
    const-string/jumbo v6, "LGMDMScreenCaptureController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopActiveProjection:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_69
    .catchall {:try_start_4b .. :try_end_69} :catchall_6d

    .line 502
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_49

    .line 501
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_6d
    move-exception v6

    .line 502
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 501
    throw v6
.end method

.method private closeMediaProjection()V
    .registers 9

    .prologue
    .line 510
    const-string/jumbo v5, "media_projection"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 511
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v4

    .line 513
    .local v4, "mgr":Landroid/media/projection/IMediaProjectionManager;
    const/4 v5, 0x0

    invoke-static {v4, v5}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 514
    return-void

    .line 517
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 519
    .local v2, "identity":J
    :try_start_17
    invoke-interface {v4}, Landroid/media/projection/IMediaProjectionManager;->stopActiveProjectionOnlyForLGMDM()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1e
    .catchall {:try_start_17 .. :try_end_1a} :catchall_41

    .line 523
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 509
    :goto_1d
    return-void

    .line 520
    :catch_1e
    move-exception v1

    .line 521
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1f
    const-string/jumbo v5, "LGMDMScreenCaptureController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stopActiveProjection:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3d
    .catchall {:try_start_1f .. :try_end_3d} :catchall_41

    .line 523
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    .line 522
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_41
    move-exception v5

    .line 523
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 522
    throw v5
.end method

.method public static final getInstance()Lcom/lge/mdm/controller/LGMDMScreenCaptureController;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mInstance:Lcom/lge/mdm/controller/LGMDMScreenCaptureController;

    if-nez v0, :cond_b

    .line 69
    new-instance v0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mInstance:Lcom/lge/mdm/controller/LGMDMScreenCaptureController;

    .line 72
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mInstance:Lcom/lge/mdm/controller/LGMDMScreenCaptureController;

    return-object v0
.end method

.method private isEmpty(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x1

    .line 411
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ge v1, v0, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private publishScreenCaptureBlacklist(ZLcom/lge/mdm/admin/LGMDMadminlist;Ljava/util/List;)V
    .registers 6
    .param p1, "allow"    # Z
    .param p2, "admin"    # Lcom/lge/mdm/admin/LGMDMadminlist;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/lge/mdm/admin/LGMDMadminlist;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p3, "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mLazyThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mFetcherForGlobalBlackList:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 264
    if-eqz p1, :cond_d

    .line 265
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureBlacklist:Ljava/util/List;

    .line 266
    return-void

    .line 269
    :cond_d
    iput-object p3, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureBlacklist:Ljava/util/List;

    .line 270
    invoke-direct {p0, p3}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->remainValidMediaProjection(Ljava/util/List;)V

    .line 261
    return-void
.end method

.method private remainValidMediaProjection(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 439
    const-string/jumbo v6, "media_projection"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 440
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v5

    .line 442
    .local v5, "mgr":Landroid/media/projection/IMediaProjectionManager;
    invoke-static {v5, v7}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 443
    return-void

    .line 446
    :cond_13
    const/4 v4, 0x0

    .line 447
    .local v4, "info":Landroid/media/projection/MediaProjectionInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 449
    .local v2, "identity":J
    if-eqz p1, :cond_21

    :try_start_1a
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_44
    .catchall {:try_start_1a .. :try_end_1d} :catchall_67

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_25

    .line 466
    :cond_21
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 450
    return-void

    .line 453
    :cond_25
    :try_start_25
    invoke-interface {v5}, Landroid/media/projection/IMediaProjectionManager;->getActiveProjectionInfoForLGMDM()Landroid/media/projection/MediaProjectionInfo;
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_44
    .catchall {:try_start_25 .. :try_end_28} :catchall_67

    move-result-object v4

    .line 454
    .local v4, "info":Landroid/media/projection/MediaProjectionInfo;
    if-nez v4, :cond_2f

    .line 466
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 455
    return-void

    .line 458
    :cond_2f
    :try_start_2f
    invoke-virtual {v4}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_36} :catch_44
    .catchall {:try_start_2f .. :try_end_36} :catchall_67

    move-result v6

    if-nez v6, :cond_3d

    .line 466
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 459
    return-void

    .line 462
    :cond_3d
    :try_start_3d
    invoke-interface {v5}, Landroid/media/projection/IMediaProjectionManager;->stopActiveProjectionOnlyForLGMDM()V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_40} :catch_44
    .catchall {:try_start_3d .. :try_end_40} :catchall_67

    .line 466
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 438
    .end local v4    # "info":Landroid/media/projection/MediaProjectionInfo;
    :goto_43
    return-void

    .line 463
    :catch_44
    move-exception v1

    .line 464
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_45
    const-string/jumbo v6, "LGMDMScreenCaptureController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopActiveProjection:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_63
    .catchall {:try_start_45 .. :try_end_63} :catchall_67

    .line 466
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_43

    .line 465
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_67
    move-exception v6

    .line 466
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 465
    throw v6
.end method

.method private updateGlobalScreenCaptureBlacklist(I)V
    .registers 7
    .param p1, "userHandle"    # I

    .prologue
    .line 192
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    if-nez v4, :cond_5

    .line 193
    return-void

    .line 196
    :cond_5
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 197
    .local v2, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mGlobalScreenCaptureBlacklist:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 199
    invoke-direct {p0, v2}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 200
    return-void

    .line 204
    :cond_17
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 206
    .local v3, "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 207
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCaptureWithBlacklist:Z

    if-eqz v4, :cond_34

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCaptureBlacklistWithoutADB:Z

    if-nez v4, :cond_20

    .line 211
    :cond_34
    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureBlacklist:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 212
    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureBlacklist:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_20

    .line 216
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_42
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mGlobalScreenCaptureBlacklist:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 191
    return-void
.end method

.method private updateGlobalScreenCaptureWhitelist(I)V
    .registers 7
    .param p1, "userHandle"    # I

    .prologue
    .line 372
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    if-nez v4, :cond_5

    .line 373
    return-void

    .line 376
    :cond_5
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 377
    .local v2, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mGlobalScreenCaptureWhitelist:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 379
    invoke-direct {p0, v2}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 380
    return-void

    .line 383
    :cond_17
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 384
    .local v3, "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 385
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCaptureWhitelistWithoutADB:Z

    if-nez v4, :cond_20

    .line 389
    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureWhitelist:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 390
    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureWhitelist:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 395
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_3d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_41
    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 396
    .restart local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCaptureWhitelistWithoutADB:Z

    if-nez v4, :cond_41

    .line 400
    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureWhitelist:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 403
    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureWhitelist:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    goto :goto_41

    .line 406
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_5f
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mGlobalScreenCaptureWhitelist:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 371
    return-void
.end method


# virtual methods
.method protected fetchPolicies()V
    .registers 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mLazyThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mFetcherForGlobalWhiteList:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 88
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mLazyThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mFetcherForGlobalBlackList:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method protected forceRearrangingADB(Landroid/content/ComponentName;ZZ)V
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "isDisallowUSBType"    # Z

    .prologue
    const/4 v7, 0x0

    .line 279
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 281
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "adb_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 282
    .local v1, "currentADB":I
    move v4, v1

    .line 284
    .local v4, "isEnabledAdb":I
    if-eqz p2, :cond_37

    .line 285
    iget v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUSBDebugBlacklist:I

    if-lez v5, :cond_1d

    if-eqz p3, :cond_33

    .line 294
    :cond_1d
    :goto_1d
    if-eq v1, v4, :cond_32

    .line 295
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 297
    .local v2, "identity":J
    :try_start_23
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 298
    const-string/jumbo v6, "adb_enabled"

    .line 297
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_3b

    .line 300
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 278
    .end local v2    # "identity":J
    :cond_32
    return-void

    .line 286
    :cond_33
    iput v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUSBDebugBlacklist:I

    .line 287
    const/4 v4, 0x1

    goto :goto_1d

    .line 290
    :cond_37
    iput v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUSBDebugBlacklist:I

    .line 291
    const/4 v4, 0x0

    goto :goto_1d

    .line 299
    .restart local v2    # "identity":J
    :catchall_3b
    move-exception v5

    .line 300
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 299
    throw v5
.end method

.method protected getScreenCaptureBlacklist(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 179
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 180
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureBlacklist:Ljava/util/List;

    :cond_e
    return-object v1

    .line 183
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mGlobalScreenCaptureBlacklist:Ljava/util/Set;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected getScreenCaptureWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 362
    const/4 v0, 0x0

    .line 363
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 364
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 365
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureWhitelist:Ljava/util/List;

    :cond_e
    return-object v1

    .line 368
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mGlobalScreenCaptureWhitelist:Ljava/util/Set;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected isAllowedScreenCapture(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 92
    new-instance v0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController$3;

    invoke-direct {v0, p0}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController$3;-><init>(Lcom/lge/mdm/controller/LGMDMScreenCaptureController;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->_isAllowedScreenCapture(Lcom/lge/mdm/controller/policy/PolicyVerifier;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method protected isAllowedScreenCaptureBlacklist(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 139
    new-instance v0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController$5;

    invoke-direct {v0, p0}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController$5;-><init>(Lcom/lge/mdm/controller/LGMDMScreenCaptureController;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->_isAllowedScreenCapture(Lcom/lge/mdm/controller/policy/PolicyVerifier;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method protected isAllowedScreenCaptureBlacklistWithoutADB(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 152
    new-instance v0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController$6;

    invoke-direct {v0, p0}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController$6;-><init>(Lcom/lge/mdm/controller/LGMDMScreenCaptureController;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->_isAllowedScreenCapture(Lcom/lge/mdm/controller/policy/PolicyVerifier;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method protected isAllowedScreenCaptureWhitelistWithoutADB(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 349
    new-instance v0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController$7;

    invoke-direct {v0, p0}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController$7;-><init>(Lcom/lge/mdm/controller/LGMDMScreenCaptureController;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->_isAllowedScreenCapture(Lcom/lge/mdm/controller/policy/PolicyVerifier;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method protected isAllowedScreenCaptureWithoutADB(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 117
    new-instance v0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController$4;

    invoke-direct {v0, p0}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController$4;-><init>(Lcom/lge/mdm/controller/LGMDMScreenCaptureController;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->_isAllowedScreenCapture(Lcom/lge/mdm/controller/policy/PolicyVerifier;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method protected setAllowScreenCapture(Landroid/content/ComponentName;ZI)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 100
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 102
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCapture:Z

    if-ne v1, p2, :cond_14

    .line 103
    const-string/jumbo v1, "LGMDMScreenCaptureController"

    const-string/jumbo v2, "setAllowScreenCapture : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void

    .line 107
    :cond_14
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCapture:Z

    .line 109
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCapture:Z

    if-nez v1, :cond_2d

    .line 110
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 111
    const-string/jumbo v2, "adb_enabled"

    const/4 v3, 0x0

    .line 110
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUSBDebug:I

    .line 112
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->closeMediaProjection()V

    .line 99
    :cond_2d
    return-void
.end method

.method protected setAllowScreenCaptureBlacklist(Landroid/content/ComponentName;ZLjava/util/List;I)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p3, "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 228
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCaptureWithBlacklist:Z

    if-ne v1, p2, :cond_20

    .line 229
    iget-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureBlacklist:Ljava/util/List;

    if-eqz v1, :cond_20

    .line 230
    iget-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureBlacklist:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 228
    if-eqz v1, :cond_20

    .line 231
    const-string/jumbo v1, "LGMDMScreenCaptureController"

    const-string/jumbo v2, "setAllowScreenCaptureBlacklist : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void

    .line 235
    :cond_20
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCaptureWithBlacklist:Z

    .line 237
    invoke-direct {p0, p2, v0, p3}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->publishScreenCaptureBlacklist(ZLcom/lge/mdm/admin/LGMDMadminlist;Ljava/util/List;)V

    .line 225
    return-void
.end method

.method protected setAllowScreenCaptureBlacklistWithoutADB(Landroid/content/ComponentName;ZLjava/util/List;I)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p3, "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 249
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCaptureBlacklistWithoutADB:Z

    if-ne v1, p2, :cond_20

    .line 250
    iget-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureBlacklist:Ljava/util/List;

    if-eqz v1, :cond_20

    .line 251
    iget-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureBlacklist:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 249
    if-eqz v1, :cond_20

    .line 252
    const-string/jumbo v1, "LGMDMScreenCaptureController"

    const-string/jumbo v2, "setAllowScreenCaptureBlacklist : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void

    .line 256
    :cond_20
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCaptureBlacklistWithoutADB:Z

    .line 258
    invoke-direct {p0, p2, v0, p3}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->publishScreenCaptureBlacklist(ZLcom/lge/mdm/admin/LGMDMadminlist;Ljava/util/List;)V

    .line 246
    return-void
.end method

.method protected setAllowScreenCaptureWhitelistWithoutADB(Landroid/content/ComponentName;ZLjava/util/List;I)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 421
    .local p3, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1, p4}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 423
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCaptureWhitelistWithoutADB:Z

    .line 425
    if-eqz p2, :cond_15

    .line 426
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureWhitelist:Ljava/util/List;

    .line 432
    :goto_d
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mLazyThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mFetcherForGlobalWhiteList:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 420
    return-void

    .line 428
    :cond_15
    iput-object p3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureWhitelist:Ljava/util/List;

    .line 429
    invoke-direct {p0, p3}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->closeInvalidMediaProjection(Ljava/util/List;)V

    goto :goto_d
.end method

.method protected setAllowScreenCaptureWithoutADB(Landroid/content/ComponentName;ZI)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 125
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 127
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCaptureWithoutADB:Z

    .line 128
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCaptureWithoutADB:Z

    if-nez v1, :cond_f

    .line 129
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->closeMediaProjection()V

    .line 124
    :cond_f
    return-void
.end method

.method protected settingScreencapture(Landroid/content/ComponentName;ZI)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "getDisallowUSBType"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 314
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 316
    .local v2, "identity":J
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v1, p3}, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->isAllowedScreenCapture(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 317
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1, p3}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 319
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_19

    .line 320
    iget v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUSBDebug:I
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_2e

    if-lez v1, :cond_19

    .line 321
    if-eqz p2, :cond_1d

    .line 332
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_19
    :goto_19
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 313
    return-void

    .line 322
    .restart local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_1d
    const/4 v1, 0x0

    :try_start_1e
    iput v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUSBDebug:I

    .line 323
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 324
    const-string/jumbo v4, "adb_enabled"

    const/4 v5, 0x1

    .line 323
    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_2e

    goto :goto_19

    .line 331
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :catchall_2e
    move-exception v1

    .line 332
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 331
    throw v1

    .line 328
    :cond_33
    :try_start_33
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "adb_enabled"

    .line 329
    const/4 v5, 0x0

    .line 328
    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_2e

    goto :goto_19
.end method
