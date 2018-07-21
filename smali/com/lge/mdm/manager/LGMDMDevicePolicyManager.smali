.class public Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
.super Ljava/lang/Object;
.source "LGMDMDevicePolicyManager.java"


# static fields
.field public static final ACTION_LGMDM_EXTERNALMEMORYSLOT_LOCK:Ljava/lang/String; = "com.lge.mdm.action.LGMDM_EXTERNALMEMORYSLOT_LOCK"

.field public static final ACTION_LGMDM_EXTERNALMEMORYSLOT_UNLOCK:Ljava/lang/String; = "com.lge.mdm.action.LGMDM_EXTERNALMEMORYSLOT_UNLOCK"

.field public static final ACTION_LGMDM_GPS_STATUS_CHANGE:Ljava/lang/String; = "com.lge.mdm.action.LGMDM_GPS_STATUS_CHANGE"

.field public static final ACTION_LGMDM_HOTSPOT_FORCE_CLOSE:Ljava/lang/String; = "com.lge.mdm.action.LGMDM_HOTSPOT_FORCE_CLOSE"

.field public static final ACTION_LGMDM_LOCATION_FORCE_LOCK:Ljava/lang/String; = "com.lge.mdm.action.LGMDM_LOCATION_FORCE_LOCK"

.field public static final ACTION_LGMDM_LOCATION_FORCE_UNLOCK:Ljava/lang/String; = "com.lge.mdm.action.LGMDM_LOCATION_FORCE_UNLOCK"

.field public static final ACTION_LGMDM_TETHERING_FORCE_CLOSE:Ljava/lang/String; = "com.lge.mdm.action.LGMDM_TETHERING_FORCE_CLOSE"

.field public static final BLUETOOTH_STATUS_OFF:I = 0x0

.field public static final BLUETOOTH_STATUS_ON:I = 0x1

.field public static final EXTERNALMEMORYSLOT_STATUS_NOT_OCCUPIED:I = 0x0

.field public static final EXTERNALMEMORYSLOT_STATUS_OCCUPIED:I = 0x1

.field public static final HOTSPOT_STATUS_OFF:I = 0x0

.field public static final HOTSPOT_STATUS_ON:I = 0x1

.field public static final LOCATION_GPS_STATUS_OFF:I = 0x0

.field public static final LOCATION_GPS_STATUS_ON:I = 0x1

.field public static final LOCATION_WIRELESS_STATUS_OFF:I = 0x0

.field public static final LOCATION_WIRELESS_STATUS_ON:I = 0x1

.field private static final MAX_FILE_SIZE:I = 0xf4240

.field public static SERVICE_NAME:Ljava/lang/String; = null

.field private static TAG:Ljava/lang/String; = null

.field public static final TETHERING_STATUS_OFF:I = 0x0

.field public static final TETHERING_STATUS_ON:I = 0x1

.field public static final WIFI_ADD_INVALID_STRING_EAP:I = -0xc

.field public static final WIFI_ADD_INVALID_STRING_PHASE1:I = -0xd

.field public static final WIFI_ADD_INVALID_STRING_PHASE2:I = -0xe

.field public static final WIFI_ADD_KEYSTORE_MISSING_CERT_NAME:I = -0xa

.field public static final WIFI_ADD_KEYSTOR_NO_UNLOCK:I = -0xb

.field public static final WIFI_ADD_SUCCESS:I

.field private static sIsServiceAlive:Z

.field private static sLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

.field private static sProcToken:Landroid/os/IBinder;


# instance fields
.field private final mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const-string/jumbo v0, "LGMDMDevicePolicyManager"

    sput-object v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "lgmdm_device_policy_manager"

    sput-object v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->SERVICE_NAME:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sIsServiceAlive:Z

    .line 66
    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->SERVICE_NAME:Ljava/lang/String;

    .line 76
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    .line 75
    return-void
.end method

.method public static create()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    .registers 1

    .prologue
    .line 82
    new-instance v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-direct {v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;-><init>()V

    .line 84
    .local v0, "me":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    return-object v0
.end method

.method public static getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    .registers 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sIsServiceAlive:Z

    if-nez v0, :cond_12

    .line 90
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->create()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    sput-object v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    .line 91
    sget-object v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    invoke-virtual {v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->isServiceAlive()Z

    move-result v0

    sput-boolean v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sIsServiceAlive:Z

    .line 93
    :cond_12
    sget-object v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    return-object v0
.end method

.method private readFile(Ljava/io/File;)[B
    .registers 11
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    .line 4259
    const/4 v2, 0x0

    .line 4261
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    new-array v0, v5, [B

    .line 4262
    .local v0, "data":[B
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_56
    .catchall {:try_start_2 .. :try_end_e} :catchall_91

    .line 4263
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_e
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_b6
    .catchall {:try_start_e .. :try_end_11} :catchall_b3

    .end local v2    # "fis":Ljava/io/FileInputStream;
    move-result v4

    .line 4264
    .local v4, "size":I
    if-gez v4, :cond_35

    .line 4272
    if-eqz v3, :cond_19

    .line 4274
    :try_start_16
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    .line 4265
    :cond_19
    :goto_19
    return-object v8

    .line 4275
    :catch_1a
    move-exception v1

    .line 4276
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cert file Close error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 4272
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_35
    if-eqz v3, :cond_3a

    .line 4274
    :try_start_37
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3b

    .line 4267
    :cond_3a
    :goto_3a
    return-object v0

    .line 4275
    :catch_3b
    move-exception v1

    .line 4276
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v5, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cert file Close error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 4268
    .end local v0    # "data":[B
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "size":I
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_56
    move-exception v1

    .line 4269
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_57
    :try_start_57
    sget-object v5, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cert file read error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_57 .. :try_end_70} :catchall_91

    .line 4272
    if-eqz v2, :cond_75

    .line 4274
    :try_start_72
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_76

    .line 4270
    :cond_75
    :goto_75
    return-object v8

    .line 4275
    :catch_76
    move-exception v1

    .line 4276
    sget-object v5, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cert file Close error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 4271
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_91
    move-exception v5

    .line 4272
    :goto_92
    if-eqz v2, :cond_97

    .line 4274
    :try_start_94
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_98

    .line 4271
    :cond_97
    :goto_97
    throw v5

    .line 4275
    :catch_98
    move-exception v1

    .line 4276
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v6, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cert file Close error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 4271
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "data":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_b3
    move-exception v5

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    goto :goto_92

    .line 4268
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_b6
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_57
.end method


# virtual methods
.method public ExportCCauditLogFile(Landroid/content/ComponentName;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 7285
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_22

    .line 7287
    :try_start_5
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    sput-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sProcToken:Landroid/os/IBinder;

    .line 7288
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    sget-object v3, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sProcToken:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2, v3}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->ExportCCauditLogFile(Landroid/content/ComponentName;ILandroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_17} :catch_19

    move-result-object v1

    return-object v1

    .line 7289
    :catch_19
    move-exception v0

    .line 7290
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7293
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_22
    return-object v4
.end method

.method public activateApn(Landroid/content/ComponentName;I)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "id"    # I

    .prologue
    .line 4777
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 4779
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->activateApn(Landroid/content/ComponentName;II)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 4780
    :catch_f
    move-exception v0

    .line 4781
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4784
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method public addApn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMApnConfiguration;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "config"    # Lcom/lge/mdm/config/LGMDMApnConfiguration;

    .prologue
    .line 4715
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 4717
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->addApn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMApnConfiguration;I)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 4718
    :catch_f
    move-exception v0

    .line 4719
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4722
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, -0x1

    return v1
.end method

.method public addEmailCertConfig(Lcom/lge/mdm/config/LGMDMEmailCertConfig;)V
    .registers 5
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMEmailCertConfig;

    .prologue
    .line 1402
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 1404
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->notifyAddEmailCertConfig(Lcom/lge/mdm/config/LGMDMEmailCertConfig;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1401
    :cond_d
    :goto_d
    return-void

    .line 1405
    :catch_e
    move-exception v0

    .line 1406
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public addExchangeConfig(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;)V
    .registers 5
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;

    .prologue
    .line 1312
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 1314
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->notifyAddEXCHANGEConfig(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1311
    :cond_d
    :goto_d
    return-void

    .line 1315
    :catch_e
    move-exception v0

    .line 1316
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public addLGVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMLgVpnProfile;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profile"    # Lcom/lge/mdm/config/LGMDMLgVpnProfile;

    .prologue
    .line 4042
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 4044
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->addLGVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMLgVpnProfile;I)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 4045
    :catch_f
    move-exception v0

    .line 4046
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4050
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    sget-object v1, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_PROFILE_RESULT;->UNKNOWN:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_PROFILE_RESULT;

    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_PROFILE_RESULT;->getCode()I

    move-result v1

    return v1
.end method

.method public addNetwork(Lcom/lge/mdm/config/LGMDMWifiConfiguration;)I
    .registers 5
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMWifiConfiguration;

    .prologue
    .line 2021
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 2023
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->addNetwork(Lcom/lge/mdm/config/LGMDMWifiConfiguration;I)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 2024
    :catch_f
    move-exception v0

    .line 2025
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2028
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, -0x1

    return v1
.end method

.method public addPOPIMAPConfig(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;)V
    .registers 5
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;

    .prologue
    .line 1230
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 1232
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->notifyAddPOPIMAPConfig(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1229
    :cond_d
    :goto_d
    return-void

    .line 1233
    :catch_e
    move-exception v0

    .line 1234
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public addVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profile"    # Lcom/lge/mdm/config/LGMDMVpnProfile;

    .prologue
    .line 3979
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 3981
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->addVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 3978
    :cond_d
    :goto_d
    return-void

    .line 3982
    :catch_e
    move-exception v0

    .line 3983
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public checkApplicationEnable(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3248
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkApplicationEnable(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public checkApplicationEnable(Ljava/lang/String;I)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 3253
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 3255
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->checkApplicationEnable(Ljava/lang/String;I)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 3256
    :catch_b
    move-exception v0

    .line 3257
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3260
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public checkBluetoothMacAddress(Ljava/lang/String;)Z
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 5001
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 5003
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->checkBluetoothMacAddress(Ljava/lang/String;I)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 5004
    :catch_f
    move-exception v0

    .line 5005
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5008
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method public checkCameraPackageInWhitelist(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 2489
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkCameraPackageInWhitelist(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkCameraPackageInWhitelist(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 2494
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 2496
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->checkCameraPackageInWhitelist(Ljava/lang/String;I)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 2497
    :catch_b
    move-exception v0

    .line 2498
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2501
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public checkEncryptionAvailable(I)Z
    .registers 3
    .param p1, "policy"    # I

    .prologue
    .line 4325
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkEncryptionAvailable(II)Z

    move-result v0

    return v0
.end method

.method public checkEncryptionAvailable(II)Z
    .registers 6
    .param p1, "policy"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 4330
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 4332
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->checkEncryptionAvailable(II)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 4333
    :catch_b
    move-exception v0

    .line 4334
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4337
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public checkEnforceMuteDuringCall(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 7018
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 7020
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->checkEnforceMuteDuringCall(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 7021
    :catch_b
    move-exception v0

    .line 7022
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7025
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public checkInstallAllowWithSignatureAndVersion(Landroid/content/ComponentName;Ljava/lang/String;[Landroid/content/pm/Signature;IILjava/lang/String;)Z
    .registers 15
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "signature"    # [Landroid/content/pm/Signature;
    .param p4, "flag"    # I
    .param p5, "userHandle"    # I
    .param p6, "versionName"    # Ljava/lang/String;

    .prologue
    .line 3488
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v0, :cond_1a

    .line 3490
    :try_start_4
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->checkInstallAllowWithSignatureAndVersion(Landroid/content/ComponentName;Ljava/lang/String;[Landroid/content/pm/Signature;IILjava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_f} :catch_11

    move-result v0

    return v0

    .line 3491
    :catch_11
    move-exception v7

    .line 3492
    .local v7, "e":Ljava/lang/Throwable;
    sget-object v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed talking with LGMDM device policy service"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3495
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method public checkInstallByMDM(II)Z
    .registers 6
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 6059
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6061
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->checkInstallByMDM(II)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6062
    :catch_b
    move-exception v0

    .line 6063
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6066
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public checkLockoutRecoveryKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "strRecoveryKey"    # Ljava/lang/String;

    .prologue
    .line 1205
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkLockoutRecoveryKey(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkLockoutRecoveryKey(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "strRecoveryKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 1210
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1212
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->checkLockoutRecoveryKey(Ljava/lang/String;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 1213
    :catch_b
    move-exception v0

    .line 1214
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1217
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public checkMicPackageInWhitelist(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 2925
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkMicPackageInWhitelist(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkMicPackageInWhitelist(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 2930
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 2932
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->checkMicPackageInWhitelist(Ljava/lang/String;I)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 2933
    :catch_b
    move-exception v0

    .line 2934
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2937
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public checkPackageNameFromPID(II)Ljava/lang/String;
    .registers 6
    .param p1, "pid"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 2979
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 2981
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->checkPackageNameFromPID(II)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    return-object v1

    .line 2982
    :catch_b
    move-exception v0

    .line 2983
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2986
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public checkPasswordRecovery(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 1153
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1155
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->checkPasswordRecovery(Ljava/lang/String;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 1156
    :catch_b
    move-exception v0

    .line 1157
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1160
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public checkRootDetection(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4696
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkRootDetection(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public checkRootDetection(Landroid/content/ComponentName;I)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4701
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 4703
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->checkRootDetection(Landroid/content/ComponentName;I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 4704
    :catch_b
    move-exception v0

    .line 4705
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4708
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public checkUninstallAllowWithFlag(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flag"    # I

    .prologue
    .line 3499
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkUninstallAllowWithFlag(Landroid/content/ComponentName;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public checkUninstallAllowWithFlag(Landroid/content/ComponentName;Ljava/lang/String;II)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flag"    # I
    .param p4, "userHandle"    # I

    .prologue
    .line 3505
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 3507
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->checkUninstallAllowWithFlag(Landroid/content/ComponentName;Ljava/lang/String;II)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 3508
    :catch_b
    move-exception v0

    .line 3509
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3512
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public connectVpn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;Lcom/lge/mdm/config/LGMDMLgVpnProfile;)I
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "nProfile"    # Lcom/lge/mdm/config/LGMDMVpnProfile;
    .param p3, "lProfile"    # Lcom/lge/mdm/config/LGMDMLgVpnProfile;

    .prologue
    .line 6267
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 6269
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->connectVpn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;Lcom/lge/mdm/config/LGMDMLgVpnProfile;I)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 6270
    :catch_f
    move-exception v0

    .line 6271
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6275
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    sget-object v1, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_IPSEC_RESULT;->IPSEC_OPERATION_FAILED:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_IPSEC_RESULT;

    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_IPSEC_RESULT;->getCode()I

    move-result v1

    return v1
.end method

.method public deleteApn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMApnConfiguration;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "config"    # Lcom/lge/mdm/config/LGMDMApnConfiguration;

    .prologue
    .line 4743
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 4745
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->deleteApn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMApnConfiguration;I)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 4746
    :catch_f
    move-exception v0

    .line 4747
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4750
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method public deleteEmailCertConfig(Ljava/lang/String;)V
    .registers 5
    .param p1, "sEmailCertID"    # Ljava/lang/String;

    .prologue
    .line 1421
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 1423
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->notifyDeleteEmailCertConfig(Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1420
    :cond_d
    :goto_d
    return-void

    .line 1424
    :catch_e
    move-exception v0

    .line 1425
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public deleteExchangeConfig(Ljava/lang/String;)V
    .registers 5
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 1350
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 1352
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->notifyDeleteEXCHANGEConfig(Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1349
    :cond_d
    :goto_d
    return-void

    .line 1353
    :catch_e
    move-exception v0

    .line 1354
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public deleteLGVpnProfile(Landroid/content/ComponentName;Ljava/lang/String;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "pName"    # Ljava/lang/String;

    .prologue
    .line 4066
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 4068
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->deleteLGVpnProfile(Landroid/content/ComponentName;Ljava/lang/String;I)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 4069
    :catch_f
    move-exception v0

    .line 4070
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4074
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    sget-object v1, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_PROFILE_RESULT;->UNKNOWN:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_PROFILE_RESULT;

    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_PROFILE_RESULT;->getCode()I

    move-result v1

    return v1
.end method

.method public deletePOPIMAPConfig(Ljava/lang/String;I)V
    .registers 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # I

    .prologue
    .line 1268
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 1270
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->notifyDeletePOPIMAPConfig(Ljava/lang/String;II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1267
    :cond_d
    :goto_d
    return-void

    .line 1271
    :catch_e
    move-exception v0

    .line 1272
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public deleteVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profile"    # Lcom/lge/mdm/config/LGMDMVpnProfile;

    .prologue
    .line 3999
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 4001
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->deleteVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 3998
    :cond_d
    :goto_d
    return-void

    .line 4002
    :catch_e
    move-exception v0

    .line 4003
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public devicePowerOff(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "devicefunction"    # I

    .prologue
    .line 5906
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5908
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->devicePowerOff(Landroid/content/ComponentName;II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5905
    :cond_d
    :goto_d
    return-void

    .line 5909
    :catch_e
    move-exception v0

    .line 5910
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public disableNetwork(I)Z
    .registers 5
    .param p1, "netId"    # I

    .prologue
    .line 2109
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 2111
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->disableNetwork(II)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 2112
    :catch_f
    move-exception v0

    .line 2113
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2116
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method public disconnect()Z
    .registers 4

    .prologue
    .line 2126
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 2128
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->disconnect(I)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 2129
    :catch_f
    move-exception v0

    .line 2130
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2133
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method public disconnectVpn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;Lcom/lge/mdm/config/LGMDMLgVpnProfile;)I
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "nProfile"    # Lcom/lge/mdm/config/LGMDMVpnProfile;
    .param p3, "lProfile"    # Lcom/lge/mdm/config/LGMDMLgVpnProfile;

    .prologue
    .line 6280
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 6282
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->disconnectVpn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;Lcom/lge/mdm/config/LGMDMLgVpnProfile;I)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 6283
    :catch_f
    move-exception v0

    .line 6284
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6288
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    sget-object v1, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_IPSEC_RESULT;->IPSEC_OPERATION_FAILED:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_IPSEC_RESULT;

    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_IPSEC_RESULT;->getCode()I

    move-result v1

    return v1
.end method

.method public enableNetwork(IZ)Z
    .registers 6
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 2090
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 2092
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->enableNetwork(IZI)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 2093
    :catch_f
    move-exception v0

    .line 2094
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2097
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method public endDeclawingPolicies(J)V
    .registers 6
    .param p1, "identity"    # J

    .prologue
    .line 7330
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 7332
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->endDeclawingPolicies(J)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 7329
    :cond_9
    :goto_9
    return-void

    .line 7333
    :catch_a
    move-exception v0

    .line 7334
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public enumCertificateId(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "useType"    # I
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
    .line 4206
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->enumCertificateId(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public enumCertificateId(Landroid/content/ComponentName;II)Ljava/util/List;
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "useType"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4211
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 4213
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->enumCertificateId(Landroid/content/ComponentName;II)Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 4214
    :catch_c
    move-exception v0

    .line 4215
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4218
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    return-object v3
.end method

.method public enumCertificateInfo(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMCredentials;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4190
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->enumCertificateInfo(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public enumCertificateInfo(Landroid/content/ComponentName;II)Ljava/util/List;
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "type"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMCredentials;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4195
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 4197
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->enumCertificateInfo(Landroid/content/ComponentName;II)Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 4198
    :catch_c
    move-exception v0

    .line 4199
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4202
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    return-object v3
.end method

.method public enumLGVpnAvailableCertificate(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4126
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_19

    .line 4128
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->enumLGVpnAvailableCertificate(Landroid/content/ComponentName;I)Ljava/util/List;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_10

    move-result-object v1

    return-object v1

    .line 4129
    :catch_10
    move-exception v0

    .line 4130
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4133
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    return-object v3
.end method

.method public enumLGVpnInstalledCertificate(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4137
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_19

    .line 4139
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->enumLGVpnInstalledCertificate(Landroid/content/ComponentName;I)Ljava/util/List;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_10

    move-result-object v1

    return-object v1

    .line 4140
    :catch_10
    move-exception v0

    .line 4141
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4144
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    return-object v3
.end method

.method public enumLGVpnProfile(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMLgVpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4078
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_19

    .line 4080
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->enumLGVpnProfile(Landroid/content/ComponentName;I)Ljava/util/List;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_10

    move-result-object v1

    return-object v1

    .line 4081
    :catch_10
    move-exception v0

    .line 4082
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4085
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    return-object v3
.end method

.method public enumVpnProfile(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMVpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4009
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->enumVpnProfile(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public enumVpnProfile(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMVpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4014
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 4016
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->enumVpnProfile(Landroid/content/ComponentName;I)Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 4017
    :catch_c
    move-exception v0

    .line 4018
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4021
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    return-object v3
.end method

.method public eraseStorage(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5242
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5244
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->eraseStorage(Landroid/content/ComponentName;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5241
    :cond_d
    :goto_d
    return-void

    .line 5245
    :catch_e
    move-exception v0

    .line 5246
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public forceStopPackage(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 3723
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->forceStopPackage(Ljava/lang/String;II)V

    .line 3722
    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;II)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 3728
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 3730
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->forceStopPackage(Ljava/lang/String;II)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_a

    .line 3727
    :cond_9
    :goto_9
    return-void

    .line 3731
    :catch_a
    move-exception v0

    .line 3732
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public get3G4GDataUsageInformation(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "startDate"    # Ljava/lang/String;
    .param p4, "endDate"    # Ljava/lang/String;

    .prologue
    .line 4488
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->get3G4GDataUsageInformation(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public get3G4GDataUsageInformation(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "startDate"    # Ljava/lang/String;
    .param p4, "endDate"    # Ljava/lang/String;
    .param p5, "userHandle"    # I

    .prologue
    .line 4494
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v0, :cond_19

    .line 4496
    :try_start_4
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->get3G4GDataUsageInformation(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-wide v0

    return-wide v0

    .line 4498
    :catch_10
    move-exception v6

    .line 4499
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed talking with LGMDM device policy service"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4502
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_19
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getAPILevel()I
    .registers 4

    .prologue
    .line 5499
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5501
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAPILevel()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5502
    :catch_b
    move-exception v0

    .line 5503
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5506
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getActiveAdminList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getActiveAdminList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getActiveAdminList(I)Ljava/util/List;
    .registers 6
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 201
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 203
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getActiveAdminList(I)Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 204
    :catch_c
    move-exception v0

    .line 205
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    return-object v3
.end method

.method public getActiveSyncID(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I

    .prologue
    .line 1676
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getActiveSyncID(Landroid/content/ComponentName;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveSyncID(Landroid/content/ComponentName;II)Ljava/lang/String;
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 1681
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 1683
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getActiveSyncID(Landroid/content/ComponentName;II)Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 1684
    :catch_c
    move-exception v0

    .line 1685
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1688
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    return-object v3
.end method

.method public getAllowAirplaneModeOn(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4393
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowAirplaneModeOn(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowAirplaneModeOn(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4398
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 4400
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowAirplaneModeOn(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 4401
    :catch_b
    move-exception v0

    .line 4402
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4405
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowAndroidBeam(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4364
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowAndroidBeam(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowAndroidBeam(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4369
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 4371
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowAndroidBeam(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 4372
    :catch_b
    move-exception v0

    .line 4373
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4376
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowAutoRestore(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5771
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowAutoRestore(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowAutoRestore(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5776
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5778
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowAutoRestore(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5779
    :catch_b
    move-exception v0

    .line 5780
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5783
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowAutoSync(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5826
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowAutoSync(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowAutoSync(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5831
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5833
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowAutoSync(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5834
    :catch_b
    move-exception v0

    .line 5835
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5838
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getAllowBackgroundProcessLimit(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5483
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBackgroundProcessLimit(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowBackgroundProcessLimit(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5488
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5490
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowBackgroundProcessLimit(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5491
    :catch_b
    move-exception v0

    .line 5492
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5495
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowBluetooth(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2308
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBluetooth(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getAllowBluetooth(Landroid/content/ComponentName;I)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2317
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 2319
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowBluetooth(Landroid/content/ComponentName;I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 2320
    :catch_b
    move-exception v0

    .line 2321
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2324
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x2

    return v1
.end method

.method public getAllowBluetoothPairing(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4936
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBluetoothPairing(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowBluetoothPairing(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4941
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 4943
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowBluetoothPairing(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 4944
    :catch_b
    move-exception v0

    .line 4945
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4948
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowBluetoothProfiles(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4836
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBluetoothProfiles(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getAllowBluetoothProfiles(Landroid/content/ComponentName;I)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4841
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 4843
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowBluetoothProfiles(Landroid/content/ComponentName;I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 4844
    :catch_b
    move-exception v0

    .line 4845
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4848
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/16 v1, 0xf

    return v1
.end method

.method public getAllowBluetoothTethering(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2270
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBluetoothTethering(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowBluetoothTethering(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2275
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 2277
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowBluetoothTethering(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 2278
    :catch_b
    move-exception v0

    .line 2279
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2282
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowBluetoothVisible(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4791
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBluetoothVisible(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowBluetoothVisible(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4796
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 4798
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowBluetoothVisible(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 4799
    :catch_b
    move-exception v0

    .line 4800
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM Bluetooth service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4803
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowBluetoothWithMACWhitelist(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4984
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBluetoothWithMACWhitelist(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowBluetoothWithMACWhitelist(Landroid/content/ComponentName;I)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4989
    const/4 v0, 0x1

    .line 4990
    .local v0, "allow":Z
    iget-object v2, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v2, :cond_15

    .line 4992
    :try_start_5
    iget-object v2, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowBluetoothWithMACWhitelist(Landroid/content/ComponentName;I)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v2

    return v2

    .line 4993
    :catch_c
    move-exception v1

    .line 4994
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed talking with LGMDM device policy service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4997
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_15
    return v0
.end method

.method public getAllowBrowser(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 655
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBrowser(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowBrowser(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 664
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 666
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowBrowser(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 667
    :catch_b
    move-exception v0

    .line 668
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 671
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowBrowserProxySetup(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5039
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBrowserProxySetup(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowBrowserProxySetup(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5044
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5046
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowBrowserProxySetup(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5047
    :catch_b
    move-exception v0

    .line 5048
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5051
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowCIDWithWhitelist(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2592
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowCIDWithWhitelist(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowCIDWithWhitelist(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2597
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 2599
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowCIDWithWhitelist(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 2600
    :catch_b
    move-exception v0

    .line 2601
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2604
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getAllowCallInRoaming(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5361
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowCallInRoaming(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowCallInRoaming(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5366
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5368
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowCallInRoaming(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5369
    :catch_b
    move-exception v0

    .line 5370
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5373
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowCameraWithWhitelist(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2453
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowCameraWithWhitelist(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowCameraWithWhitelist(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2458
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 2460
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowCameraWithWhitelist(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 2461
    :catch_b
    move-exception v0

    .line 2462
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2465
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowChangeDateAndTime(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6422
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowChangeDateAndTime(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowChangeDateAndTime(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6427
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6429
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowChangeDateAndTime(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6430
    :catch_b
    move-exception v0

    .line 6431
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6434
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowChangeTimezone(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6448
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowChangeTimezone(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowChangeTimezone(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6453
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6455
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowChangeTimezone(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6456
    :catch_b
    move-exception v0

    .line 6457
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6460
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowChangingMobileDataUsageCycle(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6478
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowChangingMobileDataUsageCycle(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowChangingMobileDataUsageCycle(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6483
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6485
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowChangingMobileDataUsageCycle(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6486
    :catch_b
    move-exception v0

    .line 6487
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6490
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowClipboard(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5593
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowClipboard(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowClipboard(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5598
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5600
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowClipboard(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5601
    :catch_b
    move-exception v0

    .line 5602
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5605
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowCommandForInternetAccess(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4659
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowCommandForInternetAccess(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowCommandForInternetAccess(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4664
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 4666
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowCommandForInternetAccess(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 4667
    :catch_b
    move-exception v0

    .line 4668
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4671
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowConsumerEmail(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1485
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowConsumerEmail(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowConsumerEmail(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1494
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1496
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowConsumerEmail(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 1497
    :catch_b
    move-exception v0

    .line 1498
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1501
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowContactInfoAccess(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6765
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowContactInfoAccess(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getAllowContactInfoAccess(Landroid/content/ComponentName;I)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6769
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6771
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowContactInfoAccess(Landroid/content/ComponentName;I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6772
    :catch_b
    move-exception v0

    .line 6773
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6776
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getAllowDLNADiscovery(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6650
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowDLNADiscovery(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowDLNADiscovery(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6655
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6657
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowDLNADiscovery(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6658
    :catch_b
    move-exception v0

    .line 6659
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6662
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowDataRoaming(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 697
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowDataRoaming(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowDataRoaming(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 702
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 704
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowDataRoaming(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 705
    :catch_b
    move-exception v0

    .line 706
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 709
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowDataTransmissionViaAudioPort(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6619
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowDataTransmissionViaAudioPort(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowDataTransmissionViaAudioPort(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6624
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6626
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowDataTransmissionViaAudioPort(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6627
    :catch_b
    move-exception v0

    .line 6628
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6631
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowDeveloperMode(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6854
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowDeveloperMode(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowDeveloperMode(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6859
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6861
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowDeveloperMode(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6862
    :catch_b
    move-exception v0

    .line 6863
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6866
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowDownloadMode(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6360
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowDownloadMode(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowDownloadMode(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6365
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6367
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowDownloadMode(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6368
    :catch_b
    move-exception v0

    .line 6369
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6372
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowDualWindow(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7046
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowDualWindow(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowDualWindow(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 7051
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 7053
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowDualWindow(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 7054
    :catch_b
    move-exception v0

    .line 7055
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7058
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getAllowExternalMemorySlot(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2512
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowExternalMemorySlot(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowExternalMemorySlot(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2521
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 2523
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowExternalMemorySlotStatus(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 2524
    :catch_b
    move-exception v0

    .line 2525
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2528
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowGPSLocation(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2639
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowGPSLocation(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowGPSLocation(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2644
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 2646
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowGPSLocation(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 2647
    :catch_b
    move-exception v0

    .line 2648
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2651
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowGoogleBackup(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5742
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowGoogleBackup(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowGoogleBackup(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5747
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5749
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowGoogleBackup(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5750
    :catch_b
    move-exception v0

    .line 5751
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5754
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowGoogleErrorReport(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3933
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowGoogleErrorReport(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getAllowGoogleErrorReport(Landroid/content/ComponentName;I)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3938
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 3940
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowGoogleErrorReport(Landroid/content/ComponentName;I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 3941
    :catch_b
    move-exception v0

    .line 3942
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3945
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getAllowHardwareFactoryreset(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4451
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowHardwareFactoryreset(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowHardwareFactoryreset(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4456
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 4458
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowHardwareFactoryreset(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 4459
    :catch_b
    move-exception v0

    .line 4460
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4463
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowHotspot(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2207
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowHotspot(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowHotspot(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2212
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 2214
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowHotspot(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 2215
    :catch_b
    move-exception v0

    .line 2216
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2219
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowIMEI(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2811
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowIMEI(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowIMEI(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2816
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 2818
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowIMEI(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 2819
    :catch_b
    move-exception v0

    .line 2820
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2823
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowIMSI(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2832
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowIMSI(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowIMSI(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2837
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 2839
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowIMSI(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 2840
    :catch_b
    move-exception v0

    .line 2841
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2844
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowInfraredPort(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6912
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowInfraredPort(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowInfraredPort(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6917
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6919
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowInfraredPort(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6920
    :catch_b
    move-exception v0

    .line 6921
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6924
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowInstallApplication(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3390
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowInstallApplication(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowInstallApplication(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3395
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 3397
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowInstallApplication(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 3398
    :catch_b
    move-exception v0

    .line 3399
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3402
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowListForInternetAccess(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4582
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowListForInternetAccess(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getAllowListForInternetAccess(Landroid/content/ComponentName;I)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4588
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 4590
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowListForInternetAccess(Landroid/content/ComponentName;I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 4591
    :catch_b
    move-exception v0

    .line 4592
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4595
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getAllowLockdownApps(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3608
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowLockdownApps(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowLockdownApps(Landroid/content/ComponentName;I)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3613
    const/4 v1, 0x0

    .line 3614
    .local v1, "result":Z
    iget-object v2, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v2, :cond_b

    .line 3616
    :try_start_5
    iget-object v2, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowLockdownApps(Landroid/content/ComponentName;I)Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 3621
    .end local v1    # "result":Z
    :cond_b
    :goto_b
    return v1

    .line 3617
    .restart local v1    # "result":Z
    :catch_c
    move-exception v0

    .line 3618
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed talking with LGMDM device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public getAllowMaximumRepeatedPassword(Landroid/content/ComponentName;)I
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 298
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 300
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowMaximumRepeatedPassword(Landroid/content/ComponentName;I)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 301
    :catch_f
    move-exception v0

    .line 302
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method public getAllowMaximumSequentialPassword(Landroid/content/ComponentName;)I
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 331
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 333
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowMaximumSequentialPassword(Landroid/content/ComponentName;I)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 334
    :catch_f
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method public getAllowMicrophone(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2886
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMicrophone(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowMicrophone(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2891
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 2893
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowMicrophone(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 2894
    :catch_b
    move-exception v0

    .line 2895
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2898
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowMiracast(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5649
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMiracast(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowMiracast(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5654
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5656
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowMiracast(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5657
    :catch_b
    move-exception v0

    .line 5658
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5661
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowMobileNetwork(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 735
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMobileNetwork(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowMobileNetwork(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 740
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 742
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowMobileNetwork(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 743
    :catch_b
    move-exception v0

    .line 744
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 747
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowMockLocation(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2789
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMockLocation(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowMockLocation(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2794
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 2796
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowMockLocation(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 2797
    :catch_b
    move-exception v0

    .line 2798
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2801
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowMultiUser(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6022
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMultiUser(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowMultiUser(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6027
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6029
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowMultiUser(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6030
    :catch_b
    move-exception v0

    .line 6031
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6034
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowNfc(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4309
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowNfc(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getAllowNfc(Landroid/content/ComponentName;I)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4314
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 4316
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowNfc(Landroid/content/ComponentName;I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 4317
    :catch_b
    move-exception v0

    .line 4318
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4321
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowNonWebkitBrowser(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6339
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowNonWebkitBrowser(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowNonWebkitBrowser(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6348
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6350
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowNonWebkitBrowser(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6351
    :catch_b
    move-exception v0

    .line 6352
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6355
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowNotifySpecificProcessKillEvent(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3674
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowNotifySpecificProcessKillEvent(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowNotifySpecificProcessKillEvent(Landroid/content/ComponentName;I)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3679
    const/4 v1, 0x0

    .line 3680
    .local v1, "result":Z
    iget-object v2, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v2, :cond_b

    .line 3682
    :try_start_5
    iget-object v2, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowNotifySpecificProcessKillEvent(Landroid/content/ComponentName;I)Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 3687
    .end local v1    # "result":Z
    :cond_b
    :goto_b
    return v1

    .line 3683
    .restart local v1    # "result":Z
    :catch_c
    move-exception v0

    .line 3684
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed talking with LGMDM device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public getAllowOSUpdate(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5297
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowOSUpdate(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowOSUpdate(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5302
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5304
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowOSUpdate(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5305
    :catch_b
    move-exception v0

    .line 5306
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5309
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowOwnerInfo(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6126
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowOwnerInfo(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getAllowOwnerInfo(Landroid/content/ComponentName;I)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6130
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6132
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowOwnerInfo(Landroid/content/ComponentName;I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6133
    :catch_b
    move-exception v0

    .line 6134
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6137
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1567
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowPOPIMAPEmail(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1576
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1578
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 1579
    :catch_b
    move-exception v0

    .line 1580
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1583
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowPassiveProvider(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5987
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowPassiveProvider(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowPassiveProvider(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5992
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5994
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowPassiveProvider(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5995
    :catch_b
    move-exception v0

    .line 5996
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5999
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowPasswordComplexForEAS(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 364
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowPasswordComplexForEAS(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowPasswordComplexForEAS(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 373
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 375
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowPasswordComplexForEAS(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 376
    :catch_b
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getAllowPasswordTypingVisible(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5788
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowPasswordTypingVisible(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowPasswordTypingVisible(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5792
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5794
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowPasswordTypingVisible(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5795
    :catch_b
    move-exception v0

    .line 5796
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5799
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getAllowPasswordVisible(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6071
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowPasswordVisible(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowPasswordVisible(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6075
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6077
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowPasswordVisible(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6078
    :catch_b
    move-exception v0

    .line 6079
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6082
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowPowerOff(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7108
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowPowerOff(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowPowerOff(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 7112
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 7114
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowPowerOff(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 7115
    :catch_b
    move-exception v0

    .line 7116
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7119
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowQuickCircle(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7136
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowQuickCircle(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowQuickCircle(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 7140
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 7142
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowQuickCircle(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 7143
    :catch_b
    move-exception v0

    .line 7144
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7147
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getAllowReadyToConnectInBluetooth(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7239
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowReadyToConnectInBluetooth(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowReadyToConnectInBluetooth(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 7243
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 7245
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowReadyToConnectInBluetooth(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 7246
    :catch_b
    move-exception v0

    .line 7247
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7250
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowReceivingSmsMms(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6689
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowReceivingSmsMms(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowReceivingSmsMms(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6696
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6698
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowReceivingSmsMms(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6699
    :catch_b
    move-exception v0

    .line 6700
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6703
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowRemoveDeviceAdmin(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3344
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowRemoveDeviceAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getAllowRemoveDeviceAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 3349
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 3351
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowRemoveDeviceAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 3352
    :catch_b
    move-exception v0

    .line 3353
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3356
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowRemoveGoogleAccount(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5681
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowRemoveGoogleAccount(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowRemoveGoogleAccount(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5686
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5688
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowRemoveGoogleAccount(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5689
    :catch_b
    move-exception v0

    .line 5690
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5693
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowSafeMode(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7188
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowSafeMode(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowSafeMode(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 7192
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 7194
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowSafeMode(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 7195
    :catch_b
    move-exception v0

    .line 7196
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7199
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowScreenCapture(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 790
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowScreenCapture(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowScreenCapture(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 795
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 797
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowScreenCapture(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 798
    :catch_b
    move-exception v0

    .line 799
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 802
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowScreenCaptureBlacklistWithoutADB(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 872
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowScreenCaptureBlacklistWithoutADB(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowScreenCaptureBlacklistWithoutADB(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 877
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 879
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowScreenCaptureBlacklistWithoutADB(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 880
    :catch_b
    move-exception v0

    .line 881
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 884
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowScreenCaptureWhitelistWithoutADB(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 941
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowScreenCaptureWhitelistWithoutADB(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowScreenCaptureWhitelistWithoutADB(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 946
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 948
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowScreenCaptureWhitelistWithoutADB(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 950
    :catch_b
    move-exception v0

    .line 951
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 954
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowScreenCaptureWithBlacklist(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 844
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowScreenCaptureWithBlacklist(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowScreenCaptureWithBlacklist(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 849
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 851
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowScreenCaptureWithBlacklist(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 852
    :catch_b
    move-exception v0

    .line 853
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 856
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowScreenCaptureWithoutADB(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 816
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowScreenCaptureWithoutADB(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowScreenCaptureWithoutADB(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 821
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 823
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowScreenCaptureWithoutADB(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 824
    :catch_b
    move-exception v0

    .line 825
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 828
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowScreenPin(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6098
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowScreenPin(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowScreenPin(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6102
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6104
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowScreenPin(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6105
    :catch_b
    move-exception v0

    .line 6106
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6109
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowSendingSMS(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1011
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowSendingSMS(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowSendingSMS(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1020
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1022
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowSendingSMS(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 1023
    :catch_b
    move-exception v0

    .line 1024
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1027
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowShortcutKey(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x1

    .line 6196
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-nez v1, :cond_6

    .line 6197
    return v3

    .line 6201
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowShortcutKey(Landroid/content/ComponentName;I)Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_f} :catch_11

    move-result v1

    return v1

    .line 6202
    :catch_11
    move-exception v0

    .line 6203
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6206
    return v3
.end method

.method public getAllowSignatureState(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3787
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowSignatureState(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowSignatureState(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3792
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 3794
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowSignatureState(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 3795
    :catch_b
    move-exception v0

    .line 3796
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3799
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getAllowSimplePasswordEx(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 257
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowSimplePasswordEx(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getAllowSimplePasswordEx(Landroid/content/ComponentName;I)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 266
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 268
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowSimplePasswordEx(Landroid/content/ComponentName;I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 269
    :catch_b
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getAllowSpecificApplication(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 3844
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowSpecificApplication(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getAllowSpecificApplication(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "applicationName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 3850
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 3852
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowSpecificApplication(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 3853
    :catch_b
    move-exception v0

    .line 3854
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3857
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowSpecificApplicationAll(Landroid/content/ComponentName;)[Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3861
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowSpecificApplicationAll(Landroid/content/ComponentName;I)[Z

    move-result-object v0

    return-object v0
.end method

.method public getAllowSpecificApplicationAll(Landroid/content/ComponentName;I)[Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 3866
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 3868
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowSpecificApplicationAll(Landroid/content/ComponentName;I)[Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 3869
    :catch_c
    move-exception v0

    .line 3870
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3873
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_15
    return-object v3
.end method

.method public getAllowSpecificKey(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "keyType"    # I

    .prologue
    .line 5268
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowSpecificKey(Landroid/content/ComponentName;II)Z

    move-result v0

    return v0
.end method

.method public getAllowSpecificKey(Landroid/content/ComponentName;II)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "keyType"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 5273
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5275
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowSpecificKey(Landroid/content/ComponentName;II)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5276
    :catch_b
    move-exception v0

    .line 5277
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5280
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowStatusBarExpansion(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5858
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowStatusBarExpansion(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowStatusBarExpansion(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5863
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5865
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowStatusBarExpansion(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5866
    :catch_b
    move-exception v0

    .line 5867
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5870
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowTethering(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2165
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowTethering(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowTethering(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2174
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 2176
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowTethering(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 2177
    :catch_b
    move-exception v0

    .line 2178
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2181
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowUSBDebugging(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 973
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUSBDebugging(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowUSBDebugging(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 978
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 980
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowUSBDebugging(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 981
    :catch_b
    move-exception v0

    .line 982
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 985
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowUSBHostStorage(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5946
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUSBHostStorage(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowUSBHostStorage(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5950
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5952
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowUSBHostStorageStatus(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5953
    :catch_b
    move-exception v0

    .line 5954
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5957
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowUSBMtp(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5380
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUSBMtp(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowUSBMtp(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5383
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5385
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowUSBMtp(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5386
    :catch_b
    move-exception v0

    .line 5387
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5390
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowUSBPtp(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5405
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUSBPtp(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowUSBPtp(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5409
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5411
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowUSBPtp(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5412
    :catch_b
    move-exception v0

    .line 5413
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5416
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowUSBStorage(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5432
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUSBStorage(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowUSBStorage(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5435
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5437
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowUSBStorage(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5438
    :catch_b
    move-exception v0

    .line 5439
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5442
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowUSBTethering(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2237
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUSBTethering(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowUSBTethering(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2242
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 2244
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowUSBTethering(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 2245
    :catch_b
    move-exception v0

    .line 2246
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2249
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowUninstallApplication(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3416
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUninstallApplication(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowUninstallApplication(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3421
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 3423
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowUninstallApplication(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 3424
    :catch_b
    move-exception v0

    .line 3425
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3428
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowUnknownSourceInstallation(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3281
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUnknownSourceInstallation(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowUnknownSourceInstallation(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3290
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 3292
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowUnknownSourceInstallation(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 3293
    :catch_b
    move-exception v0

    .line 3294
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3297
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowUnsignedApplication(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3532
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUnsignedApplication(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowUnsignedApplication(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3541
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 3543
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowUnsignedApplication(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 3544
    :catch_b
    move-exception v0

    .line 3545
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3548
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowUsb(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3119
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUsb(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowUsb(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3124
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 3126
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowUsb(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 3127
    :catch_b
    move-exception v0

    .line 3128
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3131
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowUsbData(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3146
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUsbData(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowUsbData(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3150
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 3152
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowUsbData(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 3153
    :catch_b
    move-exception v0

    .line 3154
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3157
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowUsbDrive(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3171
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUsbDrive(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowUsbDrive(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3175
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 3177
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowUsbDrive(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 3178
    :catch_b
    move-exception v0

    .line 3179
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3182
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowUsbPort(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3196
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUsbPort(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowUsbPort(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3200
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 3202
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowUsbPort(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 3203
    :catch_b
    move-exception v0

    .line 3204
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3207
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowVPNSplitTunneling(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6240
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowVPNSplitTunneling(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowVPNSplitTunneling(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6245
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6247
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowVPNSplitTunneling(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6248
    :catch_b
    move-exception v0

    .line 6249
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6252
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowVerizonLocation(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5929
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowVerizonLocation(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowVerizonLocation(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5934
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5936
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowVerizonLocation(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5937
    :catch_b
    move-exception v0

    .line 5938
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5941
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowVpn(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6213
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowVpn(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getAllowVpn(Landroid/content/ComponentName;I)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6218
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6220
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowVpn(Landroid/content/ComponentName;I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6221
    :catch_b
    move-exception v0

    .line 6222
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6225
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getAllowWiFiMacAddressList(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5145
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWiFiMacAddressList(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllowWiFiMacAddressList(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 7
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
    const/4 v3, 0x0

    .line 5150
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 5152
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowWiFiMacAddressList(Landroid/content/ComponentName;I)Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 5153
    :catch_c
    move-exception v0

    .line 5154
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5157
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    return-object v3
.end method

.method public getAllowWiFiMacAddressListType(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5161
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWiFiMacAddressListType(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getAllowWiFiMacAddressListType(Landroid/content/ComponentName;I)I
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5166
    const/4 v1, 0x0

    .line 5167
    .local v1, "type":I
    iget-object v2, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v2, :cond_15

    .line 5169
    :try_start_5
    iget-object v2, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowWiFiMacAddressListType(Landroid/content/ComponentName;I)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v2

    return v2

    .line 5170
    :catch_c
    move-exception v0

    .line 5171
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed talking with LGMDM device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5174
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    return v1
.end method

.method public getAllowWiFiProfileManagement(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5523
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWiFiProfileManagement(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowWiFiProfileManagement(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5531
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5533
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowWiFiProfileManagement(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5534
    :catch_b
    move-exception v0

    .line 5535
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5538
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowWiFiSSIDList(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5101
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWiFiSSIDList(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllowWiFiSSIDList(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 7
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
    const/4 v3, 0x0

    .line 5106
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 5108
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowWiFiSSIDList(Landroid/content/ComponentName;I)Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 5109
    :catch_c
    move-exception v0

    .line 5110
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5113
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    return-object v3
.end method

.method public getAllowWiFiSSIDListType(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5117
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWiFiSSIDListType(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getAllowWiFiSSIDListType(Landroid/content/ComponentName;I)I
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5122
    const/4 v1, 0x0

    .line 5123
    .local v1, "type":I
    iget-object v2, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v2, :cond_15

    .line 5125
    :try_start_5
    iget-object v2, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowWiFiSSIDListType(Landroid/content/ComponentName;I)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v2

    return v2

    .line 5126
    :catch_c
    move-exception v0

    .line 5127
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed talking with LGMDM device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5130
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    return v1
.end method

.method public getAllowWifi(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1904
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowWifi(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1913
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1915
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 1916
    :catch_b
    move-exception v0

    .line 1917
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1920
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowWifiAutoConnection(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5222
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWifiAutoConnection(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowWifiAutoConnection(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5227
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5229
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowWifiAutoConnection(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5230
    :catch_b
    move-exception v0

    .line 5231
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5234
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowWifiDirect(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5610
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWifiDirect(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowWifiDirect(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5614
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5616
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowWifiDirect(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5617
    :catch_b
    move-exception v0

    .line 5618
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5621
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowWifiScan(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1956
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWifiScan(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowWifiScan(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1961
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1963
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowWifiScan(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 1964
    :catch_b
    move-exception v0

    .line 1965
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1968
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowWipeData(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1051
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWipeData(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowWipeData(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1056
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1058
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowWipeData(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 1059
    :catch_b
    move-exception v0

    .line 1060
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1063
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowWipeDataMaster()Z
    .registers 2

    .prologue
    .line 4158
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWipeDataMaster(I)Z

    move-result v0

    return v0
.end method

.method public getAllowWipeDataMaster(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 4163
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 4165
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowWipeDataMaster(I)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 4166
    :catch_b
    move-exception v0

    .line 4167
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4170
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getAllowWirelessLocation(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2655
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWirelessLocation(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowWirelessLocation(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2660
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 2662
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowWirelessLocation(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 2663
    :catch_b
    move-exception v0

    .line 2664
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2667
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowWirelessLocationWithWhitelist(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2709
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWirelessLocationWithWhitelist(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getAllowWirelessLocationWithWhitelist(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2714
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 2716
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowWirelessLocationWithWhitelist(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 2717
    :catch_b
    move-exception v0

    .line 2718
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2721
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowWirelessStorage(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5553
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWirelessStorage(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getAllowWirelessStorage(Landroid/content/ComponentName;I)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5560
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5562
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAllowWirelessStorage(Landroid/content/ComponentName;I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5563
    :catch_b
    move-exception v0

    .line 5564
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5567
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getAppVersionCode(Ljava/lang/String;)I
    .registers 5
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 3081
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 3083
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAppVersionCode(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 3084
    :catch_b
    move-exception v0

    .line 3085
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3088
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getAppVersionState(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMAppVersionState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3470
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAppVersionState(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersionState(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMAppVersionState;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3475
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 3477
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getAppVersionState(Landroid/content/ComponentName;I)Ljava/util/List;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 3478
    :catch_c
    move-exception v0

    .line 3479
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3482
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_15
    return-object v3
.end method

.method public getApplicationState(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMApplicationState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3443
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getApplicationState(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationState(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMApplicationState;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3448
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 3450
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getApplicationState(Landroid/content/ComponentName;I)Ljava/util/List;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 3451
    :catch_c
    move-exception v0

    .line 3452
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3455
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_15
    return-object v3
.end method

.method public getBlockingConsumerEmailList(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1527
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_19

    .line 1529
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getBlockingConsumerEmailList(Landroid/content/ComponentName;I)Ljava/util/List;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_10

    move-result-object v1

    return-object v1

    .line 1530
    :catch_10
    move-exception v0

    .line 1531
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1534
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    return-object v3
.end method

.method public getBluetoothMACWhitelist(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4968
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getBluetoothMACWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothMACWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 7
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
    const/4 v3, 0x0

    .line 4973
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 4975
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getBluetoothMACWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 4976
    :catch_c
    move-exception v0

    .line 4977
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4980
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    return-object v3
.end method

.method public getBluetoothMaxVisiblityTimeOut(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4868
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getBluetoothMaxVisiblityTimeOut(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getBluetoothMaxVisiblityTimeOut(Landroid/content/ComponentName;I)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4873
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 4875
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getBluetoothMaxVisiblityTimeOut(Landroid/content/ComponentName;I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 4876
    :catch_b
    move-exception v0

    .line 4877
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4880
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, -0x1

    return v1
.end method

.method public getBluetoothSearchedDeviceType(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4904
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getBluetoothSearchedDeviceType(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getBluetoothSearchedDeviceType(Landroid/content/ComponentName;I)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4909
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 4911
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getBluetoothSearchedDeviceType(Landroid/content/ComponentName;I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 4912
    :catch_b
    move-exception v0

    .line 4913
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4916
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/16 v1, 0x1f

    return v1
.end method

.method public getBrowserProxyIPAddress(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5055
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getBrowserProxyIPAddress(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBrowserProxyIPAddress(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 5060
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 5062
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getBrowserProxyIPAddress(Landroid/content/ComponentName;I)Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 5063
    :catch_c
    move-exception v0

    .line 5064
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5067
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    return-object v3
.end method

.method public getBrowserProxyPortNumber(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5071
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getBrowserProxyPortNumber(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getBrowserProxyPortNumber(Landroid/content/ComponentName;I)I
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5076
    const/4 v1, -0x1

    .line 5077
    .local v1, "port":I
    iget-object v2, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v2, :cond_15

    .line 5079
    :try_start_5
    iget-object v2, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getBrowserProxyPortNumber(Landroid/content/ComponentName;I)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v2

    return v2

    .line 5080
    :catch_c
    move-exception v0

    .line 5081
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed talking with LGMDM device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5084
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    return v1
.end method

.method public getCIDWithWhitelist(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2611
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getCIDWithWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCIDWithWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 7
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
    const/4 v3, 0x0

    .line 2616
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 2618
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getCIDWithWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 2619
    :catch_c
    move-exception v0

    .line 2620
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2623
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_15
    return-object v3
.end method

.method public getCameraPid()I
    .registers 2

    .prologue
    .line 2423
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getCameraPid(I)I

    move-result v0

    return v0
.end method

.method public getCameraPid(I)I
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 2428
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 2430
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getCameraPid(I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 2431
    :catch_b
    move-exception v0

    .line 2432
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2435
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getCameraStatus()Z
    .registers 2

    .prologue
    .line 2378
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getCameraStatus(I)Z

    move-result v0

    return v0
.end method

.method public getCameraStatus(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 2383
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 2385
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getCameraStatus(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 2386
    :catch_b
    move-exception v0

    .line 2387
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2390
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getCameraWhitelist(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2469
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getCameraWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCameraWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 7
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
    const/4 v3, 0x0

    .line 2474
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 2476
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getCameraWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 2477
    :catch_c
    move-exception v0

    .line 2478
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2481
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_15
    return-object v3
.end method

.method public getCommandListForInternetAccess(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4675
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getCommandListForInternetAccess(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCommandListForInternetAccess(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 7
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
    const/4 v3, 0x0

    .line 4680
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 4682
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getCommandListForInternetAccess(Landroid/content/ComponentName;I)Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 4683
    :catch_c
    move-exception v0

    .line 4684
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4687
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    return-object v3
.end method

.method public getCommonCriteriaMode(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6938
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getCommonCriteriaMode(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getCommonCriteriaMode(Landroid/content/ComponentName;I)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6942
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6944
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getCommonCriteriaMode(Landroid/content/ComponentName;I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6945
    :catch_b
    move-exception v0

    .line 6946
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6949
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getConfiguredApnList(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "option"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMApnConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4757
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getConfiguredApnList(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredApnList(Landroid/content/ComponentName;II)Ljava/util/List;
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "option"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMApnConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4763
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 4765
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getConfiguredApnList(Landroid/content/ComponentName;II)Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 4766
    :catch_c
    move-exception v0

    .line 4767
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4770
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    return-object v3
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMWifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1991
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getConfiguredNetworks(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredNetworks(I)Ljava/util/List;
    .registers 6
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMWifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1996
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 1998
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getConfiguredNetworks(I)Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 1999
    :catch_c
    move-exception v0

    .line 2000
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2003
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    return-object v3
.end method

.method public getCountCommonCriteriaModeEnable(I)I
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    .line 7203
    const/4 v0, 0x0

    .line 7204
    .local v0, "counts":I
    iget-object v2, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v2, :cond_19

    .line 7206
    :try_start_5
    iget-object v2, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getCountCommonCriteriaModeEnable(I)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_10

    move-result v2

    return v2

    .line 7207
    :catch_10
    move-exception v1

    .line 7208
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed talking with LGMDM device policy service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7211
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    return v0
.end method

.method public getCurrIMEPackage(I)Ljava/lang/String;
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 3052
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 3054
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getCurrIMEPackage(I)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 3055
    :catch_c
    move-exception v0

    .line 3056
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3059
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_15
    return-object v3
.end method

.method public getCurrentConnectionLgVpn(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 6292
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_19

    .line 6294
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getCurrentConnectionLgVpn(Landroid/content/ComponentName;I)Ljava/lang/String;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_10

    move-result-object v1

    return-object v1

    .line 6295
    :catch_10
    move-exception v0

    .line 6296
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6300
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    return-object v3
.end method

.method public getCurrentConnectionVpn(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 6304
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_19

    .line 6306
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getCurrentConnectionVpn(Landroid/content/ComponentName;I)Ljava/lang/String;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_10

    move-result-object v1

    return-object v1

    .line 6307
    :catch_10
    move-exception v0

    .line 6308
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6312
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    return-object v3
.end method

.method public getCurrentUserID()I
    .registers 4

    .prologue
    .line 6048
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6050
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getCurrentUserID()I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6051
    :catch_b
    move-exception v0

    .line 6052
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6055
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getDebugMode()Z
    .registers 2

    .prologue
    .line 134
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getDebugMode(I)Z

    move-result v0

    return v0
.end method

.method public getDebugMode(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 139
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 141
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getDebugMode(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 142
    :catch_b
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getDisallowUSBType(I)Z
    .registers 3
    .param p1, "usbType"    # I

    .prologue
    .line 5458
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getDisallowUSBType(II)Z

    move-result v0

    return v0
.end method

.method public getDisallowUSBType(II)Z
    .registers 6
    .param p1, "usbType"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 5462
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5464
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getDisallowUSBType(II)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5465
    :catch_b
    move-exception v0

    .line 5466
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5469
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getDisallowWifiConnection(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 5195
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getDisallowWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getDisallowWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 5200
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5202
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getDisallowWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5203
    :catch_b
    move-exception v0

    .line 5204
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5207
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getDisallowWifiSecurityLevel(Landroid/net/wifi/WifiConfiguration;I)Z
    .registers 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "netID"    # I

    .prologue
    .line 5179
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getDisallowWifiSecurityLevel(Landroid/net/wifi/WifiConfiguration;II)Z

    move-result v0

    return v0
.end method

.method public getDisallowWifiSecurityLevel(Landroid/net/wifi/WifiConfiguration;II)Z
    .registers 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "netID"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 5184
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5186
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getDisallowWifiSecurityLevel(Landroid/net/wifi/WifiConfiguration;II)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5187
    :catch_b
    move-exception v0

    .line 5188
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5191
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getEmailAccountList(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMEmailAccountState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1701
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEmailAccountList(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEmailAccountList(Landroid/content/ComponentName;II)Ljava/util/List;
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMEmailAccountState;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1707
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 1709
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getEmailAccountList(Landroid/content/ComponentName;II)Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 1710
    :catch_c
    move-exception v0

    .line 1711
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1714
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    return-object v3
.end method

.method public getEmergencyCallStatus()Z
    .registers 4

    .prologue
    .line 6721
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6723
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getEmergencyCallStatus()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6724
    :catch_b
    move-exception v0

    .line 6725
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6728
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getEncryptionPolicy(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 435
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEncryptionPolicy(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getEncryptionPolicy(Landroid/content/ComponentName;I)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 440
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 442
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getEncryptionPolicy(Landroid/content/ComponentName;I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 443
    :catch_b
    move-exception v0

    .line 444
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x4

    return v1
.end method

.method public getEncryptionPolicyForEas(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 477
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEncryptionPolicyForEas(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getEncryptionPolicyForEas(Landroid/content/ComponentName;I)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 486
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 488
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getEncryptionPolicyForEas(Landroid/content/ComponentName;I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 489
    :catch_b
    move-exception v0

    .line 490
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x4

    return v1
.end method

.method public getEnforceAirplaneMode(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4422
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceAirplaneMode(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getEnforceAirplaneMode(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4427
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 4429
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getEnforceAirplaneMode(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 4430
    :catch_b
    move-exception v0

    .line 4431
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4434
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getEnforceAlertMobileDataUsage(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6540
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceAlertMobileDataUsage(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getEnforceAlertMobileDataUsage(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6545
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6547
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getEnforceAlertMobileDataUsage(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6548
    :catch_b
    move-exception v0

    .line 6549
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6552
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getEnforceBackgroundDataRestricted(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5713
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceBackgroundDataRestricted(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getEnforceBackgroundDataRestricted(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5718
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5720
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getEnforceBackgroundDataRestricted(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5721
    :catch_b
    move-exception v0

    .line 5722
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5725
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getEnforceEmergencyCallOnly(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5329
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceEmergencyCallOnly(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getEnforceEmergencyCallOnly(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5334
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5336
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getEnforceEmergencyCallOnly(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5337
    :catch_b
    move-exception v0

    .line 5338
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5341
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getEnforceGPSLocationEnabled(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2760
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceGPSLocationEnabled(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getEnforceGPSLocationEnabled(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2765
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 2767
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getEnforceGPSLocationEnabled(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 2768
    :catch_b
    move-exception v0

    .line 2769
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2772
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getEnforceLimitMobileDataUsage(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6510
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceLimitMobileDataUsage(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getEnforceLimitMobileDataUsage(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6515
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6517
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getEnforceLimitMobileDataUsage(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6518
    :catch_b
    move-exception v0

    .line 6519
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6522
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 764
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 769
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 771
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 772
    :catch_b
    move-exception v0

    .line 773
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 776
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getEnforceMuteDuringCall(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6998
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceMuteDuringCall(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getEnforceMuteDuringCall(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 7003
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 7005
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getEnforceMuteDuringCall(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 7006
    :catch_b
    move-exception v0

    .line 7007
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7010
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getEnforcePasswordChange()Z
    .registers 2

    .prologue
    .line 617
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforcePasswordChange(I)Z

    move-result v0

    return v0
.end method

.method public getEnforcePasswordChange(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 622
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 624
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getEnforcePasswordChange(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 625
    :catch_b
    move-exception v0

    .line 626
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 629
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getEnforcePowerButtonLocks(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6880
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforcePowerButtonLocks(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getEnforcePowerButtonLocks(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6884
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6886
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getEnforcePowerButtonLocks(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6887
    :catch_b
    move-exception v0

    .line 6888
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6891
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getEnforceUsbModeAsNone(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7079
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceUsbModeAsNone(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getEnforceUsbModeAsNone(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 7084
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 7086
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getEnforceUsbModeAsNone(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 7087
    :catch_b
    move-exception v0

    .line 7088
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7091
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getExternalMemoryCID(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2554
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getExternalMemoryCID(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalMemoryCID(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 2563
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 2565
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getExternalMemoryCID(Landroid/content/ComponentName;I)Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 2566
    :catch_c
    move-exception v0

    .line 2567
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2570
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    return-object v3
.end method

.method public getGranularControlOnCCMode()I
    .registers 2

    .prologue
    .line 6965
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getGranularControlOnCCMode(I)I

    move-result v0

    return v0
.end method

.method public getGranularControlOnCCMode(I)I
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 6969
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6971
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getGranularControlOnCCMode(I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6972
    :catch_b
    move-exception v0

    .line 6973
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6977
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, -0x1

    return v1
.end method

.method public getListForInternetAccess(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4626
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getListForInternetAccess(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getListForInternetAccess(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 7
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4632
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 4634
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getListForInternetAccess(Landroid/content/ComponentName;I)Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 4635
    :catch_c
    move-exception v0

    .line 4636
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4639
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    return-object v3
.end method

.method public getLockdownAppsPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3625
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLockdownAppsPackage(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLockdownAppsPackage(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3630
    const/4 v1, 0x0

    .line 3631
    .local v1, "packagename":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v2, :cond_b

    .line 3633
    :try_start_5
    iget-object v2, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getLockdownAppsPackage(Landroid/content/ComponentName;I)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    .line 3638
    .end local v1    # "packagename":Ljava/lang/String;
    :cond_b
    :goto_b
    return-object v1

    .line 3634
    .restart local v1    # "packagename":Ljava/lang/String;
    :catch_c
    move-exception v0

    .line 3635
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed talking with LGMDM device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public getLockoutDescript(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1116
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLockoutDescript(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLockoutDescript(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 1121
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 1123
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getLockoutDescript(Landroid/content/ComponentName;I)Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 1124
    :catch_c
    move-exception v0

    .line 1125
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1128
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    return-object v3
.end method

.method public getLockoutLevel(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1096
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLockoutLevel(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getLockoutLevel(Landroid/content/ComponentName;I)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1101
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1103
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getLockoutLevel(Landroid/content/ComponentName;I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 1104
    :catch_b
    move-exception v0

    .line 1105
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1108
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getLockoutNow(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1136
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLockoutNow(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getLockoutNow(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1141
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1143
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getLockoutNow(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 1144
    :catch_b
    move-exception v0

    .line 1145
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1148
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getManualSyncWhenRoaming(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1626
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getManualSyncWhenRoaming(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getManualSyncWhenRoaming(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1635
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1637
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getManualSyncWhenRoaming(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 1638
    :catch_b
    move-exception v0

    .line 1639
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1642
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getMicrophonePackage(ZI)Ljava/lang/String;
    .registers 7
    .param p1, "bSpeech"    # Z
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 3023
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 3025
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getMicrophonePackage(ZI)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 3026
    :catch_c
    move-exception v0

    .line 3027
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3030
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_15
    return-object v3
.end method

.method public getMicrophoneWhitelist(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2945
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getMicrophoneWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMicrophoneWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 7
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
    const/4 v3, 0x0

    .line 2950
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 2952
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getMicrophoneWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 2953
    :catch_c
    move-exception v0

    .line 2954
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2957
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_15
    return-object v3
.end method

.method public getMobileDataUsageInfo(Landroid/content/ComponentName;I)J
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6571
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getMobileDataUsageInfo(Landroid/content/ComponentName;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileDataUsageInfo(Landroid/content/ComponentName;II)J
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "type"    # I
    .param p3, "userHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6577
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6579
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getMobileDataUsageInfo(Landroid/content/ComponentName;II)J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v2

    return-wide v2

    .line 6580
    :catch_b
    move-exception v0

    .line 6581
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6584
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public getMobileDataUsageInformation(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6592
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getMobileDataUsageInformation(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMobileDataUsageInformation(Landroid/content/ComponentName;II)Ljava/util/List;
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "type"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 6597
    iget-object v5, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v5, :cond_37

    .line 6599
    :try_start_5
    iget-object v5, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v5, p1, p2, p3}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getMobileDataUsageInformation(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object v2

    .line 6601
    .local v2, "mStringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6602
    .local v1, "mLongList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v2, :cond_38

    .line 6603
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "str$iterator":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6604
    .local v3, "str":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_2d} :catch_2e

    goto :goto_16

    .line 6608
    .end local v1    # "mLongList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v2    # "mStringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "str$iterator":Ljava/util/Iterator;
    :catch_2e
    move-exception v0

    .line 6609
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Failed talking with LGMDM device policy service"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6612
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_37
    return-object v8

    .line 6607
    .restart local v1    # "mLongList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v2    # "mStringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_38
    return-object v1
.end method

.method public getNotifyRemoveGoogleAccountDisabled(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5887
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getNotifyRemoveGoogleAccountDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getNotifyRemoveGoogleAccountDisabled(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5892
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5894
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getNotifyRemoveGoogleAccountDisabled(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5895
    :catch_b
    move-exception v0

    .line 5896
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5899
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public getNotifySpecificProcessKillEventList(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3691
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getNotifySpecificProcessKillEventList(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNotifySpecificProcessKillEventList(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 7
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
    .line 3696
    const/4 v1, 0x0

    .line 3697
    .local v1, "packagelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v2, :cond_b

    .line 3699
    :try_start_5
    iget-object v2, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getNotifySpecificProcessKillEventList(Landroid/content/ComponentName;I)Ljava/util/List;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    .line 3704
    .end local v1    # "packagelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    :goto_b
    return-object v1

    .line 3700
    .restart local v1    # "packagelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_c
    move-exception v0

    .line 3701
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed talking with LGMDM device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public getOwnerInfo(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6151
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getOwnerInfo(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerInfo(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 6155
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 6157
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getOwnerInfo(Landroid/content/ComponentName;I)Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 6158
    :catch_c
    move-exception v0

    .line 6159
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6162
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    return-object v3
.end method

.method public getPasswordMinimumChange(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 396
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getPasswordMinimumChange(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumChange(Landroid/content/ComponentName;I)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 402
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 404
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getPasswordMinimumChange(Landroid/content/ComponentName;I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 405
    :catch_b
    move-exception v0

    .line 406
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getPasswordRecoveryByEas()Z
    .registers 2

    .prologue
    .line 544
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getPasswordRecoveryByEas(I)Z

    move-result v0

    return v0
.end method

.method public getPasswordRecoveryByEas(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 553
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 555
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getPasswordRecoveryByEas(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 556
    :catch_b
    move-exception v0

    .line 557
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getPasswordRecoveryEnabled(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 572
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getPasswordRecoveryEnabled(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getPasswordRecoveryEnabled(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 581
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 583
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getPasswordRecoveryEnabled(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 584
    :catch_b
    move-exception v0

    .line 585
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 588
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getPossibleManageWiFiProfile()Z
    .registers 4

    .prologue
    .line 5541
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 5543
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getPossibleManageWiFiProfile()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5544
    :catch_b
    move-exception v0

    .line 5545
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5548
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getPreInstalledAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3803
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getPreInstalledAppList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPreInstalledAppList(I)Ljava/util/List;
    .registers 6
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3808
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 3810
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getPreInstalledAppList(I)Ljava/util/List;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 3811
    :catch_c
    move-exception v0

    .line 3812
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3815
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_15
    return-object v3
.end method

.method public getRecentApplicationToastView(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 6733
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6735
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getRecentApplicationToastView(I)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6736
    :catch_b
    move-exception v0

    .line 6737
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6740
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getRunningPackagesFromPid(I)[Ljava/lang/String;
    .registers 3
    .param p1, "pid"    # I

    .prologue
    .line 3738
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getRunningPackagesFromPid(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRunningPackagesFromPid(II)[Ljava/lang/String;
    .registers 7
    .param p1, "pid"    # I
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 3743
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 3745
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getRunningPackagesFromPid(II)[Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 3746
    :catch_c
    move-exception v0

    .line 3747
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3750
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_15
    return-object v3
.end method

.method public getRuntimePermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 7272
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_1a

    .line 7274
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    .line 7275
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 7274
    invoke-interface {v1, p1, p2, p3, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getRuntimePermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_10

    move-result v1

    return v1

    .line 7276
    :catch_10
    move-exception v0

    .line 7277
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7278
    return v3

    .line 7281
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    return v3
.end method

.method public getScreenCaptureBlacklist(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 888
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getScreenCaptureBlacklist(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScreenCaptureBlacklist(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 7
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
    const/4 v3, 0x0

    .line 893
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 895
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getScreenCaptureBlacklist(Landroid/content/ComponentName;I)Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 896
    :catch_c
    move-exception v0

    .line 897
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 900
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    return-object v3
.end method

.method public getScreenCaptureWhitelist(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 907
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getScreenCaptureWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScreenCaptureWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 7
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
    const/4 v3, 0x0

    .line 912
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 914
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getScreenCaptureWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 915
    :catch_c
    move-exception v0

    .line 916
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 919
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    return-object v3
.end method

.method public getSignatureStateList(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMSignatureState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3771
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getSignatureStateList(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureStateList(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMSignatureState;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3776
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 3778
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getSignatureStateList(Landroid/content/ComponentName;I)Ljava/util/List;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 3779
    :catch_c
    move-exception v0

    .line 3780
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3783
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_15
    return-object v3
.end method

.method public getStorageEncryptionStatus(I)I
    .registers 3
    .param p1, "flags"    # I

    .prologue
    .line 3949
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getStorageEncryptionStatus(II)I

    move-result v0

    return v0
.end method

.method public getStorageEncryptionStatus(II)I
    .registers 6
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 3954
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 3956
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getStorageEncryptionStatus(II)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 3957
    :catch_b
    move-exception v0

    .line 3958
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3961
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x2

    return v1
.end method

.method public getTopPackageName(I)Ljava/lang/String;
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 2994
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 2996
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getTopPackageName(I)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    return-object v1

    .line 2997
    :catch_b
    move-exception v0

    .line 2998
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3001
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getTrueRepartValue(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6394
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getTrueRepartValue(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrueRepartValue(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6399
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6401
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getTrueRepartValue(Landroid/content/ComponentName;I)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    return-object v1

    .line 6402
    :catch_b
    move-exception v0

    .line 6403
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6406
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getWIFIDataUsageInformation(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "startDate"    # Ljava/lang/String;
    .param p4, "endDate"    # Ljava/lang/String;

    .prologue
    .line 4469
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 4468
    invoke-virtual/range {v0 .. v5}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getWIFIDataUsageInformation(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWIFIDataUsageInformation(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "startDate"    # Ljava/lang/String;
    .param p4, "endDate"    # Ljava/lang/String;
    .param p5, "userHandle"    # I

    .prologue
    .line 4475
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v0, :cond_19

    .line 4477
    :try_start_4
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getWIFIDataUsageInformation(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-wide v0

    return-wide v0

    .line 4479
    :catch_10
    move-exception v6

    .line 4480
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed talking with LGMDM device policy service"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4483
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_19
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getWarningMsg(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6798
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getWarningMsg(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getWarningMsg(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6803
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6805
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getWarningMsg(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6806
    :catch_b
    move-exception v0

    .line 6807
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6810
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getWarningMsgStr(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6818
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getWarningMsgStr(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWarningMsgStr(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6823
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6825
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getWarningMsgStr(Landroid/content/ComponentName;I)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    return-object v1

    .line 6826
    :catch_b
    move-exception v0

    .line 6827
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6830
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getWiFiSecurityLevel(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4522
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getWiFiSecurityLevel(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getWiFiSecurityLevel(Landroid/content/ComponentName;I)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4527
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 4529
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getWiFiSecurityLevel(Landroid/content/ComponentName;I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 4530
    :catch_b
    move-exception v0

    .line 4531
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4534
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public getWirelessLocationWhitelist(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2728
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getWirelessLocationWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWirelessLocationWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 7
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
    const/4 v3, 0x0

    .line 2733
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_15

    .line 2735
    :try_start_5
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->getWirelessLocationWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 2736
    :catch_c
    move-exception v0

    .line 2737
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2740
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_15
    return-object v3
.end method

.method public gotoOSUpdateActivity(Landroid/content/ComponentName;)I
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5015
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 5017
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->gotoOSUpdateActivity(Landroid/content/ComponentName;I)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 5018
    :catch_f
    move-exception v0

    .line 5019
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5022
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, -0x1

    return v1
.end method

.method public handleManualSync(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1608
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 1610
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->handleManualSync(Landroid/content/ComponentName;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1607
    :cond_d
    :goto_d
    return-void

    .line 1611
    :catch_e
    move-exception v0

    .line 1612
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "usesPolicy"    # I

    .prologue
    .line 221
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v0

    return v0
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "usesPolicy"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 226
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 228
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 229
    :catch_b
    move-exception v0

    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public hideVoiceIME(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 3067
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 3069
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->hideVoiceIME(I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_a

    .line 3066
    :cond_9
    :goto_9
    return-void

    .line 3070
    :catch_a
    move-exception v0

    .line 3071
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public initializeCertificate(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 4174
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->initializeCertificate(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public initializeCertificate(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 4179
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 4181
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->initializeCertificate(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 4182
    :catch_b
    move-exception v0

    .line 4183
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4186
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public installApplication(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 3360
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 3362
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->installApplication(Landroid/content/ComponentName;Ljava/lang/String;I)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 3359
    :cond_d
    :goto_d
    return-void

    .line 3363
    :catch_e
    move-exception v0

    .line 3364
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public installCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "useType"    # I

    .prologue
    .line 4242
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4243
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 4244
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v4, 0xf4240

    cmp-long v0, v0, v4

    if-gez v0, :cond_2b

    .line 4245
    invoke-direct {p0, v6}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->readFile(Ljava/io/File;)[B

    move-result-object v2

    .line 4246
    .local v2, "data":[B
    if-nez v2, :cond_1e

    .line 4247
    const/4 v0, 0x4

    return v0

    .line 4249
    :cond_1e
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->installCertificate(Landroid/content/ComponentName;[BLjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 4251
    .end local v2    # "data":[B
    :cond_2b
    const/4 v0, 0x3

    return v0

    .line 4254
    :cond_2d
    const/4 v0, 0x2

    return v0
.end method

.method public installCertificate(Landroid/content/ComponentName;[BLjava/lang/String;I)I
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "certificate"    # [B
    .param p3, "certificateId"    # Ljava/lang/String;
    .param p4, "useType"    # I

    .prologue
    .line 4223
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->installCertificate(Landroid/content/ComponentName;[BLjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public installCertificate(Landroid/content/ComponentName;[BLjava/lang/String;Ljava/lang/String;I)I
    .registers 14
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "certificate"    # [B
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "certificateId"    # Ljava/lang/String;
    .param p5, "useType"    # I

    .prologue
    .line 4228
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v0, :cond_1d

    .line 4230
    :try_start_4
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    .line 4231
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 4230
    invoke-interface/range {v0 .. v6}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->installCertificate(Landroid/content/ComponentName;[BLjava/lang/String;Ljava/lang/String;II)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_14

    move-result v0

    return v0

    .line 4232
    :catch_14
    move-exception v7

    .line 4233
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed talking with LGMDM device policy service"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4236
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v0, 0x5

    return v0
.end method

.method public installLGVpnCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 4090
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 4092
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->installLGVpnCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 4093
    :catch_f
    move-exception v0

    .line 4094
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4098
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    sget-object v1, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->UNKNOWN:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->getCode()I

    move-result v1

    return v1
.end method

.method public isAdminActive()Z
    .registers 2

    .prologue
    .line 6003
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->isAdminActive(I)Z

    move-result v0

    return v0
.end method

.method public isAdminActive(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 6008
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 6010
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->isAdminActive(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 6011
    :catch_b
    move-exception v0

    .line 6012
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6015
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public isAuthentecVpn(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4025
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->isAuthentecVpn(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isAuthentecVpn(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4030
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 4032
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->isAuthentecVpn(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 4033
    :catch_b
    move-exception v0

    .line 4034
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4037
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public isContainWatcherAndKeeperList(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3877
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->isContainWatcherAndKeeperList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isContainWatcherAndKeeperList(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 3882
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 3884
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->isContainWatcherAndKeeperList(Ljava/lang/String;I)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 3885
    :catch_b
    move-exception v0

    .line 3886
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3889
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public isDeclawingPolicyMode(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 7340
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 7342
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->isDeclawingPolicyMode(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 7343
    :catch_b
    move-exception v0

    .line 7344
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7347
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public isDeviceOwnerProvisioned(Landroid/content/ComponentName;)Z
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7297
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 7299
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->isDeviceOwnerProvisioned(Landroid/content/ComponentName;I)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 7300
    :catch_f
    move-exception v0

    .line 7301
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7304
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method public isManualSyncCurrent()Z
    .registers 2

    .prologue
    .line 1649
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->isManualSyncCurrent(I)Z

    move-result v0

    return v0
.end method

.method public isManualSyncCurrent(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 1658
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1660
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->isManualSyncCurrent(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 1661
    :catch_b
    move-exception v0

    .line 1662
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1665
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public isMdmAccountFromNewEmail(Landroid/accounts/Account;)Z
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 1721
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1723
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->isMdmAccountFromNewEmail(Landroid/accounts/Account;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 1724
    :catch_b
    move-exception v0

    .line 1725
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1728
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public isProfileOwnerProvisioned(Landroid/content/ComponentName;)Z
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7308
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 7310
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->isProfileOwnerProvisioned(Landroid/content/ComponentName;I)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 7311
    :catch_f
    move-exception v0

    .line 7312
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7315
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method public isServiceAlive()Z
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public keyguardDone()V
    .registers 4

    .prologue
    .line 7165
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 7167
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->keyguardDone()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_a

    .line 7164
    :cond_9
    :goto_9
    return-void

    .line 7168
    :catch_a
    move-exception v0

    .line 7169
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public listen(Landroid/content/Context;Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;I)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;
    .param p3, "events"    # I

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v0, :cond_17

    .line 1448
    if-eqz p1, :cond_18

    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1449
    .local v1, "pkgForDebug":Ljava/lang/String;
    :goto_a
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    iget-object v2, p2, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->callback:Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v4, 0x0

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->listen(Ljava/lang/String;Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;IZI)V

    .line 1445
    .end local v1    # "pkgForDebug":Ljava/lang/String;
    :cond_17
    :goto_17
    return-void

    .line 1448
    :cond_18
    const-string/jumbo v1, "<unknown>"
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1b} :catch_26
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_1b} :catch_1c

    .restart local v1    # "pkgForDebug":Ljava/lang/String;
    goto :goto_a

    .line 1452
    .end local v1    # "pkgForDebug":Ljava/lang/String;
    :catch_1c
    move-exception v7

    .line 1453
    .local v7, "e":Ljava/lang/NullPointerException;
    sget-object v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 1450
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_26
    move-exception v6

    .line 1451
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method

.method public modifyApn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMApnConfiguration;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "config"    # Lcom/lge/mdm/config/LGMDMApnConfiguration;

    .prologue
    .line 4729
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 4731
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->modifyApn(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMApnConfiguration;I)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 4732
    :catch_f
    move-exception v0

    .line 4733
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4736
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, -0x1

    return v1
.end method

.method public modifyExchangeConfig(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;)V
    .registers 5
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;

    .prologue
    .line 1331
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 1333
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->notifyModifyEXCHANGEConfig(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1330
    :cond_d
    :goto_d
    return-void

    .line 1334
    :catch_e
    move-exception v0

    .line 1335
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public modifyLGVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMLgVpnProfile;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profile"    # Lcom/lge/mdm/config/LGMDMLgVpnProfile;

    .prologue
    .line 4054
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 4056
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->modifyLGVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMLgVpnProfile;I)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 4057
    :catch_f
    move-exception v0

    .line 4058
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4062
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    sget-object v1, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_PROFILE_RESULT;->UNKNOWN:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_PROFILE_RESULT;

    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_PROFILE_RESULT;->getCode()I

    move-result v1

    return v1
.end method

.method public modifyPOPIMAPConfig(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;)V
    .registers 5
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;

    .prologue
    .line 1249
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 1251
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->notifyModifyPOPIMAPConfig(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1248
    :cond_d
    :goto_d
    return-void

    .line 1252
    :catch_e
    move-exception v0

    .line 1253
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public modifyVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profile"    # Lcom/lge/mdm/config/LGMDMVpnProfile;

    .prologue
    .line 3989
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 3991
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->modifyVpnProfile(Landroid/content/ComponentName;Lcom/lge/mdm/config/LGMDMVpnProfile;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 3988
    :cond_d
    :goto_d
    return-void

    .line 3992
    :catch_e
    move-exception v0

    .line 3993
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public notificationCIDMountServiceWhitelist(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2627
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 2629
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->notificationCIDMountServiceWhitelist(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 2630
    :catch_b
    move-exception v0

    .line 2631
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2634
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 178
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 177
    return-void
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;I)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 183
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_24

    .line 185
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 186
    if-eqz p1, :cond_24

    .line 187
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeActiveAdmin : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_24} :catch_25

    .line 182
    :cond_24
    :goto_24
    return-void

    .line 189
    :catch_25
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24
.end method

.method public removeCCmode(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 7151
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 7153
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->removeCCmode(Landroid/content/ComponentName;I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_a

    .line 7150
    :cond_9
    :goto_9
    return-void

    .line 7154
    :catch_a
    move-exception v0

    .line 7155
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public removeNetwork(I)Z
    .registers 5
    .param p1, "netId"    # I

    .prologue
    .line 2067
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 2069
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->removeNetwork(II)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 2070
    :catch_f
    move-exception v0

    .line 2071
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2074
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method public reportLockdownApps(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3642
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->reportLockdownApps(Ljava/lang/String;I)V

    .line 3641
    return-void
.end method

.method public reportLockdownApps(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 3647
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 3649
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->reportLockdownApps(Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_a

    .line 3646
    :cond_9
    :goto_9
    return-void

    .line 3650
    :catch_a
    move-exception v0

    .line 3651
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public resetCredentials(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4283
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 4285
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->resetCredentials(Landroid/content/ComponentName;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 4282
    :cond_d
    :goto_d
    return-void

    .line 4286
    :catch_e
    move-exception v0

    .line 4287
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public resetDeveloperOptions(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6834
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 6836
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->resetDeveloperOptions(Landroid/content/ComponentName;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 6833
    :cond_d
    :goto_d
    return-void

    .line 6837
    :catch_e
    move-exception v0

    .line 6838
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public saveConfiguration()Z
    .registers 4

    .prologue
    .line 2145
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 2147
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->saveConfiguration(I)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 2148
    :catch_f
    move-exception v0

    .line 2149
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2152
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method public sendBroadcastNotifyProcessKillEvent(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3708
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendBroadcastNotifyProcessKillEvent(Ljava/lang/String;I)V

    .line 3707
    return-void
.end method

.method public sendBroadcastNotifyProcessKillEvent(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 3713
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 3715
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->sendBroadcastNotifyProcessKillEvent(Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_a

    .line 3712
    :cond_9
    :goto_9
    return-void

    .line 3716
    :catch_a
    move-exception v0

    .line 3717
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public sendToastMessageId(I)V
    .registers 3
    .param p1, "resid"    # I

    .prologue
    .line 3216
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 3215
    return-void
.end method

.method public sendToastMessageId(II)V
    .registers 6
    .param p1, "resid"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 3224
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 3226
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->sendToastMessageId(II)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_a

    .line 3223
    :cond_9
    :goto_9
    return-void

    .line 3227
    :catch_a
    move-exception v0

    .line 3228
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public sendToastMessageId2(III)V
    .registers 7
    .param p1, "resid"    # I
    .param p2, "resid2"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 3238
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 3240
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->sendToastMessageId2(III)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_a

    .line 3237
    :cond_9
    :goto_9
    return-void

    .line 3241
    :catch_a
    move-exception v0

    .line 3242
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z

    .prologue
    .line 154
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 153
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 159
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_24

    .line 161
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 162
    if-eqz p1, :cond_24

    .line 163
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setActiveAdmin : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_24} :catch_25

    .line 158
    :cond_24
    :goto_24
    return-void

    .line 165
    :catch_25
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24
.end method

.method public setAllowAirplaneModeOn(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 4383
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 4385
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowAirplaneModeOn(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 4382
    :cond_d
    :goto_d
    return-void

    .line 4386
    :catch_e
    move-exception v0

    .line 4387
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowAndroidBeam(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 4354
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 4356
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowAndroidBeam(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 4353
    :cond_d
    :goto_d
    return-void

    .line 4357
    :catch_e
    move-exception v0

    .line 4358
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowAutoRestore(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 5761
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5763
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowAutoRestore(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5760
    :cond_d
    :goto_d
    return-void

    .line 5764
    :catch_e
    move-exception v0

    .line 5765
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowAutoSync(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 5815
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5817
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowAutoSync(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5814
    :cond_d
    :goto_d
    return-void

    .line 5818
    :catch_e
    move-exception v0

    .line 5819
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowBackgroundProcessLimit(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 5473
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5475
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowBackgroundProcessLimit(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5472
    :cond_d
    :goto_d
    return-void

    .line 5476
    :catch_e
    move-exception v0

    .line 5477
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowBluetooth(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # I

    .prologue
    .line 2340
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 2342
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowBluetooth(Landroid/content/ComponentName;II)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_e

    .line 2339
    :cond_d
    :goto_d
    return-void

    .line 2343
    :catch_e
    move-exception v0

    .line 2344
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowBluetoothPairing(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "bAllow"    # Z

    .prologue
    .line 4923
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 4925
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowBluetoothPairing(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_e

    .line 4922
    :cond_d
    :goto_d
    return-void

    .line 4926
    :catch_e
    move-exception v0

    .line 4927
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowBluetoothProfiles(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "nBluetoothProfile"    # I

    .prologue
    .line 4823
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 4825
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowBluetoothProfiles(Landroid/content/ComponentName;II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 4822
    :cond_d
    :goto_d
    return-void

    .line 4826
    :catch_e
    move-exception v0

    .line 4827
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowBluetoothTethering(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "bAllow"    # Z

    .prologue
    .line 2286
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 2288
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowBluetoothTethering(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 2285
    :cond_d
    :goto_d
    return-void

    .line 2289
    :catch_e
    move-exception v0

    .line 2290
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowBluetoothVisible(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 4810
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 4812
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowBluetoothVisible(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_e

    .line 4809
    :cond_d
    :goto_d
    return-void

    .line 4813
    :catch_e
    move-exception v0

    .line 4814
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM Bluetooth service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowBluetoothWithMACWhitelist(Landroid/content/ComponentName;ZLjava/util/List;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4957
    .local p3, "wMaclist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 4959
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    .line 4960
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 4959
    invoke-interface {v1, p1, p2, p3, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowBluetoothWithMACWhitelist(Landroid/content/ComponentName;ZLjava/util/List;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 4956
    :cond_d
    :goto_d
    return-void

    .line 4961
    :catch_e
    move-exception v0

    .line 4962
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowBrowser(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 639
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 641
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowBrowser(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 638
    :cond_d
    :goto_d
    return-void

    .line 642
    :catch_e
    move-exception v0

    .line 643
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowBrowserProxySetup(Landroid/content/ComponentName;ZLjava/lang/String;I)V
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "ip"    # Ljava/lang/String;
    .param p4, "port"    # I

    .prologue
    .line 5029
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 5031
    :try_start_4
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowBrowserProxySetup(Landroid/content/ComponentName;ZLjava/lang/String;II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 5028
    :cond_11
    :goto_11
    return-void

    .line 5032
    :catch_12
    move-exception v6

    .line 5033
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed talking with LGMDM device policy service"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public setAllowCIDWithWhitelist(Landroid/content/ComponentName;ZLjava/util/List;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2578
    .local p3, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 2580
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    .line 2581
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 2580
    invoke-interface {v1, p1, p2, p3, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowCIDWithWhitelist(Landroid/content/ComponentName;ZLjava/util/List;I)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 2577
    :cond_d
    :goto_d
    return-void

    .line 2582
    :catch_e
    move-exception v0

    .line 2583
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowCallInRoaming(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 5348
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5350
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowCallInRoaming(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5347
    :cond_d
    :goto_d
    return-void

    .line 5351
    :catch_e
    move-exception v0

    .line 5352
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowCameraWithWhitelist(Landroid/content/ComponentName;ZLjava/util/List;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2442
    .local p3, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 2444
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowCameraWithWhitelist(Landroid/content/ComponentName;ZLjava/util/List;I)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 2449
    :cond_d
    :goto_d
    return-void

    .line 2445
    :catch_e
    move-exception v0

    .line 2446
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowChangeDateAndTime(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 6438
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 6440
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowChangeDateAndTime(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 6437
    :cond_d
    :goto_d
    return-void

    .line 6441
    :catch_e
    move-exception v0

    .line 6442
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowChangeTimezone(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 6464
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 6466
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowChangeTimezone(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 6463
    :cond_d
    :goto_d
    return-void

    .line 6467
    :catch_e
    move-exception v0

    .line 6468
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowChangingMobileDataUsageCycle(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "cycleDate"    # I

    .prologue
    .line 6495
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 6497
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    .line 6498
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 6497
    invoke-interface {v1, p1, p2, p3, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowChangingMobileDataUsageCycle(Landroid/content/ComponentName;ZII)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 6494
    :cond_d
    :goto_d
    return-void

    .line 6499
    :catch_e
    move-exception v0

    .line 6500
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowClipboard(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 5583
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5585
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowClipboard(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5582
    :cond_d
    :goto_d
    return-void

    .line 5586
    :catch_e
    move-exception v0

    .line 5587
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowCommandForInternetAccess(Landroid/content/ComponentName;ZLjava/util/List;)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4647
    .local p3, "commandList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 4649
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    .line 4650
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 4649
    invoke-interface {v1, p1, p2, p3, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowCommandForInternetAccess(Landroid/content/ComponentName;ZLjava/util/List;I)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 4651
    :catch_f
    move-exception v0

    .line 4652
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4655
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method public setAllowConsumerEmail(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "blockingConsumerEmail"    # Z

    .prologue
    .line 1467
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 1469
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowConsumerEmail(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1466
    :cond_d
    :goto_d
    return-void

    .line 1470
    :catch_e
    move-exception v0

    .line 1471
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowContactInfoAccess(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I

    .prologue
    .line 6755
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 6757
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowContactInfoAccess(Landroid/content/ComponentName;II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 6754
    :cond_d
    :goto_d
    return-void

    .line 6758
    :catch_e
    move-exception v0

    .line 6759
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowDLNADiscovery(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 6666
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 6668
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowDLNADiscovery(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 6665
    :cond_d
    :goto_d
    return-void

    .line 6669
    :catch_e
    move-exception v0

    .line 6670
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowDataRoaming(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 681
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 683
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowDataRoaming(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 680
    :cond_d
    :goto_d
    return-void

    .line 684
    :catch_e
    move-exception v0

    .line 685
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowDataTransmissionViaAudioPort(Landroid/content/ComponentName;Z)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 6635
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 6637
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    .line 6638
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 6637
    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowDataTransmissionViaAudioPort(Landroid/content/ComponentName;ZI)I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 6639
    :catch_f
    move-exception v0

    .line 6640
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6643
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_18
    const/4 v1, -0x1

    return v1
.end method

.method public setAllowDeveloperMode(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 6844
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 6846
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowDeveloperMode(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 6843
    :cond_d
    :goto_d
    return-void

    .line 6847
    :catch_e
    move-exception v0

    .line 6848
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowDownloadMode(Landroid/content/ComponentName;Z)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 6379
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 6381
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowDownloadMode(Landroid/content/ComponentName;ZI)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 6382
    :catch_f
    move-exception v0

    .line 6383
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6386
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, -0x1

    return v1
.end method

.method public setAllowDualWindow(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 7032
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 7034
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowDualWindow(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 7031
    :cond_d
    :goto_d
    return-void

    .line 7035
    :catch_e
    move-exception v0

    .line 7036
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowExternalMemorySlot(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 2541
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 2543
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowExternalMemorySlot(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 2540
    :cond_d
    :goto_d
    return-void

    .line 2544
    :catch_e
    move-exception v0

    .line 2545
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowGPSLocation(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 2671
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 2673
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowGPSLocation(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 2670
    :cond_d
    :goto_d
    return-void

    .line 2674
    :catch_e
    move-exception v0

    .line 2675
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowGoogleBackup(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 5732
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5734
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowGoogleBackup(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5731
    :cond_d
    :goto_d
    return-void

    .line 5735
    :catch_e
    move-exception v0

    .line 5736
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowGoogleErrorReport(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I

    .prologue
    .line 3923
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 3925
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowGoogleErrorReport(Landroid/content/ComponentName;II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 3922
    :cond_d
    :goto_d
    return-void

    .line 3926
    :catch_e
    move-exception v0

    .line 3927
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowHardwareFactoryreset(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 4441
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 4443
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowHardwareFactoryreset(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 4440
    :cond_d
    :goto_d
    return-void

    .line 4444
    :catch_e
    move-exception v0

    .line 4445
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowHotspot(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "bAllow"    # Z

    .prologue
    .line 2223
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 2225
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowHotspot(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 2222
    :cond_d
    :goto_d
    return-void

    .line 2226
    :catch_e
    move-exception v0

    .line 2227
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowIMEI(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 2854
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 2856
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowIMEI(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 2853
    :cond_d
    :goto_d
    return-void

    .line 2857
    :catch_e
    move-exception v0

    .line 2858
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowIMSI(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 2870
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 2872
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowIMSI(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 2869
    :cond_d
    :goto_d
    return-void

    .line 2873
    :catch_e
    move-exception v0

    .line 2874
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowInfraredPort(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 6898
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 6900
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowInfraredPort(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 6897
    :cond_d
    :goto_d
    return-void

    .line 6901
    :catch_e
    move-exception v0

    .line 6902
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowInstallApplication(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 3380
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 3382
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowInstallApplication(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 3379
    :cond_d
    :goto_d
    return-void

    .line 3383
    :catch_e
    move-exception v0

    .line 3384
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowListForInternetAccess(Landroid/content/ComponentName;ILjava/util/List;)Z
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4604
    .local p3, "internetAccessList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowListForInternetAccess(Landroid/content/ComponentName;ILjava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public setAllowListForInternetAccess(Landroid/content/ComponentName;ILjava/util/List;I)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4611
    .local p3, "internetAccessList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 4613
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowListForInternetAccess(Landroid/content/ComponentName;ILjava/util/List;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 4614
    :catch_b
    move-exception v0

    .line 4615
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4618
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public setAllowLockdownApps(Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;I)Z
    .registers 15
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "isContinuousRunning"    # Z
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "runningApplicationMaxCrashNum"    # I

    .prologue
    .line 3595
    const/4 v8, 0x0

    .line 3596
    .local v8, "result":Z
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v0, :cond_14

    .line 3598
    :try_start_5
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    .line 3599
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 3598
    invoke-interface/range {v0 .. v6}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowLockdownApps(Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;II)Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_13} :catch_15

    move-result v8

    .line 3604
    .end local v8    # "result":Z
    :cond_14
    :goto_14
    return v8

    .line 3600
    .restart local v8    # "result":Z
    :catch_15
    move-exception v7

    .line 3601
    .local v7, "e":Ljava/lang/Throwable;
    sget-object v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed talking with LGMDM device policy service"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public setAllowMaximumRepeatedPassword(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "max"    # I

    .prologue
    .line 315
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 317
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowMaximumRepeatedPassword(Landroid/content/ComponentName;II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 314
    :cond_d
    :goto_d
    return-void

    .line 318
    :catch_e
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowMaximumSequentialPassword(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "max"    # I

    .prologue
    .line 348
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 350
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowMaximumSequentialPassword(Landroid/content/ComponentName;II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 347
    :cond_d
    :goto_d
    return-void

    .line 351
    :catch_e
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowMicrophone(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 2911
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 2913
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowMicrophone(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 2910
    :cond_d
    :goto_d
    return-void

    .line 2914
    :catch_e
    move-exception v0

    .line 2915
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowMiracast(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 5639
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5641
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowMiracast(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5638
    :cond_d
    :goto_d
    return-void

    .line 5642
    :catch_e
    move-exception v0

    .line 5643
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowMobileNetwork(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 719
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 721
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowMobileNetwork(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 718
    :cond_d
    :goto_d
    return-void

    .line 722
    :catch_e
    move-exception v0

    .line 723
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowMockLocation(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 2779
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 2781
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowMockLocation(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 2778
    :cond_d
    :goto_d
    return-void

    .line 2782
    :catch_e
    move-exception v0

    .line 2783
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowMultiUser(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 6038
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 6040
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowMultiUser(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 6037
    :cond_d
    :goto_d
    return-void

    .line 6041
    :catch_e
    move-exception v0

    .line 6042
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowNfc(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # I

    .prologue
    .line 4341
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 4343
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowNfc(Landroid/content/ComponentName;II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 4340
    :cond_d
    :goto_d
    return-void

    .line 4344
    :catch_e
    move-exception v0

    .line 4345
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowNonWebkitBrowser(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 6323
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 6325
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowNonWebkitBrowser(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 6322
    :cond_d
    :goto_d
    return-void

    .line 6326
    :catch_e
    move-exception v0

    .line 6327
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowNotifySpecificProcessKillEvent(Landroid/content/ComponentName;ZLjava/util/List;)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3661
    .local p3, "packagelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 3662
    .local v1, "result":Z
    iget-object v2, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v2, :cond_f

    .line 3664
    :try_start_5
    iget-object v2, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    .line 3665
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 3664
    invoke-interface {v2, p1, p2, p3, v3}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowNotifySpecificProcessKillEvent(Landroid/content/ComponentName;ZLjava/util/List;I)Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_e} :catch_10

    move-result v1

    .line 3670
    .end local v1    # "result":Z
    :cond_f
    :goto_f
    return v1

    .line 3666
    .restart local v1    # "result":Z
    :catch_10
    move-exception v0

    .line 3667
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed talking with LGMDM device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public setAllowOSUpdate(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 5287
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5289
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowOSUpdate(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5286
    :cond_d
    :goto_d
    return-void

    .line 5290
    :catch_e
    move-exception v0

    .line 5291
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowOwnerInfo(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I

    .prologue
    .line 6141
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 6143
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowOwnerInfo(Landroid/content/ComponentName;II)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 6140
    :cond_d
    :goto_d
    return-void

    .line 6144
    :catch_e
    move-exception v0

    .line 6145
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowPOPIMAPEmail(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "blockingPOPIMAPEmail"    # Z

    .prologue
    .line 1547
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 1549
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowPOPIMAPEmail(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1546
    :cond_d
    :goto_d
    return-void

    .line 1550
    :catch_e
    move-exception v0

    .line 1551
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowPassiveProvider(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 5977
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5979
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowPassiveProvider(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5976
    :cond_d
    :goto_d
    return-void

    .line 5980
    :catch_e
    move-exception v0

    .line 5981
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowPasswordComplexForEAS(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 282
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 284
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowPasswordComplexForEAS(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 281
    :cond_d
    :goto_d
    return-void

    .line 285
    :catch_e
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowPasswordTypingVisible(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 5803
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5805
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowPasswordTypingVisible(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5802
    :cond_d
    :goto_d
    return-void

    .line 5806
    :catch_e
    move-exception v0

    .line 5807
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowPasswordVisible(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 6086
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 6088
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowPasswordVisible(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 6085
    :cond_d
    :goto_d
    return-void

    .line 6089
    :catch_e
    move-exception v0

    .line 6090
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowPowerOff(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 7098
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 7100
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowPowerOff(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 7097
    :cond_d
    :goto_d
    return-void

    .line 7101
    :catch_e
    move-exception v0

    .line 7102
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowQuickCircle(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 7126
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 7128
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowQuickCircle(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 7125
    :cond_d
    :goto_d
    return-void

    .line 7129
    :catch_e
    move-exception v0

    .line 7130
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowReadyToConnectInBluetooth(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 7229
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 7231
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowReadyToConnectInBluetooth(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 7228
    :cond_d
    :goto_d
    return-void

    .line 7232
    :catch_e
    move-exception v0

    .line 7233
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowReceivingSmsMms(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 6679
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 6681
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowReceivingSmsMms(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 6678
    :cond_d
    :goto_d
    return-void

    .line 6682
    :catch_e
    move-exception v0

    .line 6683
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowRemoveDeviceAdmin(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 3334
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 3336
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowRemoveDeviceAdmin(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 3333
    :cond_d
    :goto_d
    return-void

    .line 3337
    :catch_e
    move-exception v0

    .line 3338
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowRemoveGoogleAccount(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 5668
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5670
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowRemoveGoogleAccount(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5667
    :cond_d
    :goto_d
    return-void

    .line 5671
    :catch_e
    move-exception v0

    .line 5672
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowSafeMode(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 7178
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 7180
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowSafeMode(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 7177
    :cond_d
    :goto_d
    return-void

    .line 7181
    :catch_e
    move-exception v0

    .line 7182
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowScreenCapture(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 780
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 782
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowScreenCapture(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 779
    :cond_d
    :goto_d
    return-void

    .line 783
    :catch_e
    move-exception v0

    .line 784
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowScreenCaptureBlacklistWithoutADB(Landroid/content/ComponentName;ZLjava/util/List;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 861
    .local p3, "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 863
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    .line 864
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 863
    invoke-interface {v1, p1, p2, p3, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowScreenCaptureBlacklistWithoutADB(Landroid/content/ComponentName;ZLjava/util/List;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 860
    :cond_d
    :goto_d
    return-void

    .line 865
    :catch_e
    move-exception v0

    .line 866
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowScreenCaptureWhitelistWithoutADB(Landroid/content/ComponentName;ZLjava/util/List;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 927
    .local p3, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 929
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    .line 930
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 929
    invoke-interface {v1, p1, p2, p3, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowScreenCaptureWhitelistWithoutADB(Landroid/content/ComponentName;ZLjava/util/List;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 926
    :cond_d
    :goto_d
    return-void

    .line 931
    :catch_e
    move-exception v0

    .line 932
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowScreenCaptureWithBlacklist(Landroid/content/ComponentName;ZLjava/util/List;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 833
    .local p3, "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 835
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    .line 836
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 835
    invoke-interface {v1, p1, p2, p3, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowScreenCaptureWithBlacklist(Landroid/content/ComponentName;ZLjava/util/List;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 832
    :cond_d
    :goto_d
    return-void

    .line 837
    :catch_e
    move-exception v0

    .line 838
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowScreenCaptureWithoutADB(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 806
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 808
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowScreenCaptureWithoutADB(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 805
    :cond_d
    :goto_d
    return-void

    .line 809
    :catch_e
    move-exception v0

    .line 810
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowScreenPin(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 6113
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 6115
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowScreenPin(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 6112
    :cond_d
    :goto_d
    return-void

    .line 6116
    :catch_e
    move-exception v0

    .line 6117
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowSendingSMS(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 995
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 997
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowSendingSMS(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 994
    :cond_d
    :goto_d
    return-void

    .line 998
    :catch_e
    move-exception v0

    .line 999
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowShortcutKey(Landroid/content/ComponentName;Z)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 6180
    iget-object v2, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-nez v2, :cond_5

    .line 6181
    return-void

    .line 6185
    :cond_5
    :try_start_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 6186
    .local v1, "userHandle":I
    iget-object v2, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v2, p1, p2, v1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowShortcutKey(Landroid/content/ComponentName;ZI)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_e} :catch_f

    .line 6179
    .end local v1    # "userHandle":I
    :goto_e
    return-void

    .line 6187
    :catch_f
    move-exception v0

    .line 6188
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed talking with LGMDM device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public setAllowSignatureState(Landroid/content/ComponentName;ZLjava/util/List;)I
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMSignatureState;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3759
    .local p3, "signatureStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMSignatureState;>;"
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 3761
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    .line 3762
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 3761
    invoke-interface {v1, p1, p2, p3, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowSignatureState(Landroid/content/ComponentName;ZLjava/util/List;I)I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 3763
    :catch_f
    move-exception v0

    .line 3764
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3767
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_18
    const/4 v1, -0x1

    return v1
.end method

.method public setAllowSimplePasswordEx(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I

    .prologue
    .line 242
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 244
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowSimplePasswordEx(Landroid/content/ComponentName;II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 241
    :cond_d
    :goto_d
    return-void

    .line 245
    :catch_e
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowSpecificApplication(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "applicationName"    # Ljava/lang/String;
    .param p3, "allow"    # Z

    .prologue
    .line 3833
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 3835
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    .line 3836
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 3835
    invoke-interface {v1, p1, p2, p3, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowSpecificApplication(Landroid/content/ComponentName;Ljava/lang/String;ZI)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 3832
    :cond_d
    :goto_d
    return-void

    .line 3837
    :catch_e
    move-exception v0

    .line 3838
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowSpecificKey(Landroid/content/ComponentName;IZ)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "keyType"    # I
    .param p3, "allow"    # Z

    .prologue
    .line 5255
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5257
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowSpecificKey(Landroid/content/ComponentName;IZI)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 5254
    :cond_d
    :goto_d
    return-void

    .line 5258
    :catch_e
    move-exception v0

    .line 5259
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowStatusBarExpansion(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 5845
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5847
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowStatusBarExpansion(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5844
    :cond_d
    :goto_d
    return-void

    .line 5848
    :catch_e
    move-exception v0

    .line 5849
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowTethering(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "bAllow"    # Z

    .prologue
    .line 2193
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 2195
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowTethering(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 2192
    :cond_d
    :goto_d
    return-void

    .line 2196
    :catch_e
    move-exception v0

    .line 2197
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowUSBDebugging(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 963
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 965
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowUSBDebugging(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 962
    :cond_d
    :goto_d
    return-void

    .line 966
    :catch_e
    move-exception v0

    .line 967
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowUSBHostStorage(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 5964
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5966
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowUSBHostStorage(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 5963
    :cond_d
    :goto_d
    return-void

    .line 5967
    :catch_e
    move-exception v0

    .line 5968
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowUSBMtp(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 5396
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5398
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowUSBMtp(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5395
    :cond_d
    :goto_d
    return-void

    .line 5399
    :catch_e
    move-exception v0

    .line 5400
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowUSBPtp(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 5423
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5425
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowUSBPtp(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5422
    :cond_d
    :goto_d
    return-void

    .line 5426
    :catch_e
    move-exception v0

    .line 5427
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowUSBStorage(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 5448
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5450
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowUSBStorage(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5447
    :cond_d
    :goto_d
    return-void

    .line 5451
    :catch_e
    move-exception v0

    .line 5452
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowUSBTethering(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "bAllow"    # Z

    .prologue
    .line 2256
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 2258
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowUSBTethering(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 2255
    :cond_d
    :goto_d
    return-void

    .line 2259
    :catch_e
    move-exception v0

    .line 2260
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowUninstallApplication(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 3406
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 3408
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowUninstallApplication(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 3405
    :cond_d
    :goto_d
    return-void

    .line 3409
    :catch_e
    move-exception v0

    .line 3410
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowUnknownSourceInstallation(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 3268
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 3270
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowUnknownSourceInstallation(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 3267
    :cond_d
    :goto_d
    return-void

    .line 3271
    :catch_e
    move-exception v0

    .line 3272
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowUnsignedApplication(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 3519
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 3521
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowUnsignedApplication(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 3518
    :cond_d
    :goto_d
    return-void

    .line 3522
    :catch_e
    move-exception v0

    .line 3523
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowUsb(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allowed"    # Z

    .prologue
    .line 3102
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 3104
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowUsb(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 3101
    :cond_d
    :goto_d
    return-void

    .line 3105
    :catch_e
    move-exception v0

    .line 3106
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowUsbData(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allowed"    # Z

    .prologue
    .line 3136
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 3138
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowUsbData(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 3135
    :cond_d
    :goto_d
    return-void

    .line 3139
    :catch_e
    move-exception v0

    .line 3140
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowUsbDrive(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allowed"    # Z

    .prologue
    .line 3161
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 3163
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowUsbDrive(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 3160
    :cond_d
    :goto_d
    return-void

    .line 3164
    :catch_e
    move-exception v0

    .line 3165
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowUsbPort(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allowed"    # Z

    .prologue
    .line 3186
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 3188
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowUsbPort(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 3185
    :cond_d
    :goto_d
    return-void

    .line 3189
    :catch_e
    move-exception v0

    .line 3190
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowVPNSplitTunneling(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 6256
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 6258
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowVPNSplitTunneling(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 6255
    :cond_d
    :goto_d
    return-void

    .line 6259
    :catch_e
    move-exception v0

    .line 6260
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowVerizonLocation(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 5919
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5921
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowVerizonLocation(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5918
    :cond_d
    :goto_d
    return-void

    .line 5922
    :catch_e
    move-exception v0

    .line 5923
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowVpn(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allowType"    # I

    .prologue
    .line 6229
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 6231
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowVpn(Landroid/content/ComponentName;II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 6228
    :cond_d
    :goto_d
    return-void

    .line 6232
    :catch_e
    move-exception v0

    .line 6233
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowWiFiMacAddressList(Landroid/content/ComponentName;ILjava/util/List;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "listType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5135
    .local p3, "wblist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5137
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowWiFiMacAddressList(Landroid/content/ComponentName;ILjava/util/List;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5134
    :cond_d
    :goto_d
    return-void

    .line 5138
    :catch_e
    move-exception v0

    .line 5139
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowWiFiProfileManagement(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 5513
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5515
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowWiFiProfileManagement(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5512
    :cond_d
    :goto_d
    return-void

    .line 5516
    :catch_e
    move-exception v0

    .line 5517
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowWiFiSSIDList(Landroid/content/ComponentName;ILjava/util/List;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "listType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5091
    .local p3, "wblist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5093
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowWiFiSSIDList(Landroid/content/ComponentName;ILjava/util/List;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5090
    :cond_d
    :goto_d
    return-void

    .line 5094
    :catch_e
    move-exception v0

    .line 5095
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowWifi(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 1933
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 1935
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowWifi(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1932
    :cond_d
    :goto_d
    return-void

    .line 1936
    :catch_e
    move-exception v0

    .line 1937
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowWifiAutoConnection(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "bAllow"    # Z

    .prologue
    .line 5212
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5214
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowWifiAutoConnection(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_e

    .line 5211
    :cond_d
    :goto_d
    return-void

    .line 5215
    :catch_e
    move-exception v0

    .line 5216
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowWifiDirect(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 5626
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5628
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowWifiDirect(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5625
    :cond_d
    :goto_d
    return-void

    .line 5629
    :catch_e
    move-exception v0

    .line 5630
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowWifiScan(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 1946
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 1948
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowWifiScan(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1945
    :cond_d
    :goto_d
    return-void

    .line 1949
    :catch_e
    move-exception v0

    .line 1950
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowWipeData(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 1037
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 1039
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowWipeData(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1036
    :cond_d
    :goto_d
    return-void

    .line 1040
    :catch_e
    move-exception v0

    .line 1041
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowWipeDataMaster(Z)V
    .registers 5
    .param p1, "allow"    # Z

    .prologue
    .line 4148
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 4150
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowWipeDataMaster(ZI)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 4147
    :cond_d
    :goto_d
    return-void

    .line 4151
    :catch_e
    move-exception v0

    .line 4152
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowWirelessLocation(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 2681
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 2683
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowWirelessLocation(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 2680
    :cond_d
    :goto_d
    return-void

    .line 2684
    :catch_e
    move-exception v0

    .line 2685
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowWirelessLocationWithWhitelist(Landroid/content/ComponentName;ZLjava/util/List;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2695
    .local p3, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 2697
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    .line 2698
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 2697
    invoke-interface {v1, p1, p2, p3, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowWirelessLocationWithWhitelist(Landroid/content/ComponentName;ZLjava/util/List;I)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 2694
    :cond_d
    :goto_d
    return-void

    .line 2699
    :catch_e
    move-exception v0

    .line 2700
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAllowWirelessStorage(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I

    .prologue
    .line 5570
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5572
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAllowWirelessStorage(Landroid/content/ComponentName;II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5569
    :cond_d
    :goto_d
    return-void

    .line 5573
    :catch_e
    move-exception v0

    .line 5574
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAppVersionState(Landroid/content/ComponentName;Ljava/util/List;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMAppVersionState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3460
    .local p2, "appVersionStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMAppVersionState;>;"
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 3462
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setAppVersionState(Landroid/content/ComponentName;Ljava/util/List;I)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 3459
    :cond_d
    :goto_d
    return-void

    .line 3463
    :catch_e
    move-exception v0

    .line 3464
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setApplicationState(Landroid/content/ComponentName;Ljava/util/List;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMApplicationState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3433
    .local p2, "applicationStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMApplicationState;>;"
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 3435
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setApplicationState(Landroid/content/ComponentName;Ljava/util/List;I)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 3432
    :cond_d
    :goto_d
    return-void

    .line 3436
    :catch_e
    move-exception v0

    .line 3437
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setBlockingConsumerEmailList(Landroid/content/ComponentName;Ljava/util/ArrayList;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1511
    .local p2, "consumerEmailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 1513
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setBlockingConsumerEmailList(Landroid/content/ComponentName;Ljava/util/List;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1510
    :cond_d
    :goto_d
    return-void

    .line 1514
    :catch_e
    move-exception v0

    .line 1515
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setBluetoothMaxVisiblityTimeOut(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "nSec"    # I

    .prologue
    .line 4855
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 4857
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setBluetoothMaxVisiblityTimeOut(Landroid/content/ComponentName;II)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_e

    .line 4854
    :cond_d
    :goto_d
    return-void

    .line 4858
    :catch_e
    move-exception v0

    .line 4859
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setBluetoothScanMode(Landroid/content/ComponentName;II)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I
    .param p3, "duration"    # I

    .prologue
    .line 4567
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 4569
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setBluetoothScanMode(Landroid/content/ComponentName;III)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 4570
    :catch_f
    move-exception v0

    .line 4571
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4574
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method public setBluetoothSearchedDeviceType(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "nDeviceType"    # I

    .prologue
    .line 4889
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 4891
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setBluetoothSearchedDeviceType(Landroid/content/ComponentName;II)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_e

    .line 4888
    :cond_d
    :goto_d
    return-void

    .line 4892
    :catch_e
    move-exception v0

    .line 4893
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setCameraPid(I)V
    .registers 3
    .param p1, "pid"    # I

    .prologue
    .line 2401
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setCameraPid(I)V

    .line 2400
    return-void
.end method

.method public setCameraPid(II)V
    .registers 6
    .param p1, "pid"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 2406
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 2408
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setCameraPid(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 2405
    :cond_9
    :goto_9
    return-void

    .line 2409
    :catch_a
    move-exception v0

    .line 2410
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setCameraStatus(Z)V
    .registers 3
    .param p1, "isRunning"    # Z

    .prologue
    .line 2357
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setCameraStatus(ZI)V

    .line 2356
    return-void
.end method

.method public setCameraStatus(ZI)V
    .registers 6
    .param p1, "isRunning"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 2362
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 2364
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setCameraStatus(ZI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 2361
    :cond_9
    :goto_9
    return-void

    .line 2365
    :catch_a
    move-exception v0

    .line 2366
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setCommonCriteriaMode(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I

    .prologue
    .line 6928
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 6930
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setCommonCriteriaMode(Landroid/content/ComponentName;II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 6927
    :cond_d
    :goto_d
    return-void

    .line 6931
    :catch_e
    move-exception v0

    .line 6932
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setCurrIMEPackage(Ljava/lang/String;I)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 3038
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 3040
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setCurrIMEPackage(Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_a

    .line 3037
    :cond_9
    :goto_9
    return-void

    .line 3041
    :catch_a
    move-exception v0

    .line 3042
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setDebugMode(Z)V
    .registers 5
    .param p1, "debug"    # Z

    .prologue
    .line 120
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 122
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setDebugMode(ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 119
    :cond_d
    :goto_d
    return-void

    .line 123
    :catch_e
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setEmergencyCallStatus(ZI)V
    .registers 6
    .param p1, "status"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 6709
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 6711
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setEmergencyCallStatus(ZI)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_a

    .line 6708
    :cond_9
    :goto_9
    return-void

    .line 6712
    :catch_a
    move-exception v0

    .line 6713
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setEncryptionPolicy(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I

    .prologue
    .line 419
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 421
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setEncryptionPolicy(Landroid/content/ComponentName;II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 418
    :cond_d
    :goto_d
    return-void

    .line 422
    :catch_e
    move-exception v0

    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setEncryptionPolicyForEas(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I

    .prologue
    .line 459
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 461
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setEncryptionPolicyForEas(Landroid/content/ComponentName;II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 458
    :cond_d
    :goto_d
    return-void

    .line 462
    :catch_e
    move-exception v0

    .line 463
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setEnforceAirplaneMode(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enforce"    # Z

    .prologue
    .line 4412
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 4414
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setEnforceAirplaneMode(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 4411
    :cond_d
    :goto_d
    return-void

    .line 4415
    :catch_e
    move-exception v0

    .line 4416
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setEnforceAlertMobileDataUsage(Landroid/content/ComponentName;ZJ)V
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enforce"    # Z
    .param p3, "warn"    # J

    .prologue
    .line 6556
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_10

    .line 6558
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setEnforceAlertMobileDataUsage(Landroid/content/ComponentName;ZJI)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_10} :catch_11

    .line 6555
    :cond_10
    :goto_10
    return-void

    .line 6559
    :catch_11
    move-exception v0

    .line 6560
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public setEnforceBackgroundDataRestricted(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 5700
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5702
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setEnforceBackgroundDataRestricted(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5699
    :cond_d
    :goto_d
    return-void

    .line 5703
    :catch_e
    move-exception v0

    .line 5704
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setEnforceEmergencyCallOnly(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 5316
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5318
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setEnforceEmergencyCallOnly(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5315
    :cond_d
    :goto_d
    return-void

    .line 5319
    :catch_e
    move-exception v0

    .line 5320
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setEnforceGPSLocationEnabled(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enforce"    # Z

    .prologue
    .line 2747
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 2749
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setEnforceGPSLocationEnabled(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 2746
    :cond_d
    :goto_d
    return-void

    .line 2750
    :catch_e
    move-exception v0

    .line 2751
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LG MDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setEnforceLimitMobileDataUsage(Landroid/content/ComponentName;ZJ)V
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enforce"    # Z
    .param p3, "limit"    # J

    .prologue
    .line 6526
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_10

    .line 6528
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setEnforceLimitMobileDataUsage(Landroid/content/ComponentName;ZJI)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_10} :catch_11

    .line 6525
    :cond_10
    :goto_10
    return-void

    .line 6529
    :catch_11
    move-exception v0

    .line 6530
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public setEnforceMobileNetworkEnabled(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enforce"    # Z

    .prologue
    .line 754
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 756
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setEnforceMobileNetworkEnabled(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 753
    :cond_d
    :goto_d
    return-void

    .line 757
    :catch_e
    move-exception v0

    .line 758
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setEnforceMuteDuringCall(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enforce"    # Z

    .prologue
    .line 6984
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 6986
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setEnforceMuteDuringCall(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 6983
    :cond_d
    :goto_d
    return-void

    .line 6987
    :catch_e
    move-exception v0

    .line 6988
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setEnforcePasswordChange(Z)V
    .registers 5
    .param p1, "allow"    # Z

    .prologue
    .line 601
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 603
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setEnforcePasswordChange(ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 600
    :cond_d
    :goto_d
    return-void

    .line 604
    :catch_e
    move-exception v0

    .line 605
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setEnforcePowerButtonLocks(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 6870
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 6872
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setEnforcePowerButtonLocks(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 6869
    :cond_d
    :goto_d
    return-void

    .line 6873
    :catch_e
    move-exception v0

    .line 6874
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setEnforceRecoveryPassword(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 531
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 533
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setEnforceRecoveryPassword(Landroid/content/ComponentName;Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 530
    :cond_d
    :goto_d
    return-void

    .line 534
    :catch_e
    move-exception v0

    .line 535
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setEnforceUsbModeAsNone(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enforce"    # Z

    .prologue
    .line 7065
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 7067
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setEnforceUsbModeAsNone(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 7064
    :cond_d
    :goto_d
    return-void

    .line 7068
    :catch_e
    move-exception v0

    .line 7069
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setGrant(Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "status"    # Z

    .prologue
    .line 7215
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 7217
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setGrant(Ljava/lang/String;ZI)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 7218
    :catch_f
    move-exception v0

    .line 7219
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7222
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method public setGranularControlOnCCMode(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "function"    # I

    .prologue
    .line 6953
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 6955
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    .line 6956
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 6955
    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setGranularControlOnCCMode(Landroid/content/ComponentName;II)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 6957
    :catch_f
    move-exception v0

    .line 6958
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6961
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method public setLockoutNow(Landroid/content/ComponentName;ILjava/lang/String;)V
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "level"    # I
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    .line 1168
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setLockoutNow(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;)Z

    .line 1167
    return-void
.end method

.method public setLockoutNow(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "level"    # I
    .param p3, "str"    # Ljava/lang/String;
    .param p4, "recoveryKey"    # Ljava/lang/String;

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 1178
    :try_start_4
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setLockoutNow(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_13

    move-result v0

    return v0

    .line 1179
    :catch_13
    move-exception v6

    .line 1180
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed talking with LGMDM device policy service"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1183
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public setManualSyncWhenRoaming(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "manualSyncWhenRoaming"    # Z

    .prologue
    .line 1595
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 1597
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setManualSyncWhenRoaming(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1594
    :cond_d
    :goto_d
    return-void

    .line 1598
    :catch_e
    move-exception v0

    .line 1599
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setMicrophonePackage(Ljava/lang/String;ZI)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "bSpeech"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3009
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 3011
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setMicrophonePackage(Ljava/lang/String;ZI)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_a

    .line 3008
    :cond_9
    :goto_9
    return-void

    .line 3012
    :catch_a
    move-exception v0

    .line 3013
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setMicrophoneWhitelist(Landroid/content/ComponentName;ZLjava/util/List;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2965
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 2967
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setMicrophoneWhitelist(Landroid/content/ComponentName;ZLjava/util/List;I)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 2964
    :cond_d
    :goto_d
    return-void

    .line 2968
    :catch_e
    move-exception v0

    .line 2969
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setNotifyRemoveGoogleAccountDisabled(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 5877
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 5879
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setNotifyRemoveGoogleAccountDisabled(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 5876
    :cond_d
    :goto_d
    return-void

    .line 5880
    :catch_e
    move-exception v0

    .line 5881
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setOwnerInfo(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 6166
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 6168
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setOwnerInfo(Landroid/content/ComponentName;Ljava/lang/String;I)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 6165
    :cond_d
    :goto_d
    return-void

    .line 6169
    :catch_e
    move-exception v0

    .line 6170
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setPasswordMinimumChange(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "number"    # I

    .prologue
    .line 385
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 387
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setPasswordMinimumChange(Landroid/content/ComponentName;II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 384
    :cond_d
    :goto_d
    return-void

    .line 388
    :catch_e
    move-exception v0

    .line 389
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setPasswordRecoveryEnabled(Landroid/content/ComponentName;Z)Ljava/lang/String;
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enable"    # Z

    .prologue
    .line 506
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setPasswordRecoveryEnabled(Landroid/content/ComponentName;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setPasswordRecoveryEnabled(Landroid/content/ComponentName;ZZ)Ljava/lang/String;
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enable"    # Z
    .param p3, "isEas"    # Z

    .prologue
    const/4 v4, 0x0

    .line 513
    iget-object v2, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v2, :cond_19

    .line 515
    :try_start_5
    iget-object v2, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    .line 516
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 515
    invoke-interface {v2, p1, p2, p3, v3}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setPasswordRecoveryEnabled(Landroid/content/ComponentName;ZZI)Ljava/lang/String;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_10

    move-result-object v1

    .line 517
    .local v1, "s":Ljava/lang/String;
    return-object v1

    .line 518
    .end local v1    # "s":Ljava/lang/String;
    :catch_10
    move-exception v0

    .line 519
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed talking with LGMDM device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    return-object v4
.end method

.method public setRecentApplicationToastView(ZI)V
    .registers 6
    .param p1, "check"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 6745
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 6747
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setRecentApplicationToastView(ZI)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_a

    .line 6744
    :cond_9
    :goto_9
    return-void

    .line 6748
    :catch_a
    move-exception v0

    .line 6749
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRuntimePermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "grantState"    # I

    .prologue
    const/4 v7, 0x0

    .line 7258
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v0, :cond_1e

    .line 7260
    :try_start_5
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    .line 7261
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 7260
    invoke-interface/range {v0 .. v5}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setRuntimePermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;II)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_14

    move-result v0

    return v0

    .line 7262
    :catch_14
    move-exception v6

    .line 7263
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed talking with LGMDM device policy service"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7264
    return v7

    .line 7267
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_1e
    return v7
.end method

.method public setStorageEncryption(Landroid/content/ComponentName;ZILjava/lang/String;)I
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "encrypt"    # Z
    .param p3, "flags"    # I
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 3965
    const/4 v7, -0x1

    .line 3966
    .local v7, "setStorageEncryption":I
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v0, :cond_13

    .line 3968
    :try_start_5
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    .line 3969
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 3968
    invoke-interface/range {v0 .. v5}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;ZILjava/lang/String;I)I
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_12} :catch_14

    move-result v7

    .line 3974
    :cond_13
    :goto_13
    return v7

    .line 3970
    :catch_14
    move-exception v6

    .line 3971
    .local v6, "e":Ljava/lang/Throwable;
    sget-object v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed talking with LGMDM device policy service"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public setTrueRepartValue(Landroid/content/ComponentName;Ljava/lang/String;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 6410
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 6412
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    .line 6413
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 6412
    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setTrueRepartValue(Landroid/content/ComponentName;Ljava/lang/String;I)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 6414
    :catch_f
    move-exception v0

    .line 6415
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6418
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, -0x1

    return v1
.end method

.method public setUnlockoutNow(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1191
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 1193
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setUnlockoutNow(Landroid/content/ComponentName;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1190
    :cond_d
    :goto_d
    return-void

    .line 1194
    :catch_e
    move-exception v0

    .line 1195
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setWarningMsg(Landroid/content/ComponentName;ZLjava/lang/String;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    .line 6784
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 6786
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setWarningMsg(Landroid/content/ComponentName;ZLjava/lang/String;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 6783
    :cond_d
    :goto_d
    return-void

    .line 6787
    :catch_e
    move-exception v0

    .line 6788
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setWiFiSecurityLevel(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I

    .prologue
    .line 4509
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 4511
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->setWiFiSecurityLevel(Landroid/content/ComponentName;II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 4508
    :cond_d
    :goto_d
    return-void

    .line 4512
    :catch_e
    move-exception v0

    .line 4513
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public startApplication(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "subInfo"    # Ljava/lang/String;
    .param p4, "type"    # I

    .prologue
    .line 3555
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v0, :cond_11

    .line 3557
    :try_start_4
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->startApplication(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_11} :catch_12

    .line 3554
    :cond_11
    :goto_11
    return-void

    .line 3558
    :catch_12
    move-exception v6

    .line 3559
    .local v6, "e":Ljava/lang/Throwable;
    sget-object v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed talking with LGMDM device policy service"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public startDeclawingPolicies(I)J
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    .line 7319
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 7321
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->startDeclawingPolicies(I)J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v2

    return-wide v2

    .line 7322
    :catch_b
    move-exception v0

    .line 7323
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7326
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public startLockdownApps()Z
    .registers 2

    .prologue
    .line 3575
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->startLockdownApps(I)Z

    move-result v0

    return v0
.end method

.method public startLockdownApps(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 3580
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 3582
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->startLockdownApps(I)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 3583
    :catch_b
    move-exception v0

    .line 3584
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3587
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public stopApplication(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3565
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 3567
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->stopApplication(Landroid/content/ComponentName;Ljava/lang/String;I)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 3564
    :cond_d
    :goto_d
    return-void

    .line 3568
    :catch_e
    move-exception v0

    .line 3569
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public systemReady()V
    .registers 4

    .prologue
    .line 106
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 108
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->systemReady()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 105
    :cond_9
    :goto_9
    return-void

    .line 109
    :catch_a
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public turnOn3G4GDataNetwork(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 4554
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 4556
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->turnOn3G4GDataNetwork(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 4553
    :cond_d
    :goto_d
    return-void

    .line 4557
    :catch_e
    move-exception v0

    .line 4558
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public turnOnOffGPS(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "turningOn"    # Z

    .prologue
    .line 4541
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 4543
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->turnOnOffGPS(Landroid/content/ComponentName;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 4540
    :cond_d
    :goto_d
    return-void

    .line 4544
    :catch_e
    move-exception v0

    .line 4545
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public unInstallLGVpnCertificate(Landroid/content/ComponentName;Ljava/lang/String;)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 4102
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 4104
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->unInstallLGVpnCertificate(Landroid/content/ComponentName;Ljava/lang/String;I)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 4105
    :catch_f
    move-exception v0

    .line 4106
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4110
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    sget-object v1, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->UNKNOWN:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->getCode()I

    move-result v1

    return v1
.end method

.method public uninstallApplication(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3370
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 3372
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->uninstallApplication(Landroid/content/ComponentName;Ljava/lang/String;I)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 3369
    :cond_d
    :goto_d
    return-void

    .line 3373
    :catch_e
    move-exception v0

    .line 3374
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public uninstallCertificate(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "certificateId"    # Ljava/lang/String;
    .param p3, "useType"    # I

    .prologue
    .line 4293
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 4295
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    .line 4296
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 4295
    invoke-interface {v1, p1, p2, p3, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->uninstallCertificate(Landroid/content/ComponentName;Ljava/lang/String;II)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 4297
    :catch_f
    move-exception v0

    .line 4298
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4301
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method public uninstallSignatureApp(Landroid/content/ComponentName;Ljava/util/List;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3819
    .local p2, "packagelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 3821
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->uninstallSignatureApp(Landroid/content/ComponentName;Ljava/util/List;I)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 3818
    :cond_d
    :goto_d
    return-void

    .line 3822
    :catch_e
    move-exception v0

    .line 3823
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public updateLGVpnCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "newCertName"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "oldCertName"    # Ljava/lang/String;

    .prologue
    .line 4114
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v0, :cond_1c

    .line 4116
    :try_start_4
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->updateLGVpnCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_13

    move-result v0

    return v0

    .line 4117
    :catch_13
    move-exception v6

    .line 4118
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed talking with LGMDM device policy service"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4122
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_1c
    sget-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->UNKNOWN:Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;

    invoke-virtual {v0}, Lcom/lge/mdm/config/LGMDMLgVpnProfile$LGVPN_DM_CERTIFICATE_RESULT;->getCode()I

    move-result v0

    return v0
.end method

.method public updateNetwork(Lcom/lge/mdm/config/LGMDMWifiConfiguration;)I
    .registers 5
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMWifiConfiguration;

    .prologue
    .line 2047
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 2049
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->updateNetwork(Lcom/lge/mdm/config/LGMDMWifiConfiguration;I)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 2050
    :catch_f
    move-exception v0

    .line 2051
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2054
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, -0x1

    return v1
.end method

.method public updateWatcherAndKeeper()V
    .registers 2

    .prologue
    .line 3908
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->updateWatcherAndKeeper(I)V

    .line 3907
    return-void
.end method

.method public updateWatcherAndKeeper(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 3913
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 3915
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->updateWatcherAndKeeper(I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_a

    .line 3912
    :cond_9
    :goto_9
    return-void

    .line 3916
    :catch_a
    move-exception v0

    .line 3917
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public updateWatcherAndKeeperExceptionList([Ljava/lang/String;I)V
    .registers 4
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 3893
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->updateWatcherAndKeeperExceptionList([Ljava/lang/String;II)V

    .line 3892
    return-void
.end method

.method public updateWatcherAndKeeperExceptionList([Ljava/lang/String;II)V
    .registers 7
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 3898
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 3900
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->updateWatcherAndKeeperExceptionList([Ljava/lang/String;II)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_a

    .line 3897
    :cond_9
    :goto_9
    return-void

    .line 3901
    :catch_a
    move-exception v0

    .line 3902
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public wipeApplicationCache(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3311
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 3313
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->wipeApplicationCache(Landroid/content/ComponentName;Ljava/lang/String;I)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 3310
    :cond_d
    :goto_d
    return-void

    .line 3314
    :catch_e
    move-exception v0

    .line 3315
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public wipeApplicationData(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3301
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 3303
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->wipeApplicationData(Landroid/content/ComponentName;Ljava/lang/String;I)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 3300
    :cond_d
    :goto_d
    return-void

    .line 3304
    :catch_e
    move-exception v0

    .line 3305
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public wipeApplicationDefault(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3321
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_d

    .line 3323
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->wipeApplicationDefault(Landroid/content/ComponentName;Ljava/lang/String;I)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 3320
    :cond_d
    :goto_d
    return-void

    .line 3324
    :catch_e
    move-exception v0

    .line 3325
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public wipeData(I)V
    .registers 3
    .param p1, "flags"    # I

    .prologue
    .line 1073
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->wipeData(II)V

    .line 1072
    return-void
.end method

.method public wipeData(II)V
    .registers 6
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 1082
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1084
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->mService:Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/mdm/manager/ILGMDMDevicePolicyManager;->wipeData(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1081
    :cond_9
    :goto_9
    return-void

    .line 1085
    :catch_a
    move-exception v0

    .line 1086
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed talking with LGMDM device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method
