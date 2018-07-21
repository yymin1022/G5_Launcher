.class public Lcom/lge/mdm/controller/LGMDMMultiUserController;
.super Ljava/lang/Object;
.source "LGMDMMultiUserController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LGMDMMultiUserController"

.field private static instance:Lcom/lge/mdm/controller/LGMDMMultiUserController;


# instance fields
.field private mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMMultiUserController;->instance:Lcom/lge/mdm/controller/LGMDMMultiUserController;

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMMultiUserController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 17
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMMultiUserController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMMultiUserController;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/lge/mdm/controller/LGMDMMultiUserController;->instance:Lcom/lge/mdm/controller/LGMDMMultiUserController;

    if-nez v0, :cond_b

    .line 22
    new-instance v0, Lcom/lge/mdm/controller/LGMDMMultiUserController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMMultiUserController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMMultiUserController;->instance:Lcom/lge/mdm/controller/LGMDMMultiUserController;

    .line 24
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMMultiUserController;->instance:Lcom/lge/mdm/controller/LGMDMMultiUserController;

    return-object v0
.end method


# virtual methods
.method protected getCurrentUserID()I
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMMultiUserController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getCurrentUserID()I

    move-result v0

    return v0
.end method

.method protected getMultiUserDisabled(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 37
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMMultiUserController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 38
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMultiUser:Z

    :cond_e
    return v4

    .line 41
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMMultiUserController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 42
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

    .line 43
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMultiUser:Z

    if-nez v5, :cond_19

    .line 44
    const/4 v4, 0x0

    return v4

    .line 47
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected setMultiUserDisabled(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 51
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMMultiUserController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1, p3}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 52
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-nez v0, :cond_9

    .line 53
    return-void

    .line 55
    :cond_9
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMultiUser:Z

    if-ne v1, p2, :cond_17

    .line 56
    const-string/jumbo v1, "LGMDMMultiUserController"

    const-string/jumbo v2, "setMultiUserDisabled : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void

    .line 59
    :cond_17
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMultiUser:Z

    .line 60
    const-string/jumbo v1, "LGMDMMultiUserController"

    const-string/jumbo v2, "setMultiUserDisabled"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method
