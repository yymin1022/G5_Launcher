.class public Lcom/lge/mdm/controller/LGMDMKeyController;
.super Ljava/lang/Object;
.source "LGMDMKeyController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyController"

.field private static instance:Lcom/lge/mdm/controller/LGMDMKeyController;


# instance fields
.field mContext:Landroid/content/Context;

.field private final mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMKeyController;->instance:Lcom/lge/mdm/controller/LGMDMKeyController;

    .line 13
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMKeyController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 21
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMKeyController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMKeyController;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method

.method private checkKeyArray(Lcom/lge/mdm/admin/LGMDMadminlist;I)Z
    .registers 4
    .param p1, "admin"    # Lcom/lge/mdm/admin/LGMDMadminlist;
    .param p2, "keyType"    # I

    .prologue
    .line 33
    iget-object v0, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->mSpecificKeyArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 34
    iget-object v0, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->mSpecificKeyArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 33
    :goto_14
    return v0

    .line 34
    :cond_15
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMKeyController;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/lge/mdm/controller/LGMDMKeyController;->instance:Lcom/lge/mdm/controller/LGMDMKeyController;

    if-nez v0, :cond_b

    .line 26
    new-instance v0, Lcom/lge/mdm/controller/LGMDMKeyController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMKeyController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMKeyController;->instance:Lcom/lge/mdm/controller/LGMDMKeyController;

    .line 29
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMKeyController;->instance:Lcom/lge/mdm/controller/LGMDMKeyController;

    return-object v0
.end method


# virtual methods
.method public getAllowSpecificKey(Landroid/content/ComponentName;II)Z
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "keyType"    # I
    .param p3, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 38
    const-string/jumbo v5, "KeyController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[getAllowSpecifickey][key name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/lge/mdm/LGMDMManager$KeyType;->values()[Lcom/lge/mdm/LGMDMManager$KeyType;

    move-result-object v7

    aget-object v7, v7, p2

    invoke-virtual {v7}, Lcom/lge/mdm/LGMDMManager$KeyType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 39
    const-string/jumbo v7, "][key number = "

    .line 38
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 39
    const-string/jumbo v7, "][user handle = "

    .line 38
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 39
    const-string/jumbo v7, "]"

    .line 38
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_52

    .line 43
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMKeyController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p3}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 44
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_51

    invoke-direct {p0, v0, p2}, Lcom/lge/mdm/controller/LGMDMKeyController;->checkKeyArray(Lcom/lge/mdm/admin/LGMDMadminlist;I)Z

    move-result v4

    :cond_51
    return v4

    .line 47
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_52
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMKeyController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p3}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 48
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 49
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    invoke-direct {p0, v1, p2}, Lcom/lge/mdm/controller/LGMDMKeyController;->checkKeyArray(Lcom/lge/mdm/admin/LGMDMadminlist;I)Z

    move-result v5

    if-nez v5, :cond_5c

    .line 50
    const-string/jumbo v4, "KeyController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[getAllowSpecificKey][return:false][who:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 51
    const-string/jumbo v6, "][user handle: "

    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 51
    const-string/jumbo v6, "] "

    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 52
    const-string/jumbo v6, "admin list loop"

    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v4, 0x0

    return v4

    .line 56
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_a3
    const-string/jumbo v5, "KeyController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[getAllowSpecificKey][who:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "][user handle: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "][return:true]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return v4
.end method

.method public setAllowSpecificKey(Landroid/content/ComponentName;IZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "keyType"    # I
    .param p3, "allow"    # Z
    .param p4, "userHandle"    # I

    .prologue
    .line 62
    const-string/jumbo v1, "KeyController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[setAllowSpecifickey][key name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/lge/mdm/LGMDMManager$KeyType;->values()[Lcom/lge/mdm/LGMDMManager$KeyType;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-virtual {v3}, Lcom/lge/mdm/LGMDMManager$KeyType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 63
    const-string/jumbo v3, "][key number = "

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 63
    const-string/jumbo v3, "][user handle = "

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 63
    const-string/jumbo v3, "]"

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMKeyController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 67
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mSpecificKeyArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, p3, :cond_5f

    .line 68
    const-string/jumbo v1, "KeyController"

    const-string/jumbo v2, "setAllowSpecificKey : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void

    .line 71
    :cond_5f
    iget-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mSpecificKeyArray:Landroid/util/SparseArray;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    return-void
.end method
