.class public Lcom/lge/mdm/controller/LGMDMMasterController;
.super Ljava/lang/Object;
.source "LGMDMMasterController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LGMDMMasterController"

.field private static instance:Lcom/lge/mdm/controller/LGMDMMasterController;


# instance fields
.field private final masterList:Lcom/lge/mdm/admin/LGMDMadminlist;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMMasterController;->instance:Lcom/lge/mdm/controller/LGMDMMasterController;

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMMasteradminList()Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMMasterController;->masterList:Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 29
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMMasterController;->SettingMasterPolcies()V

    .line 27
    return-void
.end method

.method private SettingMasterPolcies()V
    .registers 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMMasterController;->masterList:Lcom/lge/mdm/admin/LGMDMadminlist;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWipeDataMaster:Z

    .line 32
    return-void
.end method

.method private checkSetWipeDataMaster()Z
    .registers 9

    .prologue
    .line 55
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 56
    .local v2, "callingUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 57
    .local v4, "userHandle":I
    const/4 v1, 0x0

    .line 58
    .local v1, "bGranted":Z
    const/4 v0, 0x0

    .line 59
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    const/16 v5, 0x3e8

    if-ne v2, v5, :cond_19

    .line 60
    const-string/jumbo v5, "LGMDMMasterController"

    const-string/jumbo v6, "checkSetWipeDataMaster CallingUid is SYSTEM_UID !!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v5, 0x1

    return v5

    .line 63
    :cond_19
    const-string/jumbo v5, "LGMDMMasterController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkSetWipeDataMaster CallingUid is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :try_start_33
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 68
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->usesPolicy(I)Z

    move-result v5

    if-nez v5, :cond_52

    .line 69
    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadminlist;->getNativeDeviceAdminInfo()Landroid/app/admin/DeviceAdminInfo;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v5

    .line 68
    if-eqz v5, :cond_6f

    .line 71
    :cond_52
    invoke-direct {p0, v0, v4}, Lcom/lge/mdm/controller/LGMDMMasterController;->getAllowWipeDataOthers(Lcom/lge/mdm/admin/LGMDMadminlist;I)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 73
    const/4 v1, 0x1

    .line 83
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :goto_59
    return v1

    .line 75
    .restart local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_5a
    const-string/jumbo v5, "LGMDMMasterController"

    const-string/jumbo v6, "checkSetWipeDataMaster, other admin disallow wipe data!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/SecurityException; {:try_start_33 .. :try_end_63} :catch_64

    goto :goto_59

    .line 80
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :catch_64
    move-exception v3

    .line 81
    .local v3, "e":Ljava/lang/SecurityException;
    const-string/jumbo v5, "LGMDMMasterController"

    const-string/jumbo v6, "CallingUid is not LGMDM administrator!!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 78
    .end local v3    # "e":Ljava/lang/SecurityException;
    .restart local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_6f
    :try_start_6f
    const-string/jumbo v5, "LGMDMMasterController"

    const-string/jumbo v6, "checkSetWipeDataMaster, admin not use wipe policy!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/lang/SecurityException; {:try_start_6f .. :try_end_78} :catch_64

    goto :goto_59
.end method

.method private getAllowWipeDataOthers(Lcom/lge/mdm/admin/LGMDMadminlist;I)Z
    .registers 9
    .param p1, "admin_self"    # Lcom/lge/mdm/admin/LGMDMadminlist;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v5, 0x1

    .line 37
    if-nez p1, :cond_d

    .line 38
    const-string/jumbo v3, "LGMDMMasterController"

    const-string/jumbo v4, "getAllowWipeDataOthers, admin_self is null!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return v5

    .line 42
    :cond_d
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 44
    .local v2, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 45
    .local v0, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eq v0, p1, :cond_19

    iget-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWipeData:Z

    if-nez v3, :cond_19

    .line 46
    const-string/jumbo v3, "LGMDMMasterController"

    const-string/jumbo v4, "getAllowWipeDataOthers, other_admin is disallow factory reset!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v3, 0x0

    return v3

    .line 50
    .end local v0    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_36
    const-string/jumbo v3, "LGMDMMasterController"

    const-string/jumbo v4, "getAllowWipeDataOthers, any admin do not disallow factory reset!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return v5
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMMasterController;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/lge/mdm/controller/LGMDMMasterController;->instance:Lcom/lge/mdm/controller/LGMDMMasterController;

    if-nez v0, :cond_b

    .line 21
    new-instance v0, Lcom/lge/mdm/controller/LGMDMMasterController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMMasterController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMMasterController;->instance:Lcom/lge/mdm/controller/LGMDMMasterController;

    .line 24
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMMasterController;->instance:Lcom/lge/mdm/controller/LGMDMMasterController;

    return-object v0
.end method


# virtual methods
.method public getAllowWipeDataMaster(I)Z
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMMasterController;->masterList:Lcom/lge/mdm/admin/LGMDMadminlist;

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWipeDataMaster:Z

    return v0
.end method

.method public setAllowWipeDataMaster(ZI)V
    .registers 5
    .param p1, "allow"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMMasterController;->checkSetWipeDataMaster()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 88
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMMasterController;->masterList:Lcom/lge/mdm/admin/LGMDMadminlist;

    iput-boolean p1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWipeDataMaster:Z

    .line 86
    :goto_a
    return-void

    .line 90
    :cond_b
    const-string/jumbo v0, "LGMDM"

    const-string/jumbo v1, "setAllowWipeDataMaster, checkSetWipeDataMaster is false."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method
