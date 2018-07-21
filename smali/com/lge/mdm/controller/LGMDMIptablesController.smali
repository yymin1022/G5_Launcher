.class public Lcom/lge/mdm/controller/LGMDMIptablesController;
.super Ljava/lang/Object;
.source "LGMDMIptablesController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LGMDMIptablesController"

.field private static sInstance:Lcom/lge/mdm/controller/LGMDMIptablesController;


# instance fields
.field private final IPTABLES_CMDLIST_FILE:Ljava/lang/String;

.field private final IPTABLES_LIST_FILE:Ljava/lang/String;

.field private mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMIptablesController;->sInstance:Lcom/lge/mdm/controller/LGMDMIptablesController;

    .line 18
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMIptablesController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 23
    const-string/jumbo v0, "/data/system/lgmdm/lgmdm_iptables_list.txt"

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMIptablesController;->IPTABLES_LIST_FILE:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "/data/system/lgmdm/lgmdm_iptables_cmdlist.txt"

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMIptablesController;->IPTABLES_CMDLIST_FILE:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMIptablesController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 26
    return-void
.end method

.method private getGlobalCommandListForInternetAccess(I)Ljava/util/List;
    .registers 11
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
    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    const/4 v4, 0x0

    .line 349
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 351
    .local v5, "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashSet;

    .end local v5    # "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 352
    .local v5, "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .local v3, "i":I
    :goto_9
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMIptablesController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v6, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v6

    if-ge v3, v6, :cond_34

    .line 353
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMIptablesController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v6, v3, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminList(II)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 354
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-object v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->commandList:Ljava/util/List;

    if-eqz v6, :cond_31

    .line 355
    iget-object v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->commandList:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "command$iterator":Ljava/util/Iterator;
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 356
    .local v1, "command":Ljava/lang/String;
    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 352
    .end local v1    # "command":Ljava/lang/String;
    .end local v2    # "command$iterator":Ljava/util/Iterator;
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 360
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_34
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_3f

    .line 361
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 363
    :cond_3f
    const-string/jumbo v6, "LGMDMIptablesController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[getGlobalCommandListForInternetAccess result = ]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-object v4
.end method

.method private getGlobalListForInternetAccess(I)Ljava/util/List;
    .registers 9
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 197
    const-string/jumbo v4, "LGMDMIptablesController"

    const-string/jumbo v5, "[getGlobalListForInternetAccess]"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    const/4 v2, 0x0

    .line 200
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 202
    .local v3, "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    .end local v3    # "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 203
    .local v3, "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .local v1, "i":I
    :goto_12
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMIptablesController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v4

    if-ge v1, v4, :cond_2c

    .line 204
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMIptablesController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminList(II)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 205
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->internetAccessList:Ljava/util/List;

    if-eqz v4, :cond_29

    .line 206
    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->internetAccessList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 203
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 209
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2c
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_37

    .line 210
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 212
    :cond_37
    const-string/jumbo v4, "LGMDMIptablesController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[getGlobalListForInternetAccess result = ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-object v2
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMIptablesController;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/lge/mdm/controller/LGMDMIptablesController;->sInstance:Lcom/lge/mdm/controller/LGMDMIptablesController;

    if-nez v0, :cond_b

    .line 32
    new-instance v0, Lcom/lge/mdm/controller/LGMDMIptablesController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMIptablesController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMIptablesController;->sInstance:Lcom/lge/mdm/controller/LGMDMIptablesController;

    .line 34
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMIptablesController;->sInstance:Lcom/lge/mdm/controller/LGMDMIptablesController;

    return-object v0
.end method


# virtual methods
.method public getAllowCommandForInternetAccess(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 261
    const/4 v0, 0x0

    .line 263
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 264
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMIptablesController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 265
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowCommandList:Z

    :cond_e
    return v4

    .line 268
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMIptablesController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 269
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

    .line 270
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowCommandList:Z

    if-nez v5, :cond_19

    .line 271
    const/4 v4, 0x0

    return v4

    .line 274
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method public getAllowCommandForInternetAccess_others(Landroid/content/ComponentName;I)Z
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 278
    const/4 v2, 0x0

    .line 280
    .local v2, "admin_self":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_14

    .line 281
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMIptablesController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v2

    .line 282
    .local v2, "admin_self":Lcom/lge/mdm/admin/LGMDMadminlist;
    const-string/jumbo v4, "LGMDMIptablesController"

    const-string/jumbo v5, "admin_self is assigned"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .end local v2    # "admin_self":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_14
    if-nez v2, :cond_20

    .line 286
    const-string/jumbo v4, "LGMDMIptablesController"

    const-string/jumbo v5, "admin_self is null"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return v7

    .line 290
    :cond_20
    const-string/jumbo v4, "LGMDMIptablesController"

    const-string/jumbo v5, "admin_self is assigned"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMIptablesController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, v6}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 294
    .local v3, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin_i$iterator":Ljava/util/Iterator;
    :cond_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 295
    .local v0, "admin_i":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eq v2, v0, :cond_33

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowCommandList:Z

    if-nez v4, :cond_33

    .line 296
    const-string/jumbo v4, "LGMDMIptablesController"

    const-string/jumbo v5, "Multi admin get policy : return false"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return v6

    .line 300
    .end local v0    # "admin_i":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_4f
    return v7
.end method

.method public getAllowListForInternetAccess(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 39
    const/4 v0, 0x0

    .line 41
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 42
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMIptablesController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 43
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowinternetAccessList:I

    :cond_e
    return v4

    .line 48
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMIptablesController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, v4}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 49
    .local v3, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admin_i$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 50
    .local v1, "admin_i":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowinternetAccessList:I

    if-lez v5, :cond_19

    .line 51
    iget v4, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowinternetAccessList:I

    return v4

    .line 54
    .end local v1    # "admin_i":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2c
    return v4
.end method

.method public getAllowListForInternetAccess_others(Landroid/content/ComponentName;I)Z
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 59
    const/4 v2, 0x0

    .line 61
    .local v2, "admin_self":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_b

    .line 62
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMIptablesController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v2

    .line 64
    .end local v2    # "admin_self":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_b
    if-nez v2, :cond_17

    .line 65
    const-string/jumbo v4, "LGMDMIptablesController"

    const-string/jumbo v5, "admin_self is null"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return v7

    .line 69
    :cond_17
    const-string/jumbo v4, "LGMDMIptablesController"

    const-string/jumbo v5, "admin_self is assigned"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMIptablesController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, v6}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 74
    .local v3, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin_i$iterator":Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 75
    .local v0, "admin_i":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eq v2, v0, :cond_2a

    .line 76
    iget v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowinternetAccessList:I

    if-lez v4, :cond_2a

    .line 77
    const-string/jumbo v4, "LGMDMIptablesController"

    const-string/jumbo v5, "Multi admin get policy : return false"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return v6

    .line 81
    .end local v0    # "admin_i":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_46
    return v7
.end method

.method public getCommandListForInternetAccess(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 8
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
    const/4 v2, 0x0

    .line 330
    const/4 v0, 0x0

    .line 332
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 333
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMIptablesController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 334
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-object v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->commandList:Ljava/util/List;

    :cond_e
    return-object v2

    .line 337
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMIptablesController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v1

    .line 338
    .local v1, "listSize":I
    if-nez v1, :cond_21

    .line 339
    const-string/jumbo v3, "LGMDMIptablesController"

    const-string/jumbo v4, "admin list size is zero  "

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-object v2

    .line 342
    :cond_21
    invoke-direct {p0, p2}, Lcom/lge/mdm/controller/LGMDMIptablesController;->getGlobalCommandListForInternetAccess(I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getListForInternetAccess(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 8
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
    const/4 v2, 0x0

    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 182
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMIptablesController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 183
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-object v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->internetAccessList:Ljava/util/List;

    :cond_e
    return-object v2

    .line 186
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMIptablesController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v1

    .line 187
    .local v1, "listSize":I
    if-nez v1, :cond_21

    .line 188
    const-string/jumbo v3, "LGMDMIptablesController"

    const-string/jumbo v4, "admin list size is zero  "

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-object v2

    .line 191
    :cond_21
    invoke-direct {p0, p2}, Lcom/lge/mdm/controller/LGMDMIptablesController;->getGlobalListForInternetAccess(I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method protected resetCommandInternetAccessSetup(Lcom/lge/mdm/admin/LGMDMadminlist;I)V
    .registers 9
    .param p1, "admin"    # Lcom/lge/mdm/admin/LGMDMadminlist;
    .param p2, "userHandle"    # I

    .prologue
    .line 315
    if-eqz p1, :cond_38

    iget-boolean v1, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowCommandList:Z

    if-nez v1, :cond_38

    .line 316
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMIptablesController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getCurrentUserID()I

    move-result v1

    if-ne p2, v1, :cond_39

    .line 317
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/lgmdm/lgmdm_iptables_cmdlist.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_38

    .line 319
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v1

    iget-object v2, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->commandList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendCommandListToHandler_reset(Ljava/util/List;)V

    .line 320
    const-string/jumbo v1, "LGMDMIptablesController"

    const-string/jumbo v2, "resetCommandInternetAccess[Restore default configuration]"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .end local v0    # "file":Ljava/io/File;
    :cond_38
    :goto_38
    return-void

    .line 324
    :cond_39
    const-string/jumbo v1, "LGMDMIptablesController"

    const-string/jumbo v2, "resetCommandInternetAccess userHandle not equal CurrentUserID"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38
.end method

.method protected resetInternetAccessSetup(Lcom/lge/mdm/admin/LGMDMadminlist;I)V
    .registers 9
    .param p1, "admin"    # Lcom/lge/mdm/admin/LGMDMadminlist;
    .param p2, "userHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 163
    if-eqz p1, :cond_36

    iget v1, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowinternetAccessList:I

    if-eqz v1, :cond_36

    .line 164
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMIptablesController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getCurrentUserID()I

    move-result v1

    if-ne p2, v1, :cond_37

    .line 165
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/lgmdm/lgmdm_iptables_list.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_36

    .line 167
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/mdm/controller/LGMDMHandler;->sendIPTablesListToHandler_reset()V

    .line 168
    const-string/jumbo v1, "LGMDMIptablesController"

    const-string/jumbo v2, "resetInternetAccessSetup [Restore default configuration]"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .end local v0    # "file":Ljava/io/File;
    :cond_36
    :goto_36
    return-void

    .line 172
    :cond_37
    const-string/jumbo v1, "LGMDMIptablesController"

    const-string/jumbo v2, "resetInternetAccessSetup userHandle not equal CurrentUserID"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36
.end method

.method public setAllowCommandForInternetAccess(Landroid/content/ComponentName;ZLjava/util/List;I)Z
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p3, "commandList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, "currentCommandList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v1, p3

    .line 222
    .local v1, "currentCommandList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMIptablesController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 223
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    const/4 v2, 0x0

    .line 225
    .local v2, "optionArray":[Ljava/lang/String;
    if-eqz p2, :cond_2a

    .line 226
    iget-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowCommandList:Z

    if-ne v3, p2, :cond_1b

    .line 228
    const-string/jumbo v3, "LGMDMIptablesController"

    .line 229
    const-string/jumbo v4, "setAllowCommandForInternetAccess : same allow [True] is called"

    .line 227
    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return v5

    .line 232
    :cond_1b
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v3

    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->commandList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/lge/mdm/controller/LGMDMHandler;->sendCommandListToHandler_reset(Ljava/util/List;)V

    .line 233
    iput-object v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->commandList:Ljava/util/List;

    .line 256
    :goto_26
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowCommandList:Z

    .line 257
    const/4 v3, 0x1

    return v3

    .line 235
    :cond_2a
    if-eqz v1, :cond_32

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3c

    .line 236
    :cond_32
    const-string/jumbo v3, "LGMDMIptablesController"

    const-string/jumbo v4, "allow is false but command list is null"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return v5

    .line 239
    :cond_3c
    const-string/jumbo v3, "LGMDMIptablesController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "currentCommandList size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->commandList:Ljava/util/List;

    if-eqz v3, :cond_66

    iget-object v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->commandList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_79

    .line 241
    :cond_66
    const-string/jumbo v3, "LGMDMIptablesController"

    const-string/jumbo v4, "allow is false, admin list is null so send new"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iput-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->commandList:Ljava/util/List;

    .line 243
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->sendCommandListToHandler_new(Ljava/util/List;)V

    goto :goto_26

    .line 246
    :cond_79
    const-string/jumbo v3, "LGMDMIptablesController"

    .line 247
    const-string/jumbo v4, "allow is false, admin internetAccessList is existed. so send refresh"

    .line 246
    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v3

    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->commandList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/lge/mdm/controller/LGMDMHandler;->sendCommandListToHandler_reset(Ljava/util/List;)V

    .line 251
    iput-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->commandList:Ljava/util/List;

    .line 252
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->sendCommandListToHandler_new(Ljava/util/List;)V

    goto :goto_26
.end method

.method public setAllowListForInternetAccess(Landroid/content/ComponentName;ILjava/util/List;I)Z
    .registers 15
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
    .line 88
    .local p3, "internetAccessList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 89
    .local v3, "mCurrentIPTablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v3, p3

    .line 90
    .local v3, "mCurrentIPTablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMIptablesController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v7, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 91
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    const/4 v5, 0x0

    .line 92
    .local v5, "strOption":Ljava/lang/String;
    const/4 v4, 0x0

    .line 93
    .local v4, "optionArray":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 95
    .local v6, "tableListSize":I
    if-nez p2, :cond_2a

    .line 96
    iget v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowinternetAccessList:I

    if-ne v7, p2, :cond_1c

    .line 97
    const-string/jumbo v7, "LGMDMIptablesController"

    .line 98
    const-string/jumbo v8, "setAllowListForInternetAccess : same allow [True] is called"

    .line 97
    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v7, 0x0

    return v7

    .line 101
    :cond_1c
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->internetAccessList:Ljava/util/List;

    .line 102
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/mdm/controller/LGMDMHandler;->sendIPTablesListToHandler_reset()V

    .line 145
    .end local v4    # "optionArray":[Ljava/lang/String;
    .end local v5    # "strOption":Ljava/lang/String;
    :goto_26
    iput p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowinternetAccessList:I

    .line 146
    const/4 v7, 0x1

    return v7

    .line 104
    .restart local v4    # "optionArray":[Ljava/lang/String;
    .restart local v5    # "strOption":Ljava/lang/String;
    :cond_2a
    if-nez v3, :cond_37

    .line 105
    const-string/jumbo v7, "LGMDMIptablesController"

    const-string/jumbo v8, "allow is false but list is null"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v7, 0x0

    return v7

    .line 108
    :cond_37
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 109
    const-string/jumbo v7, "LGMDMIptablesController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "internetAccessList size : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v2, 0x0

    .end local v4    # "optionArray":[Ljava/lang/String;
    .end local v5    # "strOption":Ljava/lang/String;
    .local v2, "i":I
    :goto_56
    if-ge v2, v6, :cond_95

    .line 115
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 116
    .local v5, "strOption":Ljava/lang/String;
    const-string/jumbo v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "optionArray":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_77

    .line 122
    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_85

    .line 121
    :cond_77
    const/4 v1, 0x0

    .line 124
    .local v1, "check_command_result":Z
    :goto_78
    if-nez v1, :cond_92

    .line 126
    const-string/jumbo v7, "LGMDMIptablesController"

    const-string/jumbo v8, "check_command_result is false"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v7, 0x0

    return v7

    .line 123
    .end local v1    # "check_command_result":Z
    :cond_85
    const/4 v7, 0x2

    aget-object v7, v4, v7

    .line 122
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_90

    const/4 v1, 0x0

    .restart local v1    # "check_command_result":Z
    goto :goto_78

    .end local v1    # "check_command_result":Z
    :cond_90
    const/4 v1, 0x1

    .restart local v1    # "check_command_result":Z
    goto :goto_78

    .line 114
    :cond_92
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 130
    .end local v1    # "check_command_result":Z
    .end local v4    # "optionArray":[Ljava/lang/String;
    .end local v5    # "strOption":Ljava/lang/String;
    :cond_95
    iget-object v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->internetAccessList:Ljava/util/List;

    if-eqz v7, :cond_a1

    iget-object v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->internetAccessList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_b5

    .line 131
    :cond_a1
    const-string/jumbo v7, "LGMDMIptablesController"

    const-string/jumbo v8, "allow is false, admin list is null so send new"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iput-object v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->internetAccessList:Ljava/util/List;

    .line 133
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v7

    invoke-virtual {v7, v3, p2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendIPTablesListToHandler_new(Ljava/util/List;I)V

    goto/16 :goto_26

    .line 137
    :cond_b5
    const-string/jumbo v7, "LGMDMIptablesController"

    .line 138
    const-string/jumbo v8, "allow is false, admin internetAccessList is existed. so send refresh"

    .line 137
    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iput-object v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->internetAccessList:Ljava/util/List;

    .line 140
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v7

    invoke-virtual {v7, v3, p2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendIPTablesListToHandler_refresh(Ljava/util/List;I)V

    goto/16 :goto_26
.end method

.method protected updateAllowCommandInternetAccessSetup(ILjava/util/List;)V
    .registers 9
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p2, "cmdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/lge/mdm/controller/LGMDMIptablesController;->getAllowCommandForInternetAccess(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 305
    .local v0, "allow":Z
    if-eqz v0, :cond_2f

    .line 306
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/data/system/lgmdm/lgmdm_iptables_cmdlist.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2f

    .line 308
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendCommandListToHandler_reset(Ljava/util/List;)V

    .line 309
    const-string/jumbo v2, "LGMDMIptablesController"

    const-string/jumbo v3, "CommandInternetAccessSetup[Restore default configuration]"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .end local v1    # "file":Ljava/io/File;
    :cond_2f
    return-void
.end method

.method protected updateAllowInternetAccessSetup(I)V
    .registers 8
    .param p1, "userHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 151
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/lge/mdm/controller/LGMDMIptablesController;->getAllowListForInternetAccess(Landroid/content/ComponentName;I)I

    move-result v1

    .line 152
    .local v1, "policy":I
    if-nez v1, :cond_2f

    .line 153
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "/data/system/lgmdm/lgmdm_iptables_list.txt"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2f

    .line 155
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendIPTablesListToHandler_reset()V

    .line 156
    const-string/jumbo v2, "LGMDMIptablesController"

    const-string/jumbo v3, "InternetAccessSetup [Restore default configuration]"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .end local v0    # "file":Ljava/io/File;
    :cond_2f
    return-void
.end method
