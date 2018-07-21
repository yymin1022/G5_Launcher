.class public Lcom/lge/mdm/controller/LGMDMBrowserController;
.super Ljava/lang/Object;
.source "LGMDMBrowserController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BrowserController"

.field private static instance:Lcom/lge/mdm/controller/LGMDMBrowserController;


# instance fields
.field mContext:Landroid/content/Context;

.field private final mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMBrowserController;->instance:Lcom/lge/mdm/controller/LGMDMBrowserController;

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMBrowserController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 19
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMBrowserController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMBrowserController;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method

.method private checkRunningBrowsers(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-virtual {p0, v1, p2}, Lcom/lge/mdm/controller/LGMDMBrowserController;->getAllowBrowser(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, v1, p2}, Lcom/lge/mdm/controller/LGMDMBrowserController;->getAllowNonWebkitBrowser(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 87
    :goto_d
    return-void

    .line 89
    :cond_e
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lge/mdm/controller/LGMDMHandler;->checkRunningBrowsers(I)V

    goto :goto_d
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMBrowserController;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/lge/mdm/controller/LGMDMBrowserController;->instance:Lcom/lge/mdm/controller/LGMDMBrowserController;

    if-nez v0, :cond_b

    .line 24
    new-instance v0, Lcom/lge/mdm/controller/LGMDMBrowserController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMBrowserController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMBrowserController;->instance:Lcom/lge/mdm/controller/LGMDMBrowserController;

    .line 27
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMBrowserController;->instance:Lcom/lge/mdm/controller/LGMDMBrowserController;

    return-object v0
.end method


# virtual methods
.method protected getAllowBrowser(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 33
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMBrowserController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 34
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBrowser:Z

    :cond_e
    return v4

    .line 36
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMBrowserController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 37
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

    .line 38
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBrowser:Z

    if-nez v5, :cond_19

    .line 39
    const/4 v4, 0x0

    return v4

    .line 42
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowNonWebkitBrowser(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 60
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMBrowserController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 61
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowNonWebkitBrowser:Z

    :cond_e
    return v4

    .line 64
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMBrowserController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 65
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

    .line 66
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowNonWebkitBrowser:Z

    if-nez v5, :cond_19

    .line 67
    const/4 v4, 0x0

    return v4

    .line 70
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected setAllowBrowser(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 46
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMBrowserController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 48
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBrowser:Z

    if-ne v1, p2, :cond_14

    .line 49
    const-string/jumbo v1, "BrowserController"

    const-string/jumbo v2, "setAllowBrowser : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void

    .line 53
    :cond_14
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBrowser:Z

    .line 54
    invoke-direct {p0, p1, p3}, Lcom/lge/mdm/controller/LGMDMBrowserController;->checkRunningBrowsers(Landroid/content/ComponentName;I)V

    .line 45
    return-void
.end method

.method protected setAllowNonWebkitBrowser(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 75
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMBrowserController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 77
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowNonWebkitBrowser:Z

    if-ne v1, p2, :cond_14

    .line 78
    const-string/jumbo v1, "BrowserController"

    const-string/jumbo v2, "setAllowNonWebkitBrowser : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void

    .line 82
    :cond_14
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowNonWebkitBrowser:Z

    .line 83
    invoke-direct {p0, p1, p3}, Lcom/lge/mdm/controller/LGMDMBrowserController;->checkRunningBrowsers(Landroid/content/ComponentName;I)V

    .line 84
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMApplicationController;->getInstance()Lcom/lge/mdm/controller/LGMDMApplicationController;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/lge/mdm/controller/LGMDMApplicationController;->updateWatcherAndKeeper(I)V

    .line 74
    return-void
.end method
