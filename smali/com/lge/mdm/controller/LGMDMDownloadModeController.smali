.class public Lcom/lge/mdm/controller/LGMDMDownloadModeController;
.super Ljava/lang/Object;
.source "LGMDMDownloadModeController.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static instance:Lcom/lge/mdm/controller/LGMDMDownloadModeController;


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

    sput-object v0, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->instance:Lcom/lge/mdm/controller/LGMDMDownloadModeController;

    .line 17
    const-string/jumbo v0, "LGMDMDownloadModeController"

    sput-object v0, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->TAG:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 24
    new-instance v0, Lcom/lge/mdm/controller/LGMDMATClientConnector;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMATClientConnector;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->mLGMDMATClientConnector:Lcom/lge/mdm/controller/LGMDMATClientConnector;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->mPorted:Z

    .line 22
    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMDownloadModeController;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->instance:Lcom/lge/mdm/controller/LGMDMDownloadModeController;

    if-nez v0, :cond_b

    .line 30
    new-instance v0, Lcom/lge/mdm/controller/LGMDMDownloadModeController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMDownloadModeController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->instance:Lcom/lge/mdm/controller/LGMDMDownloadModeController;

    .line 32
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->instance:Lcom/lge/mdm/controller/LGMDMDownloadModeController;

    return-object v0
.end method


# virtual methods
.method protected checkAllUserDownloadModePolicy()Z
    .registers 6

    .prologue
    .line 104
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminLists(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 105
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

    .line 106
    .local v0, "admin_i":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDownloadMode:Z

    if-nez v3, :cond_b

    .line 107
    const/4 v3, 0x0

    return v3

    .line 110
    .end local v0    # "admin_i":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_1d
    const/4 v3, 0x1

    return v3
.end method

.method protected checkDownloadModePolicy(Landroid/content/ComponentName;ZI)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-virtual {p0, p1, p3}, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->getAllowDownloadMode(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 90
    .local v2, "oldPolicy":Z
    invoke-virtual {p0, v3, p3}, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->getAllowDownloadMode(Landroid/content/ComponentName;I)Z

    move-result v1

    .line 91
    .local v1, "oldGlobalPolicy":Z
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->setAllowDownloadMode(Landroid/content/ComponentName;ZI)V

    .line 93
    invoke-virtual {p0, v3, p3}, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->getAllowDownloadMode(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 94
    .local v0, "newGlobalPolicy":Z
    invoke-virtual {p0, p1, v2, p3}, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->setAllowDownloadMode(Landroid/content/ComponentName;ZI)V

    .line 96
    if-eq v1, v0, :cond_17

    .line 97
    const/4 v3, 0x1

    return v3

    .line 99
    :cond_17
    const/4 v3, 0x0

    return v3
.end method

.method protected checkPortingATClient()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->mPorted:Z

    if-nez v1, :cond_11

    .line 116
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->mLGMDMATClientConnector:Lcom/lge/mdm/controller/LGMDMATClientConnector;

    .line 117
    const/4 v2, 0x2

    .line 116
    invoke-virtual {v1, v2}, Lcom/lge/mdm/controller/LGMDMATClientConnector;->getATClinet(I)I

    move-result v0

    .line 118
    if-ne v0, v3, :cond_14

    .line 119
    iput-boolean v3, p0, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->mPorted:Z

    .line 125
    :cond_11
    :goto_11
    iget-boolean v1, p0, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->mPorted:Z

    return v1

    .line 122
    :cond_14
    sget-object v1, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->TAG:Ljava/lang/String;

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

    goto :goto_11
.end method

.method protected connectATService()V
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->mLGMDMATClientConnector:Lcom/lge/mdm/controller/LGMDMATClientConnector;

    invoke-virtual {v0}, Lcom/lge/mdm/controller/LGMDMATClientConnector;->connectATService()V

    .line 34
    return-void
.end method

.method protected getAllowDownloadMode(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 74
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 75
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDownloadMode:Z

    :cond_e
    return v4

    .line 78
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 79
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

    .line 80
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDownloadMode:Z

    if-nez v5, :cond_19

    .line 81
    const/4 v4, 0x0

    return v4

    .line 84
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected setATClinetDownloadMode(Z)I
    .registers 6
    .param p1, "allow"    # Z

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 51
    .local v1, "ret":I
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->mLGMDMATClientConnector:Lcom/lge/mdm/controller/LGMDMATClientConnector;

    .line 52
    const/4 v3, 0x2

    .line 51
    invoke-virtual {v2, v3, p1}, Lcom/lge/mdm/controller/LGMDMATClientConnector;->setATClinet(IZ)I

    move-result v0

    .line 54
    .local v0, "result":I
    packed-switch v0, :pswitch_data_2a

    .line 64
    :pswitch_b
    sget-object v2, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "DOWNLOADMODE not supports"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v1, 0x0

    .line 68
    :goto_14
    return v1

    .line 56
    :pswitch_15
    sget-object v2, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "DOWNLOADMODE set succeeded"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v1, 0x1

    .line 58
    goto :goto_14

    .line 60
    :pswitch_1f
    sget-object v2, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "DOWNLOADMODE set fail"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v1, -0x1

    .line 62
    goto :goto_14

    .line 54
    nop

    :pswitch_data_2a
    .packed-switch -0x1
        :pswitch_1f
        :pswitch_b
        :pswitch_15
    .end packed-switch
.end method

.method protected setAllowDownloadMode(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 39
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 41
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDownloadMode:Z

    if-ne v1, p2, :cond_13

    .line 42
    sget-object v1, Lcom/lge/mdm/controller/LGMDMDownloadModeController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setallowDownloadMode: same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void

    .line 46
    :cond_13
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDownloadMode:Z

    .line 38
    return-void
.end method
