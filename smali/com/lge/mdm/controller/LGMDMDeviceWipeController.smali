.class public Lcom/lge/mdm/controller/LGMDMDeviceWipeController;
.super Ljava/lang/Object;
.source "LGMDMDeviceWipeController.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static instance:Lcom/lge/mdm/controller/LGMDMDeviceWipeController;


# instance fields
.field private final mLGMDMATClientConnector:Lcom/lge/mdm/controller/LGMDMATClientConnector;

.field private final mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

.field private mPorted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->instance:Lcom/lge/mdm/controller/LGMDMDeviceWipeController;

    .line 17
    const-string/jumbo v0, "LGMDMDeviceWipeController"

    sput-object v0, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->TAG:Ljava/lang/String;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 24
    new-instance v0, Lcom/lge/mdm/controller/LGMDMATClientConnector;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMATClientConnector;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->mLGMDMATClientConnector:Lcom/lge/mdm/controller/LGMDMATClientConnector;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->mPorted:Z

    .line 22
    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMDeviceWipeController;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->instance:Lcom/lge/mdm/controller/LGMDMDeviceWipeController;

    if-nez v0, :cond_b

    .line 30
    new-instance v0, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->instance:Lcom/lge/mdm/controller/LGMDMDeviceWipeController;

    .line 32
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->instance:Lcom/lge/mdm/controller/LGMDMDeviceWipeController;

    return-object v0
.end method


# virtual methods
.method protected checkAllUserHWFactoryResetPolicy()Z
    .registers 6

    .prologue
    .line 96
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminLists(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 97
    .local v2, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin_i$iterator":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 98
    .local v0, "admin_i":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowHWfactoryResetWithATClient:Z

    if-nez v3, :cond_b

    .line 99
    const/4 v3, 0x0

    return v3

    .line 102
    .end local v0    # "admin_i":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_1d
    const/4 v3, 0x1

    return v3
.end method

.method protected checkHardwareFactoryResetPolicy(Landroid/content/ComponentName;ZI)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-virtual {p0, p1, p3}, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->getAllowHardwareFactoryreset(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 82
    .local v2, "oldPolicy":Z
    invoke-virtual {p0, v3, p3}, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->getAllowHardwareFactoryreset(Landroid/content/ComponentName;I)Z

    move-result v1

    .line 83
    .local v1, "oldGlobalPolicy":Z
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->setAllowHardwareFactoryReset(Landroid/content/ComponentName;ZI)V

    .line 85
    invoke-virtual {p0, v3, p3}, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->getAllowHardwareFactoryreset(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 86
    .local v0, "newGlobalPolicy":Z
    invoke-virtual {p0, p1, v2, p3}, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->setAllowHardwareFactoryReset(Landroid/content/ComponentName;ZI)V

    .line 88
    if-eq v1, v0, :cond_17

    .line 89
    const/4 v3, 0x1

    return v3

    .line 91
    :cond_17
    const/4 v3, 0x0

    return v3
.end method

.method protected checkPortingATClient()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->mPorted:Z

    if-nez v1, :cond_10

    .line 108
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->mLGMDMATClientConnector:Lcom/lge/mdm/controller/LGMDMATClientConnector;

    invoke-virtual {v1, v2}, Lcom/lge/mdm/controller/LGMDMATClientConnector;->getATClinet(I)I

    move-result v0

    .line 110
    if-ne v0, v2, :cond_13

    .line 111
    iput-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->mPorted:Z

    .line 117
    :cond_10
    :goto_10
    iget-boolean v1, p0, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->mPorted:Z

    return v1

    .line 114
    :cond_13
    sget-object v1, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ATClientConnector getATCMD for checkPorint Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method protected connectATService()V
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->mLGMDMATClientConnector:Lcom/lge/mdm/controller/LGMDMATClientConnector;

    invoke-virtual {v0}, Lcom/lge/mdm/controller/LGMDMATClientConnector;->connectATService()V

    .line 35
    return-void
.end method

.method protected disconnectATService()V
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->mLGMDMATClientConnector:Lcom/lge/mdm/controller/LGMDMATClientConnector;

    invoke-virtual {v0}, Lcom/lge/mdm/controller/LGMDMATClientConnector;->disconnectATService()V

    .line 39
    return-void
.end method

.method protected getAllowHardwareFactoryreset(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 66
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 67
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowHWfactoryResetWithATClient:Z

    :cond_e
    return v4

    .line 70
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 71
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

    .line 72
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowHWfactoryResetWithATClient:Z

    if-nez v5, :cond_19

    .line 73
    const/4 v4, 0x0

    return v4

    .line 76
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected setATClientHardwareFactoryReset(Z)I
    .registers 6
    .param p1, "allow"    # Z

    .prologue
    .line 56
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->mLGMDMATClientConnector:Lcom/lge/mdm/controller/LGMDMATClientConnector;

    .line 57
    const/4 v2, 0x1

    .line 56
    invoke-virtual {v1, v2, p1}, Lcom/lge/mdm/controller/LGMDMATClientConnector;->setATClinet(IZ)I

    move-result v0

    .line 59
    .local v0, "result":I
    sget-object v1, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "HW factory rest return value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return v0
.end method

.method protected setAllowHardwareFactoryReset(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 45
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 47
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowHWfactoryResetWithATClient:Z

    if-ne v1, p2, :cond_13

    .line 48
    sget-object v1, Lcom/lge/mdm/controller/LGMDMDeviceWipeController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAllowHardwareFactoryReset : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void

    .line 52
    :cond_13
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowHWfactoryResetWithATClient:Z

    .line 44
    return-void
.end method
