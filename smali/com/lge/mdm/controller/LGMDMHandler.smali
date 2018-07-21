.class public Lcom/lge/mdm/controller/LGMDMHandler;
.super Landroid/os/Handler;
.source "LGMDMHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;
    }
.end annotation


# static fields
.field private static final CHAIN_TYPE_INPUT:Ljava/lang/String; = "input"

.field private static final CHAIN_TYPE_OUTPUT:Ljava/lang/String; = "output"

.field private static final DISABLE:I = 0x2

.field private static final HIDE:I = 0x3

.field private static final INPUT_DLNA_CHAIN:Ljava/lang/String; = "lgmdm_DLNA_INPUT"

.field private static final INPUT_MDM_CHAIN:Ljava/lang/String; = "in_mdm_box"

.field private static final IPTABLES_CMDLIST_FILE:Ljava/lang/String; = "lgmdm_iptables_cmdlist.txt"

.field private static final IPTABLES_CMD_RESETLIST_FILE:Ljava/lang/String; = "lgmdm_iptables_cmd_resetlist.txt"

.field private static final IPTABLES_DIR:Ljava/lang/String; = "/data/system/lgmdm"

.field private static final IPTABLES_LIST_FILE:Ljava/lang/String; = "lgmdm_iptables_list.txt"

.field private static final MESSAGE_BLOCK_DLNA_DISCOVERY_PORT:I = 0x1b

.field private static final MESSAGE_CHECKRUNNINGBROWSERS:I = 0x4

.field private static final MESSAGE_DISALLOW_GOOGLE_ERR_RREPORT:I = 0x1a

.field private static final MESSAGE_FORCESTOPPACKAGE:I = 0x8

.field private static final MESSAGE_IPTABLESLIST_BOOT:I = 0x11

.field private static final MESSAGE_IPTABLESLIST_NEW:I = 0xf

.field private static final MESSAGE_IPTABLESLIST_REFRESH:I = 0x10

.field private static final MESSAGE_IPTABLESLIST_RESET:I = 0x12

.field private static final MESSAGE_IPTABLES_CMDLIST_BOOT:I = 0x18

.field private static final MESSAGE_IPTABLES_CMDLIST_NEW:I = 0x16

.field private static final MESSAGE_IPTABLES_CMDLIST_REFRESH:I = 0x17

.field private static final MESSAGE_IPTABLES_CMDLIST_RESET:I = 0x19

.field private static final MESSAGE_REMOVE_USER:I = 0x14

.field private static final MESSAGE_SENDBROADCAST:I = 0x1

.field private static final MESSAGE_SENDBROADCASTASUSER:I = 0x1d

.field private static final MESSAGE_SENDWHITELISTLOCATIONMESSAGE:I = 0x13

.field private static final MESSAGE_SEND_TOAST:I = 0x7

.field private static final MESSAGE_SETALLOWUNSIGNEDAPPLICATION:I = 0x3

.field private static final MESSAGE_SETAPPLICATIONSTATE:I = 0x2

.field private static final MESSAGE_SETAPPVERSIONSTATE:I = 0x1c

.field private static final MESSAGE_SETMESSAGEAPP:I = 0x5

.field private static final MESSAGE_SETSIGNATURESTATE:I = 0xb

.field private static final MESSAGE_STARTACTIVITY:I = 0xc

.field private static final MESSAGE_STICKY_SENDBROADCAST:I = 0xe

.field private static final MSG_HIDE_WINDOWTOAST:I = 0xa

.field private static final MSG_SHOWCHANGEDIALOG:I = 0x1e

.field private static final MSG_SHOWDECRYPTIONDIALOG:I = 0x1f

.field private static final MSG_SHOWOSUPDATEDIALOG:I = 0x20

.field private static final MSG_SHOW_WINDOWTOAST:I = 0x9

.field private static final OUTPUT_DLNA_CHAIN:Ljava/lang/String; = "lgmdm_DLNA_OUTPUT"

.field private static final OUTPUT_MDM_CHAIN:Ljava/lang/String; = "out_mdm_box"

.field private static final TAG:Ljava/lang/String; = "LGMDMHandler"

.field private static mInstance:Lcom/lge/mdm/controller/LGMDMHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field mIPowerManager:Landroid/os/IPowerManager;

.field mIWindowManager:Landroid/view/IWindowManager;

.field private mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 116
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMHandler;->mInstance:Lcom/lge/mdm/controller/LGMDMHandler;

    .line 65
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 112
    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    .line 117
    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    .line 132
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    .line 129
    return-void
.end method

.method private checkPersistentAppInfo(Ljava/lang/String;)Landroid/app/ActivityManager$RunningAppProcessInfo;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1305
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1306
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 1308
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v1, :cond_3b

    .line 1309
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "rapi$iterator":Ljava/util/Iterator;
    :cond_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1310
    .local v3, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 1311
    .local v5, "runningPackageList":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    array-length v6, v5

    if-ge v2, v6, :cond_16

    .line 1312
    aget-object v6, v5, v2

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 1313
    iget v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_37

    .line 1314
    return-object v8

    .line 1316
    :cond_37
    return-object v3

    .line 1311
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 1323
    .end local v2    # "i":I
    .end local v3    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "rapi$iterator":Ljava/util/Iterator;
    .end local v5    # "runningPackageList":[Ljava/lang/String;
    :cond_3b
    return-object v8
.end method

.method private getIPowerManager()Landroid/os/IPowerManager;
    .registers 3

    .prologue
    .line 2035
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mIPowerManager:Landroid/os/IPowerManager;

    if-nez v1, :cond_11

    .line 2036
    const-string/jumbo v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2037
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mIPowerManager:Landroid/os/IPowerManager;

    .line 2039
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_11
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mIPowerManager:Landroid/os/IPowerManager;

    return-object v1
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMHandler;
    .registers 1

    .prologue
    .line 120
    sget-object v0, Lcom/lge/mdm/controller/LGMDMHandler;->mInstance:Lcom/lge/mdm/controller/LGMDMHandler;

    return-object v0
.end method

.method private getRunningPackagesFormPid(I)[Ljava/lang/String;
    .registers 10
    .param p1, "pid"    # I

    .prologue
    const/4 v7, 0x0

    .line 1336
    const/4 v4, 0x1

    if-ge p1, v4, :cond_1f

    .line 1337
    const-string/jumbo v4, "LGMDMHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRunningPackagesFormPid : pid check fail : pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    return-object v7

    .line 1340
    :cond_1f
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1341
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_47

    .line 1342
    const-string/jumbo v4, "LGMDMHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRunningPackagesFormPid : null check fail : ActivityManager = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    return-object v7

    .line 1346
    :cond_47
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 1347
    .local v1, "processList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v1, :cond_68

    .line 1348
    const-string/jumbo v4, "LGMDMHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRunningPackagesFormPid : null check fail : processList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    return-object v7

    .line 1353
    :cond_68
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "rapi$iterator":Ljava/util/Iterator;
    :cond_6c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1354
    .local v2, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_6c

    .line 1355
    const-string/jumbo v4, "LGMDMHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRunningPackagesFormPid : found packages = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    return-object v4

    .line 1359
    .end local v2    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_9e
    const-string/jumbo v4, "LGMDMHandler"

    const-string/jumbo v5, "getRunningPackagesFormPid : not found packages"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    return-object v7
.end method

.method private getTopActivityPackageName()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 2060
    const/4 v4, 0x0

    .line 2061
    .local v4, "topPackageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2062
    .local v1, "rt":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2064
    .local v2, "ident":J
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_43
    .catchall {:try_start_7 .. :try_end_10} :catchall_51

    move-result-object v1

    .line 2068
    .local v1, "rt":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2070
    .end local v1    # "rt":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_14
    if-eqz v1, :cond_28

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_28

    .line 2071
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2073
    .end local v4    # "topPackageName":Ljava/lang/String;
    :cond_28
    const-string/jumbo v5, "LGMDMHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getTopActivityPackageName is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    return-object v4

    .line 2065
    .local v1, "rt":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v4    # "topPackageName":Ljava/lang/String;
    :catch_43
    move-exception v0

    .line 2066
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_44
    const-string/jumbo v5, "LGMDMHandler"

    const-string/jumbo v6, "Failed talking with ActivityManagerNative"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_51

    .line 2068
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_14

    .line 2067
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_51
    move-exception v5

    .line 2068
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2067
    throw v5
.end method

.method private getWindowManager()Landroid/view/IWindowManager;
    .registers 3

    .prologue
    .line 2043
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_11

    .line 2044
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2045
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mIWindowManager:Landroid/view/IWindowManager;

    .line 2047
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_11
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v1
.end method

.method private handleBlockDLNADiscoveryPort(Z)V
    .registers 8
    .param p1, "block"    # Z

    .prologue
    .line 1852
    const-string/jumbo v3, "LGMDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleBlockDLNADiscoveryPort : block = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    new-instance v1, Lcom/lge/systemservice/core/LGContext;

    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    .line 1855
    .local v1, "lgContext":Lcom/lge/systemservice/core/LGContext;
    const-string/jumbo v3, "lgnetworkmanagementservice"

    invoke-virtual {v1, v3}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/systemservice/core/LGNetworkManager;

    .line 1858
    .local v2, "service":Lcom/lge/systemservice/core/LGNetworkManager;
    if-nez v2, :cond_2d

    .line 1859
    return-void

    .line 1861
    :cond_2d
    if-eqz p1, :cond_145

    .line 1863
    :try_start_2f
    const-string/jumbo v3, "-N lgmdm_DLNA_INPUT"

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_35} :catch_60

    .line 1868
    :goto_35
    :try_start_35
    const-string/jumbo v3, "-N lgmdm_DLNA_OUTPUT"

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3b} :catch_7c

    .line 1873
    :goto_3b
    :try_start_3b
    const-string/jumbo v3, "-I INPUT 2 -j lgmdm_DLNA_INPUT"

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_41} :catch_98

    .line 1880
    :goto_41
    :try_start_41
    const-string/jumbo v3, "-I OUTPUT 2 -j lgmdm_DLNA_OUTPUT"

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_47} :catch_b4

    .line 1887
    :goto_47
    :try_start_47
    const-string/jumbo v3, "-A lgmdm_DLNA_INPUT -p udp --sport 1900 -j DROP"

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4d} :catch_d1

    .line 1894
    :goto_4d
    :try_start_4d
    const-string/jumbo v3, "-A lgmdm_DLNA_INPUT -p udp --dport 1900 -j DROP"

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_53} :catch_ee

    .line 1901
    :goto_53
    :try_start_53
    const-string/jumbo v3, "-A lgmdm_DLNA_OUTPUT -p udp --sport 1900 -j DROP"

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_59} :catch_10b

    .line 1908
    :goto_59
    :try_start_59
    const-string/jumbo v3, "-A lgmdm_DLNA_OUTPUT -p udp --dport 1900 -j DROP"

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5f} :catch_128

    .line 1851
    :goto_5f
    return-void

    .line 1864
    :catch_60
    move-exception v0

    .line 1865
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LGMDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[DLNADiscoveryPort] iptables -N lgmdm_DLNA_INPUT :: %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 1869
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_7c
    move-exception v0

    .line 1870
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LGMDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[DLNADiscoveryPort] iptables -N lgmdm_DLNA_OUTPUT :: %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 1874
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_98
    move-exception v0

    .line 1875
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LGMDMHandler"

    .line 1876
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[DLNADiscoveryPort] iptables -I INPUT 2 -j lgmdm_DLNA_INPUT :: %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1875
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 1881
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_b4
    move-exception v0

    .line 1882
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LGMDMHandler"

    .line 1883
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[DLNADiscoveryPort] iptables -I OUTPUT 2 -j lgmdm_DLNA_OUTPUT :: %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1882
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_47

    .line 1888
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_d1
    move-exception v0

    .line 1889
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LGMDMHandler"

    .line 1890
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[DLNADiscoveryPort] iptables -A lgmdm_DLNA_INPUT -p udp --sport 1900 -j DROP :: %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1889
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4d

    .line 1895
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_ee
    move-exception v0

    .line 1896
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LGMDMHandler"

    .line 1897
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[DLNADiscoveryPort] iptables -A lgmdm_DLNA_INPUT -p udp --dport 1900 -j DROP :: %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1896
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_53

    .line 1902
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_10b
    move-exception v0

    .line 1903
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LGMDMHandler"

    .line 1904
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[DLNADiscoveryPort] iptables -A lgmdm_DLNA_OUTPUT -p udp --sport 1900 -j DROP :: %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1903
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_59

    .line 1909
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_128
    move-exception v0

    .line 1910
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LGMDMHandler"

    .line 1911
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[DLNADiscoveryPort] iptables -A lgmdm_DLNA_OUTPUT -p udp --dport 1900 -j DROP :: %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1910
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5f

    .line 1916
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_145
    :try_start_145
    const-string/jumbo v3, "-F lgmdm_DLNA_INPUT"

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_14b} :catch_188

    .line 1921
    :goto_14b
    :try_start_14b
    const-string/jumbo v3, "-F lgmdm_DLNA_OUTPUT"

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_151} :catch_1a4

    .line 1926
    :goto_151
    :try_start_151
    const-string/jumbo v3, "-D INPUT -j lgmdm_DLNA_INPUT"

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_157} :catch_1c0

    .line 1933
    :goto_157
    :try_start_157
    const-string/jumbo v3, "-X lgmdm_DLNA_INPUT"

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_15d} :catch_1dd

    .line 1938
    :goto_15d
    :try_start_15d
    const-string/jumbo v3, "-D OUTPUT -j lgmdm_DLNA_OUTPUT"

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_163} :catch_1fa

    .line 1945
    :goto_163
    :try_start_163
    const-string/jumbo v3, "-X lgmdm_DLNA_OUTPUT"

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_169} :catch_16b

    goto/16 :goto_5f

    .line 1946
    :catch_16b
    move-exception v0

    .line 1947
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LGMDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[DLNADiscoveryPort] iptables -X lgmdm_DLNA_OUTPUT :: %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5f

    .line 1917
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_188
    move-exception v0

    .line 1918
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LGMDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[DLNADiscoveryPort] iptables -F lgmdm_DLNA_INPUT :: %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14b

    .line 1922
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1a4
    move-exception v0

    .line 1923
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LGMDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[DLNADiscoveryPort] iptables -F lgmdm_DLNA_OUTPUT :: %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_151

    .line 1927
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1c0
    move-exception v0

    .line 1928
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LGMDMHandler"

    .line 1929
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[DLNADiscoveryPort] iptables -D INPUT -j lgmdm_DLNA_INPUT :: %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1928
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_157

    .line 1934
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1dd
    move-exception v0

    .line 1935
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LGMDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[DLNADiscoveryPort] iptables -X lgmdm_DLNA_INPUT :: %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15d

    .line 1939
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1fa
    move-exception v0

    .line 1940
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LGMDMHandler"

    .line 1941
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[DLNADiscoveryPort] iptables -D OUTPUT -j lgmdm_DLNA_OUTPUT :: %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1940
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_163
.end method

.method private handleCheckRunningBrowsers(I)V
    .registers 25
    .param p1, "userHandle"    # I

    .prologue
    .line 839
    const/4 v7, 0x0

    .line 840
    .local v7, "flag":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 841
    .local v9, "mPm":Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v18, "android.intent.action.VIEW"

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 842
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v18, "http://www.openintents.org"

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 843
    .local v17, "u":Landroid/net/Uri;
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 847
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->isSupportMultiUser()Z

    move-result v18

    if-eqz v18, :cond_4a

    .line 848
    const/high16 v18, 0x10000

    move/from16 v0, v18

    invoke-virtual {v9, v8, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 854
    .local v11, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_2f
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 855
    .local v5, "browserlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string/jumbo v19, "activity"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 856
    .local v3, "am":Landroid/app/ActivityManager;
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 857
    .local v4, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v4, :cond_55

    .line 858
    return-void

    .line 850
    .end local v3    # "am":Landroid/app/ActivityManager;
    .end local v4    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5    # "browserlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4a
    const/high16 v18, 0x10000

    move/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v9, v8, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v11

    .restart local v11    # "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_2f

    .line 860
    .restart local v3    # "am":Landroid/app/ActivityManager;
    .restart local v4    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v5    # "browserlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_55
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_89

    .line 861
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "ri$iterator":Ljava/util/Iterator;
    :goto_5f
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_89

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 862
    .local v14, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_86

    iget-object v6, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 863
    .local v6, "ci":Landroid/content/pm/ComponentInfo;
    :goto_73
    iget-object v0, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 864
    iget-object v0, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 862
    .end local v6    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_86
    iget-object v6, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .restart local v6    # "ci":Landroid/content/pm/ComponentInfo;
    goto :goto_73

    .line 867
    .end local v6    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v14    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v15    # "ri$iterator":Ljava/util/Iterator;
    :cond_89
    const-string/jumbo v18, "LGMDMHandler"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "browserlist : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "rapi$iterator":Ljava/util/Iterator;
    :cond_a9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_ee

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 870
    .local v12, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v16, v0

    .line 871
    .local v16, "runningPackageList":[Ljava/lang/String;
    const/16 v18, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    :goto_c0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_a9

    aget-object v10, v16, v18

    .line 872
    .local v10, "pkgName":Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_eb

    .line 873
    const-string/jumbo v20, "LGMDMHandler"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Coercive close browser : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    const/4 v7, 0x1

    .line 871
    :cond_eb
    add-int/lit8 v18, v18, 0x1

    goto :goto_c0

    .line 878
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v12    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v16    # "runningPackageList":[Ljava/lang/String;
    :cond_ee
    if-eqz v7, :cond_fb

    .line 879
    sget v18, Lcom/lge/internal/R$string;->sp_lgmdm_blockbrowser_NORMAL:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    .line 838
    :cond_fb
    return-void
.end method

.method private declared-synchronized handleCommandListForInternetAccess(Ljava/util/List;I)V
    .registers 6
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 464
    packed-switch p2, :pswitch_data_32

    .line 476
    :pswitch_4
    :try_start_4
    const-string/jumbo v0, "LGMDMHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrong IPTABLES_CMDLIST type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_24

    :goto_1e
    monitor-exit p0

    .line 463
    return-void

    .line 466
    :pswitch_20
    :try_start_20
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMHandler;->iptablesNewFileIO(Ljava/util/List;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_1e

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    .line 469
    :pswitch_27
    :try_start_27
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMHandler;->iptablesNewFileIO(Ljava/util/List;)V

    goto :goto_1e

    .line 472
    :pswitch_2b
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMHandler;->iptablesNewFileReset()V

    .line 473
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMHandler;->iptablesNewFileChainReset(Ljava/util/List;)V
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_24

    goto :goto_1e

    .line 464
    :pswitch_data_32
    .packed-switch 0x16
        :pswitch_20
        :pswitch_27
        :pswitch_4
        :pswitch_2b
    .end packed-switch
.end method

.method private declared-synchronized handleCommandListForInternetAccessBoot()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 460
    :try_start_1
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMHandler;->nmsMdmSetCmdFile()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    .line 459
    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleDisallowGoogleErrorReport(I)V
    .registers 10
    .param p1, "userHandle"    # I

    .prologue
    .line 1832
    const-string/jumbo v5, "LGMDMHandler"

    const-string/jumbo v6, "handleDisallowGoogleErrorReport"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    const-string/jumbo v0, "com.google.android.feedback"

    .line 1835
    .local v0, "FEEDBACK_APP":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1836
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 1837
    .local v2, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v2, :cond_1e

    .line 1838
    return-void

    .line 1841
    :cond_1e
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "rapi$iterator":Ljava/util/Iterator;
    :cond_22
    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1842
    .local v3, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string/jumbo v5, "com.google.android.feedback"

    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1843
    const-string/jumbo v5, "LGMDMHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "process kill pid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " about "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 1845
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_cannot_google_crash_report:I

    invoke-virtual {p0, v5, p1}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    goto :goto_22

    .line 1831
    .end local v3    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_6d
    return-void
.end method

.method private declared-synchronized handleListForInternetAccess(Ljava/util/List;II)V
    .registers 7
    .param p2, "type"    # I
    .param p3, "policy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 440
    packed-switch p2, :pswitch_data_3e

    .line 454
    :try_start_4
    const-string/jumbo v0, "LGMDMHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrong IPTABLESLIST type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_2a

    :goto_1e
    monitor-exit p0

    .line 439
    return-void

    .line 442
    :pswitch_20
    :try_start_20
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMHandler;->nmsMdmInit()V

    .line 443
    invoke-direct {p0, p1, p3}, Lcom/lge/mdm/controller/LGMDMHandler;->iptablesFileIO(Ljava/util/List;I)V

    .line 444
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMHandler;->nmsMdmSetAddFile()V
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_2a

    goto :goto_1e

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 447
    :pswitch_2d
    :try_start_2d
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMHandler;->nmsMdmClear()V

    .line 448
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMHandler;->nmsMdmExit()V

    .line 449
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMHandler;->nmsMdmInit()V

    .line 450
    invoke-direct {p0, p1, p3}, Lcom/lge/mdm/controller/LGMDMHandler;->iptablesFileIO(Ljava/util/List;I)V

    .line 451
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMHandler;->nmsMdmSetAddFile()V
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_2a

    goto :goto_1e

    .line 440
    nop

    :pswitch_data_3e
    .packed-switch 0xf
        :pswitch_20
        :pswitch_2d
    .end packed-switch
.end method

.method private declared-synchronized handleListForInternetAccessBoot()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 428
    :try_start_1
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMHandler;->nmsMdmInit()V

    .line 429
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMHandler;->nmsMdmSetAddFile()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 427
    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleListForInternetAccessReset()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 433
    :try_start_1
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMHandler;->iptablesFileReset()V

    .line 434
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMHandler;->nmsMdmClear()V

    .line 435
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMHandler;->nmsMdmExit()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    .line 432
    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleSetAllowUnsignedApplication(I)V
    .registers 25
    .param p1, "userHandle"    # I

    .prologue
    .line 1015
    const-string/jumbo v18, "LGMDMHandler"

    const-string/jumbo v19, "handleSetAllowUnsignedApplication"

    invoke-static/range {v18 .. v19}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 1018
    .local v14, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string/jumbo v19, "activity"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 1019
    .local v4, "am":Landroid/app/ActivityManager;
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 1020
    .local v5, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 1021
    const-string/jumbo v19, "device_policy"

    .line 1020
    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    .line 1022
    .local v10, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v10}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v8

    .line 1023
    .local v8, "cnList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1024
    .local v9, "componentNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_5a

    .line 1025
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "cn$iterator":Ljava/util/Iterator;
    :goto_44
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 1026
    .local v6, "cn":Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 1029
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v7    # "cn$iterator":Ljava/util/Iterator;
    :cond_5a
    if-eqz v5, :cond_13c

    .line 1030
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "rapi$iterator":Ljava/util/Iterator;
    :cond_60
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_13c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1031
    .local v15, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1032
    .local v17, "runningPackageList":[Ljava/lang/String;
    const/16 v18, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    :goto_77
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_60

    aget-object v13, v17, v18

    .line 1034
    .local v13, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1036
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    const/16 v20, 0x80

    :try_start_82
    move/from16 v0, v20

    invoke-virtual {v14, v13, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_87
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_82 .. :try_end_87} :catch_b3

    move-result-object v3

    .line 1040
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1043
    .local v12, "installerName":Ljava/lang/String;
    if-eqz v3, :cond_b0

    .line 1044
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x1

    if-nez v20, :cond_b0

    .line 1045
    invoke-interface {v9, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b0

    .line 1047
    if-nez v12, :cond_be

    .line 1048
    invoke-static {v3}, Lcom/lge/mdm/util/LGMDMSystemPath;->isSystemPath(Landroid/content/pm/ApplicationInfo;)Z

    move-result v20

    if-eqz v20, :cond_c4

    .line 1032
    :cond_b0
    :goto_b0
    add-int/lit8 v18, v18, 0x1

    goto :goto_77

    .line 1037
    .end local v12    # "installerName":Ljava/lang/String;
    .restart local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_b3
    move-exception v11

    .line 1038
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v20, "LGMDMHandler"

    const-string/jumbo v21, "setAllowUnsignedApplication NameNotFoundException"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 1052
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v12    # "installerName":Ljava/lang/String;
    :cond_be
    invoke-static {v12}, Lcom/lge/mdm/util/SpecificPackageName;->isAllowedInstaller(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_b0

    .line 1057
    :cond_c4
    const-string/jumbo v20, "LGMDMHandler"

    .line 1058
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "[setAllowUnsignedApplication]unsigned process kill pid: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 1059
    iget v0, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v22, v0

    .line 1058
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 1059
    const-string/jumbo v22, " about "

    .line 1058
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 1059
    iget-object v0, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1058
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 1060
    const-string/jumbo v22, ",packageName:"

    .line 1058
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 1060
    const-string/jumbo v22, ",installerName: "

    .line 1058
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1057
    invoke-static/range {v20 .. v21}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    iget v0, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x2

    if-nez v20, :cond_12b

    .line 1063
    invoke-virtual {v4, v13}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1064
    const-string/jumbo v20, "LGMDMHandler"

    const-string/jumbo v21, "[setAllowUnsignedApplication] called forceStopPackage"

    invoke-static/range {v20 .. v21}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    :goto_11f
    sget v20, Lcom/lge/internal/R$string;->sp_block_enable_unsigned_app_NORMAL:I

    .line 1069
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    goto :goto_b0

    .line 1066
    :cond_12b
    iget v0, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/os/Process;->killProcess(I)V

    .line 1067
    const-string/jumbo v20, "LGMDMHandler"

    const-string/jumbo v21, "[setAllowUnsignedApplication] called killProcess"

    invoke-static/range {v20 .. v21}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11f

    .line 1014
    .end local v12    # "installerName":Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v15    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v16    # "rapi$iterator":Ljava/util/Iterator;
    .end local v17    # "runningPackageList":[Ljava/lang/String;
    :cond_13c
    return-void
.end method

.method private handleSetAppVersionState(Ljava/util/List;I)V
    .registers 18
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMAppVersionState;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 967
    .local p1, "appVersionStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMAppVersionState;>;"
    const-string/jumbo v12, "LGMDMHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "handleSetAppVersionState, appVersionStateList:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    if-eqz p1, :cond_125

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_125

    .line 970
    const-string/jumbo v12, "LGMDMHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[appVersionStateList size:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-object v12, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    .line 972
    const-string/jumbo v13, "activity"

    .line 971
    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 973
    .local v1, "am":Landroid/app/ActivityManager;
    iget-object v12, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 974
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 975
    .local v2, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "item$iterator":Ljava/util/Iterator;
    :cond_62
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_125

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mdm/config/LGMDMAppVersionState;

    .line 976
    .local v5, "item":Lcom/lge/mdm/config/LGMDMAppVersionState;
    const-string/jumbo v12, "LGMDMHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[handleSetAppVersionState] add appVersionStateList : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-virtual {v5}, Lcom/lge/mdm/config/LGMDMAppVersionState;->getEnable()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_62

    .line 978
    if-eqz v2, :cond_62

    .line 979
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "rapi$iterator":Ljava/util/Iterator;
    :cond_95
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_62

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 980
    .local v9, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v11, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 981
    .local v11, "runningPackageList":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a4
    array-length v12, v11

    if-ge v4, v12, :cond_95

    .line 982
    invoke-virtual {v5}, Lcom/lge/mdm/config/LGMDMAppVersionState;->getPackageName()Ljava/lang/String;

    move-result-object v12

    aget-object v13, v11, v4

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_111

    .line 983
    new-instance v7, Landroid/content/pm/PackageInfo;

    invoke-direct {v7}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 985
    .local v7, "pi":Landroid/content/pm/PackageInfo;
    :try_start_b8
    aget-object v12, v11, v4

    .line 986
    const/4 v13, 0x1

    .line 985
    invoke-virtual {v8, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_be
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b8 .. :try_end_be} :catch_114

    move-result-object v7

    .line 992
    :goto_bf
    iget-object v12, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v12}, Lcom/lge/mdm/config/LGMDMAppVersionState;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_111

    .line 993
    const-string/jumbo v12, "LGMDMHandler"

    .line 994
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[handleSetAppVersionState] blacklist process kill pid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 995
    iget v14, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 994
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 995
    const-string/jumbo v14, " about "

    .line 994
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 995
    iget-object v14, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 994
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 996
    const-string/jumbo v14, ", version: "

    .line 994
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 996
    iget-object v14, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 994
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 993
    invoke-static {v12, v13}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget v12, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_11f

    .line 998
    invoke-virtual {v5}, Lcom/lge/mdm/config/LGMDMAppVersionState;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1003
    :goto_10a
    sget v12, Lcom/lge/internal/R$string;->sp_lgmdm_block_app_NORMAL:I

    .line 1002
    move/from16 v0, p2

    invoke-virtual {p0, v12, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    .line 981
    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    :cond_111
    add-int/lit8 v4, v4, 0x1

    goto :goto_a4

    .line 987
    .restart local v7    # "pi":Landroid/content/pm/PackageInfo;
    :catch_114
    move-exception v3

    .line 988
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v12, "LGMDMHandler"

    const-string/jumbo v13, "[handleSetAppVersionState] NameNotFoundException"

    invoke-static {v12, v13}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bf

    .line 1000
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_11f
    iget v12, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v12}, Landroid/os/Process;->killProcess(I)V

    goto :goto_10a

    .line 965
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v2    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v4    # "i":I
    .end local v5    # "item":Lcom/lge/mdm/config/LGMDMAppVersionState;
    .end local v6    # "item$iterator":Ljava/util/Iterator;
    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v10    # "rapi$iterator":Ljava/util/Iterator;
    .end local v11    # "runningPackageList":[Ljava/lang/String;
    :cond_125
    return-void
.end method

.method private handleSetApplicationState(Ljava/util/List;I)V
    .registers 16
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMApplicationState;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "applicationStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMApplicationState;>;"
    const/4 v12, 0x1

    .line 913
    const-string/jumbo v9, "LGMDMHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleSetApplicationState, applicationStateList:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    if-eqz p1, :cond_dd

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_dd

    .line 915
    const-string/jumbo v9, "LGMDMHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[applicationStateList size:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    .line 917
    const-string/jumbo v10, "activity"

    .line 916
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 918
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 919
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 920
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v3, 0x0

    .line 921
    .local v3, "isToast":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v3    # "isToast":Z
    .local v5, "item$iterator":Ljava/util/Iterator;
    :goto_62
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/mdm/config/LGMDMApplicationState;

    .line 922
    .local v4, "item":Lcom/lge/mdm/config/LGMDMApplicationState;
    const-string/jumbo v9, "LGMDMHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[setApplicationState] add applicationStateList : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    invoke-virtual {v4}, Lcom/lge/mdm/config/LGMDMApplicationState;->getEnable()I

    move-result v8

    .line 924
    .local v8, "policy":I
    invoke-virtual {v4}, Lcom/lge/mdm/config/LGMDMApplicationState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 925
    .local v6, "itemPkg":Ljava/lang/String;
    packed-switch v8, :pswitch_data_de

    .line 938
    invoke-direct {p0, v7, v6, v12}, Lcom/lge/mdm/controller/LGMDMHandler;->setApplicationEnabledSetting(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    .line 941
    :goto_96
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v9, "com.lge.mdm.intent.action.packge.changed"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 942
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v9, "package"

    invoke-virtual {v4}, Lcom/lge/mdm/config/LGMDMApplicationState;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v2, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_62

    .line 927
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_b0
    invoke-direct {p0, v6, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->stopHideDisablePackage(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    .line 928
    .local v3, "isToast":Z
    invoke-direct {p0, v7, v6, v12}, Lcom/lge/mdm/controller/LGMDMHandler;->setApplicationEnabledSetting(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    goto :goto_96

    .line 931
    .end local v3    # "isToast":Z
    :pswitch_b8
    invoke-direct {p0, v6, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->stopHideDisablePackage(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    .line 932
    .restart local v3    # "isToast":Z
    const/4 v9, 0x2

    invoke-direct {p0, v7, v6, v9}, Lcom/lge/mdm/controller/LGMDMHandler;->setApplicationEnabledSetting(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    .line 933
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v9, "com.lge.mdm.intent.action.package.disabled"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 934
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v9, "package"

    invoke-virtual {v2, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 935
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v2, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_96

    .line 945
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "isToast":Z
    .end local v4    # "item":Lcom/lge/mdm/config/LGMDMApplicationState;
    .end local v6    # "itemPkg":Ljava/lang/String;
    .end local v8    # "policy":I
    :cond_d6
    if-eqz v3, :cond_dd

    .line 946
    sget v9, Lcom/lge/internal/R$string;->sp_lgmdm_block_app_NORMAL:I

    invoke-virtual {p0, v9, p2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    .line 912
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5    # "item$iterator":Ljava/util/Iterator;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_dd
    return-void

    .line 925
    :pswitch_data_de
    .packed-switch 0x2
        :pswitch_b0
        :pswitch_b8
    .end packed-switch
.end method

.method private handleSetSignatureState(Ljava/util/List;I)V
    .registers 26
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMSignatureState;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1366
    .local p1, "signatureStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMSignatureState;>;"
    const-string/jumbo v18, "LGMDMHandler"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "handleSetSignatureState, signatureStateList:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1367
    const-string/jumbo v20, " userHandle:"

    .line 1366
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    if-eqz p1, :cond_155

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_155

    .line 1371
    const-string/jumbo v18, "LGMDMHandler"

    .line 1372
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "[handleSetSignatureState][signatureStateList size:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1373
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v20

    .line 1372
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1373
    const-string/jumbo v20, "]"

    .line 1372
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1370
    invoke-static/range {v18 .. v19}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 1376
    .local v4, "ams":Landroid/app/IActivityManager;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    .line 1377
    .local v10, "mPm":Landroid/content/pm/IPackageManager;
    if-nez v4, :cond_6e

    .line 1378
    const-string/jumbo v18, "LGMDMHandler"

    .line 1379
    const-string/jumbo v19, "[handleSetSignatureState] null check fail : IActivityManager is null "

    .line 1378
    invoke-static/range {v18 .. v19}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    return-void

    .line 1383
    :cond_6e
    if-nez v10, :cond_7a

    .line 1384
    const-string/jumbo v18, "LGMDMHandler"

    .line 1385
    const-string/jumbo v19, "[handleSetSignatureState] null check fail : IPackageManager is null "

    .line 1384
    invoke-static/range {v18 .. v19}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    return-void

    .line 1389
    :cond_7a
    :try_start_7a
    invoke-interface {v4}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v14

    .line 1391
    .local v14, "runningAppList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v14, :cond_81

    .line 1392
    return-void

    .line 1395
    :cond_81
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "item$iterator":Ljava/util/Iterator;
    :cond_85
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_155

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/mdm/config/LGMDMSignatureState;

    .line 1396
    .local v7, "item":Lcom/lge/mdm/config/LGMDMSignatureState;
    const-string/jumbo v18, "LGMDMHandler"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "[handleSetSignatureState] signatureState : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    invoke-virtual {v7}, Lcom/lge/mdm/config/LGMDMSignatureState;->getEnable()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_85

    .line 1398
    invoke-virtual {v7}, Lcom/lge/mdm/config/LGMDMSignatureState;->getPackageName()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_85

    invoke-virtual {v7}, Lcom/lge/mdm/config/LGMDMSignatureState;->getSignature()[Landroid/content/pm/Signature;

    move-result-object v18

    if-eqz v18, :cond_85

    .line 1399
    invoke-virtual {v7}, Lcom/lge/mdm/config/LGMDMSignatureState;->getSignature()[Landroid/content/pm/Signature;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-eqz v18, :cond_85

    .line 1402
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "rapi$iterator":Ljava/util/Iterator;
    :cond_d4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_85

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1403
    .local v12, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v15, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 1404
    .local v15, "runningPackageList":[Ljava/lang/String;
    const/16 v18, 0x0

    array-length v0, v15

    move/from16 v19, v0

    :goto_e7
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_d4

    aget-object v11, v15, v18

    .line 1405
    .local v11, "pkgName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1406
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    const/16 v16, 0x0

    .line 1408
    .local v16, "signature":[Landroid/content/pm/Signature;
    const/16 v20, 0x80

    move/from16 v0, v20

    move/from16 v1, p2

    invoke-interface {v10, v11, v0, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1411
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v3, :cond_10a

    .line 1412
    const-string/jumbo v20, "LGMDMHandler"

    const-string/jumbo v21, "ai is null"

    invoke-static/range {v20 .. v21}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    .end local v16    # "signature":[Landroid/content/pm/Signature;
    :cond_107
    :goto_107
    add-int/lit8 v18, v18, 0x1

    goto :goto_e7

    .line 1416
    .restart local v16    # "signature":[Landroid/content/pm/Signature;
    :cond_10a
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    if-nez v20, :cond_11e

    .line 1417
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x1

    if-nez v20, :cond_107

    .line 1423
    :cond_11e
    const/16 v20, 0x40

    .line 1422
    move/from16 v0, v20

    move/from16 v1, p2

    invoke-interface {v10, v11, v0, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v16, v0

    .line 1425
    .local v16, "signature":[Landroid/content/pm/Signature;
    if-eqz v16, :cond_13d

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_156

    .line 1426
    :cond_13d
    const-string/jumbo v20, "LGMDMHandler"

    const-string/jumbo v21, "signature is null"

    invoke-static/range {v20 .. v21}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_146
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_146} :catch_147

    goto :goto_107

    .line 1454
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "item":Lcom/lge/mdm/config/LGMDMSignatureState;
    .end local v8    # "item$iterator":Ljava/util/Iterator;
    .end local v11    # "pkgName":Ljava/lang/String;
    .end local v12    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v13    # "rapi$iterator":Ljava/util/Iterator;
    .end local v14    # "runningAppList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v15    # "runningPackageList":[Ljava/lang/String;
    .end local v16    # "signature":[Landroid/content/pm/Signature;
    :catch_147
    move-exception v5

    .line 1455
    .local v5, "e":Landroid/os/RemoteException;
    const-string/jumbo v18, "LGMDMHandler"

    const-string/jumbo v19, "[handleSetSignatureState] RemoteException"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1364
    .end local v4    # "ams":Landroid/app/IActivityManager;
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v10    # "mPm":Landroid/content/pm/IPackageManager;
    :cond_155
    return-void

    .line 1429
    .restart local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "ams":Landroid/app/IActivityManager;
    .restart local v7    # "item":Lcom/lge/mdm/config/LGMDMSignatureState;
    .restart local v8    # "item$iterator":Ljava/util/Iterator;
    .restart local v10    # "mPm":Landroid/content/pm/IPackageManager;
    .restart local v11    # "pkgName":Ljava/lang/String;
    .restart local v12    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v13    # "rapi$iterator":Ljava/util/Iterator;
    .restart local v14    # "runningAppList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v15    # "runningPackageList":[Ljava/lang/String;
    .restart local v16    # "signature":[Landroid/content/pm/Signature;
    :cond_156
    const/16 v17, 0x0

    .line 1430
    .local v17, "value":Z
    :try_start_158
    invoke-virtual {v7}, Lcom/lge/mdm/config/LGMDMSignatureState;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_19a

    .line 1431
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_165
    invoke-virtual {v7}, Lcom/lge/mdm/config/LGMDMSignatureState;->getSignature()[Landroid/content/pm/Signature;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_19a

    .line 1432
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_173
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_197

    .line 1433
    invoke-virtual {v7}, Lcom/lge/mdm/config/LGMDMSignatureState;->getSignature()[Landroid/content/pm/Signature;

    move-result-object v20

    aget-object v20, v20, v6

    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v20

    .line 1434
    aget-object v21, v16, v9

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v21

    .line 1433
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_194

    .line 1435
    const/16 v17, 0x1

    .line 1432
    :cond_194
    add-int/lit8 v9, v9, 0x1

    goto :goto_173

    .line 1431
    :cond_197
    add-int/lit8 v6, v6, 0x1

    goto :goto_165

    .line 1440
    .end local v6    # "i":I
    .end local v9    # "j":I
    :cond_19a
    if-eqz v17, :cond_107

    .line 1444
    const-string/jumbo v20, "LGMDMHandler"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "[handleSetSignatureState] kill application pkg:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    move/from16 v0, p2

    invoke-interface {v4, v11, v0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 1448
    sget v20, Lcom/lge/internal/R$string;->sp_lgmdm_block_app_NORMAL:I

    .line 1447
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V
    :try_end_1c8
    .catch Landroid/os/RemoteException; {:try_start_158 .. :try_end_1c8} :catch_147

    goto/16 :goto_107
.end method

.method private handleforceStopPackage(Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;)V
    .registers 35
    .param p1, "stopType"    # Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;

    .prologue
    .line 1080
    const-string/jumbo v28, "LGMDMHandler"

    const-string/jumbo v29, "handleforceStopPackage"

    invoke-static/range {v28 .. v29}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->whitelist:Ljava/util/List;

    move-object/from16 v26, v0

    .line 1083
    .local v26, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->blacklist:Ljava/util/List;

    .line 1084
    .local v7, "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1085
    .local v16, "packageName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->feature:Ljava/lang/String;

    .line 1086
    .local v9, "feature":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->pid:I

    move/from16 v17, v0

    .line 1087
    .local v17, "pid":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->userHandle:I

    move/from16 v23, v0

    .line 1089
    .local v23, "userHandle":I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    .line 1090
    .local v6, "ams":Landroid/app/IActivityManager;
    if-nez v6, :cond_39

    .line 1091
    const-string/jumbo v28, "LGMDMHandler"

    const-string/jumbo v29, "handleforceStopPackage : null check fail : IActivityManager is null "

    invoke-static/range {v28 .. v29}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    return-void

    .line 1095
    :cond_39
    if-eqz v16, :cond_3a0

    .line 1097
    if-eqz v26, :cond_6c

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v28

    if-eqz v28, :cond_6c

    .line 1098
    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_6c

    .line 1099
    const-string/jumbo v28, "LGMDMHandler"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "handleforceStopPackage : retrun by whitelist : packageName = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    return-void

    .line 1105
    :cond_6c
    if-eqz v7, :cond_9b

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v28

    if-eqz v28, :cond_9b

    .line 1106
    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_9b

    .line 1107
    const-string/jumbo v28, "LGMDMHandler"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "handleforceStopPackage : retrun by blacklist : packageName = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    return-void

    .line 1113
    :cond_9b
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->isCurrentRunning(Ljava/lang/String;)Z

    move-result v12

    .line 1114
    .local v12, "isCurentRuuningApp":Z
    if-eqz v12, :cond_b0

    const-string/jumbo v28, "specificApp"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_ec

    .line 1132
    :cond_b0
    const-string/jumbo v28, "LGMDMHandler"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "[handleforceStopPackage]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " is not running"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    :goto_d5
    const-string/jumbo v28, "camera"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_159

    .line 1136
    sget v28, Lcom/lge/internal/R$string;->sp_lgmdm_block_camera_NORMAL:I

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    .line 1252
    :cond_eb
    :goto_eb
    return-void

    .line 1115
    :cond_ec
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1117
    .local v10, "identity":J
    :try_start_f0
    const-string/jumbo v28, "LGMDMHandler"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "handleforceStopPackage forceStopPackage : packageName="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    const-string/jumbo v28, "com.lge.smartshare"

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_128

    .line 1120
    const-string/jumbo v28, "com.lge.smartshare.dlna"

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    .line 1119
    if-eqz v28, :cond_137

    .line 1122
    :cond_128
    sget v28, Lcom/lge/internal/R$string;->sp_lgmdm_block_dlna_point:I

    const-wide/16 v30, 0x1f4

    .line 1121
    move-object/from16 v0, p0

    move/from16 v1, v28

    move-wide/from16 v2, v30

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessageRemoveAndDelayed(IJI)V

    .line 1125
    :cond_137
    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-interface {v6, v0, v1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_13e
    .catch Landroid/os/RemoteException; {:try_start_f0 .. :try_end_13e} :catch_142
    .catchall {:try_start_f0 .. :try_end_13e} :catchall_154

    .line 1129
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d5

    .line 1126
    :catch_142
    move-exception v8

    .line 1127
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_143
    const-string/jumbo v28, "LGMDMHandler"

    const-string/jumbo v29, "Failed talking with LGMDM controller"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_150
    .catchall {:try_start_143 .. :try_end_150} :catchall_154

    .line 1129
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d5

    .line 1128
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_154
    move-exception v28

    .line 1129
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1128
    throw v28

    .line 1137
    .end local v10    # "identity":J
    :cond_159
    const-string/jumbo v28, "specificApp"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_360

    .line 1138
    const/4 v14, 0x0

    .line 1139
    .local v14, "marketToastFlag":Z
    const/16 v27, 0x0

    .line 1140
    .local v27, "youtubeToastFlag":Z
    const/16 v25, 0x0

    .line 1142
    .local v25, "voicedialerToastFlag":Z
    const/16 v22, 0x0

    .line 1143
    .local v22, "taskmanagerToastFlag":Z
    const/4 v13, 0x0

    .line 1144
    .local v13, "lgbackupToastFlag":Z
    const/16 v24, 0x0

    .line 1146
    .local v24, "voiceAppToastFlag":Z
    const-string/jumbo v28, "\\|"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1147
    .local v15, "packageArray":[Ljava/lang/String;
    if-eqz v15, :cond_180

    array-length v0, v15

    move/from16 v28, v0

    if-nez v28, :cond_181

    .line 1148
    :cond_180
    return-void

    .line 1151
    :cond_181
    const/16 v28, 0x0

    array-length v0, v15

    move/from16 v29, v0

    :goto_186
    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_306

    aget-object v19, v15, v28

    .line 1152
    .local v19, "pkgname":Ljava/lang/String;
    const-string/jumbo v30, "LGMDMHandler"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "specificApp="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " , "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->isCurrentRunning(Ljava/lang/String;)Z

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->isCurrentRunning(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_1cc

    .line 1151
    :cond_1c9
    :goto_1c9
    add-int/lit8 v28, v28, 0x1

    goto :goto_186

    .line 1158
    :cond_1cc
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1160
    .restart local v10    # "identity":J
    :try_start_1d0
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->checkPersistentAppInfo(Ljava/lang/String;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v20

    .line 1161
    .local v20, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string/jumbo v30, "LGMDMHandler"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "specificApp forcestop="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " , "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 1162
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->isCurrentRunning(Ljava/lang/String;)Z

    move-result v32

    .line 1161
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 1162
    const-string/jumbo v32, " , "

    .line 1161
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    sget-object v30, Lcom/lge/mdm/util/SpecificPackageName;->SPECIFICPACKAGENAMES:[Ljava/lang/String;

    sget-object v31, Lcom/lge/mdm/LGMDMManager$ApplicationType;->SETTING:Lcom/lge/mdm/LGMDMManager$ApplicationType;

    invoke-virtual/range {v31 .. v31}, Lcom/lge/mdm/LGMDMManager$ApplicationType;->ordinal()I

    move-result v31

    aget-object v30, v30, v31

    .line 1163
    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lge/mdm/util/SpecificPackageName;->isMatchSpecificApplication(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_264

    .line 1173
    const-string/jumbo v30, "LGMDMHandler"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "specificApp settings is doing nothing="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24a
    .catch Landroid/os/RemoteException; {:try_start_1d0 .. :try_end_24a} :catch_26e
    .catchall {:try_start_1d0 .. :try_end_24a} :catchall_28a

    .line 1184
    :goto_24a
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1190
    .end local v20    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_24d
    sget-object v30, Lcom/lge/mdm/util/SpecificPackageName;->SPECIFICPACKAGENAMES:[Ljava/lang/String;

    sget-object v31, Lcom/lge/mdm/LGMDMManager$ApplicationType;->ANDROIDMARKET:Lcom/lge/mdm/LGMDMManager$ApplicationType;

    invoke-virtual/range {v31 .. v31}, Lcom/lge/mdm/LGMDMManager$ApplicationType;->ordinal()I

    move-result v31

    aget-object v30, v30, v31

    .line 1188
    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lge/mdm/util/SpecificPackageName;->isMatchSpecificApplication(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_28f

    .line 1192
    const/4 v14, 0x1

    goto/16 :goto_1c9

    .line 1175
    .restart local v20    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_264
    if-nez v20, :cond_280

    .line 1176
    :try_start_266
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v6, v0, v1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_26d
    .catch Landroid/os/RemoteException; {:try_start_266 .. :try_end_26d} :catch_26e
    .catchall {:try_start_266 .. :try_end_26d} :catchall_28a

    goto :goto_24a

    .line 1181
    .end local v20    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_26e
    move-exception v8

    .line 1182
    .restart local v8    # "e":Landroid/os/RemoteException;
    :try_start_26f
    const-string/jumbo v30, "LGMDMHandler"

    const-string/jumbo v31, "Failed talking with LGMDM controller"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27c
    .catchall {:try_start_26f .. :try_end_27c} :catchall_28a

    .line 1184
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_24d

    .line 1178
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v20    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_280
    :try_start_280
    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/os/Process;->killProcess(I)V
    :try_end_289
    .catch Landroid/os/RemoteException; {:try_start_280 .. :try_end_289} :catch_26e
    .catchall {:try_start_280 .. :try_end_289} :catchall_28a

    goto :goto_24a

    .line 1183
    .end local v20    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catchall_28a
    move-exception v28

    .line 1184
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1183
    throw v28

    .line 1195
    :cond_28f
    sget-object v30, Lcom/lge/mdm/util/SpecificPackageName;->SPECIFICPACKAGENAMES:[Ljava/lang/String;

    sget-object v31, Lcom/lge/mdm/LGMDMManager$ApplicationType;->YOUTUBE:Lcom/lge/mdm/LGMDMManager$ApplicationType;

    invoke-virtual/range {v31 .. v31}, Lcom/lge/mdm/LGMDMManager$ApplicationType;->ordinal()I

    move-result v31

    aget-object v30, v30, v31

    .line 1193
    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lge/mdm/util/SpecificPackageName;->isMatchSpecificApplication(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_2a7

    .line 1197
    const/16 v27, 0x1

    goto/16 :goto_1c9

    .line 1200
    :cond_2a7
    sget-object v30, Lcom/lge/mdm/util/SpecificPackageName;->SPECIFICPACKAGENAMES:[Ljava/lang/String;

    sget-object v31, Lcom/lge/mdm/LGMDMManager$ApplicationType;->VOICEDIALER:Lcom/lge/mdm/LGMDMManager$ApplicationType;

    invoke-virtual/range {v31 .. v31}, Lcom/lge/mdm/LGMDMManager$ApplicationType;->ordinal()I

    move-result v31

    aget-object v30, v30, v31

    .line 1198
    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lge/mdm/util/SpecificPackageName;->isMatchSpecificApplication(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_2bf

    .line 1202
    const/16 v25, 0x1

    goto/16 :goto_1c9

    .line 1205
    :cond_2bf
    sget-object v30, Lcom/lge/mdm/util/SpecificPackageName;->SPECIFICPACKAGENAMES:[Ljava/lang/String;

    sget-object v31, Lcom/lge/mdm/LGMDMManager$ApplicationType;->TASKMANAGER:Lcom/lge/mdm/LGMDMManager$ApplicationType;

    invoke-virtual/range {v31 .. v31}, Lcom/lge/mdm/LGMDMManager$ApplicationType;->ordinal()I

    move-result v31

    aget-object v30, v30, v31

    .line 1203
    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lge/mdm/util/SpecificPackageName;->isMatchSpecificApplication(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_2d7

    .line 1207
    const/16 v22, 0x1

    goto/16 :goto_1c9

    .line 1210
    :cond_2d7
    sget-object v30, Lcom/lge/mdm/util/SpecificPackageName;->SPECIFICPACKAGENAMES:[Ljava/lang/String;

    sget-object v31, Lcom/lge/mdm/LGMDMManager$ApplicationType;->LGBACKUP:Lcom/lge/mdm/LGMDMManager$ApplicationType;

    invoke-virtual/range {v31 .. v31}, Lcom/lge/mdm/LGMDMManager$ApplicationType;->ordinal()I

    move-result v31

    aget-object v30, v30, v31

    .line 1208
    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lge/mdm/util/SpecificPackageName;->isMatchSpecificApplication(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_2ee

    .line 1212
    const/4 v13, 0x1

    goto/16 :goto_1c9

    .line 1215
    :cond_2ee
    sget-object v30, Lcom/lge/mdm/util/SpecificPackageName;->SPECIFICPACKAGENAMES:[Ljava/lang/String;

    sget-object v31, Lcom/lge/mdm/LGMDMManager$ApplicationType;->VOICEAPPS:Lcom/lge/mdm/LGMDMManager$ApplicationType;

    invoke-virtual/range {v31 .. v31}, Lcom/lge/mdm/LGMDMManager$ApplicationType;->ordinal()I

    move-result v31

    aget-object v30, v30, v31

    .line 1213
    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lge/mdm/util/SpecificPackageName;->isMatchSpecificApplication(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_1c9

    .line 1217
    const/16 v24, 0x1

    goto/16 :goto_1c9

    .line 1221
    .end local v10    # "identity":J
    .end local v19    # "pkgname":Ljava/lang/String;
    :cond_306
    if-eqz v14, :cond_315

    .line 1222
    sget v28, Lcom/lge/internal/R$string;->sp_lgmdm_block_playstore_NORMAL:I

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    goto/16 :goto_eb

    .line 1224
    :cond_315
    if-eqz v27, :cond_324

    .line 1225
    sget v28, Lcom/lge/internal/R$string;->sp_lgmdm_block_youtube_NORMAL:I

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    goto/16 :goto_eb

    .line 1227
    :cond_324
    if-eqz v25, :cond_333

    .line 1228
    sget v28, Lcom/lge/internal/R$string;->sp_lgmdm_block_voice_dialer_NORMAL:I

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    goto/16 :goto_eb

    .line 1233
    :cond_333
    if-eqz v22, :cond_342

    .line 1234
    sget v28, Lcom/lge/internal/R$string;->sp_lgmdm_block_task_manager_NORMAL:I

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    goto/16 :goto_eb

    .line 1236
    :cond_342
    if-eqz v13, :cond_351

    .line 1237
    sget v28, Lcom/lge/internal/R$string;->sp_lgmdm_block_lgbackup_NORMAL:I

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    goto/16 :goto_eb

    .line 1239
    :cond_351
    if-eqz v24, :cond_eb

    .line 1240
    sget v28, Lcom/lge/internal/R$string;->sp_lgmdm_block_voice_apps_NORMAL:I

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    goto/16 :goto_eb

    .line 1243
    .end local v13    # "lgbackupToastFlag":Z
    .end local v14    # "marketToastFlag":Z
    .end local v15    # "packageArray":[Ljava/lang/String;
    .end local v22    # "taskmanagerToastFlag":Z
    .end local v24    # "voiceAppToastFlag":Z
    .end local v25    # "voicedialerToastFlag":Z
    .end local v27    # "youtubeToastFlag":Z
    :cond_360
    const-string/jumbo v28, "stopapplication"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_eb

    .line 1244
    if-nez v12, :cond_393

    .line 1245
    const-string/jumbo v28, "LGMDMHandler"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "[handleforceStopPackage]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " is not running"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    return-void

    .line 1249
    :cond_393
    sget v28, Lcom/lge/internal/R$string;->sp_lgmdm_stop_application_NORMAL:I

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    goto/16 :goto_eb

    .line 1255
    .end local v12    # "isCurentRuuningApp":Z
    :cond_3a0
    if-lez v17, :cond_480

    .line 1257
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->getRunningPackagesFormPid(I)[Ljava/lang/String;

    move-result-object v21

    .line 1258
    .local v21, "runningPackages":[Ljava/lang/String;
    if-nez v21, :cond_3b6

    .line 1259
    const-string/jumbo v28, "LGMDMHandler"

    const-string/jumbo v29, "handleforceStopPackage : null check fail : runningPackages is null "

    invoke-static/range {v28 .. v29}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    return-void

    .line 1264
    :cond_3b6
    if-eqz v26, :cond_3f9

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v28

    if-eqz v28, :cond_3f9

    .line 1265
    const/16 v28, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v29, v0

    :goto_3c5
    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_3f9

    aget-object v18, v21, v28

    .line 1266
    .local v18, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_3f6

    .line 1267
    const-string/jumbo v28, "LGMDMHandler"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "handleforceStopPackage : retrun by whitelist : pkgName = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    return-void

    .line 1265
    :cond_3f6
    add-int/lit8 v28, v28, 0x1

    goto :goto_3c5

    .line 1275
    .end local v18    # "pkgName":Ljava/lang/String;
    :cond_3f9
    if-eqz v7, :cond_43a

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v28

    if-eqz v28, :cond_43a

    .line 1276
    const/16 v28, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v29, v0

    :goto_408
    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_43a

    aget-object v18, v21, v28

    .line 1277
    .restart local v18    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_437

    .line 1278
    const-string/jumbo v28, "LGMDMHandler"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "handleforceStopPackage : retrun by blacklist : pkgName = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    return-void

    .line 1276
    :cond_437
    add-int/lit8 v28, v28, 0x1

    goto :goto_408

    .line 1285
    .end local v18    # "pkgName":Ljava/lang/String;
    :cond_43a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1287
    .restart local v10    # "identity":J
    :try_start_43e
    const-string/jumbo v28, "LGMDMHandler"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "handleforceStopPackage forceStopPackage : packageNames="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 1288
    const/16 v30, 0x0

    aget-object v30, v21, v30

    .line 1287
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    const/16 v28, 0x0

    aget-object v28, v21, v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-interface {v6, v0, v1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_467
    .catch Landroid/os/RemoteException; {:try_start_43e .. :try_end_467} :catch_48a
    .catchall {:try_start_43e .. :try_end_467} :catchall_49c

    .line 1293
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1295
    :goto_46a
    const-string/jumbo v28, "camera"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_480

    .line 1296
    sget v28, Lcom/lge/internal/R$string;->sp_lgmdm_block_camera_NORMAL:I

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    .line 1300
    .end local v10    # "identity":J
    .end local v21    # "runningPackages":[Ljava/lang/String;
    :cond_480
    const-string/jumbo v28, "LGMDMHandler"

    const-string/jumbo v29, "handleforceStopPackage : fail : do noting"

    invoke-static/range {v28 .. v29}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    return-void

    .line 1290
    .restart local v10    # "identity":J
    .restart local v21    # "runningPackages":[Ljava/lang/String;
    :catch_48a
    move-exception v8

    .line 1291
    .restart local v8    # "e":Landroid/os/RemoteException;
    :try_start_48b
    const-string/jumbo v28, "LGMDMHandler"

    const-string/jumbo v29, "Failed talking with LGMDM controller"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_498
    .catchall {:try_start_48b .. :try_end_498} :catchall_49c

    .line 1293
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_46a

    .line 1292
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_49c
    move-exception v28

    .line 1293
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1292
    throw v28
.end method

.method private handlesetMessageApp(Ljava/lang/String;I)V
    .registers 15
    .param p1, "messagePackageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 809
    const-string/jumbo v7, "LGMDMHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handlesetMessageApp messagePackageName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    if-nez p1, :cond_1d

    .line 812
    return-void

    .line 815
    :cond_1d
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 816
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 817
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v1, :cond_2f

    .line 818
    return-void

    .line 821
    :cond_2f
    const/4 v2, 0x0

    .line 822
    .local v2, "flag":Z
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "rapi$iterator":Ljava/util/Iterator;
    :cond_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 823
    .local v4, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 824
    .local v6, "runningPackageList":[Ljava/lang/String;
    const/4 v7, 0x0

    array-length v8, v6

    :goto_44
    if-ge v7, v8, :cond_34

    aget-object v3, v6, v7

    .line 825
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 826
    const-string/jumbo v9, "LGMDMHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handlesetMessageApp forceStopPackage:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 828
    const/4 v2, 0x1

    .line 824
    :cond_6c
    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    .line 833
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v6    # "runningPackageList":[Ljava/lang/String;
    :cond_6f
    if-eqz v2, :cond_76

    .line 834
    sget v7, Lcom/lge/internal/R$string;->sp_lgmdm_block_smsmms_NORMAL:I

    invoke-virtual {p0, v7, p2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    .line 808
    :cond_76
    return-void
.end method

.method public static init(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 124
    sget-object v0, Lcom/lge/mdm/controller/LGMDMHandler;->mInstance:Lcom/lge/mdm/controller/LGMDMHandler;

    if-nez v0, :cond_b

    .line 125
    new-instance v0, Lcom/lge/mdm/controller/LGMDMHandler;

    invoke-direct {v0, p0, p1}, Lcom/lge/mdm/controller/LGMDMHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMHandler;->mInstance:Lcom/lge/mdm/controller/LGMDMHandler;

    .line 123
    :cond_b
    return-void
.end method

.method private iptablesFileIO(Ljava/util/List;I)V
    .registers 27
    .param p2, "policy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 483
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v18, 0x0

    .line 484
    .local v18, "st":J
    const-wide/16 v10, 0x0

    .line 485
    .local v10, "et":J
    const-string/jumbo v4, ""

    .line 486
    .local v4, "cmdJump":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 487
    .local v2, "cmdChain_wlistInput":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 488
    .local v5, "cmdRun":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 489
    .local v3, "cmdDestination":Ljava/lang/String;
    const/16 v17, 0x0

    .line 490
    .local v17, "optionArray":[Ljava/lang/String;
    const/16 v16, 0x0

    .line 492
    .local v16, "iptableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v16, p1

    .line 493
    .local v16, "iptableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-lez p2, :cond_1b

    if-nez v16, :cond_1b

    .line 494
    return-void

    .line 496
    :cond_1b
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v6

    .line 497
    .local v6, "count_size":I
    new-instance v7, Ljava/io/File;

    const-string/jumbo v20, "/data/system/lgmdm"

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    .local v7, "dir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_54

    .line 499
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 500
    invoke-static {v7}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v20

    if-nez v20, :cond_54

    .line 501
    const-string/jumbo v20, "LGMDMHandler"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "iptablesFileIO SELinux restorecon failed for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_54
    new-instance v12, Ljava/io/File;

    const-string/jumbo v20, "lgmdm_iptables_list.txt"

    move-object/from16 v0, v20

    invoke-direct {v12, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 505
    .local v12, "file":Ljava/io/File;
    const-string/jumbo v20, "LGMDMHandler"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "list_size : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 507
    const/4 v13, 0x0

    .line 509
    .local v13, "fos":Ljava/io/FileOutputStream;
    :try_start_7f
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_84} :catch_325

    .line 511
    .local v14, "fos":Ljava/io/FileOutputStream;
    packed-switch p2, :pswitch_data_328

    .line 527
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    :goto_87
    :pswitch_87
    const/4 v15, 0x0

    .end local v17    # "optionArray":[Ljava/lang/String;
    .local v15, "i":I
    :goto_88
    if-ge v15, v6, :cond_2d6

    .line 528
    :try_start_8a
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    const-string/jumbo v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 530
    .local v17, "optionArray":[Ljava/lang/String;
    const/16 v20, 0x0

    aget-object v20, v17, v20

    const-string/jumbo v21, "*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_129

    .line 531
    const-string/jumbo v3, "0/0"

    .line 536
    :goto_a9
    const/16 v20, 0x1

    aget-object v20, v17, v20

    const-string/jumbo v21, "*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_12f

    .line 537
    const/16 v20, 0x2

    aget-object v20, v17, v20

    const-string/jumbo v21, "input"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_d0

    .line 538
    const/16 v20, 0x2

    aget-object v20, v17, v20

    const-string/jumbo v21, "*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    .line 537
    if-eqz v20, :cond_118

    .line 539
    :cond_d0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "-I in_mdm_box -s "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 540
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 541
    const-string/jumbo v20, "LGMDMHandler"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "[File] list : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 527
    :cond_118
    :goto_118
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_88

    .line 515
    .end local v15    # "i":I
    .local v17, "optionArray":[Ljava/lang/String;
    :pswitch_11c
    const-string/jumbo v4, " -j DROP"

    goto/16 :goto_87

    .line 518
    :pswitch_121
    const-string/jumbo v2, "-A in_mdm_box -s 0/0 -j DROP"

    .line 521
    const-string/jumbo v4, " -j ACCEPT"

    goto/16 :goto_87

    .line 533
    .restart local v15    # "i":I
    .local v17, "optionArray":[Ljava/lang/String;
    :cond_129
    const/16 v20, 0x0

    aget-object v3, v17, v20

    goto/16 :goto_a9

    .line 552
    :cond_12f
    const/16 v20, 0x2

    aget-object v20, v17, v20

    const-string/jumbo v21, "input"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_149

    .line 553
    const/16 v20, 0x2

    aget-object v20, v17, v20

    const-string/jumbo v21, "*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    .line 552
    if-eqz v20, :cond_1f7

    .line 554
    :cond_149
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "-I in_mdm_box -p tcp -s "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 555
    const-string/jumbo v21, " --sport "

    .line 554
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 555
    const/16 v21, 0x1

    aget-object v21, v17, v21

    .line 554
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 556
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 557
    const-string/jumbo v20, "LGMDMHandler"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "[File] list : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 560
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "-I in_mdm_box -p udp -s "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 561
    const-string/jumbo v21, " --sport "

    .line 560
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 561
    const/16 v21, 0x1

    aget-object v21, v17, v21

    .line 560
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 562
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 563
    const-string/jumbo v20, "LGMDMHandler"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "[File] list : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 566
    :cond_1f7
    const/16 v20, 0x2

    aget-object v20, v17, v20

    const-string/jumbo v21, "output"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_211

    .line 567
    const/16 v20, 0x2

    aget-object v20, v17, v20

    const-string/jumbo v21, "*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    .line 566
    if-eqz v20, :cond_118

    .line 568
    :cond_211
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "-I in_mdm_box -p tcp -s "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 569
    const-string/jumbo v21, " --sport "

    .line 568
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 569
    const/16 v21, 0x1

    aget-object v21, v17, v21

    .line 568
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 570
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 571
    const-string/jumbo v20, "LGMDMHandler"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "[File] list : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 574
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "-I in_mdm_box -p udp -s "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 575
    const-string/jumbo v21, " --sport "

    .line 574
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 575
    const/16 v21, 0x1

    aget-object v21, v17, v21

    .line 574
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 576
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 577
    const-string/jumbo v20, "LGMDMHandler"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "[File] list : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_2bf
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_2bf} :catch_2c1

    goto/16 :goto_118

    .line 593
    .end local v15    # "i":I
    .end local v17    # "optionArray":[Ljava/lang/String;
    :catch_2c1
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    move-object v13, v14

    .line 594
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    :goto_2c3
    const-string/jumbo v20, "LGMDMHandler"

    const-string/jumbo v21, "Failed writing iptables"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 595
    if-eqz v13, :cond_2d5

    .line 597
    :try_start_2d2
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d5
    .catch Ljava/io/IOException; {:try_start_2d2 .. :try_end_2d5} :catch_323

    .line 482
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2d5
    :goto_2d5
    return-void

    .line 583
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "i":I
    :cond_2d6
    const/16 v20, 0x2

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_2ee

    .line 584
    :try_start_2de
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 585
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 589
    :cond_2ee
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 590
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 591
    const-string/jumbo v20, "LGMDMHandler"

    const-string/jumbo v21, "============= file writing is done ============="

    invoke-static/range {v20 .. v21}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string/jumbo v20, "LGMDMHandler"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "[File I/O] Execute Time : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-long v22, v10, v18

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " ms"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_321
    .catch Ljava/lang/Exception; {:try_start_2de .. :try_end_321} :catch_2c1

    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .local v13, "fos":Ljava/io/FileOutputStream;
    goto :goto_2d5

    .line 598
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v15    # "i":I
    .restart local v8    # "e":Ljava/lang/Exception;
    :catch_323
    move-exception v9

    .local v9, "ex":Ljava/io/IOException;
    goto :goto_2d5

    .line 593
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "ex":Ljava/io/IOException;
    .local v13, "fos":Ljava/io/FileOutputStream;
    .local v17, "optionArray":[Ljava/lang/String;
    :catch_325
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    goto :goto_2c3

    .line 511
    nop

    :pswitch_data_328
    .packed-switch 0x0
        :pswitch_87
        :pswitch_11c
        :pswitch_121
    .end packed-switch
.end method

.method private iptablesFileReset()V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 652
    new-instance v1, Ljava/io/File;

    const-string/jumbo v7, "/data/system/lgmdm"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 653
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_32

    .line 654
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 655
    invoke-static {v1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_32

    .line 656
    const-string/jumbo v7, "LGMDMHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "iptablesFileReset SELinux restorecon failed for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    :cond_32
    new-instance v4, Ljava/io/File;

    const-string/jumbo v7, "lgmdm_iptables_list.txt"

    invoke-direct {v4, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 660
    .local v4, "file":Ljava/io/File;
    new-array v0, v10, [B

    .line 661
    .local v0, "buff":[B
    const/4 v5, 0x0

    .line 663
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_3d
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_42} :catch_55

    .line 665
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_44
    invoke-virtual {v6, v0, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 666
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 667
    const-string/jumbo v7, "LGMDMHandler"

    const-string/jumbo v8, "============= file reset ============="

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_53} :catch_67

    move-object v5, v6

    .line 651
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_54
    :goto_54
    return-void

    .line 668
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_55
    move-exception v2

    .line 669
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/lang/Exception;
    :goto_56
    const-string/jumbo v7, "LGMDMHandler"

    const-string/jumbo v8, "Failed reseting iptables"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    if-eqz v5, :cond_54

    .line 672
    :try_start_61
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_54

    .line 673
    :catch_65
    move-exception v3

    .local v3, "ex":Ljava/io/IOException;
    goto :goto_54

    .line 668
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_67
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    goto :goto_56
.end method

.method private iptablesNewFileChainReset(Ljava/util/List;)V
    .registers 23
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
    .line 681
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, ""

    .line 682
    .local v3, "cmdRun":Ljava/lang/String;
    const-string/jumbo v14, ""

    .line 683
    .local v14, "listStr":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 684
    .local v2, "chainType":Ljava/lang/String;
    const-string/jumbo v17, ""

    .line 685
    .local v17, "tempStr":Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 686
    .local v15, "nameArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 688
    .local v12, "index":I
    if-eqz p1, :cond_1a

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v18

    if-nez v18, :cond_1b

    .line 689
    :cond_1a
    return-void

    .line 691
    :cond_1b
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    .line 692
    .local v4, "count_size":I
    new-instance v5, Ljava/io/File;

    const-string/jumbo v18, "/data/system/lgmdm"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 693
    .local v5, "dir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_54

    .line 694
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 695
    invoke-static {v5}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v18

    if-nez v18, :cond_54

    .line 696
    const-string/jumbo v18, "LGMDMHandler"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "iptablesNewFileChainReset SELinux restorecon failed for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    :cond_54
    new-instance v8, Ljava/io/File;

    const-string/jumbo v18, "lgmdm_iptables_cmd_resetlist.txt"

    move-object/from16 v0, v18

    invoke-direct {v8, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 700
    .local v8, "file":Ljava/io/File;
    const-string/jumbo v18, "LGMDMHandler"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "list_size : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const/4 v9, 0x0

    .line 703
    .local v9, "fos":Ljava/io/FileOutputStream;
    :try_start_7b
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_80} :catch_1f9

    .line 704
    .local v10, "fos":Ljava/io/FileOutputStream;
    const/4 v11, 0x0

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v11, "i":I
    :goto_81
    if-ge v11, v4, :cond_1e8

    .line 705
    :try_start_83
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 706
    const-string/jumbo v18, "-N "

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 707
    if-ltz v12, :cond_a9

    .line 708
    add-int/lit8 v18, v12, 0x3

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 709
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_a6
    add-int/lit8 v11, v11, 0x1

    goto :goto_81

    .line 712
    :cond_a9
    const-string/jumbo v18, "-I "

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 713
    if-ltz v12, :cond_a6

    .line 714
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 715
    .local v16, "name_size":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_b9
    move/from16 v0, v16

    if-ge v13, v0, :cond_a6

    .line 716
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 717
    if-ltz v12, :cond_1c4

    .line 718
    const-string/jumbo v18, "INPUT"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-ltz v18, :cond_1c8

    .line 719
    const-string/jumbo v2, "INPUT"

    .line 725
    :cond_d9
    :goto_d9
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "-F "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 726
    const-string/jumbo v18, "LGMDMHandler"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Chain reset -F : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 728
    const/16 v18, 0xa

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 730
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "-D "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " -j "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 731
    const-string/jumbo v18, "LGMDMHandler"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Chain reset -D : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 733
    const/16 v18, 0xa

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 735
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "-X "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 736
    const-string/jumbo v18, "LGMDMHandler"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Chain reset -X : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 738
    const/16 v18, 0xa

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 715
    :cond_1c4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_b9

    .line 720
    :cond_1c8
    const-string/jumbo v18, "OUTPUT"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-ltz v18, :cond_1d8

    .line 721
    const-string/jumbo v2, "OUTPUT"

    goto/16 :goto_d9

    .line 722
    :cond_1d8
    const-string/jumbo v18, "FORWARD"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-ltz v18, :cond_d9

    .line 723
    const-string/jumbo v2, "FORWARD"

    goto/16 :goto_d9

    .line 743
    .end local v13    # "j":I
    .end local v16    # "name_size":I
    :cond_1e8
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 744
    const-string/jumbo v18, "LGMDMHandler"

    const-string/jumbo v19, "============= file writing is done ============="

    invoke-static/range {v18 .. v19}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    invoke-direct/range {p0 .. p0}, Lcom/lge/mdm/controller/LGMDMHandler;->nmsMdmResetCmdFile()V
    :try_end_1f7
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_1f7} :catch_20f

    move-object v9, v10

    .line 680
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "i":I
    :cond_1f8
    :goto_1f8
    return-void

    .line 746
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_1f9
    move-exception v6

    .line 747
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v6, "e":Ljava/lang/Exception;
    :goto_1fa
    const-string/jumbo v18, "LGMDMHandler"

    const-string/jumbo v19, "Failed writing iptables_cmd_resetlist"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 748
    if-eqz v9, :cond_1f8

    .line 750
    :try_start_209
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_20c
    .catch Ljava/io/IOException; {:try_start_209 .. :try_end_20c} :catch_20d

    goto :goto_1f8

    .line 751
    :catch_20d
    move-exception v7

    .local v7, "ex":Ljava/io/IOException;
    goto :goto_1f8

    .line 746
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "ex":Ljava/io/IOException;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "i":I
    :catch_20f
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    goto :goto_1fa
.end method

.method private iptablesNewFileIO(Ljava/util/List;)V
    .registers 16
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
    .line 606
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, ""

    .line 607
    .local v1, "cmdRun":Ljava/lang/String;
    const/4 v10, 0x0

    .line 609
    .local v10, "iptableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v10, p1

    .line 610
    .local v10, "iptableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v10, :cond_8

    .line 611
    return-void

    .line 613
    :cond_8
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    .line 614
    .local v2, "count_size":I
    new-instance v3, Ljava/io/File;

    const-string/jumbo v11, "/data/system/lgmdm"

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 615
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_3d

    .line 616
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 617
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_3d

    .line 618
    const-string/jumbo v11, "LGMDMHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "iptablesNewFileIO SELinux restorecon failed for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_3d
    new-instance v6, Ljava/io/File;

    const-string/jumbo v11, "lgmdm_iptables_cmdlist.txt"

    invoke-direct {v6, v3, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 622
    .local v6, "file":Ljava/io/File;
    const-string/jumbo v11, "LGMDMHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "list_size : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const/4 v7, 0x0

    .line 625
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_60
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_65} :catch_ae

    .line 627
    .local v8, "fos":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v9, "i":I
    :goto_66
    if-ge v9, v2, :cond_9d

    .line 628
    :try_start_68
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 629
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 630
    const-string/jumbo v11, "LGMDMHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[File] list : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    add-int/lit8 v11, v2, -0x1

    if-eq v9, v11, :cond_9a

    .line 632
    const/16 v11, 0xa

    invoke-virtual {v8, v11}, Ljava/io/FileOutputStream;->write(I)V

    .line 627
    :cond_9a
    add-int/lit8 v9, v9, 0x1

    goto :goto_66

    .line 635
    :cond_9d
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 636
    const-string/jumbo v11, "LGMDMHandler"

    const-string/jumbo v12, "============= file writing is done ============="

    invoke-static {v11, v12}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMHandler;->nmsMdmSetCmdFile()V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_ac} :catch_c0

    move-object v7, v8

    .line 605
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "i":I
    :cond_ad
    :goto_ad
    return-void

    .line 638
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_ae
    move-exception v4

    .line 639
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v4, "e":Ljava/lang/Exception;
    :goto_af
    const-string/jumbo v11, "LGMDMHandler"

    const-string/jumbo v12, "Failed writing iptables"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 640
    if-eqz v7, :cond_ad

    .line 642
    :try_start_ba
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_be

    goto :goto_ad

    .line 643
    :catch_be
    move-exception v5

    .local v5, "ex":Ljava/io/IOException;
    goto :goto_ad

    .line 638
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "i":I
    :catch_c0
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    goto :goto_af
.end method

.method private iptablesNewFileReset()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 780
    new-instance v1, Ljava/io/File;

    const-string/jumbo v7, "/data/system/lgmdm"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 781
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_32

    .line 782
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 783
    invoke-static {v1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_32

    .line 784
    const-string/jumbo v7, "LGMDMHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "iptablesNewFileReset SELinux restorecon failed for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    :cond_32
    new-instance v4, Ljava/io/File;

    const-string/jumbo v7, "lgmdm_iptables_cmdlist.txt"

    invoke-direct {v4, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 788
    .local v4, "file":Ljava/io/File;
    new-array v0, v10, [B

    .line 789
    .local v0, "buff":[B
    const/4 v5, 0x0

    .line 791
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_3d
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_42} :catch_55

    .line 793
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_44
    invoke-virtual {v6, v0, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 794
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 795
    const-string/jumbo v7, "LGMDMHandler"

    const-string/jumbo v8, "============= file reset ============="

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_53} :catch_67

    move-object v5, v6

    .line 779
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_54
    :goto_54
    return-void

    .line 796
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_55
    move-exception v2

    .line 797
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/lang/Exception;
    :goto_56
    const-string/jumbo v7, "LGMDMHandler"

    const-string/jumbo v8, "Failed reseting iptables"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 798
    if-eqz v5, :cond_54

    .line 800
    :try_start_61
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_54

    .line 801
    :catch_65
    move-exception v3

    .local v3, "ex":Ljava/io/IOException;
    goto :goto_54

    .line 796
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_67
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    goto :goto_56
.end method

.method private isCurrentRunning(Ljava/lang/String;)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1977
    const/4 v5, 0x0

    .line 1978
    .local v5, "result":Z
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1979
    .local v0, "ams":Landroid/app/IActivityManager;
    if-nez v0, :cond_11

    .line 1980
    const-string/jumbo v8, "LGMDMHandler"

    const-string/jumbo v9, "[isCurrentRunning] null check fail : IActivityManager is null "

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    return v5

    .line 1984
    :cond_11
    const/4 v6, 0x0

    .line 1986
    .local v6, "runningAppList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :try_start_12
    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_19

    move-result-object v6

    .line 1991
    .end local v6    # "runningAppList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :goto_16
    if-nez v6, :cond_24

    .line 1992
    return v5

    .line 1987
    .restart local v6    # "runningAppList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_19
    move-exception v1

    .line 1988
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "LGMDMHandler"

    const-string/jumbo v9, "IActivityManager get fail"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 1995
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v6    # "runningAppList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_24
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "rapi$iterator":Ljava/util/Iterator;
    :cond_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1996
    .local v3, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 1997
    .local v7, "runningPackageList":[Ljava/lang/String;
    const/4 v8, 0x0

    array-length v9, v7

    :goto_38
    if-ge v8, v9, :cond_28

    aget-object v2, v7, v8

    .line 1998
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_69

    .line 1999
    const/4 v5, 0x1

    .line 2000
    const-string/jumbo v8, "LGMDMHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[isCurrentRunning][return:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] pkgName: + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    return v5

    .line 1997
    :cond_69
    add-int/lit8 v8, v8, 0x1

    goto :goto_38

    .line 2007
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v7    # "runningPackageList":[Ljava/lang/String;
    :cond_6c
    const-string/jumbo v8, "LGMDMHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[isCurrentRunning][return:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] pkgName: + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    return v5
.end method

.method private isCurrentRunning(Ljava/lang/String;Ljava/util/List;)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1954
    .local p2, "runningAppList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v3, 0x0

    .line 1956
    .local v3, "result":Z
    if-nez p2, :cond_4

    .line 1957
    return v3

    .line 1960
    :cond_4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "rapi$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1961
    .local v1, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 1962
    .local v4, "runningPackageList":[Ljava/lang/String;
    const/4 v5, 0x0

    array-length v6, v4

    :goto_18
    if-ge v5, v6, :cond_8

    aget-object v0, v4, v5

    .line 1963
    .local v0, "pkgName":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 1964
    const/4 v3, 0x1

    .line 1965
    const-string/jumbo v5, "LGMDMHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[isCurrentRunning][return:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] pkgName: + "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1967
    return v3

    .line 1962
    :cond_49
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 1972
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "runningPackageList":[Ljava/lang/String;
    :cond_4c
    const-string/jumbo v5, "LGMDMHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[isCurrentRunning][return:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] pkgName: + "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    return v3
.end method

.method private lockNowUnchecked()V
    .registers 6

    .prologue
    .line 2022
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2024
    .local v2, "ident":J
    :try_start_4
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMHandler;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    .line 2025
    .local v1, "mWindowManager":Landroid/view/IWindowManager;
    if-eqz v1, :cond_e

    .line 2026
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_12
    .catchall {:try_start_4 .. :try_end_e} :catchall_17

    .line 2030
    :cond_e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2021
    .end local v1    # "mWindowManager":Landroid/view/IWindowManager;
    :goto_11
    return-void

    .line 2028
    :catch_12
    move-exception v0

    .line 2030
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_11

    .line 2029
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_17
    move-exception v4

    .line 2030
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2029
    throw v4
.end method

.method private nmsMdmClear()V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 349
    new-instance v1, Lcom/lge/systemservice/core/LGContext;

    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    .line 350
    .local v1, "lgContext":Lcom/lge/systemservice/core/LGContext;
    const-string/jumbo v3, "lgnetworkmanagementservice"

    invoke-virtual {v1, v3}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/systemservice/core/LGNetworkManager;

    .line 353
    .local v2, "service":Lcom/lge/systemservice/core/LGNetworkManager;
    if-nez v2, :cond_13

    .line 354
    return-void

    .line 356
    :cond_13
    const-string/jumbo v3, "LGMDMHandler"

    const-string/jumbo v4, "[MdmClear] iptables -F"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :try_start_1c
    const-string/jumbo v3, "-F in_mdm_box"

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V

    .line 359
    const-string/jumbo v3, "-F out_mdm_box"

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_28} :catch_29

    .line 348
    :goto_28
    return-void

    .line 360
    :catch_29
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LGMDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[MdmClear] Fail to runDataCommand %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method private nmsMdmExit()V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 367
    new-instance v1, Lcom/lge/systemservice/core/LGContext;

    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    .line 368
    .local v1, "lgContext":Lcom/lge/systemservice/core/LGContext;
    const-string/jumbo v3, "lgnetworkmanagementservice"

    invoke-virtual {v1, v3}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/systemservice/core/LGNetworkManager;

    .line 371
    .local v2, "service":Lcom/lge/systemservice/core/LGNetworkManager;
    if-nez v2, :cond_13

    .line 372
    return-void

    .line 374
    :cond_13
    const-string/jumbo v3, "LGMDMHandler"

    const-string/jumbo v4, "[MdmExit]"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :try_start_1c
    const-string/jumbo v3, "-D INPUT -j in_mdm_box"

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V

    .line 377
    const-string/jumbo v3, "-X in_mdm_box"

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V

    .line 378
    const-string/jumbo v3, "-D OUTPUT -j out_mdm_box"

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V

    .line 379
    const-string/jumbo v3, "-X out_mdm_box"

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_34} :catch_35

    .line 366
    :goto_34
    return-void

    .line 380
    :catch_35
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LGMDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[MdmExit] Fail to runDataCommand %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method private nmsMdmInit()V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 329
    new-instance v1, Lcom/lge/systemservice/core/LGContext;

    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    .line 330
    .local v1, "lgContext":Lcom/lge/systemservice/core/LGContext;
    const-string/jumbo v3, "lgnetworkmanagementservice"

    invoke-virtual {v1, v3}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/systemservice/core/LGNetworkManager;

    .line 333
    .local v2, "service":Lcom/lge/systemservice/core/LGNetworkManager;
    if-nez v2, :cond_13

    .line 334
    return-void

    .line 336
    :cond_13
    const-string/jumbo v3, "LGMDMHandler"

    const-string/jumbo v4, "[MdmInit]"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :try_start_1c
    const-string/jumbo v3, "-N in_mdm_box"

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V

    .line 339
    const-string/jumbo v3, "-N out_mdm_box"

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V

    .line 340
    const-string/jumbo v3, "-I INPUT 2 -j in_mdm_box"

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V

    .line 341
    const-string/jumbo v3, "-I OUTPUT 2 -j out_mdm_box"

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_34} :catch_35

    .line 328
    :goto_34
    return-void

    .line 342
    :catch_35
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LGMDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[MdmInit] Fail to runDataCommand %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method private nmsMdmResetCmdFile()V
    .registers 13

    .prologue
    .line 759
    const-wide/16 v4, 0x0

    .line 760
    .local v4, "nStart":J
    const-wide/16 v2, 0x0

    .line 761
    .local v2, "nEnd":J
    new-instance v1, Lcom/lge/systemservice/core/LGContext;

    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    .line 762
    .local v1, "lgContext":Lcom/lge/systemservice/core/LGContext;
    const-string/jumbo v7, "lgnetworkmanagementservice"

    invoke-virtual {v1, v7}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/systemservice/core/LGNetworkManager;

    .line 765
    .local v6, "service":Lcom/lge/systemservice/core/LGNetworkManager;
    if-nez v6, :cond_17

    .line 766
    return-void

    .line 768
    :cond_17
    const-string/jumbo v7, "LGMDMHandler"

    const-string/jumbo v8, "[MdmResetCmdFile] : lgmdm_iptables_cmd_resetlist.txt"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 771
    :try_start_24
    const-string/jumbo v7, "/data/system/lgmdm/lgmdm_iptables_cmd_resetlist.txt"

    invoke-virtual {v6, v7}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptablesFile(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2a} :catch_52

    .line 775
    :goto_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 776
    const-string/jumbo v7, "LGMDMHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[MdmResetCmdFile] Execute Time : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v10, v2, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    return-void

    .line 772
    :catch_52
    move-exception v0

    .line 773
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "LGMDMHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[MdmResetCmdFile] Fail to runDataCommand %s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method private nmsMdmSetAddFile()V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 387
    const-wide/16 v4, 0x0

    .line 388
    .local v4, "nStart":J
    const-wide/16 v2, 0x0

    .line 389
    .local v2, "nEnd":J
    new-instance v1, Lcom/lge/systemservice/core/LGContext;

    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    .line 390
    .local v1, "lgContext":Lcom/lge/systemservice/core/LGContext;
    const-string/jumbo v7, "lgnetworkmanagementservice"

    invoke-virtual {v1, v7}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/systemservice/core/LGNetworkManager;

    .line 392
    .local v6, "service":Lcom/lge/systemservice/core/LGNetworkManager;
    if-nez v6, :cond_17

    .line 393
    return-void

    .line 395
    :cond_17
    const-string/jumbo v7, "LGMDMHandler"

    const-string/jumbo v8, "[MdmSetAddFile] : lgmdm_iptables_list.txt"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 398
    :try_start_24
    const-string/jumbo v7, "/data/system/lgmdm/lgmdm_iptables_list.txt"

    invoke-virtual {v6, v7}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptablesFile(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2a} :catch_52

    .line 402
    :goto_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 403
    const-string/jumbo v7, "LGMDMHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[MdmSetAddFile] Execute Time : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v10, v2, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    return-void

    .line 399
    :catch_52
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "LGMDMHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[MdmSetAddFile] Fail to runDataCommand %s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method private nmsMdmSetCmdFile()V
    .registers 13

    .prologue
    .line 407
    const-wide/16 v4, 0x0

    .line 408
    .local v4, "nStart":J
    const-wide/16 v2, 0x0

    .line 409
    .local v2, "nEnd":J
    new-instance v1, Lcom/lge/systemservice/core/LGContext;

    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    .line 410
    .local v1, "lgContext":Lcom/lge/systemservice/core/LGContext;
    const-string/jumbo v7, "lgnetworkmanagementservice"

    invoke-virtual {v1, v7}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/systemservice/core/LGNetworkManager;

    .line 413
    .local v6, "service":Lcom/lge/systemservice/core/LGNetworkManager;
    if-nez v6, :cond_17

    .line 414
    return-void

    .line 416
    :cond_17
    const-string/jumbo v7, "LGMDMHandler"

    const-string/jumbo v8, "[MdmSetCmdFile] : lgmdm_iptables_cmdlist.txt"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 419
    :try_start_24
    const-string/jumbo v7, "/data/system/lgmdm/lgmdm_iptables_cmdlist.txt"

    invoke-virtual {v6, v7}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptablesFile(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2a} :catch_52

    .line 423
    :goto_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 424
    const-string/jumbo v7, "LGMDMHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[MdmSetCmdFile] Execute Time : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v10, v2, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return-void

    .line 420
    :catch_52
    move-exception v0

    .line 421
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "LGMDMHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[MdmSetCmdFile] Fail to runDataCommand %s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method private runningRemoveUser(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 2052
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 2053
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    .line 2050
    :goto_16
    return-void

    .line 2054
    :catch_17
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_16
.end method

.method private sendToastMessageOtherUser(Ljava/lang/String;JI)V
    .registers 11
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "delayTime"    # J
    .param p4, "userHandle"    # I

    .prologue
    const/16 v4, 0xa

    .line 1750
    const-string/jumbo v1, "LGMDMHandler"

    const-string/jumbo v2, "sendToastMessageOtherUser"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    if-nez v1, :cond_19

    .line 1752
    const-string/jumbo v1, "LGMDMHandler"

    const-string/jumbo v2, "mContext is null"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    return-void

    .line 1755
    :cond_19
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    if-nez v1, :cond_26

    .line 1756
    new-instance v1, Lcom/lge/mdm/util/LGMDMNotifyHelper;

    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lge/mdm/util/LGMDMNotifyHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    .line 1758
    :cond_26
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1759
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1760
    iput p4, v0, Landroid/os/Message;->arg1:I

    .line 1762
    invoke-virtual {p0, v0, p2, p3}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1763
    invoke-virtual {p0, v4}, Lcom/lge/mdm/controller/LGMDMHandler;->removeMessages(I)V

    .line 1765
    const-wide/16 v2, 0x7d0

    add-long/2addr v2, p2

    .line 1764
    invoke-virtual {p0, v4, v2, v3}, Lcom/lge/mdm/controller/LGMDMHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1749
    return-void
.end method

.method private setApplicationEnabledSetting(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V
    .registers 10
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "newState"    # I

    .prologue
    .line 952
    const-string/jumbo v3, "LGMDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PackageManager.setApplicationEnabledSetting is called with the package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/4 v3, 0x0

    :try_start_26
    invoke-virtual {p1, p2, p3, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_29} :catch_3a
    .catch Ljava/lang/SecurityException; {:try_start_26 .. :try_end_29} :catch_32
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    .line 951
    :goto_29
    return-void

    .line 959
    :catch_2a
    move-exception v0

    .line 960
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LGMDMHandler"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    .line 957
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_32
    move-exception v2

    .line 958
    .local v2, "se":Ljava/lang/SecurityException;
    const-string/jumbo v3, "LGMDMHandler"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    .line 955
    .end local v2    # "se":Ljava/lang/SecurityException;
    :catch_3a
    move-exception v1

    .line 956
    .local v1, "ilae":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "LGMDMHandler"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29
.end method

.method private stopHideDisablePackage(Ljava/lang/String;Ljava/util/List;)Z
    .registers 15
    .param p1, "itemPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v7, 0x0

    .line 888
    const/4 v4, 0x0

    .line 889
    .local v4, "retValue":Z
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "activity"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 890
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz p1, :cond_11

    if-nez p2, :cond_12

    .line 891
    :cond_11
    return v7

    .line 893
    :cond_12
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "rapi$iterator":Ljava/util/Iterator;
    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 894
    .local v2, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 895
    .local v5, "runningPackageList":[Ljava/lang/String;
    array-length v8, v5

    move v6, v7

    :goto_26
    if-ge v6, v8, :cond_16

    aget-object v1, v5, v6

    .line 896
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_63

    .line 897
    const-string/jumbo v9, "LGMDMHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[setApplicationState] blacklist process kill pid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 898
    iget v11, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 897
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 898
    const-string/jumbo v11, " about "

    .line 897
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 898
    iget-object v11, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 897
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    iget v9, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_66

    .line 900
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 904
    :goto_62
    const/4 v4, 0x1

    .line 895
    :cond_63
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 902
    :cond_66
    iget v9, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v9}, Landroid/os/Process;->killProcess(I)V

    goto :goto_62

    .line 908
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v5    # "runningPackageList":[Ljava/lang/String;
    :cond_6c
    return v4
.end method


# virtual methods
.method public checkRunningBrowsers(I)V
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    .line 1549
    const-string/jumbo v1, "LGMDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkRunningBrowsers userHandle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1552
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1553
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1548
    return-void
.end method

.method public disallowGoogleErrorReport(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 1617
    const-string/jumbo v1, "LGMDMHandler"

    const-string/jumbo v2, "disallowGoogleErrorReport"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1620
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1621
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1616
    return-void
.end method

.method public forceStopApplication(Ljava/lang/String;II)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 1700
    const-string/jumbo v2, "LGMDMHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "forceStopApplication : packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1701
    const-string/jumbo v4, " userHandle = "

    .line 1700
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    new-instance v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;

    invoke-direct {v1, p0, v5}, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;-><init>(Lcom/lge/mdm/controller/LGMDMHandler;Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;)V

    .line 1703
    .local v1, "obj":Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;
    iput-object v5, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->whitelist:Ljava/util/List;

    .line 1704
    iput-object v5, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->blacklist:Ljava/util/List;

    .line 1705
    iput-object p1, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->packageName:Ljava/lang/String;

    .line 1706
    iput p2, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->pid:I

    .line 1707
    const-string/jumbo v2, "stopapplication"

    iput-object v2, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->feature:Ljava/lang/String;

    .line 1708
    iput p3, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->userHandle:I

    .line 1709
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1710
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1699
    return-void
.end method

.method public forceStopCameraWithWhitelist(Ljava/lang/String;ILjava/util/List;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1658
    const-string/jumbo v2, "LGMDMHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "forceStopPackage : packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1659
    const-string/jumbo v4, " userHandle = "

    .line 1658
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    new-instance v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;

    invoke-direct {v1, p0, v5}, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;-><init>(Lcom/lge/mdm/controller/LGMDMHandler;Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;)V

    .line 1661
    .local v1, "obj":Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;
    iput-object p3, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->whitelist:Ljava/util/List;

    .line 1662
    iput-object v5, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->blacklist:Ljava/util/List;

    .line 1663
    const-string/jumbo v2, "camera"

    iput-object v2, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->feature:Ljava/lang/String;

    .line 1664
    iput-object p1, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->packageName:Ljava/lang/String;

    .line 1665
    iput p2, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->pid:I

    .line 1666
    iput p4, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->userHandle:I

    .line 1667
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1668
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1657
    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;II)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 1625
    const-string/jumbo v2, "LGMDMHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "forceStopPackage : packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1626
    const-string/jumbo v4, " userHandle = "

    .line 1625
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    new-instance v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;

    invoke-direct {v1, p0, v5}, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;-><init>(Lcom/lge/mdm/controller/LGMDMHandler;Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;)V

    .line 1628
    .local v1, "obj":Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;
    iput-object v5, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->whitelist:Ljava/util/List;

    .line 1629
    iput-object v5, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->blacklist:Ljava/util/List;

    .line 1630
    iput-object p1, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->packageName:Ljava/lang/String;

    .line 1631
    iput p2, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->pid:I

    .line 1632
    iput p3, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->userHandle:I

    .line 1633
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1634
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1624
    return-void
.end method

.method public forceStopPackageWithBlacklist(Ljava/lang/String;ILjava/util/List;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1687
    const-string/jumbo v2, "LGMDMHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "forceStopPackage : packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1688
    const-string/jumbo v4, " userHandle = "

    .line 1687
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    new-instance v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;

    invoke-direct {v1, p0, v5}, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;-><init>(Lcom/lge/mdm/controller/LGMDMHandler;Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;)V

    .line 1690
    .local v1, "obj":Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;
    iput-object v5, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->whitelist:Ljava/util/List;

    .line 1691
    iput-object p3, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->blacklist:Ljava/util/List;

    .line 1692
    iput-object p1, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->packageName:Ljava/lang/String;

    .line 1693
    iput p2, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->pid:I

    .line 1694
    iput p4, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->userHandle:I

    .line 1695
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1696
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1686
    return-void
.end method

.method public forceStopPackageWithWhitelist(Ljava/lang/String;ILjava/util/List;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1673
    const-string/jumbo v2, "LGMDMHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "forceStopPackage : packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1674
    const-string/jumbo v4, " userHandle = "

    .line 1673
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    new-instance v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;

    invoke-direct {v1, p0, v5}, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;-><init>(Lcom/lge/mdm/controller/LGMDMHandler;Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;)V

    .line 1676
    .local v1, "obj":Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;
    iput-object p3, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->whitelist:Ljava/util/List;

    .line 1677
    iput-object v5, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->blacklist:Ljava/util/List;

    .line 1678
    iput-object p1, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->packageName:Ljava/lang/String;

    .line 1679
    iput p2, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->pid:I

    .line 1680
    iput p4, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->userHandle:I

    .line 1681
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1682
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1672
    return-void
.end method

.method public forceStopSpecificApplication(Ljava/lang/String;II)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 1638
    const-string/jumbo v2, "LGMDMHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "forceStopPackage : packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1639
    const-string/jumbo v4, " userHandle = "

    .line 1638
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1641
    return-void

    .line 1644
    :cond_38
    new-instance v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;

    invoke-direct {v1, p0, v5}, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;-><init>(Lcom/lge/mdm/controller/LGMDMHandler;Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;)V

    .line 1645
    .local v1, "obj":Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;
    iput-object v5, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->whitelist:Ljava/util/List;

    .line 1646
    iput-object v5, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->blacklist:Ljava/util/List;

    .line 1647
    iput-object p1, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->packageName:Ljava/lang/String;

    .line 1648
    iput p2, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->pid:I

    .line 1649
    const-string/jumbo v2, "specificApp"

    iput-object v2, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->feature:Ljava/lang/String;

    .line 1650
    iput p3, v1, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->userHandle:I

    .line 1651
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1652
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1637
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 29
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 137
    const-string/jumbo v24, "LGMDMHandler"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "handleMessage, msg:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_332

    .line 136
    :cond_27
    :goto_27
    :pswitch_27
    return-void

    .line 141
    :pswitch_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMHandler;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    move-object/from16 v24, v0

    if-eqz v24, :cond_27

    .line 142
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    .line 143
    .local v22, "userHandle":I
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Boolean;

    .line 144
    .local v15, "lockoutNow":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMHandler;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    move-object/from16 v24, v0

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/lge/mdm/util/LGMDMNotifyHelper;->showChangePasswordDialog(IZ)V

    goto :goto_27

    .line 148
    .end local v15    # "lockoutNow":Ljava/lang/Boolean;
    .end local v22    # "userHandle":I
    :pswitch_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMHandler;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    move-object/from16 v24, v0

    if-eqz v24, :cond_27

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMHandler;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/lge/mdm/util/LGMDMNotifyHelper;->displayDecryptionPolicyDialog(I)V

    goto :goto_27

    .line 153
    :pswitch_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMHandler;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    move-object/from16 v24, v0

    if-eqz v24, :cond_27

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMHandler;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/lge/mdm/util/LGMDMNotifyHelper;->showOSUpdateDialog(Ljava/lang/String;I)V

    goto :goto_27

    .line 159
    :pswitch_8e
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/content/Intent;

    .line 160
    .local v9, "intent":Landroid/content/Intent;
    if-eqz v9, :cond_27

    .line 161
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->isSupportMultiUser()Z

    move-result v24

    if-eqz v24, :cond_ad

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    sget-object v25, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_27

    .line 164
    :cond_ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/UserHandle;

    const/16 v26, -0x2

    invoke-direct/range {v25 .. v26}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_27

    .line 169
    .end local v9    # "intent":Landroid/content/Intent;
    :pswitch_c3
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/content/Intent;

    .line 170
    .local v6, "asUser_intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 171
    .local v7, "asUser_userHandle":I
    if-eqz v6, :cond_27

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/UserHandle;

    move-object/from16 v0, v25

    invoke-direct {v0, v7}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_27

    .line 176
    .end local v6    # "asUser_intent":Landroid/content/Intent;
    .end local v7    # "asUser_userHandle":I
    :pswitch_e5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/content/Intent;

    .line 177
    .local v20, "sticky_intent":Landroid/content/Intent;
    if-eqz v20, :cond_27

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/UserHandle;

    .line 179
    const/16 v26, -0x2

    .line 178
    invoke-direct/range {v25 .. v26}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_27

    .line 183
    .end local v20    # "sticky_intent":Landroid/content/Intent;
    :pswitch_107
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    .line 184
    .local v5, "applicationStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMApplicationState;>;"
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v5, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->handleSetApplicationState(Ljava/util/List;I)V

    goto/16 :goto_27

    .line 188
    .end local v5    # "applicationStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMApplicationState;>;"
    :pswitch_11c
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .line 189
    .local v4, "appVersionStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMAppVersionState;>;"
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v4, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->handleSetAppVersionState(Ljava/util/List;I)V

    goto/16 :goto_27

    .line 193
    .end local v4    # "appVersionStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMAppVersionState;>;"
    :pswitch_131
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->handleSetAllowUnsignedApplication(I)V

    goto/16 :goto_27

    .line 197
    :pswitch_140
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->handleCheckRunningBrowsers(I)V

    goto/16 :goto_27

    .line 201
    :pswitch_14f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    .line 202
    .local v16, "messagePackageName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/controller/LGMDMHandler;->handlesetMessageApp(Ljava/lang/String;I)V

    goto/16 :goto_27

    .line 213
    .end local v16    # "messagePackageName":Ljava/lang/String;
    :pswitch_168
    const-string/jumbo v24, "notification"

    invoke-static/range {v24 .. v24}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v24

    .line 212
    invoke-static/range {v24 .. v24}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v17

    .line 214
    .local v17, "service":Landroid/app/INotificationManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1a4

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1a4

    if-eqz v17, :cond_1a4

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    goto/16 :goto_27

    .line 217
    :cond_1a4
    const-string/jumbo v24, "LGMDMHandler"

    const-string/jumbo v25, "mContext Or msg is NULL!!!!"

    invoke-static/range {v24 .. v25}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 222
    .end local v17    # "service":Landroid/app/INotificationManager;
    :pswitch_1af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMHandler;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    move-object/from16 v24, v0

    if-eqz v24, :cond_27

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMHandler;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lge/mdm/util/LGMDMNotifyHelper;->handleShowWindowToast(Ljava/lang/String;)I

    move-result v24

    .line 223
    const/16 v25, 0x2

    move/from16 v0, v25

    move/from16 v1, v24

    if-ne v0, v1, :cond_27

    .line 225
    const/16 v24, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->removeMessages(I)V

    .line 227
    const-wide/16 v24, 0x7d0

    .line 226
    const/16 v26, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/controller/LGMDMHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_27

    .line 232
    :pswitch_1ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMHandler;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    move-object/from16 v24, v0

    if-eqz v24, :cond_27

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMHandler;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/lge/mdm/util/LGMDMNotifyHelper;->handleHideWindowToast()V

    goto/16 :goto_27

    .line 238
    :pswitch_200
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;

    .line 239
    .local v21, "stopType":Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->handleforceStopPackage(Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;)V

    goto/16 :goto_27

    .line 242
    .end local v21    # "stopType":Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;
    :pswitch_211
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/Intent;

    .line 243
    .local v19, "startIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    .line 244
    .restart local v22    # "userHandle":I
    if-eqz v19, :cond_27

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/UserHandle;

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_27

    .line 250
    .end local v19    # "startIntent":Landroid/content/Intent;
    .end local v22    # "userHandle":I
    :pswitch_23b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/List;

    .line 251
    .local v18, "signatureStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMSignatureState;>;"
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/controller/LGMDMHandler;->handleSetSignatureState(Ljava/util/List;I)V

    goto/16 :goto_27

    .line 255
    .end local v18    # "signatureStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMSignatureState;>;"
    :pswitch_254
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/util/List;

    .line 257
    .local v23, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/lge/mdm/controller/LGMDMHandler;->getTopActivityPackageName()Ljava/lang/String;

    move-result-object v8

    .line 259
    .local v8, "currentTopPackage":Ljava/lang/String;
    if-eqz v8, :cond_27

    .line 263
    const-string/jumbo v24, "com.google.android.apps.maps"

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_27

    .line 264
    if-eqz v23, :cond_277

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_27

    .line 267
    :cond_277
    sget v24, Lcom/lge/internal/R$string;->sp_lgmdm_block_loaction_point:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    goto/16 :goto_27

    .line 273
    .end local v8    # "currentTopPackage":Ljava/lang/String;
    .end local v23    # "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_28a
    invoke-direct/range {p0 .. p0}, Lcom/lge/mdm/controller/LGMDMHandler;->handleListForInternetAccessBoot()V

    goto/16 :goto_27

    .line 277
    :pswitch_28f
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    .line 278
    .local v13, "list_new":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    const/16 v25, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-direct {v0, v13, v1, v2}, Lcom/lge/mdm/controller/LGMDMHandler;->handleListForInternetAccess(Ljava/util/List;II)V

    goto/16 :goto_27

    .line 282
    .end local v13    # "list_new":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2a8
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    .line 283
    .local v14, "list_refresh":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    const/16 v25, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-direct {v0, v14, v1, v2}, Lcom/lge/mdm/controller/LGMDMHandler;->handleListForInternetAccess(Ljava/util/List;II)V

    goto/16 :goto_27

    .line 287
    .end local v14    # "list_refresh":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2c1
    invoke-direct/range {p0 .. p0}, Lcom/lge/mdm/controller/LGMDMHandler;->handleListForInternetAccessReset()V

    goto/16 :goto_27

    .line 292
    :pswitch_2c6
    invoke-direct/range {p0 .. p0}, Lcom/lge/mdm/controller/LGMDMHandler;->handleCommandListForInternetAccessBoot()V

    goto/16 :goto_27

    .line 296
    :pswitch_2cb
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    .line 297
    .local v10, "listNew":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v24, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v10, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->handleCommandListForInternetAccess(Ljava/util/List;I)V

    goto/16 :goto_27

    .line 301
    .end local v10    # "listNew":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2dc
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    .line 302
    .local v11, "listRefresh":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v24, 0x17

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v11, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->handleCommandListForInternetAccess(Ljava/util/List;I)V

    goto/16 :goto_27

    .line 306
    .end local v11    # "listRefresh":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2ed
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    .line 307
    .local v12, "listReset":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v24, 0x19

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v12, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->handleCommandListForInternetAccess(Ljava/util/List;I)V

    goto/16 :goto_27

    .line 311
    .end local v12    # "listReset":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2fe
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->runningRemoveUser(I)V

    goto/16 :goto_27

    .line 315
    :pswitch_30d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->handleDisallowGoogleErrorReport(I)V

    goto/16 :goto_27

    .line 319
    :pswitch_31c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    if-nez v24, :cond_32f

    const/16 v24, 0x0

    :goto_326
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->handleBlockDLNADiscoveryPort(Z)V

    goto/16 :goto_27

    :cond_32f
    const/16 v24, 0x1

    goto :goto_326

    .line 139
    :pswitch_data_332
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_107
        :pswitch_131
        :pswitch_140
        :pswitch_14f
        :pswitch_27
        :pswitch_168
        :pswitch_200
        :pswitch_1af
        :pswitch_1ed
        :pswitch_23b
        :pswitch_211
        :pswitch_27
        :pswitch_e5
        :pswitch_28f
        :pswitch_2a8
        :pswitch_28a
        :pswitch_2c1
        :pswitch_254
        :pswitch_2fe
        :pswitch_27
        :pswitch_2cb
        :pswitch_2dc
        :pswitch_2c6
        :pswitch_2ed
        :pswitch_30d
        :pswitch_31c
        :pswitch_11c
        :pswitch_c3
        :pswitch_28
        :pswitch_50
        :pswitch_68
    .end packed-switch
.end method

.method public osUpdateDialog(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 1739
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    if-nez v1, :cond_6

    .line 1740
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    .line 1742
    :cond_6
    new-instance v1, Lcom/lge/mdm/util/LGMDMNotifyHelper;

    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lge/mdm/util/LGMDMNotifyHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    .line 1743
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1744
    .local v0, "msg":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1745
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 1746
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1738
    return-void
.end method

.method public removeUser(I)V
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    .line 2012
    const-string/jumbo v1, "LGMDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove userHandle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMHandler;->lockNowUnchecked()V

    .line 2016
    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2017
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2018
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2011
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1494
    const-string/jumbo v1, "LGMDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendBroadcast, intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1497
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1492
    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;I)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # I

    .prologue
    .line 1502
    const-string/jumbo v1, "LGMDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendBroadcastAsUser, intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    const/16 v1, 0x1d

    invoke-virtual {p0, v1, p1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1505
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1506
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1500
    return-void
.end method

.method public sendCommandListToHandler_boot()V
    .registers 4

    .prologue
    .line 1605
    const-string/jumbo v1, "LGMDMHandler"

    const-string/jumbo v2, "sendCommandListToHandler_boot"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1607
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1604
    return-void
.end method

.method public sendCommandListToHandler_new(Ljava/util/List;)V
    .registers 6
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
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1593
    const-string/jumbo v1, "LGMDMHandler"

    const-string/jumbo v2, "sendCommandListToHandler_new"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    const/16 v1, 0x16

    invoke-virtual {p0, v1, v3, v3, p1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1595
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1592
    return-void
.end method

.method public sendCommandListToHandler_refresh(Ljava/util/List;)V
    .registers 6
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
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1599
    const-string/jumbo v1, "LGMDMHandler"

    const-string/jumbo v2, "sendCommandListToHandler_refresh"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    const/16 v1, 0x17

    invoke-virtual {p0, v1, v3, v3, p1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1601
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1598
    return-void
.end method

.method public sendCommandListToHandler_reset(Ljava/util/List;)V
    .registers 5
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
    .line 1611
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "LGMDMHandler"

    const-string/jumbo v2, "sendCommandListToHandler_reset"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    const/16 v1, 0x19

    invoke-virtual {p0, v1, p1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1613
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1610
    return-void
.end method

.method public sendIPTablesListToHandler_boot()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1580
    const-string/jumbo v1, "LGMDMHandler"

    const-string/jumbo v2, "sendIPTablesListToHandler_boot"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1582
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1579
    return-void
.end method

.method public sendIPTablesListToHandler_new(Ljava/util/List;I)V
    .registers 6
    .param p2, "policy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1566
    .local p1, "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "LGMDMHandler"

    const-string/jumbo v2, "sendIPTablesListToHandler_new"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2, p1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1568
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1565
    return-void
.end method

.method public sendIPTablesListToHandler_refresh(Ljava/util/List;I)V
    .registers 6
    .param p2, "policy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1573
    .local p1, "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "LGMDMHandler"

    const-string/jumbo v2, "sendIPTablesListToHandler_refresh"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2, p1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1575
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1572
    return-void
.end method

.method public sendIPTablesListToHandler_reset()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1587
    const-string/jumbo v1, "LGMDMHandler"

    const-string/jumbo v2, "sendIPTablesListToHandler_reset"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1589
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1586
    return-void
.end method

.method public sendStickyBroadcast(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1511
    const-string/jumbo v1, "LGMDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendStickyBroadcast, intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    const/16 v1, 0xe

    invoke-virtual {p0, v1, p1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1514
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1509
    return-void
.end method

.method public sendToastMessage(II)V
    .registers 5
    .param p1, "resId"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 1769
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_d

    .line 1770
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1771
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(Ljava/lang/String;I)V

    .line 1768
    .end local v0    # "message":Ljava/lang/String;
    :cond_d
    return-void
.end method

.method public sendToastMessage(Ljava/lang/String;I)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 1776
    const-string/jumbo v1, "LGMDMHandler"

    const-string/jumbo v2, "sendToastMessage"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    if-nez p2, :cond_18

    .line 1778
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1779
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1780
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1781
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1775
    .end local v0    # "msg":Landroid/os/Message;
    :goto_17
    return-void

    .line 1783
    :cond_18
    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v2, v3, p2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessageOtherUser(Ljava/lang/String;JI)V

    goto :goto_17
.end method

.method public sendToastMessageRemoveAndDelayed(IJI)V
    .registers 11
    .param p1, "resId"    # I
    .param p2, "delayTime"    # J
    .param p4, "userHandle"    # I

    .prologue
    const/4 v4, 0x7

    .line 1788
    const-string/jumbo v2, "LGMDMHandler"

    const-string/jumbo v3, "sendToastMessageRemoveAndDelayed"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    if-nez v2, :cond_18

    .line 1790
    const-string/jumbo v2, "LGMDMHandler"

    const-string/jumbo v3, "mContext is null"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    return-void

    .line 1793
    :cond_18
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1794
    .local v0, "message":Ljava/lang/String;
    if-nez p4, :cond_33

    .line 1795
    invoke-virtual {p0, v4}, Lcom/lge/mdm/controller/LGMDMHandler;->removeMessages(I)V

    .line 1796
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_32

    .line 1797
    invoke-virtual {p0, v4}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1798
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1799
    iput p4, v1, Landroid/os/Message;->arg1:I

    .line 1800
    invoke-virtual {p0, v1, p2, p3}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1787
    .end local v1    # "msg":Landroid/os/Message;
    :cond_32
    :goto_32
    return-void

    .line 1803
    :cond_33
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessageOtherUser(Ljava/lang/String;JI)V

    goto :goto_32
.end method

.method public sendWhitelistLocationMessage(Ljava/util/List;I)V
    .registers 5
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1826
    .local p1, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v1, 0x13

    invoke-virtual {p0, v1, p1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1827
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1828
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1825
    return-void
.end method

.method public setAllowUnsignedApplication(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 1534
    const-string/jumbo v1, "LGMDMHandler"

    const-string/jumbo v2, "setAllowUnsignedApplication"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1537
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1538
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1533
    return-void
.end method

.method public setAppVersionState(Ljava/util/List;I)V
    .registers 7
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMAppVersionState;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1526
    .local p1, "appVersionStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMAppVersionState;>;"
    const-string/jumbo v1, "LGMDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAppVersionState, appVersionStateList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    const/16 v1, 0x1c

    invoke-virtual {p0, v1, p1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1529
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1530
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1525
    return-void
.end method

.method public setApplicationState(Ljava/util/List;I)V
    .registers 7
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMApplicationState;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1518
    .local p1, "applicationStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMApplicationState;>;"
    const-string/jumbo v1, "LGMDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setApplicationState, applicationStateList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1521
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1522
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1517
    return-void
.end method

.method public setBlockDLNADiscoveryPort(Z)V
    .registers 7
    .param p1, "block"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2078
    const-string/jumbo v1, "LGMDMHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBlockDLNADiscoveryPort: block = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    if-eqz p1, :cond_28

    const/4 v1, 0x1

    :goto_1e
    const/16 v3, 0x1b

    invoke-virtual {p0, v3, v1, v2}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2081
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2077
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_28
    move v1, v2

    .line 2080
    goto :goto_1e
.end method

.method public setMessageApp(Ljava/lang/String;I)V
    .registers 7
    .param p1, "messagePackageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 1557
    const-string/jumbo v1, "LGMDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMessageApp, messagePackageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1560
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1561
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1556
    return-void
.end method

.method public setSignatureState(Ljava/util/List;I)V
    .registers 7
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMSignatureState;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1817
    .local p1, "signatureStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMSignatureState;>;"
    const-string/jumbo v1, "LGMDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSignatureState, signatureStateList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1818
    const-string/jumbo v3, " userHandle:"

    .line 1817
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    const/16 v1, 0xb

    invoke-virtual {p0, v1, p1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1821
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1822
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1816
    return-void
.end method

.method public showDecryptionPolicyDialog(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I

    .prologue
    .line 1729
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    if-nez v1, :cond_6

    .line 1730
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    .line 1732
    :cond_6
    new-instance v1, Lcom/lge/mdm/util/LGMDMNotifyHelper;

    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lge/mdm/util/LGMDMNotifyHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    .line 1733
    const/16 v1, 0x1f

    invoke-virtual {p0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1734
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1735
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1728
    return-void
.end method

.method public showPasswordDialog(IZ)V
    .registers 6
    .param p1, "userHandle"    # I
    .param p2, "lockoutNow"    # Z

    .prologue
    .line 1714
    const-string/jumbo v1, "LGMDMHandler"

    const-string/jumbo v2, "showPasswordDialog"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    if-nez v1, :cond_17

    .line 1716
    const-string/jumbo v1, "LGMDMHandler"

    const-string/jumbo v2, "mContext is null"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    return-void

    .line 1719
    :cond_17
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    if-nez v1, :cond_24

    .line 1720
    new-instance v1, Lcom/lge/mdm/util/LGMDMNotifyHelper;

    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lge/mdm/util/LGMDMNotifyHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMHandler;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    .line 1722
    :cond_24
    const/16 v1, 0x1e

    invoke-virtual {p0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1723
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1724
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1725
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1713
    return-void
.end method

.method public startActivity(Landroid/content/Intent;I)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # I

    .prologue
    .line 1809
    const-string/jumbo v1, "LGMDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivity, intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", userHandle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    const/16 v1, 0xc

    invoke-virtual {p0, v1, p1}, Lcom/lge/mdm/controller/LGMDMHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1812
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1813
    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1807
    return-void
.end method
