.class public Lcom/lge/mdm/controller/LGMDMPowerOffController;
.super Ljava/lang/Object;
.source "LGMDMPowerOffController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LGMDMPowerOffController"

.field private static sInstance:Lcom/lge/mdm/controller/LGMDMPowerOffController;


# instance fields
.field mContext:Landroid/content/Context;

.field private mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMPowerOffController;->sInstance:Lcom/lge/mdm/controller/LGMDMPowerOffController;

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMPowerOffController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 21
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMPowerOffController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 22
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMPowerOffController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMPowerOffController;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMPowerOffController;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/lge/mdm/controller/LGMDMPowerOffController;->sInstance:Lcom/lge/mdm/controller/LGMDMPowerOffController;

    if-nez v0, :cond_b

    .line 27
    new-instance v0, Lcom/lge/mdm/controller/LGMDMPowerOffController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMPowerOffController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMPowerOffController;->sInstance:Lcom/lge/mdm/controller/LGMDMPowerOffController;

    .line 29
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMPowerOffController;->sInstance:Lcom/lge/mdm/controller/LGMDMPowerOffController;

    return-object v0
.end method


# virtual methods
.method protected getAllowPowerOff(Landroid/content/ComponentName;I)Z
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    const-string/jumbo v5, "LGMDMPowerOffController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAllowPowerOff ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    if-eqz p1, :cond_3b

    .line 40
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMPowerOffController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 41
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_3a

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPowerOff:Z

    :cond_3a
    return v4

    .line 44
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_3b
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMPowerOffController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 45
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 46
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPowerOff:Z

    if-nez v5, :cond_45

    .line 47
    const-string/jumbo v4, "LGMDMPowerOffController"

    const-string/jumbo v5, "getAllowPowerOff ret : disallow"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v4, 0x0

    return v4

    .line 51
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_60
    const-string/jumbo v5, "LGMDMPowerOffController"

    const-string/jumbo v6, "getAllowPowerOff ret : allow"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return v4
.end method

.method protected setAllowPowerOff(Landroid/content/ComponentName;ZI)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 56
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMPowerOffController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1, p3}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 57
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-nez v0, :cond_13

    .line 58
    const-string/jumbo v1, "LGMDMPowerOffController"

    const-string/jumbo v2, "setAllowPowerOff : admin is null"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return v3

    .line 62
    :cond_13
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPowerOff:Z

    if-ne v1, p2, :cond_21

    .line 63
    const-string/jumbo v1, "LGMDMPowerOffController"

    const-string/jumbo v2, "setAllowPowerOff : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return v3

    .line 67
    :cond_21
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPowerOff:Z

    .line 69
    const-string/jumbo v1, "LGMDMPowerOffController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAllowPowerOff"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v1, 0x1

    return v1
.end method
