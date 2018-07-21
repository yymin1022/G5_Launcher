.class public Lcom/lge/mdm/controller/LGMDMDeviceController;
.super Ljava/lang/Object;
.source "LGMDMDeviceController.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static instance:Lcom/lge/mdm/controller/LGMDMDeviceController;


# instance fields
.field mContext:Landroid/content/Context;

.field private mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-string/jumbo v0, "DeviceController"

    sput-object v0, Lcom/lge/mdm/controller/LGMDMDeviceController;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMDeviceController;->instance:Lcom/lge/mdm/controller/LGMDMDeviceController;

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMDeviceController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 35
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMDeviceController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 36
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMDeviceController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMDeviceController;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private checkDeviceMode(I)V
    .registers 17
    .param p1, "devicefunction"    # I

    .prologue
    .line 56
    move/from16 v10, p1

    .line 57
    .local v10, "reboot":I
    monitor-enter p0

    .line 58
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7a

    move-result-wide v8

    .line 60
    .local v8, "ident":J
    :try_start_7
    const-string/jumbo v11, "power"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 61
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v7

    .line 62
    .local v7, "mIPowerManager":Landroid/os/IPowerManager;
    if-nez v7, :cond_21

    .line 63
    sget-object v11, Lcom/lge/mdm/controller/LGMDMDeviceController;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "PowerManager is null"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1c} :catch_6c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_a7

    .line 103
    :try_start_1c
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_7a

    monitor-exit p0

    .line 64
    return-void

    .line 66
    :cond_21
    if-nez v10, :cond_bd

    .line 67
    :try_start_23
    sget-object v11, Lcom/lge/mdm/controller/LGMDMDeviceController;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "LGMDM : Device Power Off"

    invoke-static {v11, v12}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-class v11, Landroid/os/BatteryManagerInternal;

    invoke-static {v11}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManagerInternal;

    .line 71
    .local v1, "batteryManagerInternal":Landroid/os/BatteryManagerInternal;
    const/4 v11, 0x7

    invoke-virtual {v1, v11}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_37} :catch_6c
    .catchall {:try_start_23 .. :try_end_37} :catchall_a7

    move-result v11

    if-eqz v11, :cond_58

    .line 72
    const/4 v5, 0x0

    .line 74
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_3b
    new-instance v6, Ljava/io/FileOutputStream;

    const-string/jumbo v11, "/persist-lg/chargerlogo/noautoboot"

    invoke-direct {v6, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_43} :catch_7d
    .catchall {:try_start_3b .. :try_end_43} :catchall_ac

    .line 75
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/16 v11, 0x31

    :try_start_45
    invoke-virtual {v6, v11}, Ljava/io/FileOutputStream;->write(I)V

    .line 76
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 77
    sget-object v11, Lcom/lge/mdm/controller/LGMDMDeviceController;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "set noautoboot 1"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_53} :catch_e7
    .catchall {:try_start_45 .. :try_end_53} :catchall_e4

    .line 81
    if-eqz v6, :cond_58

    .line 83
    :try_start_55
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_62
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_58} :catch_6c
    .catchall {:try_start_55 .. :try_end_58} :catchall_a7

    .line 91
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_58
    :goto_58
    const/4 v11, 0x0

    const/4 v12, 0x0

    :try_start_5a
    invoke-interface {v7, v11, v12}, Landroid/os/IPowerManager;->shutdown(ZZ)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5d} :catch_6c
    .catchall {:try_start_5a .. :try_end_5d} :catchall_a7

    .line 103
    .end local v1    # "batteryManagerInternal":Landroid/os/BatteryManagerInternal;
    :goto_5d
    :try_start_5d
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_7a

    .end local v0    # "b":Landroid/os/IBinder;
    .end local v7    # "mIPowerManager":Landroid/os/IPowerManager;
    :goto_60
    monitor-exit p0

    .line 55
    return-void

    .line 84
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v1    # "batteryManagerInternal":Landroid/os/BatteryManagerInternal;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "mIPowerManager":Landroid/os/IPowerManager;
    :catch_62
    move-exception v4

    .line 85
    .local v4, "e":Ljava/lang/Exception;
    :try_start_63
    sget-object v11, Lcom/lge/mdm/controller/LGMDMDeviceController;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Exception when closing noautoboot sys node in checkNoAutoBoot()"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_6b} :catch_6c
    .catchall {:try_start_63 .. :try_end_6b} :catchall_a7

    goto :goto_58

    .line 100
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "batteryManagerInternal":Landroid/os/BatteryManagerInternal;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "mIPowerManager":Landroid/os/IPowerManager;
    :catch_6c
    move-exception v2

    .line 101
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_6d
    const-string/jumbo v11, "MDM"

    const-string/jumbo v12, "Failed talking with LGMDM_LockOut device controller service"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_6d .. :try_end_76} :catchall_a7

    .line 103
    :try_start_76
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_7a

    goto :goto_60

    .line 57
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v8    # "ident":J
    :catchall_7a
    move-exception v11

    monitor-exit p0

    throw v11

    .line 78
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v1    # "batteryManagerInternal":Landroid/os/BatteryManagerInternal;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "mIPowerManager":Landroid/os/IPowerManager;
    .restart local v8    # "ident":J
    :catch_7d
    move-exception v3

    .line 79
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v3, "e":Ljava/io/IOException;
    :goto_7e
    :try_start_7e
    sget-object v11, Lcom/lge/mdm/controller/LGMDMDeviceController;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "fail to set noautoboot 1 : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_7e .. :try_end_97} :catchall_ac

    .line 81
    if-eqz v5, :cond_58

    .line 83
    :try_start_99
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_9d
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_9c} :catch_6c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_a7

    goto :goto_58

    .line 84
    :catch_9d
    move-exception v4

    .line 85
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_9e
    sget-object v11, Lcom/lge/mdm/controller/LGMDMDeviceController;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Exception when closing noautoboot sys node in checkNoAutoBoot()"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_9e .. :try_end_a6} :catch_6c
    .catchall {:try_start_9e .. :try_end_a6} :catchall_a7

    goto :goto_58

    .line 102
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "batteryManagerInternal":Landroid/os/BatteryManagerInternal;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "mIPowerManager":Landroid/os/IPowerManager;
    :catchall_a7
    move-exception v11

    .line 103
    :try_start_a8
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    throw v11
    :try_end_ac
    .catchall {:try_start_a8 .. :try_end_ac} :catchall_7a

    .line 80
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v1    # "batteryManagerInternal":Landroid/os/BatteryManagerInternal;
    .restart local v7    # "mIPowerManager":Landroid/os/IPowerManager;
    :catchall_ac
    move-exception v11

    .line 81
    :goto_ad
    if-eqz v5, :cond_b2

    .line 83
    :try_start_af
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b2} :catch_b3
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_b2} :catch_6c
    .catchall {:try_start_af .. :try_end_b2} :catchall_a7

    .line 80
    :cond_b2
    :goto_b2
    :try_start_b2
    throw v11

    .line 84
    :catch_b3
    move-exception v4

    .line 85
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v12, Lcom/lge/mdm/controller/LGMDMDeviceController;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Exception when closing noautoboot sys node in checkNoAutoBoot()"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b2

    .line 92
    .end local v1    # "batteryManagerInternal":Landroid/os/BatteryManagerInternal;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_bd
    const/4 v11, 0x1

    if-ne v10, v11, :cond_d1

    .line 93
    sget-object v11, Lcom/lge/mdm/controller/LGMDMDeviceController;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "LGMDM : Device Rebooting"

    invoke-static {v11, v12}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v11, "lgmdmpolicy"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface {v7, v12, v11, v13}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V

    goto :goto_5d

    .line 96
    :cond_d1
    sget-object v11, Lcom/lge/mdm/controller/LGMDMDeviceController;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "LGMDM : Device LockNow"

    invoke-static {v11, v12}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 98
    const/4 v11, 0x1

    const/4 v14, 0x0

    .line 97
    invoke-interface {v7, v12, v13, v11, v14}, Landroid/os/IPowerManager;->goToSleep(JII)V
    :try_end_e2
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_e2} :catch_6c
    .catchall {:try_start_b2 .. :try_end_e2} :catchall_a7

    goto/16 :goto_5d

    .line 80
    .restart local v1    # "batteryManagerInternal":Landroid/os/BatteryManagerInternal;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_e4
    move-exception v11

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    goto :goto_ad

    .line 78
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_e7
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7e
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMDeviceController;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/lge/mdm/controller/LGMDMDeviceController;->instance:Lcom/lge/mdm/controller/LGMDMDeviceController;

    if-nez v0, :cond_b

    .line 41
    new-instance v0, Lcom/lge/mdm/controller/LGMDMDeviceController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMDeviceController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMDeviceController;->instance:Lcom/lge/mdm/controller/LGMDMDeviceController;

    .line 44
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMDeviceController;->instance:Lcom/lge/mdm/controller/LGMDMDeviceController;

    return-object v0
.end method


# virtual methods
.method public deviceMode(Landroid/content/ComponentName;II)V
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "devicefunction"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p2}, Lcom/lge/mdm/controller/LGMDMDeviceController;->checkDeviceMode(I)V

    .line 51
    return-void
.end method

.method protected getAllowSafeMode(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 111
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMDeviceController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 112
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSafeMode:Z

    :cond_e
    return v4

    .line 115
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMDeviceController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 116
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

    .line 117
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSafeMode:Z

    if-nez v5, :cond_19

    .line 118
    const/4 v4, 0x0

    return v4

    .line 121
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected setAllowSafeMode(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 125
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMDeviceController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 127
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSafeMode:Z

    if-ne v1, p2, :cond_13

    .line 128
    sget-object v1, Lcom/lge/mdm/controller/LGMDMDeviceController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAllowSafeMode : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void

    .line 132
    :cond_13
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSafeMode:Z

    .line 124
    return-void
.end method
