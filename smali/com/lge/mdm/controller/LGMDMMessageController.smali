.class public Lcom/lge/mdm/controller/LGMDMMessageController;
.super Ljava/lang/Object;
.source "LGMDMMessageController.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static instance:Lcom/lge/mdm/controller/LGMDMMessageController;


# instance fields
.field mContext:Landroid/content/Context;

.field private final mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-string/jumbo v0, "MessageController"

    sput-object v0, Lcom/lge/mdm/controller/LGMDMMessageController;->TAG:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMMessageController;->instance:Lcom/lge/mdm/controller/LGMDMMessageController;

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMMessageController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 22
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMMessageController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMMessageController;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMMessageController;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/lge/mdm/controller/LGMDMMessageController;->instance:Lcom/lge/mdm/controller/LGMDMMessageController;

    if-nez v0, :cond_b

    .line 27
    new-instance v0, Lcom/lge/mdm/controller/LGMDMMessageController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMMessageController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMMessageController;->instance:Lcom/lge/mdm/controller/LGMDMMessageController;

    .line 30
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMMessageController;->instance:Lcom/lge/mdm/controller/LGMDMMessageController;

    return-object v0
.end method

.method private setMessageApp(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 101
    sget-object v1, Lcom/lge/mdm/controller/LGMDMMessageController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setMessageApp"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMMessageController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 105
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSendingSMS:Z

    if-eqz v1, :cond_1f

    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowReceivingSmsMms:Z

    if-eqz v1, :cond_1f

    .line 109
    :goto_16
    sget-object v1, Lcom/lge/mdm/controller/LGMDMMessageController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "messagePackageName  = com.btb.ums/com.android.mms/com.lge.message"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void

    .line 106
    :cond_1f
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v1

    const-string/jumbo v2, "com.btb.ums/com.android.mms/com.lge.message"

    invoke-virtual {v1, v2, p2}, Lcom/lge/mdm/controller/LGMDMHandler;->setMessageApp(Ljava/lang/String;I)V

    goto :goto_16
.end method


# virtual methods
.method protected getAllowReceivingSmsMms(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 64
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMMessageController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 65
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowReceivingSmsMms:Z

    :cond_e
    return v4

    .line 68
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMMessageController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 69
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

    .line 70
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowReceivingSmsMms:Z

    if-nez v5, :cond_19

    .line 71
    const/4 v4, 0x0

    return v4

    .line 74
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowSendingSMS(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 36
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMMessageController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 37
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSendingSMS:Z

    :cond_e
    return v4

    .line 40
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMMessageController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 41
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

    .line 42
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSendingSMS:Z

    if-nez v5, :cond_19

    .line 43
    const/4 v4, 0x0

    return v4

    .line 46
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected setAllowReceivingSmsMms(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 78
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMMessageController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 80
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowReceivingSmsMms:Z

    if-ne v1, p2, :cond_13

    .line 81
    sget-object v1, Lcom/lge/mdm/controller/LGMDMMessageController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAllowReceivingSmsMms : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void

    .line 85
    :cond_13
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowReceivingSmsMms:Z

    .line 86
    invoke-virtual {p0, p2}, Lcom/lge/mdm/controller/LGMDMMessageController;->setSmsReceptionBlocking(Z)V

    .line 87
    invoke-direct {p0, p1, p3}, Lcom/lge/mdm/controller/LGMDMMessageController;->setMessageApp(Landroid/content/ComponentName;I)V

    .line 88
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMApplicationController;->getInstance()Lcom/lge/mdm/controller/LGMDMApplicationController;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/lge/mdm/controller/LGMDMApplicationController;->updateWatcherAndKeeper(I)V

    .line 77
    return-void
.end method

.method protected setAllowSendingSMS(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 50
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMMessageController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 52
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSendingSMS:Z

    if-ne v1, p2, :cond_13

    .line 53
    sget-object v1, Lcom/lge/mdm/controller/LGMDMMessageController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAllowSendingSMS : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void

    .line 57
    :cond_13
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSendingSMS:Z

    .line 58
    invoke-direct {p0, p1, p3}, Lcom/lge/mdm/controller/LGMDMMessageController;->setMessageApp(Landroid/content/ComponentName;I)V

    .line 49
    return-void
.end method

.method protected setSmsReceptionBlocking(Z)V
    .registers 4
    .param p1, "allow"    # Z

    .prologue
    .line 92
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 93
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    if-nez p1, :cond_d

    .line 94
    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->smsReceptionBlockingforNIAPPolicy(Ljava/lang/String;)Z

    .line 91
    :goto_c
    return-void

    .line 96
    :cond_d
    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->smsReceptionBlockingforNIAPPolicy(Ljava/lang/String;)Z

    goto :goto_c
.end method
