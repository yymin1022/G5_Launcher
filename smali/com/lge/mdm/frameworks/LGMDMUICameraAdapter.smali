.class public Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;
.super Ljava/lang/Object;
.source "LGMDMUICameraAdapter.java"


# static fields
.field private static final CALLUI_PACKAGE_NAME:Ljava/lang/String; = "com.android.incallui"

.field private static final SMART_SCREEN_PACKAGE_NAME:Ljava/lang/String; = "com.lge.keepscreenon"

.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;


# instance fields
.field private mDpmService:Landroid/app/admin/IDevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-string/jumbo v0, "LGMDMUICameraAdapter"

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDpmService()Landroid/app/admin/IDevicePolicyManager;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->mDpmService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_11

    .line 54
    const-string/jumbo v0, "device_policy"

    .line 53
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->mDpmService:Landroid/app/admin/IDevicePolicyManager;

    .line 56
    :cond_11
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->mDpmService:Landroid/app/admin/IDevicePolicyManager;

    return-object v0
.end method

.method public static getInstance()Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;

    if-nez v0, :cond_b

    .line 41
    new-instance v0, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;

    invoke-direct {v0}, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;-><init>()V

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;

    .line 43
    :cond_b
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;

    return-object v0
.end method


# virtual methods
.method public setCameraState(ZI)Z
    .registers 15
    .param p1, "isOpen"    # Z
    .param p2, "userHandle"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 61
    :try_start_2
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v4

    .line 62
    .local v4, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->getDpmService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    .line 64
    .local v0, "IDPM":Landroid/app/admin/IDevicePolicyManager;
    if-eqz v4, :cond_e

    if-nez v0, :cond_f

    .line 65
    :cond_e
    return v11

    .line 68
    :cond_f
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 69
    .local v5, "pid":I
    invoke-virtual {v4, v5, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getRunningPackagesFromPid(II)[Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "runningPackages":[Ljava/lang/String;
    if-eqz v6, :cond_26

    .line 71
    const-string/jumbo v7, "com.android.incallui"

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 72
    return v11

    .line 75
    :cond_26
    if-eqz p1, :cond_148

    .line 76
    invoke-virtual {v4, v5, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setCameraPid(II)V

    .line 77
    sget-object v7, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Camera open, camPid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v7, 0x0

    invoke-interface {v0, v7, p2}, Landroid/app/admin/IDevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v7

    if-nez v7, :cond_55

    .line 81
    const-string/jumbo v7, "sys.secpolicy.camera.off_"

    const/4 v8, 0x0

    .line 80
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 79
    if-eqz v7, :cond_93

    .line 83
    :cond_55
    sget-object v7, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Camera forceStop pid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->updateWatcherAndKeeperExceptionList([Ljava/lang/String;II)V

    .line 85
    if-eqz v6, :cond_85

    .line 86
    const-string/jumbo v7, "com.lge.keepscreenon"

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_85

    .line 89
    sget v7, Lcom/lge/internal/R$string;->sp_lgmdm_block_camera_NORMAL:I

    .line 88
    invoke-virtual {v4, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 91
    :cond_85
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter$1;

    invoke-direct {v8, p0, v4, p2, v5}, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter$1;-><init>(Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;II)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 98
    return v10

    .line 100
    :cond_93
    invoke-virtual {v4, v5, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getRunningPackagesFromPid(II)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->updateWatcherAndKeeperExceptionList([Ljava/lang/String;II)V

    .line 101
    sget-object v7, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getCameraDisabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v0, v9, p2}, Landroid/app/admin/IDevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v7, 0x0

    invoke-virtual {v4, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowCameraWithWhitelist(Landroid/content/ComponentName;I)Z

    move-result v7

    if-nez v7, :cond_144

    .line 106
    if-nez v6, :cond_cf

    .line 107
    const/4 v7, 0x1

    invoke-virtual {v4, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setCameraStatus(ZI)V

    .line 108
    sget-object v7, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "do nothing(runningPackages is null)"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return v11

    .line 112
    :cond_cf
    sget-object v7, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "camera packageName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v4, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkCameraPackageInWhitelist(Ljava/lang/String;I)Z

    move-result v1

    .line 116
    .local v1, "bAllowed":Z
    if-eqz v1, :cond_136

    const/4 v3, 0x0

    .line 118
    .local v3, "forceStop":Z
    :goto_f5
    if-eqz v3, :cond_138

    .line 120
    sget-object v7, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Camera forceStop : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->updateWatcherAndKeeperExceptionList([Ljava/lang/String;II)V

    .line 123
    const-string/jumbo v7, "com.lge.keepscreenon"

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_128

    .line 126
    sget v7, Lcom/lge/internal/R$string;->sp_lgmdm_block_camera_NORMAL:I

    .line 125
    invoke-virtual {v4, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 129
    :cond_128
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter$2;

    invoke-direct {v8, p0, v4, p2, v6}, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter$2;-><init>(Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;I[Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 136
    return v10

    .line 116
    .end local v3    # "forceStop":Z
    :cond_136
    const/4 v3, 0x1

    .restart local v3    # "forceStop":Z
    goto :goto_f5

    .line 138
    :cond_138
    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->updateWatcherAndKeeperExceptionList([Ljava/lang/String;II)V

    .line 140
    sget-object v7, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "do nothing(whitelist) : forceStop = false"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .end local v1    # "bAllowed":Z
    .end local v3    # "forceStop":Z
    :cond_144
    :goto_144
    invoke-virtual {v4, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setCameraStatus(ZI)V

    .line 150
    .end local v0    # "IDPM":Landroid/app/admin/IDevicePolicyManager;
    .end local v4    # "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    .end local v5    # "pid":I
    .end local v6    # "runningPackages":[Ljava/lang/String;
    :goto_147
    return v11

    .line 143
    .restart local v0    # "IDPM":Landroid/app/admin/IDevicePolicyManager;
    .restart local v4    # "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    .restart local v5    # "pid":I
    .restart local v6    # "runningPackages":[Ljava/lang/String;
    :cond_148
    sget-object v7, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Camera close"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_150
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_150} :catch_151

    goto :goto_144

    .line 146
    .end local v0    # "IDPM":Landroid/app/admin/IDevicePolicyManager;
    .end local v4    # "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    .end local v5    # "pid":I
    .end local v6    # "runningPackages":[Ljava/lang/String;
    :catch_151
    move-exception v2

    .line 147
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v7, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Failed talking with LGMDM UI Adapter"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_147
.end method

.method public setCameraStop(ZI)V
    .registers 8
    .param p1, "cameraDisabled"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 154
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 156
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-nez p1, :cond_a

    .line 157
    invoke-virtual {v0, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->updateWatcherAndKeeper(I)V

    .line 158
    return-void

    .line 161
    :cond_a
    invoke-virtual {v0, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getCameraStatus(I)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 163
    invoke-virtual {v0, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getCameraPid(I)I

    move-result v1

    .line 164
    .local v1, "pid":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->forceStopPackage(Ljava/lang/String;II)V

    .line 165
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Camera forceStop pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p2}, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->setCameraState(ZI)Z

    .line 168
    sget v2, Lcom/lge/internal/R$string;->sp_lgmdm_block_camera_NORMAL:I

    invoke-virtual {v0, v2, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 169
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "toast message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 170
    sget v4, Lcom/lge/internal/R$string;->sp_lgmdm_block_camera_NORMAL:I

    .line 169
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->updateWatcherAndKeeper(I)V

    .line 172
    return-void

    .line 175
    .end local v1    # "pid":I
    :cond_59
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUICameraAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Camera not running!"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method
