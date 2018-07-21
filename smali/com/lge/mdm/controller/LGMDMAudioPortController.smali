.class public Lcom/lge/mdm/controller/LGMDMAudioPortController;
.super Ljava/lang/Object;
.source "LGMDMAudioPortController.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static instance:Lcom/lge/mdm/controller/LGMDMAudioPortController;


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

    sput-object v0, Lcom/lge/mdm/controller/LGMDMAudioPortController;->instance:Lcom/lge/mdm/controller/LGMDMAudioPortController;

    .line 17
    const-string/jumbo v0, "LGMDMAudioPortController"

    sput-object v0, Lcom/lge/mdm/controller/LGMDMAudioPortController;->TAG:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMAudioPortController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 24
    new-instance v0, Lcom/lge/mdm/controller/LGMDMATClientConnector;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMATClientConnector;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMAudioPortController;->mLGMDMATClientConnector:Lcom/lge/mdm/controller/LGMDMATClientConnector;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/mdm/controller/LGMDMAudioPortController;->mPorted:Z

    .line 22
    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMAudioPortController;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/lge/mdm/controller/LGMDMAudioPortController;->instance:Lcom/lge/mdm/controller/LGMDMAudioPortController;

    if-nez v0, :cond_b

    .line 30
    new-instance v0, Lcom/lge/mdm/controller/LGMDMAudioPortController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMAudioPortController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMAudioPortController;->instance:Lcom/lge/mdm/controller/LGMDMAudioPortController;

    .line 32
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMAudioPortController;->instance:Lcom/lge/mdm/controller/LGMDMAudioPortController;

    return-object v0
.end method


# virtual methods
.method protected checkAllUserDataTransmissionViaAudioPortPolicy()Z
    .registers 6

    .prologue
    .line 111
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMAudioPortController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminLists(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 112
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

    .line 113
    .local v0, "admin_i":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDataTransmissionViaAudioport:Z

    if-nez v3, :cond_b

    .line 114
    const/4 v3, 0x0

    return v3

    .line 117
    .end local v0    # "admin_i":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_1d
    const/4 v3, 0x1

    return v3
.end method

.method protected checkDataTransmissionViaAudioPortPolicy(Landroid/content/ComponentName;ZI)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-virtual {p0, p1, p3}, Lcom/lge/mdm/controller/LGMDMAudioPortController;->getAllowDataTransmissionViaAudioPort(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 97
    .local v2, "oldPolicy":Z
    invoke-virtual {p0, v3, p3}, Lcom/lge/mdm/controller/LGMDMAudioPortController;->getAllowDataTransmissionViaAudioPort(Landroid/content/ComponentName;I)Z

    move-result v1

    .line 98
    .local v1, "oldGlobalPolicy":Z
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/mdm/controller/LGMDMAudioPortController;->setAllowDataTransmissionViaAudioPort(Landroid/content/ComponentName;ZI)V

    .line 100
    invoke-virtual {p0, v3, p3}, Lcom/lge/mdm/controller/LGMDMAudioPortController;->getAllowDataTransmissionViaAudioPort(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 101
    .local v0, "newGlobalPolicy":Z
    invoke-virtual {p0, p1, v2, p3}, Lcom/lge/mdm/controller/LGMDMAudioPortController;->setAllowDataTransmissionViaAudioPort(Landroid/content/ComponentName;ZI)V

    .line 103
    if-eq v1, v0, :cond_17

    .line 104
    const/4 v3, 0x1

    return v3

    .line 106
    :cond_17
    const/4 v3, 0x0

    return v3
.end method

.method protected checkPortingATClient()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/lge/mdm/controller/LGMDMAudioPortController;->mPorted:Z

    if-nez v1, :cond_12

    .line 123
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMAudioPortController;->mLGMDMATClientConnector:Lcom/lge/mdm/controller/LGMDMATClientConnector;

    .line 124
    const/16 v2, 0x8

    .line 123
    invoke-virtual {v1, v2}, Lcom/lge/mdm/controller/LGMDMATClientConnector;->getATClinet(I)I

    move-result v0

    .line 125
    if-ne v0, v3, :cond_15

    .line 126
    iput-boolean v3, p0, Lcom/lge/mdm/controller/LGMDMAudioPortController;->mPorted:Z

    .line 132
    :cond_12
    :goto_12
    iget-boolean v1, p0, Lcom/lge/mdm/controller/LGMDMAudioPortController;->mPorted:Z

    return v1

    .line 129
    :cond_15
    sget-object v1, Lcom/lge/mdm/controller/LGMDMAudioPortController;->TAG:Ljava/lang/String;

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

    goto :goto_12
.end method

.method protected connectATService()V
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMAudioPortController;->mLGMDMATClientConnector:Lcom/lge/mdm/controller/LGMDMATClientConnector;

    invoke-virtual {v0}, Lcom/lge/mdm/controller/LGMDMATClientConnector;->connectATService()V

    .line 63
    return-void
.end method

.method protected disconnectATService()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMAudioPortController;->mLGMDMATClientConnector:Lcom/lge/mdm/controller/LGMDMATClientConnector;

    invoke-virtual {v0}, Lcom/lge/mdm/controller/LGMDMATClientConnector;->disconnectATService()V

    .line 67
    return-void
.end method

.method protected getAllowDataTransmissionViaAudioPort(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 38
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMAudioPortController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 39
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDataTransmissionViaAudioport:Z

    :cond_e
    return v4

    .line 42
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMAudioPortController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 43
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

    .line 44
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDataTransmissionViaAudioport:Z

    if-nez v5, :cond_19

    .line 45
    const/4 v4, 0x0

    return v4

    .line 48
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected setATClientDataTransmissionViaAudioPort(Z)I
    .registers 6
    .param p1, "allow"    # Z

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 73
    .local v1, "ret":I
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMAudioPortController;->mLGMDMATClientConnector:Lcom/lge/mdm/controller/LGMDMATClientConnector;

    .line 74
    const/16 v3, 0x8

    .line 73
    invoke-virtual {v2, v3, p1}, Lcom/lge/mdm/controller/LGMDMATClientConnector;->setATClinet(IZ)I

    move-result v0

    .line 76
    .local v0, "result":I
    packed-switch v0, :pswitch_data_2a

    .line 86
    :pswitch_c
    sget-object v2, Lcom/lge/mdm/controller/LGMDMAudioPortController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "AUDIOPORTAPI not supports"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v1, 0x0

    .line 90
    :goto_15
    return v1

    .line 78
    :pswitch_16
    sget-object v2, Lcom/lge/mdm/controller/LGMDMAudioPortController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "AUDIOPORTAPI set succeeded"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v1, 0x1

    .line 80
    goto :goto_15

    .line 82
    :pswitch_20
    sget-object v2, Lcom/lge/mdm/controller/LGMDMAudioPortController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "AUDIOPORTAPI set fail"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v1, -0x1

    .line 84
    goto :goto_15

    .line 76
    :pswitch_data_2a
    .packed-switch -0x1
        :pswitch_20
        :pswitch_c
        :pswitch_16
    .end packed-switch
.end method

.method protected setAllowDataTransmissionViaAudioPort(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 53
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMAudioPortController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 55
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDataTransmissionViaAudioport:Z

    if-ne v1, p2, :cond_13

    .line 56
    sget-object v1, Lcom/lge/mdm/controller/LGMDMAudioPortController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAllowDataTransmissionViaAudioPort : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void

    .line 60
    :cond_13
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDataTransmissionViaAudioport:Z

    .line 52
    return-void
.end method
