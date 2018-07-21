.class public Lcom/lge/mdm/controller/LGMDMGpsController;
.super Ljava/lang/Object;
.source "LGMDMGpsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/controller/LGMDMGpsController$LocationContentObserver;,
        Lcom/lge/mdm/controller/LGMDMGpsController$1;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x8

.field private static final GPS_PROVIDER_OFF:I = 0x0

.field private static final GPS_PROVIDER_ON:I = 0x1

.field private static final KEEP_ALIVE_TIME:I = 0x1

.field private static final KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

.field private static final MAXIMUM_POOL_SIZE:I = 0x8

.field private static final MOCK_LOCATION_APP_OPS:[I

.field private static final NETWORK_PROVIDER_OFF:I = 0x2

.field private static final NETWORK_PROVIDER_ON:I = 0x3

.field private static final NOT_CHANGE_PROVIDER:I = -0x1

.field public static STATUS_GPS:Ljava/lang/String; = null

.field public static STATUS_WIRELESS:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "GpsController"

.field private static final VZW_PROVIDER_OFF:I = 0x4

.field private static final VZW_PROVIDER_ON:I = 0x5

.field private static instance:Lcom/lge/mdm/controller/LGMDMGpsController;


# instance fields
.field private final VZW_LBS_PROVIDER:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mFetcherForGlobalWhiteList:Ljava/lang/Runnable;

.field private final mGlobalLocationWhitelist:Ljava/util/Set;
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
.method static synthetic -get0(Lcom/lge/mdm/controller/LGMDMGpsController;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/lge/mdm/controller/LGMDMGpsController;I)I
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMGpsController;->checkEnforceGPSLocationEnabled(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/lge/mdm/controller/LGMDMGpsController;I)V
    .registers 2
    .param p1, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMGpsController;->updateGlobalLocationWhitelist(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 53
    const-string/jumbo v0, "set_gps_status"

    sput-object v0, Lcom/lge/mdm/controller/LGMDMGpsController;->STATUS_GPS:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "set_wireless_status"

    sput-object v0, Lcom/lge/mdm/controller/LGMDMGpsController;->STATUS_WIRELESS:Ljava/lang/String;

    .line 66
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/lge/mdm/controller/LGMDMGpsController;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3a

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/lge/mdm/controller/LGMDMGpsController;->MOCK_LOCATION_APP_OPS:[I

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .registers 9

    .prologue
    const/16 v2, 0x8

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string/jumbo v0, "vzw_lbs"

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->VZW_LBS_PROVIDER:Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/lge/mdm/controller/LGMDMGpsController$1;

    invoke-direct {v0, p0}, Lcom/lge/mdm/controller/LGMDMGpsController$1;-><init>(Lcom/lge/mdm/controller/LGMDMGpsController;)V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mFetcherForGlobalWhiteList:Ljava/lang/Runnable;

    .line 261
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mGlobalLocationWhitelist:Ljava/util/Set;

    .line 121
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 122
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mContext:Landroid/content/Context;

    .line 124
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLazyWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 125
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 126
    const-wide/16 v4, 0x1

    sget-object v6, Lcom/lge/mdm/controller/LGMDMGpsController;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLazyWorkQueue:Ljava/util/concurrent/BlockingQueue;

    move v3, v2

    .line 125
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLazyThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 128
    invoke-virtual {p0}, Lcom/lge/mdm/controller/LGMDMGpsController;->fetchPolicies()V

    .line 130
    new-instance v0, Lcom/lge/mdm/controller/LGMDMGpsController$LocationContentObserver;

    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lge/mdm/controller/LGMDMGpsController$LocationContentObserver;-><init>(Lcom/lge/mdm/controller/LGMDMGpsController;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/mdm/controller/LGMDMGpsController$LocationContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 120
    return-void
.end method

.method private checkAllowVerizonLocation(Landroid/content/ComponentName;I)I
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 798
    invoke-virtual {p0, v1, p2}, Lcom/lge/mdm/controller/LGMDMGpsController;->getAllowVerizonLocation(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 799
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 801
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_1e

    .line 802
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateVerizonLocation:Z

    if-eqz v1, :cond_1e

    .line 803
    invoke-static {}, Lcom/lge/mdm/util/LGMDMConfig;->isVerizonOperator()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 804
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateVerizonLocation:Z

    .line 805
    const/4 v1, 0x5

    return v1

    .line 809
    :cond_1e
    const/4 v1, -0x1

    return v1

    .line 811
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_20
    const/4 v1, 0x4

    return v1
.end method

.method private checkAllowWirelessLocation(Landroid/content/ComponentName;I)I
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 186
    invoke-virtual {p0, v1, p2}, Lcom/lge/mdm/controller/LGMDMGpsController;->getAllowWirelessLocation(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 187
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 189
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_18

    .line 190
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateWirelessLocation:Z

    if-eqz v1, :cond_18

    .line 191
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateWirelessLocation:Z

    .line 192
    const/4 v1, 0x3

    return v1

    .line 195
    :cond_18
    const/4 v1, -0x1

    return v1

    .line 197
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_1a
    const/4 v1, 0x2

    return v1
.end method

.method private checkEnforceGPSLocationEnabled(I)I
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 727
    invoke-virtual {p0, v1, p1}, Lcom/lge/mdm/controller/LGMDMGpsController;->getEnforceGPSLocationEnabled(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, v1, p1}, Lcom/lge/mdm/controller/LGMDMGpsController;->getAllowGPSLocation(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 728
    const/4 v0, 0x1

    return v0

    .line 730
    :cond_f
    const/4 v0, -0x1

    return v0
.end method

.method private checkGPSLocation(Landroid/content/ComponentName;I)I
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 361
    invoke-virtual {p0, v3, p2}, Lcom/lge/mdm/controller/LGMDMGpsController;->getAllowGPSLocation(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 362
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 364
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateGPSLocation:Z

    if-nez v1, :cond_18

    invoke-virtual {p0, v3, p2}, Lcom/lge/mdm/controller/LGMDMGpsController;->getEnforceGPSLocationEnabled(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 365
    :cond_18
    iput-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateGPSLocation:Z

    .line 366
    const/4 v1, 0x1

    return v1

    .line 368
    :cond_1c
    const/4 v1, -0x1

    return v1

    .line 370
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_1e
    return v2
.end method

.method public static final getInstance()Lcom/lge/mdm/controller/LGMDMGpsController;
    .registers 1

    .prologue
    .line 138
    sget-object v0, Lcom/lge/mdm/controller/LGMDMGpsController;->instance:Lcom/lge/mdm/controller/LGMDMGpsController;

    if-nez v0, :cond_b

    .line 139
    new-instance v0, Lcom/lge/mdm/controller/LGMDMGpsController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMGpsController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMGpsController;->instance:Lcom/lge/mdm/controller/LGMDMGpsController;

    .line 142
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMGpsController;->instance:Lcom/lge/mdm/controller/LGMDMGpsController;

    return-object v0
.end method

.method private getLocationState(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "network"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 487
    const/4 v3, 0x0

    .line 488
    .local v3, "status":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 490
    .local v0, "identity":J
    :try_start_7
    sget-object v4, Lcom/lge/mdm/controller/LGMDMGpsController;->STATUS_GPS:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 491
    const/4 v3, 0x0

    .line 493
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "gps"

    .line 492
    invoke-static {v4, v5, p2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_61

    move-result v4

    if-eqz v4, :cond_26

    .line 493
    const/4 v3, 0x1

    .line 508
    :cond_20
    :goto_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 510
    if-ne v3, v7, :cond_66

    .line 511
    return v7

    .line 494
    :cond_26
    const/4 v3, 0x0

    goto :goto_20

    .line 495
    :cond_28
    :try_start_28
    sget-object v4, Lcom/lge/mdm/controller/LGMDMGpsController;->STATUS_WIRELESS:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 496
    const/4 v3, 0x0

    .line 498
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 499
    const-string/jumbo v5, "network"

    .line 497
    invoke-static {v4, v5, p2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 499
    const/4 v3, 0x1

    goto :goto_20

    .line 500
    :cond_42
    const/4 v3, 0x0

    goto :goto_20

    .line 501
    :cond_44
    const-string/jumbo v4, "vzw_lbs"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 502
    const/4 v3, 0x0

    .line 504
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vzw_lbs"

    .line 503
    invoke-static {v4, v5, p2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_5a
    .catchall {:try_start_28 .. :try_end_5a} :catchall_61

    move-result v4

    if-eqz v4, :cond_5f

    .line 504
    const/4 v3, 0x1

    goto :goto_20

    .line 505
    :cond_5f
    const/4 v3, 0x0

    goto :goto_20

    .line 507
    :catchall_61
    move-exception v4

    .line 508
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 507
    throw v4

    .line 513
    :cond_66
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 514
    const-string/jumbo v5, "location_mode"

    .line 513
    invoke-static {v4, v5, v6, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 515
    .local v2, "mode":I
    packed-switch v2, :pswitch_data_c0

    .line 547
    :cond_76
    return v6

    .line 517
    :pswitch_77
    sget-object v4, Lcom/lge/mdm/controller/LGMDMGpsController;->STATUS_GPS:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 518
    return v6

    .line 519
    :cond_80
    sget-object v4, Lcom/lge/mdm/controller/LGMDMGpsController;->STATUS_WIRELESS:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 520
    return v6

    .line 524
    :pswitch_89
    sget-object v4, Lcom/lge/mdm/controller/LGMDMGpsController;->STATUS_GPS:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_92

    .line 525
    return v7

    .line 526
    :cond_92
    sget-object v4, Lcom/lge/mdm/controller/LGMDMGpsController;->STATUS_WIRELESS:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 527
    return v6

    .line 531
    :pswitch_9b
    sget-object v4, Lcom/lge/mdm/controller/LGMDMGpsController;->STATUS_GPS:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 532
    return v6

    .line 533
    :cond_a4
    sget-object v4, Lcom/lge/mdm/controller/LGMDMGpsController;->STATUS_WIRELESS:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 534
    return v7

    .line 538
    :pswitch_ad
    sget-object v4, Lcom/lge/mdm/controller/LGMDMGpsController;->STATUS_GPS:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 539
    return v7

    .line 540
    :cond_b6
    sget-object v4, Lcom/lge/mdm/controller/LGMDMGpsController;->STATUS_WIRELESS:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 541
    return v7

    .line 515
    nop

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_77
        :pswitch_89
        :pswitch_9b
        :pswitch_ad
    .end packed-switch
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

    .line 316
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

.method private mockLocationTurnOnOff(Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 600
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 602
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    invoke-virtual {p0, v5, p2}, Lcom/lge/mdm/controller/LGMDMGpsController;->getAllowMockLocation(Landroid/content/ComponentName;I)Z

    move-result v1

    .line 603
    .local v1, "isAllowed":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 605
    .local v2, "identity":J
    :try_start_f
    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMockLocation:Z

    if-nez v4, :cond_19

    .line 606
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMGpsController;->readMockLocationPakcageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preMockLocationPackageName:Ljava/lang/String;

    .line 609
    :cond_19
    if-eqz v1, :cond_24

    .line 610
    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preMockLocationPackageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/lge/mdm/controller/LGMDMGpsController;->writeMockLocation(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_29

    .line 615
    :goto_20
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 599
    return-void

    .line 612
    :cond_24
    const/4 v4, 0x0

    :try_start_25
    invoke-direct {p0, v4}, Lcom/lge/mdm/controller/LGMDMGpsController;->writeMockLocation(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_20

    .line 614
    :catchall_29
    move-exception v4

    .line 615
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 614
    throw v4
.end method

.method private readMockLocationPakcageName()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 626
    const/4 v1, 0x0

    .line 627
    .local v1, "mockLocationApp":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "appops"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 629
    .local v0, "appOpsManager":Landroid/app/AppOpsManager;
    sget-object v5, Lcom/lge/mdm/controller/LGMDMGpsController;->MOCK_LOCATION_APP_OPS:[I

    invoke-virtual {v0, v5}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v4

    .line 630
    .local v4, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v4, :cond_3f

    .line 631
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "packageOp$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$PackageOps;

    .line 632
    .local v2, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v5}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v5

    if-nez v5, :cond_19

    .line 633
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 639
    .end local v1    # "mockLocationApp":Ljava/lang/String;
    .end local v2    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    .end local v3    # "packageOp$iterator":Ljava/util/Iterator;
    :cond_3f
    return-object v1
.end method

.method private updateGlobalLocationWhitelist(I)V
    .registers 9
    .param p1, "userHandle"    # I

    .prologue
    .line 284
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    if-nez v4, :cond_5

    .line 285
    return-void

    .line 288
    :cond_5
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 289
    .local v2, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mGlobalLocationWhitelist:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 291
    invoke-direct {p0, v2}, Lcom/lge/mdm/controller/LGMDMGpsController;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 292
    return-void

    .line 295
    :cond_17
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 296
    .local v3, "resultSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 297
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWirelessLocationWhitelist:Z

    if-eqz v4, :cond_53

    .line 298
    const-string/jumbo v4, "GpsController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getGlobalLocationWhitelist check pass:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 299
    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 298
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 303
    :cond_53
    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->wirelessLocationWhitelist:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/lge/mdm/controller/LGMDMGpsController;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 304
    invoke-direct {p0, v3}, Lcom/lge/mdm/controller/LGMDMGpsController;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 305
    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->wirelessLocationWhitelist:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_20

    .line 307
    :cond_67
    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->wirelessLocationWhitelist:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    goto :goto_20

    .line 312
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_6d
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mGlobalLocationWhitelist:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 283
    return-void
.end method

.method private writeMockLocation(Ljava/lang/String;)V
    .registers 14
    .param p1, "mockLocationApp"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 649
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "appops"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 652
    .local v1, "appOpsManager":Landroid/app/AppOpsManager;
    sget-object v7, Lcom/lge/mdm/controller/LGMDMGpsController;->MOCK_LOCATION_APP_OPS:[I

    invoke-virtual {v1, v7}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v6

    .line 653
    .local v6, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v6, :cond_6e

    .line 655
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "packageOp$iterator":Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 656
    .local v4, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v7

    if-eq v7, v11, :cond_19

    .line 657
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 659
    .local v3, "oldMockLocationApp":Ljava/lang/String;
    :try_start_39
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 660
    const/16 v8, 0x200

    .line 659
    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 661
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v8, 0x3a

    .line 662
    const/4 v9, 0x2

    .line 661
    invoke-virtual {v1, v8, v7, v3, v9}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_4d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_4d} :catch_4e

    goto :goto_19

    .line 663
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_4e
    move-exception v2

    .line 664
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v7, "GpsController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error reading: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 672
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "oldMockLocationApp":Ljava/lang/String;
    .end local v4    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    .end local v5    # "packageOp$iterator":Ljava/util/Iterator;
    :cond_6e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_88

    .line 674
    :try_start_74
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 675
    const/16 v8, 0x200

    .line 674
    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 676
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v8, 0x3a

    .line 677
    const/4 v9, 0x0

    .line 676
    invoke-virtual {v1, v8, v7, p1, v9}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_88
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_74 .. :try_end_88} :catch_89

    .line 648
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_88
    :goto_88
    return-void

    .line 678
    :catch_89
    move-exception v2

    .line 679
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v7, "GpsController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error writing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_88
.end method


# virtual methods
.method protected fetchPolicies()V
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLazyThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mFetcherForGlobalWhiteList:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method protected getAllowGPSLocation(Landroid/content/ComponentName;I)Z
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_10

    .line 326
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 327
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_f

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowGPSLocation:Z

    :cond_f
    return v4

    .line 330
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_10
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, v6}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 331
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 332
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowGPSLocation:Z

    if-nez v5, :cond_1a

    .line 333
    return v6

    .line 336
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowMockLocation(Landroid/content/ComponentName;I)Z
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 555
    const-string/jumbo v5, "GpsController"

    const-string/jumbo v6, " getAllowMockLocation "

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const/4 v0, 0x0

    .line 557
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_18

    .line 558
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 559
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_17

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMockLocation:Z

    :cond_17
    return v4

    .line 562
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_18
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 564
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-direct {p0, v3}, Lcom/lge/mdm/controller/LGMDMGpsController;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 565
    return v4

    .line 568
    :cond_25
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 569
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMockLocation:Z

    if-nez v5, :cond_29

    .line 570
    const/4 v4, 0x0

    return v4

    .line 573
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_3b
    return v4
.end method

.method protected getAllowPassiveProvider(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 839
    const/4 v0, 0x0

    .line 840
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 841
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 842
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPassiveProvider:Z

    :cond_e
    return v4

    .line 845
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 847
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-direct {p0, v3}, Lcom/lge/mdm/controller/LGMDMGpsController;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 848
    return v4

    .line 851
    :cond_1c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 852
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPassiveProvider:Z

    if-nez v5, :cond_20

    .line 853
    const/4 v4, 0x0

    return v4

    .line 856
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_32
    return v4
.end method

.method protected getAllowVerizonLocation(Landroid/content/ComponentName;I)Z
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 766
    const/4 v0, 0x0

    .line 767
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_10

    .line 768
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 769
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_f

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowVerizonLocation:Z

    :cond_f
    return v4

    .line 772
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_10
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, v6}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 773
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 774
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowVerizonLocation:Z

    if-nez v5, :cond_1a

    .line 775
    return v6

    .line 778
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowWirelessLocation(Landroid/content/ComponentName;I)Z
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_10

    .line 152
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 153
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_f

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWirelessLocation:Z

    :cond_f
    return v4

    .line 156
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_10
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, v6}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 157
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 158
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWirelessLocation:Z

    if-nez v5, :cond_1a

    .line 159
    return v6

    .line 162
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getEnforceGPSLocationEnabled(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 690
    const/4 v0, 0x0

    .line 692
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 693
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 694
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceGPSLocationEnabled:Z

    :cond_e
    return v4

    .line 697
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, v4}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 698
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 699
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceGPSLocationEnabled:Z

    if-eqz v5, :cond_19

    .line 700
    const/4 v4, 0x1

    return v4

    .line 703
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getLocationWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;
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

    .line 269
    const/4 v0, 0x0

    .line 271
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 272
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 273
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->wirelessLocationWhitelist:Ljava/util/List;

    :cond_e
    return-object v1

    .line 276
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mGlobalLocationWhitelist:Ljava/util/Set;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected isAllowedLocationWithWhitelist(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 237
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 238
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWirelessLocationWhitelist:Z

    :cond_e
    return v4

    .line 241
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 242
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-direct {p0, v3}, Lcom/lge/mdm/controller/LGMDMGpsController;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 243
    return v4

    .line 246
    :cond_1c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 247
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWirelessLocationWhitelist:Z

    if-nez v5, :cond_20

    .line 248
    const-string/jumbo v4, "GpsController"

    const-string/jumbo v5, "getAllowLocationWithWhitelist : return false"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v4, 0x0

    return v4

    .line 252
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_3b
    return v4
.end method

.method protected locationTurnOnOff(Ljava/lang/String;ZI)V
    .registers 10
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "checkOnoff"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 391
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 393
    .local v0, "identity":J
    :try_start_4
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, p2, p3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 395
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 396
    const-string/jumbo v4, "location_mode"

    const/4 v5, 0x0

    .line 395
    invoke-static {v3, v4, v5, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 397
    .local v2, "mode":I
    const-string/jumbo v3, "network"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_3b

    move-result v3

    if-eqz v3, :cond_6e

    .line 398
    if-eqz p2, :cond_4e

    .line 399
    packed-switch v2, :pswitch_data_bc

    .line 479
    :cond_29
    :goto_29
    :pswitch_29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 390
    return-void

    .line 401
    :pswitch_2d
    :try_start_2d
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 402
    const-string/jumbo v4, "location_mode"

    .line 403
    const/4 v5, 0x2

    .line 401
    invoke-static {v3, v4, v5, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_3b

    goto :goto_29

    .line 478
    .end local v2    # "mode":I
    :catchall_3b
    move-exception v3

    .line 479
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 478
    throw v3

    .line 406
    .restart local v2    # "mode":I
    :pswitch_40
    :try_start_40
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 407
    const-string/jumbo v4, "location_mode"

    .line 408
    const/4 v5, 0x3

    .line 406
    invoke-static {v3, v4, v5, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_29

    .line 418
    :cond_4e
    packed-switch v2, :pswitch_data_c8

    goto :goto_29

    .line 424
    :pswitch_52
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 425
    const-string/jumbo v4, "location_mode"

    const/4 v5, 0x0

    .line 424
    invoke-static {v3, v4, v5, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_29

    .line 429
    :pswitch_60
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 430
    const-string/jumbo v4, "location_mode"

    .line 431
    const/4 v5, 0x1

    .line 429
    invoke-static {v3, v4, v5, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_29

    .line 437
    :cond_6e
    const-string/jumbo v3, "gps"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 438
    if-eqz p2, :cond_99

    .line 439
    packed-switch v2, :pswitch_data_d4

    goto :goto_29

    .line 441
    :pswitch_7d
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 442
    const-string/jumbo v4, "location_mode"

    .line 443
    const/4 v5, 0x1

    .line 441
    invoke-static {v3, v4, v5, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_29

    .line 448
    :pswitch_8b
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 449
    const-string/jumbo v4, "location_mode"

    .line 450
    const/4 v5, 0x3

    .line 448
    invoke-static {v3, v4, v5, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_29

    .line 458
    :cond_99
    packed-switch v2, :pswitch_data_e0

    goto :goto_29

    .line 462
    :pswitch_9d
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 463
    const-string/jumbo v4, "location_mode"

    const/4 v5, 0x0

    .line 462
    invoke-static {v3, v4, v5, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_29

    .line 469
    :pswitch_ac
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 470
    const-string/jumbo v4, "location_mode"

    .line 471
    const/4 v5, 0x2

    .line 469
    invoke-static {v3, v4, v5, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_b9
    .catchall {:try_start_40 .. :try_end_b9} :catchall_3b

    goto/16 :goto_29

    .line 399
    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_40
        :pswitch_29
        :pswitch_29
    .end packed-switch

    .line 418
    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_29
        :pswitch_29
        :pswitch_52
        :pswitch_60
    .end packed-switch

    .line 439
    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_29
        :pswitch_8b
        :pswitch_29
    .end packed-switch

    .line 458
    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_29
        :pswitch_9d
        :pswitch_29
        :pswitch_ac
    .end packed-switch
.end method

.method protected setAllowGPSLocation(Landroid/content/ComponentName;ZI)I
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 345
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 347
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowGPSLocation:Z

    if-ne v1, p2, :cond_15

    .line 348
    const-string/jumbo v1, "GpsController"

    const-string/jumbo v2, "setAllowGPSLocation : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const/4 v1, -0x1

    return v1

    .line 352
    :cond_15
    const-string/jumbo v1, "GpsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "allow : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " admin.allowGPSLocation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowGPSLocation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowGPSLocation:Z

    .line 354
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowGPSLocation:Z

    if-nez v1, :cond_4a

    .line 355
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGpsController;->STATUS_GPS:Ljava/lang/String;

    invoke-direct {p0, v1, p3}, Lcom/lge/mdm/controller/LGMDMGpsController;->getLocationState(Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateGPSLocation:Z

    .line 357
    :cond_4a
    invoke-direct {p0, p1, p3}, Lcom/lge/mdm/controller/LGMDMGpsController;->checkGPSLocation(Landroid/content/ComponentName;I)I

    move-result v1

    return v1
.end method

.method protected setAllowLocationWithWhitelist(Landroid/content/ComponentName;ZLjava/util/List;I)V
    .registers 10
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
    .local p3, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 208
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 209
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    const-string/jumbo v1, "GpsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAllowLocationWithWhitelist : allow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->wirelessLocationWhitelist:Ljava/util/List;

    if-eqz v1, :cond_3b

    .line 212
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWirelessLocationWhitelist:Z

    if-ne v1, p2, :cond_3b

    .line 213
    iget-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->wirelessLocationWhitelist:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 211
    if-eqz v1, :cond_3b

    .line 214
    const-string/jumbo v1, "GpsController"

    const-string/jumbo v2, "setAllowLocationWithWhitelist : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void

    .line 218
    :cond_3b
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWirelessLocationWhitelist:Z

    .line 219
    if-eqz p2, :cond_49

    .line 220
    iput-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->wirelessLocationWhitelist:Ljava/util/List;

    .line 226
    :goto_41
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLazyThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mFetcherForGlobalWhiteList:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 207
    return-void

    .line 222
    :cond_49
    iput-object p3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->wirelessLocationWhitelist:Ljava/util/List;

    .line 223
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/lge/mdm/controller/LGMDMHandler;->sendWhitelistLocationMessage(Ljava/util/List;I)V

    goto :goto_41
.end method

.method protected setAllowMockLocation(Landroid/content/ComponentName;ZI)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 582
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 584
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMockLocation:Z

    if-ne v1, p2, :cond_14

    .line 585
    const-string/jumbo v1, "GpsController"

    const-string/jumbo v2, "setAllowMockLocation : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    return-void

    .line 589
    :cond_14
    const-string/jumbo v1, "GpsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "allow : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " admin.allowMockLocation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMockLocation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMockLocation:Z

    .line 592
    invoke-direct {p0, p1, p3}, Lcom/lge/mdm/controller/LGMDMGpsController;->mockLocationTurnOnOff(Landroid/content/ComponentName;I)V

    .line 581
    return-void
.end method

.method protected setAllowPassiveProvider(Landroid/content/ComponentName;ZI)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 821
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 823
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPassiveProvider:Z

    if-ne v1, p2, :cond_14

    .line 824
    const-string/jumbo v1, "GpsController"

    const-string/jumbo v2, "setAllowPassiveProvider : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    return-void

    .line 828
    :cond_14
    const-string/jumbo v1, "GpsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "allow : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " admin.allowPassiveProvider : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 829
    iget-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPassiveProvider:Z

    .line 828
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPassiveProvider:Z

    .line 820
    return-void
.end method

.method protected setAllowVerizonLocation(Landroid/content/ComponentName;ZI)I
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 783
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 785
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowVerizonLocation:Z

    if-ne v1, p2, :cond_15

    .line 786
    const-string/jumbo v1, "GpsController"

    const-string/jumbo v2, "setallowVerizonLocation : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const/4 v1, -0x1

    return v1

    .line 790
    :cond_15
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowVerizonLocation:Z

    .line 791
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowVerizonLocation:Z

    if-nez v1, :cond_24

    .line 792
    const-string/jumbo v1, "vzw_lbs"

    invoke-direct {p0, v1, p3}, Lcom/lge/mdm/controller/LGMDMGpsController;->getLocationState(Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateVerizonLocation:Z

    .line 794
    :cond_24
    invoke-direct {p0, p1, p3}, Lcom/lge/mdm/controller/LGMDMGpsController;->checkAllowVerizonLocation(Landroid/content/ComponentName;I)I

    move-result v1

    return v1
.end method

.method protected setAllowWirelessLocation(Landroid/content/ComponentName;ZI)I
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 173
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWirelessLocation:Z

    if-ne v1, p2, :cond_15

    .line 174
    const-string/jumbo v1, "GpsController"

    const-string/jumbo v2, "setAllowWirelessLocation : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v1, -0x1

    return v1

    .line 178
    :cond_15
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWirelessLocation:Z

    .line 179
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWirelessLocation:Z

    if-nez v1, :cond_23

    .line 180
    sget-object v1, Lcom/lge/mdm/controller/LGMDMGpsController;->STATUS_WIRELESS:Ljava/lang/String;

    invoke-direct {p0, v1, p3}, Lcom/lge/mdm/controller/LGMDMGpsController;->getLocationState(Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateWirelessLocation:Z

    .line 182
    :cond_23
    invoke-direct {p0, p1, p3}, Lcom/lge/mdm/controller/LGMDMGpsController;->checkAllowWirelessLocation(Landroid/content/ComponentName;I)I

    move-result v1

    return v1
.end method

.method protected setEnforceGPSLocationEnabled(Landroid/content/ComponentName;ZI)I
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enforce"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 711
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGpsController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 712
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    const-string/jumbo v1, "GpsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEnforceGPSLocationEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Lcom/lge/mdm/controller/LGMDMGpsController;->getEnforceGPSLocationEnabled(Landroid/content/ComponentName;I)Z

    move-result v1

    if-ne p2, v1, :cond_34

    .line 716
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceGPSLocationEnabled:Z

    .line 717
    const-string/jumbo v1, "GpsController"

    const-string/jumbo v2, "setEnforceGPSLocationEnabled : just save policy, do nothing. "

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const/4 v1, -0x1

    return v1

    .line 721
    :cond_34
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceGPSLocationEnabled:Z

    .line 723
    invoke-direct {p0, p3}, Lcom/lge/mdm/controller/LGMDMGpsController;->checkEnforceGPSLocationEnabled(I)I

    move-result v1

    return v1
.end method

.method protected settingGPSLocation(II)V
    .registers 6
    .param p1, "value"    # I
    .param p2, "userHandle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 375
    const/4 v0, 0x5

    if-ne v0, p1, :cond_c

    .line 376
    const-string/jumbo v0, "vzw_lbs"

    invoke-virtual {p0, v0, v2, p2}, Lcom/lge/mdm/controller/LGMDMGpsController;->locationTurnOnOff(Ljava/lang/String;ZI)V

    .line 374
    :cond_b
    :goto_b
    return-void

    .line 377
    :cond_c
    const/4 v0, 0x4

    if-ne v0, p1, :cond_16

    .line 378
    const-string/jumbo v0, "vzw_lbs"

    invoke-virtual {p0, v0, v1, p2}, Lcom/lge/mdm/controller/LGMDMGpsController;->locationTurnOnOff(Ljava/lang/String;ZI)V

    goto :goto_b

    .line 379
    :cond_16
    const/4 v0, 0x3

    if-ne v0, p1, :cond_20

    .line 380
    const-string/jumbo v0, "network"

    invoke-virtual {p0, v0, v2, p2}, Lcom/lge/mdm/controller/LGMDMGpsController;->locationTurnOnOff(Ljava/lang/String;ZI)V

    goto :goto_b

    .line 381
    :cond_20
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2a

    .line 382
    const-string/jumbo v0, "network"

    invoke-virtual {p0, v0, v1, p2}, Lcom/lge/mdm/controller/LGMDMGpsController;->locationTurnOnOff(Ljava/lang/String;ZI)V

    goto :goto_b

    .line 383
    :cond_2a
    if-ne v2, p1, :cond_33

    .line 384
    const-string/jumbo v0, "gps"

    invoke-virtual {p0, v0, v2, p2}, Lcom/lge/mdm/controller/LGMDMGpsController;->locationTurnOnOff(Ljava/lang/String;ZI)V

    goto :goto_b

    .line 385
    :cond_33
    if-nez p1, :cond_b

    .line 386
    const-string/jumbo v0, "gps"

    invoke-virtual {p0, v0, v1, p2}, Lcom/lge/mdm/controller/LGMDMGpsController;->locationTurnOnOff(Ljava/lang/String;ZI)V

    goto :goto_b
.end method

.method protected turnOnOffGPS(Landroid/content/ComponentName;ZI)I
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "turningOn"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 738
    if-eqz p2, :cond_a

    invoke-virtual {p0, v1, p3}, Lcom/lge/mdm/controller/LGMDMGpsController;->getAllowGPSLocation(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 742
    :cond_a
    if-nez p2, :cond_2c

    invoke-virtual {p0, v1, p3}, Lcom/lge/mdm/controller/LGMDMGpsController;->getEnforceGPSLocationEnabled(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 743
    invoke-virtual {p0, v1, p3}, Lcom/lge/mdm/controller/LGMDMGpsController;->getAllowGPSLocation(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 742
    if-eqz v0, :cond_2c

    .line 744
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v0

    .line 745
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_cannot_gps_NORMAL:I

    .line 744
    invoke-virtual {v0, v1, p3}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    .line 746
    return v2

    .line 739
    :cond_22
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v0

    .line 740
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_block_gps_point:I

    .line 739
    invoke-virtual {v0, v1, p3}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    .line 741
    return v2

    .line 748
    :cond_2c
    invoke-virtual {p0, v1, p3}, Lcom/lge/mdm/controller/LGMDMGpsController;->getAllowGPSLocation(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 749
    invoke-virtual {p0, v1, p3}, Lcom/lge/mdm/controller/LGMDMGpsController;->getEnforceGPSLocationEnabled(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 748
    if-eqz v0, :cond_39

    .line 750
    :cond_38
    return v2

    .line 752
    :cond_39
    if-eqz p2, :cond_44

    sget-object v0, Lcom/lge/mdm/controller/LGMDMGpsController;->STATUS_GPS:Ljava/lang/String;

    invoke-direct {p0, v0, p3}, Lcom/lge/mdm/controller/LGMDMGpsController;->getLocationState(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 753
    return v2

    .line 755
    :cond_44
    if-nez p2, :cond_4e

    sget-object v0, Lcom/lge/mdm/controller/LGMDMGpsController;->STATUS_GPS:Ljava/lang/String;

    invoke-direct {p0, v0, p3}, Lcom/lge/mdm/controller/LGMDMGpsController;->getLocationState(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 758
    :cond_4e
    if-eqz p2, :cond_53

    const/4 v0, 0x1

    :goto_51
    return v0

    .line 756
    :cond_52
    return v2

    .line 758
    :cond_53
    const/4 v0, 0x0

    goto :goto_51
.end method
