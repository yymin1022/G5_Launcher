.class public Lcom/lge/mdm/controller/LGMDMWirelessStorageController;
.super Ljava/lang/Object;
.source "LGMDMWirelessStorageController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WirelessStorageController"

.field private static instance:Lcom/lge/mdm/controller/LGMDMWirelessStorageController;


# instance fields
.field mContext:Landroid/content/Context;

.field private final mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMWirelessStorageController;->instance:Lcom/lge/mdm/controller/LGMDMWirelessStorageController;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMWirelessStorageController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 23
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMWirelessStorageController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMWirelessStorageController;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMWirelessStorageController;
    .registers 2

    .prologue
    .line 27
    const-string/jumbo v0, "WirelessStorageController"

    const-string/jumbo v1, "start LGMDMCameraContoller"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/lge/mdm/controller/LGMDMWirelessStorageController;->instance:Lcom/lge/mdm/controller/LGMDMWirelessStorageController;

    if-nez v0, :cond_14

    .line 29
    new-instance v0, Lcom/lge/mdm/controller/LGMDMWirelessStorageController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMWirelessStorageController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMWirelessStorageController;->instance:Lcom/lge/mdm/controller/LGMDMWirelessStorageController;

    .line 32
    :cond_14
    sget-object v0, Lcom/lge/mdm/controller/LGMDMWirelessStorageController;->instance:Lcom/lge/mdm/controller/LGMDMWirelessStorageController;

    return-object v0
.end method


# virtual methods
.method public getAllowWirelessStorage(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_10

    .line 38
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWirelessStorageController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 39
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWirelessStorage:I

    :goto_d
    return v5

    :cond_e
    const/4 v5, 0x0

    goto :goto_d

    .line 41
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_10
    const/4 v4, 0x0

    .line 42
    .local v4, "policy":I
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMWirelessStorageController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 43
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 44
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWirelessStorage:I

    if-le v5, v4, :cond_1b

    .line 45
    iget v4, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWirelessStorage:I

    goto :goto_1b

    .line 48
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2e
    return v4
.end method

.method public setAllowWirelessStorage(Landroid/content/ComponentName;II)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 52
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMWirelessStorageController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 53
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWirelessStorage:I

    if-ne v2, p2, :cond_14

    .line 54
    const-string/jumbo v2, "WirelessStorageController"

    const-string/jumbo v3, "setAllowWirelessStorage : same policy is called"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void

    .line 57
    :cond_14
    iput p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWirelessStorage:I

    .line 59
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 60
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.lge.mdm.intent.action.ACTION_WIRELESS_STORAGE_DISALLOW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 51
    return-void
.end method
