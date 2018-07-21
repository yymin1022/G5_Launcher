.class public Lcom/lge/mdm/frameworks/LGMDMSystemServer;
.super Ljava/lang/Object;
.source "LGMDMSystemServer.java"


# static fields
.field private static mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;


# instance fields
.field public LGDEVICE_ADMIN_SERVICE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field mLGMDMGeneralService:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMSystemServer;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string/jumbo v0, "LGMDMSystemServer"

    iput-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMSystemServer;->TAG:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "LGMDMAdminService"

    iput-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMSystemServer;->LGDEVICE_ADMIN_SERVICE:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMSystemServer;->mLGMDMGeneralService:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    .line 41
    new-instance v0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    invoke-direct {v0, p1}, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMSystemServer;->mLGMDMGeneralService:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    .line 43
    sget-object v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->SERVICE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_27

    .line 44
    sget-object v0, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->SERVICE_NAME:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMSystemServer;->mLGMDMGeneralService:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    .line 44
    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 39
    :goto_26
    return-void

    .line 47
    :cond_27
    const-string/jumbo v0, "LGMDMSystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Already registered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    const-string/jumbo v2, " service"

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public static getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMSystemServer;->mLGMDMDevicePolicyManager:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    return-object v0
.end method


# virtual methods
.method public ServiceSystemReady()V
    .registers 4

    .prologue
    .line 55
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMSystemServer;->mLGMDMGeneralService:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    if-eqz v1, :cond_12

    .line 57
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMSystemServer;->mLGMDMGeneralService:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    invoke-virtual {v1}, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->systemReady()V

    .line 58
    const-string/jumbo v1, "LGMDMSystemServer"

    const-string/jumbo v2, "LGMDM service System Ready!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_12} :catch_13

    .line 53
    :cond_12
    :goto_12
    return-void

    .line 59
    :catch_13
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "LGMDMSystemServer"

    const-string/jumbo v2, "making LGMDM DevicePolicyManager Service ready"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method
