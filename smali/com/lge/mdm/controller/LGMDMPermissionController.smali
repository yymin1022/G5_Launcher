.class public Lcom/lge/mdm/controller/LGMDMPermissionController;
.super Ljava/lang/Object;
.source "LGMDMPermissionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/controller/LGMDMPermissionController$RestoreInfo;
    }
.end annotation


# static fields
.field private static final KILL_REASON_APP_OP_CHANGE_LGMDM:Ljava/lang/String; = "Permission related app op changed by admin"

.field private static final PACKAGE_NAME_PACKAGE_INSTALLER:Ljava/lang/String; = "com.google.android.packageinstaller"

.field public static final PERMISSION_GRANT_STATE_DEFAULT:I = 0x0

.field public static final PERMISSION_GRANT_STATE_DENIED:I = 0x2

.field public static final PERMISSION_GRANT_STATE_GRANTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LGMDMPermissionController"

.field private static sInstance:Lcom/lge/mdm/controller/LGMDMPermissionController;


# instance fields
.field private final MSG_RESTORE_PRESTATE:I

.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->sInstance:Lcom/lge/mdm/controller/LGMDMPermissionController;

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v2, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 43
    const/4 v2, 0x1

    iput v2, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->MSG_RESTORE_PRESTATE:I

    .line 59
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 60
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mContext:Landroid/content/Context;

    .line 61
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 62
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mAppOps:Landroid/app/AppOpsManager;

    .line 63
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/ActivityManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mActivityManager:Landroid/app/ActivityManager;

    .line 64
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "LGMDMPermissionController"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 66
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 67
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_4f

    .line 68
    new-instance v2, Lcom/lge/mdm/controller/LGMDMPermissionController$1;

    invoke-direct {v2, p0, v0}, Lcom/lge/mdm/controller/LGMDMPermissionController$1;-><init>(Lcom/lge/mdm/controller/LGMDMPermissionController;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mHandler:Landroid/os/Handler;

    .line 58
    :cond_4f
    return-void
.end method

.method private _doRestoreAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ZZZ)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "runtimeRevoked"    # Z
    .param p5, "revokeUpdate"    # Z
    .param p6, "supportRuntimePermission"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    .line 370
    if-eqz p6, :cond_12

    .line 371
    if-eqz p4, :cond_c

    .line 372
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 369
    :goto_b
    return-void

    .line 374
    :cond_c
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_b

    .line 377
    :cond_12
    if-eqz p5, :cond_1e

    .line 378
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object v1, p2

    move-object v2, p1

    move v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_b

    .line 382
    :cond_1e
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 383
    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p1

    move-object v5, p3

    .line 382
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_b
.end method

.method private checkDuplicateOtherAdminPolicy(Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 12
    .param p1, "selfAdmin"    # Lcom/lge/mdm/admin/LGMDMadminlist;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "userhandle"    # I

    .prologue
    const/4 v6, 0x0

    .line 93
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p4}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminListsAsUser(I)Ljava/util/List;

    move-result-object v2

    .line 94
    .local v2, "admins":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 95
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eq v0, p1, :cond_b

    .line 97
    iget-object v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->runtimePermissionList:Landroid/util/ArrayMap;

    invoke-virtual {v5, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;

    .line 98
    .local v3, "permission_map":Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;
    if-eqz v3, :cond_b

    .line 99
    invoke-virtual {v3, p3}, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;->getPolicy(Ljava/lang/String;)I

    move-result v4

    .line 100
    .local v4, "ret_policy":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_b

    .line 101
    if-eqz v4, :cond_b

    .line 103
    const-string/jumbo v5, "LGMDMPermissionController"

    const-string/jumbo v6, "checkDuplicateOtherAdminPolicy, return true."

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v5, 0x1

    return v5

    .line 109
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .end local v3    # "permission_map":Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;
    .end local v4    # "ret_policy":I
    :cond_37
    return v6
.end method

.method private checkSupportRuntimePermission(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 129
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 131
    .local v2, "ident":J
    :try_start_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 132
    const/4 v6, 0x0

    .line 131
    invoke-interface {v5, p1, v6, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 133
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_1d

    .line 134
    const-string/jumbo v5, "LGMDMPermissionController"

    const-string/jumbo v6, "checkSupportRuntimePermission : ApplicationInfo is null."

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_19} :catch_28
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_19} :catch_28
    .catchall {:try_start_5 .. :try_end_19} :catchall_4b

    .line 142
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    return v4

    .line 137
    :cond_1d
    :try_start_1d
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1f} :catch_28
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_1f} :catch_28
    .catchall {:try_start_1d .. :try_end_1f} :catchall_4b

    const/16 v6, 0x17

    if-lt v5, v6, :cond_24

    const/4 v4, 0x1

    .line 142
    :cond_24
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    return v4

    .line 138
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_28
    move-exception v1

    .line 139
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_29
    const-string/jumbo v5, "LGMDMPermissionController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkSupportRuntimePermission, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_29 .. :try_end_47} :catchall_4b

    .line 142
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    return v4

    .line 141
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_4b
    move-exception v4

    .line 142
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 141
    throw v4
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMPermissionController;
    .registers 1

    .prologue
    .line 84
    sget-object v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->sInstance:Lcom/lge/mdm/controller/LGMDMPermissionController;

    if-nez v0, :cond_b

    .line 85
    new-instance v0, Lcom/lge/mdm/controller/LGMDMPermissionController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMPermissionController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->sInstance:Lcom/lge/mdm/controller/LGMDMPermissionController;

    .line 87
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->sInstance:Lcom/lge/mdm/controller/LGMDMPermissionController;

    return-object v0
.end method

.method private grantRuntimePermissions(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mAppOps:Landroid/app/AppOpsManager;

    if-nez v4, :cond_17

    .line 285
    :cond_c
    const-string/jumbo v4, "LGMDMPermissionController"

    const-string/jumbo v5, "grantRuntimePermissions : actMgr or pkgMgr or appOpsMgr is null."

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const/4 v4, 0x0

    return v4

    .line 284
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v4, :cond_c

    .line 288
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 290
    .local v14, "ident":J
    :try_start_21
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 291
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/4 v6, 0x0

    .line 290
    move-object/from16 v0, p1

    invoke-interface {v4, v0, v6, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 292
    .local v10, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v10, :cond_40

    .line 293
    const-string/jumbo v4, "LGMDMPermissionController"

    const-string/jumbo v5, "grantRuntimePermissions : ApplicationInfo is null."

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_3b} :catch_a2
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_3b} :catch_a2
    .catchall {:try_start_21 .. :try_end_3b} :catchall_c6

    .line 294
    const/4 v4, 0x0

    .line 319
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 294
    return v4

    .line 297
    :cond_40
    :try_start_40
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/lge/mdm/controller/LGMDMPermissionController;->checkSupportRuntimePermission(Ljava/lang/String;I)Z

    move-result v13

    .line 298
    .local v13, "supportRuntimePermission":Z
    iget v0, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v16, v0

    .line 299
    .local v16, "uid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mActivityManager:Landroid/app/ActivityManager;

    const-string/jumbo v5, "Permission related app op changed by admin"

    move/from16 v0, v16

    invoke-virtual {v4, v0, v5}, Landroid/app/ActivityManager;->killUid(ILjava/lang/String;)V

    .line 300
    if-eqz v13, :cond_6b

    .line 301
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 303
    :cond_6b
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v11

    .line 304
    .local v11, "appOp":I
    const/4 v4, -0x1

    if-eq v11, v4, :cond_7c

    .line 305
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v5, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v11, v0, v5}, Landroid/app/AppOpsManager;->setUidMode(III)V

    .line 307
    :cond_7c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 308
    const/4 v7, 0x4

    .line 309
    const/4 v8, 0x4

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v9, p3

    .line 307
    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 310
    if-nez v13, :cond_9d

    .line 311
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 312
    const/16 v7, 0x8

    .line 313
    const/4 v8, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v9, p3

    .line 311
    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_9d} :catch_a2
    .catch Ljava/lang/SecurityException; {:try_start_40 .. :try_end_9d} :catch_a2
    .catchall {:try_start_40 .. :try_end_9d} :catchall_c6

    .line 319
    :cond_9d
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 321
    const/4 v4, 0x1

    return v4

    .line 315
    .end local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "appOp":I
    .end local v13    # "supportRuntimePermission":Z
    .end local v16    # "uid":I
    :catch_a2
    move-exception v12

    .line 316
    .local v12, "ex":Ljava/lang/Exception;
    :try_start_a3
    const-string/jumbo v4, "LGMDMPermissionController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "grantRuntimePermissions : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c1
    .catchall {:try_start_a3 .. :try_end_c1} :catchall_c6

    .line 317
    const/4 v4, 0x0

    .line 319
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 317
    return v4

    .line 318
    .end local v12    # "ex":Ljava/lang/Exception;
    :catchall_c6
    move-exception v4

    .line 319
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 318
    throw v4
.end method

.method private killPackageInstaller(Landroid/os/UserHandle;)V
    .registers 8
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 466
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v1, :cond_17

    .line 467
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 469
    .local v2, "ident":J
    :try_start_8
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mActivityManager:Landroid/app/ActivityManager;

    const-string/jumbo v4, "com.google.android.packageinstaller"

    .line 470
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 469
    invoke-virtual {v1, v4, v5}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_14} :catch_18
    .catchall {:try_start_8 .. :try_end_14} :catchall_3b

    .line 474
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 465
    .end local v2    # "ident":J
    :cond_17
    :goto_17
    return-void

    .line 471
    .restart local v2    # "ident":J
    :catch_18
    move-exception v0

    .line 472
    .local v0, "ex":Ljava/lang/SecurityException;
    :try_start_19
    const-string/jumbo v1, "LGMDMPermissionController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "killPackageInstaller : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_19 .. :try_end_37} :catchall_3b

    .line 474
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_17

    .line 473
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catchall_3b
    move-exception v1

    .line 474
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 473
    throw v1
.end method

.method private revokeRuntimePermissions(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mAppOps:Landroid/app/AppOpsManager;

    if-nez v4, :cond_17

    .line 327
    :cond_c
    const-string/jumbo v4, "LGMDMPermissionController"

    const-string/jumbo v5, "revokeRuntimePermissions : actMgr or pkgMgr or appOpsMgr is null."

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const/4 v4, 0x0

    return v4

    .line 326
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v4, :cond_c

    .line 330
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 332
    .local v14, "ident":J
    :try_start_21
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 333
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/4 v6, 0x0

    .line 332
    move-object/from16 v0, p1

    invoke-interface {v4, v0, v6, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 334
    .local v10, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v10, :cond_40

    .line 335
    const-string/jumbo v4, "LGMDMPermissionController"

    const-string/jumbo v5, "revokeRuntimePermissions : ApplicationInfo is null."

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_3b} :catch_a3
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_3b} :catch_a3
    .catchall {:try_start_21 .. :try_end_3b} :catchall_c7

    .line 336
    const/4 v4, 0x0

    .line 362
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 336
    return v4

    .line 339
    :cond_40
    :try_start_40
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/lge/mdm/controller/LGMDMPermissionController;->checkSupportRuntimePermission(Ljava/lang/String;I)Z

    move-result v13

    .line 340
    .local v13, "supportRuntimePermission":Z
    iget v0, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v16, v0

    .line 341
    .local v16, "uid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mActivityManager:Landroid/app/ActivityManager;

    const-string/jumbo v5, "Permission related app op changed by admin"

    move/from16 v0, v16

    invoke-virtual {v4, v0, v5}, Landroid/app/ActivityManager;->killUid(ILjava/lang/String;)V

    .line 342
    if-eqz v13, :cond_6b

    .line 343
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 346
    :cond_6b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 347
    const/4 v7, 0x4

    .line 348
    const/4 v8, 0x4

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v9, p3

    .line 346
    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 349
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v11

    .line 350
    .local v11, "appOp":I
    const/4 v4, -0x1

    if-eq v11, v4, :cond_8b

    .line 351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v5, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v11, v0, v5}, Landroid/app/AppOpsManager;->setUidMode(III)V

    .line 353
    :cond_8b
    if-nez v13, :cond_9e

    .line 354
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 355
    const/16 v7, 0x8

    .line 356
    const/16 v8, 0x8

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v9, p3

    .line 354
    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_9e} :catch_a3
    .catch Ljava/lang/SecurityException; {:try_start_40 .. :try_end_9e} :catch_a3
    .catchall {:try_start_40 .. :try_end_9e} :catchall_c7

    .line 362
    :cond_9e
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 364
    const/4 v4, 0x1

    return v4

    .line 358
    .end local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "appOp":I
    .end local v13    # "supportRuntimePermission":Z
    .end local v16    # "uid":I
    :catch_a3
    move-exception v12

    .line 359
    .local v12, "ex":Ljava/lang/Exception;
    :try_start_a4
    const-string/jumbo v4, "LGMDMPermissionController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "revokeRuntimePermissions : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c2
    .catchall {:try_start_a4 .. :try_end_c2} :catchall_c7

    .line 360
    const/4 v4, 0x0

    .line 362
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 360
    return v4

    .line 361
    .end local v12    # "ex":Ljava/lang/Exception;
    :catchall_c7
    move-exception v4

    .line 362
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 361
    throw v4
.end method


# virtual methods
.method checkRuntimePermissionGrantStateLocked(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 115
    const-string/jumbo v3, "LGMDMPermissionController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkRuntimePermissionGrantState, package name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 116
    const-string/jumbo v5, ", permission name : "

    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :try_start_26
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 119
    const/16 v4, 0x38

    .line 118
    invoke-virtual {v3, p1, v4}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 120
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/lge/mdm/controller/LGMDMPermissionController;->checkDuplicateOtherAdminPolicy(Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_26 .. :try_end_31} :catch_37

    move-result v3

    if-eqz v3, :cond_35

    :goto_34
    return v2

    :cond_35
    const/4 v2, 0x1

    goto :goto_34

    .line 121
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :catch_37
    move-exception v1

    .line 122
    .local v1, "se":Ljava/lang/SecurityException;
    const-string/jumbo v3, "LGMDMPermissionController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkRuntimePermissionGrantState, SecurityException!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return v2
.end method

.method clearPoliciesLocked(Lcom/lge/mdm/admin/LGMDMadminlist;I)V
    .registers 17
    .param p1, "admin"    # Lcom/lge/mdm/admin/LGMDMadminlist;
    .param p2, "userhandle"    # I

    .prologue
    .line 481
    iget-object v0, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->runtimePermissionList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 482
    .local v11, "sizeList":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_7
    if-ge v6, v11, :cond_51

    .line 483
    iget-object v0, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->runtimePermissionList:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 484
    .local v2, "package_name":Ljava/lang/String;
    iget-object v0, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->runtimePermissionList:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;

    .line 485
    .local v9, "permission_map":Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;
    if-eqz v2, :cond_4e

    if-eqz v9, :cond_4e

    .line 486
    invoke-virtual {v9}, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;->size()I

    move-result v12

    .line 487
    .local v12, "sizePermission":I
    const/4 v7, 0x0

    .local v7, "index_perm":I
    :goto_22
    if-ge v7, v12, :cond_4e

    .line 488
    invoke-virtual {v9, v7}, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;->getPermissionAt(I)Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, "permission":Ljava/lang/String;
    invoke-virtual {v9, v7}, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;->getPreStateAt(I)I

    move-result v4

    .line 490
    .local v4, "preState":I
    invoke-virtual {v9, v7}, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;->getPolicyAt(I)I

    move-result v10

    .line 491
    .local v10, "policy":I
    if-eqz v3, :cond_4b

    const/4 v0, -0x1

    if-eq v10, v0, :cond_4b

    .line 492
    if-eqz v10, :cond_4b

    .line 493
    iget-object v13, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mHandler:Landroid/os/Handler;

    .line 494
    new-instance v0, Lcom/lge/mdm/controller/LGMDMPermissionController$RestoreInfo;

    move-object v1, p0

    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/lge/mdm/controller/LGMDMPermissionController$RestoreInfo;-><init>(Lcom/lge/mdm/controller/LGMDMPermissionController;Ljava/lang/String;Ljava/lang/String;II)V

    .line 493
    const/4 v1, 0x1

    invoke-virtual {v13, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 495
    .local v8, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 487
    .end local v8    # "msg":Landroid/os/Message;
    :cond_4b
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    .line 482
    .end local v3    # "permission":Ljava/lang/String;
    .end local v4    # "preState":I
    .end local v7    # "index_perm":I
    .end local v10    # "policy":I
    .end local v12    # "sizePermission":I
    :cond_4e
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 480
    .end local v2    # "package_name":Ljava/lang/String;
    .end local v9    # "permission_map":Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;
    :cond_51
    return-void
.end method

.method getAppPermissionState(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 150
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mAppOps:Landroid/app/AppOpsManager;

    if-nez v14, :cond_17

    .line 151
    :cond_c
    const-string/jumbo v14, "LGMDMPermissionController"

    const-string/jumbo v15, "getAppPermissionState : pkgMgr or appOpsMgr is null."

    invoke-static {v14, v15}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v14, 0x0

    return v14

    .line 154
    :cond_17
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 155
    .local v6, "callerUserHandle":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 158
    .local v10, "ident":J
    :try_start_1f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/lge/mdm/controller/LGMDMPermissionController;->checkSupportRuntimePermission(Ljava/lang/String;I)Z

    move-result v13

    .line 159
    .local v13, "supportRuntimePermission":Z
    const/4 v12, 0x1

    .line 160
    .local v12, "preState":I
    if-eqz v13, :cond_3e

    .line 161
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v14

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v14, v0, v1, v6}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_35} :catch_bb
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_35} :catch_bb
    .catchall {:try_start_1f .. :try_end_35} :catchall_e0

    move-result v8

    .line 163
    .local v8, "granted":I
    if-eqz v8, :cond_3a

    .line 164
    or-int/lit8 v12, v12, 0x2

    .line 194
    .end local v8    # "granted":I
    :cond_3a
    :goto_3a
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 196
    .end local v13    # "supportRuntimePermission":Z
    :goto_3d
    return v12

    .line 167
    .restart local v13    # "supportRuntimePermission":Z
    :cond_3e
    :try_start_3e
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v5

    .line 168
    .local v5, "appOp":I
    const/4 v14, -0x1

    if-eq v5, v14, :cond_9d

    .line 169
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v14

    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    const/16 v16, 0x0

    .line 169
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v14, v0, v1, v15}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 171
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v4, :cond_77

    .line 172
    const-string/jumbo v14, "LGMDMPermissionController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getAppPermissionState, fail to app info : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v12, 0x0

    goto :goto_3a

    .line 176
    :cond_77
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mAppOps:Landroid/app/AppOpsManager;

    iget v15, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p1

    invoke-virtual {v14, v5, v15, v0}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v14

    .line 175
    const/4 v15, 0x1

    if-ne v15, v14, :cond_88

    .line 177
    or-int/lit8 v12, v12, 0x4

    .line 180
    :cond_88
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v9

    .line 181
    .local v9, "permFlags":I
    and-int/lit8 v14, v9, 0x8

    if-eqz v14, :cond_3a

    .line 182
    or-int/lit8 v12, v12, 0x8

    goto :goto_3a

    .line 186
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "permFlags":I
    :cond_9d
    const-string/jumbo v14, "LGMDMPermissionController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getAppPermissionState, unknow op, permission:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_b9} :catch_bb
    .catch Ljava/lang/SecurityException; {:try_start_3e .. :try_end_b9} :catch_bb
    .catchall {:try_start_3e .. :try_end_b9} :catchall_e0

    .line 187
    const/4 v12, 0x0

    goto :goto_3a

    .line 190
    .end local v5    # "appOp":I
    .end local v12    # "preState":I
    .end local v13    # "supportRuntimePermission":Z
    :catch_bb
    move-exception v7

    .line 191
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_bc
    const-string/jumbo v14, "LGMDMPermissionController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getAppPermissionState, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_da
    .catchall {:try_start_bc .. :try_end_da} :catchall_e0

    .line 192
    const/4 v12, 0x0

    .line 194
    .restart local v12    # "preState":I
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3d

    .line 193
    .end local v7    # "ex":Ljava/lang/Exception;
    .end local v12    # "preState":I
    :catchall_e0
    move-exception v14

    .line 194
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 193
    throw v14
.end method

.method getRuntimePermissionAdminValueLocked(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;IZ)I
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "userhandle"    # I
    .param p5, "isPolicy"    # Z

    .prologue
    const/4 v5, 0x0

    .line 202
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1, p4}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 203
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-nez v0, :cond_a

    .line 204
    return v5

    .line 206
    :cond_a
    iget-object v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->runtimePermissionList:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;

    .line 207
    .local v1, "permission_map":Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;
    if-nez v1, :cond_1e

    .line 208
    const-string/jumbo v3, "LGMDMPermissionController"

    const-string/jumbo v4, "getRuntimePermissionAdminPolicy, admin\'s value(package) is null."

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return v5

    .line 210
    :cond_1e
    if-eqz p5, :cond_31

    invoke-virtual {v1, p3}, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;->getPolicy(Ljava/lang/String;)I

    move-result v2

    .line 212
    .local v2, "value":I
    :goto_24
    const/4 v3, -0x1

    if-ne v2, v3, :cond_36

    .line 213
    const-string/jumbo v3, "LGMDMPermissionController"

    const-string/jumbo v4, "getRuntimePermissionAdminPolicy, not found"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return v5

    .line 211
    .end local v2    # "value":I
    :cond_31
    invoke-virtual {v1, p3}, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;->getPreState(Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "value":I
    goto :goto_24

    .line 216
    :cond_36
    const-string/jumbo v3, "LGMDMPermissionController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getRuntimePermissionAdminPolicy, admin\'s value isPolicy("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 217
    const-string/jumbo v5, ") : "

    .line 216
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return v2
.end method

.method getRuntimePermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v11, 0x0

    .line 227
    iget-object v8, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mAppOps:Landroid/app/AppOpsManager;

    if-nez v8, :cond_15

    .line 228
    :cond_b
    const-string/jumbo v6, "LGMDMPermissionController"

    const-string/jumbo v7, "getRuntimePermissionGrantState : pkgMgr or appOpsMgr is null."

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return v11

    .line 231
    :cond_15
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 232
    .local v5, "user":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 234
    .local v2, "ident":J
    :try_start_1d
    iget-object v8, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, p3, p2, v5}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v4

    .line 235
    .local v4, "permFlags":I
    and-int/lit8 v8, v4, 0x4

    .line 236
    const/4 v9, 0x4

    .line 235
    if-eq v8, v9, :cond_35

    .line 237
    const-string/jumbo v6, "LGMDMPermissionController"

    const-string/jumbo v7, "getRuntimePermissionGrantState : not controlled by policy"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_7d

    .line 262
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 239
    return v11

    .line 242
    :cond_35
    :try_start_35
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-direct {p0, p2, v8}, Lcom/lge/mdm/controller/LGMDMPermissionController;->checkSupportRuntimePermission(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 243
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 244
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 243
    invoke-interface {v8, p3, p2, v9}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_4a
    .catchall {:try_start_35 .. :try_end_4a} :catchall_7d

    move-result v8

    if-nez v8, :cond_51

    .line 262
    :goto_4d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 243
    return v6

    :cond_51
    move v6, v7

    .line 246
    goto :goto_4d

    .line 248
    :cond_53
    :try_start_53
    invoke-static {p3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    .line 249
    .local v1, "appOp":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_79

    .line 250
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 251
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    const/4 v10, 0x0

    .line 250
    invoke-interface {v8, p2, v10, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 252
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_79

    .line 254
    iget-object v8, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mAppOps:Landroid/app/AppOpsManager;

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v8, v1, v9, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I
    :try_end_70
    .catchall {:try_start_53 .. :try_end_70} :catchall_7d

    move-result v8

    .line 253
    if-nez v8, :cond_77

    .line 262
    :goto_73
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 253
    return v6

    :cond_77
    move v6, v7

    .line 256
    goto :goto_73

    .line 262
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_79
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 264
    return v11

    .line 261
    .end local v1    # "appOp":I
    .end local v4    # "permFlags":I
    :catchall_7d
    move-exception v6

    .line 262
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    throw v6
.end method

.method restorePermissionState(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)Z
    .registers 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "preState"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 390
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mAppOps:Landroid/app/AppOpsManager;

    if-nez v4, :cond_17

    .line 391
    :cond_c
    const-string/jumbo v4, "LGMDMPermissionController"

    const-string/jumbo v5, "restorePermissionState : actMgr or pkgMgr or appOpsMgr is null."

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const/4 v4, 0x0

    return v4

    .line 390
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v4, :cond_c

    .line 394
    invoke-virtual/range {p4 .. p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 396
    .local v18, "userHandle":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/controller/LGMDMPermissionController;->checkSupportRuntimePermission(Ljava/lang/String;I)Z

    move-result v10

    .line 397
    .local v10, "supportRuntimePermission":Z
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v12

    .line 398
    .local v12, "appOp":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 400
    .local v14, "ident":J
    :try_start_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v17

    .line 401
    .local v17, "permFlags":I
    and-int/lit8 v4, v17, 0x4

    .line 402
    const/4 v5, 0x4

    .line 401
    if-eq v4, v5, :cond_7d

    .line 403
    const-string/jumbo v4, "LGMDMPermissionController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restorePermissionState : pkg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", permission : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string/jumbo v4, "LGMDMPermissionController"

    const-string/jumbo v5, "restorePermissionState : permission is not fixed by policy."

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_78} :catch_fa
    .catch Ljava/lang/SecurityException; {:try_start_33 .. :try_end_78} :catch_fa
    .catchall {:try_start_33 .. :try_end_78} :catchall_11e

    .line 406
    const/4 v4, 0x0

    .line 437
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 406
    return v4

    .line 408
    :cond_7d
    :try_start_7d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 409
    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v9, p4

    .line 408
    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 410
    if-eqz p3, :cond_dc

    const/4 v4, -0x1

    move/from16 v0, p3

    if-eq v0, v4, :cond_dc

    .line 411
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_dc

    .line 413
    and-int/lit8 v4, p3, 0x4

    if-eqz v4, :cond_e8

    const/16 v16, 0x1

    .line 415
    .local v16, "opIgnored":Z
    :goto_9d
    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_eb

    const/4 v8, 0x1

    .line 417
    .local v8, "runtimeRevoked":Z
    :goto_a2
    and-int/lit8 v4, p3, 0x8

    if-eqz v4, :cond_ed

    const/4 v9, 0x1

    .line 418
    .local v9, "revokeUpdate":Z
    :goto_a7
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 419
    const/4 v5, 0x0

    .line 418
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v4, v0, v5, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 420
    .local v11, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v11, :cond_d1

    .line 421
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mActivityManager:Landroid/app/ActivityManager;

    iget v5, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v6, "Permission related app op changed by admin"

    invoke-virtual {v4, v5, v6}, Landroid/app/ActivityManager;->killUid(ILjava/lang/String;)V

    .line 422
    const/4 v4, -0x1

    if-eq v12, v4, :cond_d1

    .line 423
    if-eqz v16, :cond_ef

    .line 424
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mAppOps:Landroid/app/AppOpsManager;

    iget v5, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x1

    invoke-virtual {v4, v12, v5, v6}, Landroid/app/AppOpsManager;->setUidMode(III)V

    :cond_d1
    :goto_d1
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    .line 430
    invoke-direct/range {v4 .. v10}, Lcom/lge/mdm/controller/LGMDMPermissionController;->_doRestoreAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ZZZ)V
    :try_end_dc
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_dc} :catch_fa
    .catch Ljava/lang/SecurityException; {:try_start_7d .. :try_end_dc} :catch_fa
    .catchall {:try_start_7d .. :try_end_dc} :catchall_11e

    .line 437
    .end local v8    # "runtimeRevoked":Z
    .end local v9    # "revokeUpdate":Z
    .end local v11    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "opIgnored":Z
    :cond_dc
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 439
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/lge/mdm/controller/LGMDMPermissionController;->killPackageInstaller(Landroid/os/UserHandle;)V

    .line 440
    const/4 v4, 0x1

    return v4

    .line 413
    :cond_e8
    const/16 v16, 0x0

    .restart local v16    # "opIgnored":Z
    goto :goto_9d

    .line 415
    :cond_eb
    const/4 v8, 0x0

    .restart local v8    # "runtimeRevoked":Z
    goto :goto_a2

    .line 417
    :cond_ed
    const/4 v9, 0x0

    .restart local v9    # "revokeUpdate":Z
    goto :goto_a7

    .line 426
    .restart local v11    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_ef
    :try_start_ef
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mAppOps:Landroid/app/AppOpsManager;

    iget v5, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x0

    invoke-virtual {v4, v12, v5, v6}, Landroid/app/AppOpsManager;->setUidMode(III)V
    :try_end_f9
    .catch Landroid/os/RemoteException; {:try_start_ef .. :try_end_f9} :catch_fa
    .catch Ljava/lang/SecurityException; {:try_start_ef .. :try_end_f9} :catch_fa
    .catchall {:try_start_ef .. :try_end_f9} :catchall_11e

    goto :goto_d1

    .line 433
    .end local v8    # "runtimeRevoked":Z
    .end local v9    # "revokeUpdate":Z
    .end local v11    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "opIgnored":Z
    .end local v17    # "permFlags":I
    :catch_fa
    move-exception v13

    .line 434
    .local v13, "ex":Ljava/lang/Exception;
    :try_start_fb
    const-string/jumbo v4, "LGMDMPermissionController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restorePermissionState, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_119
    .catchall {:try_start_fb .. :try_end_119} :catchall_11e

    .line 435
    const/4 v4, 0x0

    .line 437
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 435
    return v4

    .line 436
    .end local v13    # "ex":Ljava/lang/Exception;
    :catchall_11e
    move-exception v4

    .line 437
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 436
    throw v4
.end method

.method setPackagePermissionState(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "grantState"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, "retValue":Z
    packed-switch p3, :pswitch_data_30

    .line 455
    const-string/jumbo v1, "LGMDMPermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPackagePermissionState, unknown grantState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const/4 v1, 0x0

    return v1

    .line 449
    :pswitch_20
    invoke-direct {p0, p1, p2, p4}, Lcom/lge/mdm/controller/LGMDMPermissionController;->grantRuntimePermissions(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    .line 458
    .local v0, "retValue":Z
    :goto_24
    if-eqz v0, :cond_29

    .line 460
    invoke-direct {p0, p4}, Lcom/lge/mdm/controller/LGMDMPermissionController;->killPackageInstaller(Landroid/os/UserHandle;)V

    .line 462
    :cond_29
    return v0

    .line 452
    .local v0, "retValue":Z
    :pswitch_2a
    invoke-direct {p0, p1, p2, p4}, Lcom/lge/mdm/controller/LGMDMPermissionController;->revokeRuntimePermissions(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    .local v0, "retValue":Z
    goto :goto_24

    .line 447
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_20
        :pswitch_2a
    .end packed-switch
.end method

.method updateLGMDMAdminListLocked(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "grantState"    # I
    .param p5, "preState"    # I
    .param p6, "userHandle"    # I

    .prologue
    .line 270
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMPermissionController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1, p6}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 271
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-nez v0, :cond_9

    .line 272
    return-void

    .line 274
    :cond_9
    iget-object v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->runtimePermissionList:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;

    .line 275
    .local v1, "permissionMap":Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;
    if-nez v1, :cond_18

    .line 276
    new-instance v1, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;

    .end local v1    # "permissionMap":Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;
    invoke-direct {v1}, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;-><init>()V

    .line 278
    .restart local v1    # "permissionMap":Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;
    :cond_18
    invoke-virtual {v1, p3, p4, p5}, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;->putPolicy(Ljava/lang/String;II)V

    .line 279
    iget-object v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->runtimePermissionList:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    return-void
.end method
