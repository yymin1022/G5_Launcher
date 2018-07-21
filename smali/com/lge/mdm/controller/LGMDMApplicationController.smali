.class public Lcom/lge/mdm/controller/LGMDMApplicationController;
.super Ljava/lang/Object;
.source "LGMDMApplicationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/controller/LGMDMApplicationController$MDMPackageInstallObserver;,
        Lcom/lge/mdm/controller/LGMDMApplicationController$PackageDeleteObserver;,
        Lcom/lge/mdm/controller/LGMDMApplicationController$MyAsyncTask;
    }
.end annotation


# static fields
.field private static final APP_POLICY_TYPE_INSTALL:I = 0x0

.field private static final APP_POLICY_TYPE_RUN:I = 0x2

.field private static final APP_POLICY_TYPE_UNINSTALL:I = 0x1

.field private static final DEFAULT:I = 0x0

.field private static final DISABLE:I = 0x2

.field private static final ENABLE:I = 0x1

.field private static final HIDE:I = 0x3

.field public static final MAX_LIST_SIZE:I = 0x32

.field private static final MAX_REPORTCRASHNUM:I = 0x5

.field private static final MDM_FLAG:I = -0x80000000

.field private static final PM_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the Package Manager.  Is the system running?"

.field private static final TAG:Ljava/lang/String; = "ApplicationCotroller"

.field private static instance:Lcom/lge/mdm/controller/LGMDMApplicationController;

.field static mObj:Ljava/lang/Object;


# instance fields
.field private final LGINSTALLERNAME:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private final mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

.field private watcherAndKeeperExceptList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/lge/mdm/controller/LGMDMApplicationController;I)Ljava/lang/String;
    .registers 3
    .param p1, "result"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMApplicationController;->installFailureToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mObj:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string/jumbo v0, "com.lge.lginstallservies"

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->LGINSTALLERNAME:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 89
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method

.method private excludeCriticalPackage(Ljava/util/List;I)V
    .registers 13
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMApplicationState;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 530
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMApplicationState;>;"
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v7, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminListsAsUser(I)Ljava/util/List;

    move-result-object v2

    .line 531
    .local v2, "adminList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 532
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 533
    .local v3, "adminPackage":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 534
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/mdm/config/LGMDMApplicationState;>;"
    :cond_26
    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 535
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mdm/config/LGMDMApplicationState;

    .line 536
    .local v5, "item":Lcom/lge/mdm/config/LGMDMApplicationState;
    invoke-virtual {v5}, Lcom/lge/mdm/config/LGMDMApplicationState;->getEnable()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_26

    .line 537
    if-eqz v3, :cond_26

    .line 538
    invoke-virtual {v5}, Lcom/lge/mdm/config/LGMDMApplicationState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 539
    .local v6, "itemPackage":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 540
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 541
    const-string/jumbo v7, "ApplicationCotroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 542
    const-string/jumbo v9, " : Device admin package itself should not be the target to be hided"

    .line 541
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_62
    const-string/jumbo v7, "android"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 545
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 546
    const-string/jumbo v7, "ApplicationCotroller"

    const-string/jumbo v8, "android itself should not be the target to be hided"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 529
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .end local v3    # "adminPackage":Ljava/lang/String;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/mdm/config/LGMDMApplicationState;>;"
    .end local v5    # "item":Lcom/lge/mdm/config/LGMDMApplicationState;
    .end local v6    # "itemPackage":Ljava/lang/String;
    :cond_78
    return-void
.end method

.method private getGlobalAppVersionState(Ljava/util/ArrayList;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/mdm/admin/LGMDMadminlist;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMAppVersionState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 682
    .local p1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMAppVersionState;>;"
    const-string/jumbo v7, "ApplicationCotroller"

    const-string/jumbo v8, "[getGlobalAppVersionState] in getGlobalAppVersionState"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string/jumbo v7, "ApplicationCotroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[getGlobalAppVersionState][adminList size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ea

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 685
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mAppVersionStateList:Ljava/util/ArrayList;

    .line 686
    .local v4, "appVersionStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMAppVersionState;>;"
    const-string/jumbo v7, "ApplicationCotroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[getGlobalAppVersionState] appVersionStateList size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 687
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    .line 686
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "appVersionState$iterator":Ljava/util/Iterator;
    :cond_62
    :goto_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/mdm/config/LGMDMAppVersionState;

    .line 689
    .local v2, "appVersionState":Lcom/lge/mdm/config/LGMDMAppVersionState;
    const-string/jumbo v7, "ApplicationCotroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[getGlobalAppVersionState] result.contains(applicationState): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 690
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 689
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c4

    .line 692
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_93
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_62

    .line 693
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/mdm/config/LGMDMAppVersionState;

    .line 694
    .local v6, "resultState":Lcom/lge/mdm/config/LGMDMAppVersionState;
    invoke-virtual {v6}, Lcom/lge/mdm/config/LGMDMAppVersionState;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/lge/mdm/config/LGMDMAppVersionState;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c1

    .line 695
    invoke-virtual {v6}, Lcom/lge/mdm/config/LGMDMAppVersionState;->getVersionName()Ljava/lang/String;

    move-result-object v7

    .line 696
    invoke-virtual {v2}, Lcom/lge/mdm/config/LGMDMAppVersionState;->getVersionName()Ljava/lang/String;

    move-result-object v8

    .line 695
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c1

    .line 697
    const-string/jumbo v7, "getGlobalAppVersionState"

    invoke-direct {p0, v6, v2, v7}, Lcom/lge/mdm/controller/LGMDMApplicationController;->setAppStateToStrongest(Lcom/lge/mdm/config/LGMDMAppState;Lcom/lge/mdm/config/LGMDMAppState;Ljava/lang/String;)V

    .line 692
    :cond_c1
    add-int/lit8 v5, v5, 0x1

    goto :goto_93

    .line 702
    .end local v5    # "i":I
    .end local v6    # "resultState":Lcom/lge/mdm/config/LGMDMAppVersionState;
    :cond_c4
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    const-string/jumbo v7, "ApplicationCotroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[getGlobalAppVersionState]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 704
    const-string/jumbo v9, " add result list"

    .line 703
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_62

    .line 681
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .end local v2    # "appVersionState":Lcom/lge/mdm/config/LGMDMAppVersionState;
    .end local v3    # "appVersionState$iterator":Ljava/util/Iterator;
    .end local v4    # "appVersionStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMAppVersionState;>;"
    :cond_ea
    return-void
.end method

.method private getGlobalApplicationState(Ljava/util/ArrayList;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/mdm/admin/LGMDMadminlist;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMApplicationState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 624
    .local p1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMApplicationState;>;"
    const-string/jumbo v7, "ApplicationCotroller"

    const-string/jumbo v8, "[getGlobalApplicationState] in getGlobalApplicationState"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string/jumbo v7, "ApplicationCotroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[getGlobalApplicationState][adminList size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_db

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 627
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mApplicationStateList:Ljava/util/ArrayList;

    .line 628
    .local v4, "applicationStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMApplicationState;>;"
    const-string/jumbo v7, "ApplicationCotroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[getGlobalApplicationState] applicationStateList size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 629
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    .line 628
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "applicationState$iterator":Ljava/util/Iterator;
    :cond_62
    :goto_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/mdm/config/LGMDMApplicationState;

    .line 631
    .local v2, "applicationState":Lcom/lge/mdm/config/LGMDMApplicationState;
    const-string/jumbo v7, "ApplicationCotroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[getGlobalApplicationState] result.contains(applicationState): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 632
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 631
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b6

    .line 634
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_93
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_62

    .line 635
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/mdm/config/LGMDMApplicationState;

    .line 636
    .local v6, "resultState":Lcom/lge/mdm/config/LGMDMApplicationState;
    invoke-virtual {v6}, Lcom/lge/mdm/config/LGMDMApplicationState;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/lge/mdm/config/LGMDMApplicationState;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b3

    .line 637
    const-string/jumbo v7, "getGlobalApplicationState"

    invoke-direct {p0, v6, v2, v7}, Lcom/lge/mdm/controller/LGMDMApplicationController;->setAppStateToStrongest(Lcom/lge/mdm/config/LGMDMAppState;Lcom/lge/mdm/config/LGMDMAppState;Ljava/lang/String;)V

    .line 634
    :cond_b3
    add-int/lit8 v5, v5, 0x1

    goto :goto_93

    .line 641
    .end local v5    # "i":I
    .end local v6    # "resultState":Lcom/lge/mdm/config/LGMDMApplicationState;
    :cond_b6
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    const-string/jumbo v7, "ApplicationCotroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[getGlobalApplicationState]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 643
    const-string/jumbo v9, " add result list"

    .line 642
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    .line 623
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .end local v2    # "applicationState":Lcom/lge/mdm/config/LGMDMApplicationState;
    .end local v3    # "applicationState$iterator":Ljava/util/Iterator;
    .end local v4    # "applicationStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMApplicationState;>;"
    :cond_db
    return-void
.end method

.method private getGlobalSignatureState(Ljava/util/ArrayList;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/mdm/admin/LGMDMadminlist;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMSignatureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1103
    .local p1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMSignatureState;>;"
    const-string/jumbo v6, "ApplicationCotroller"

    const-string/jumbo v7, "[getGlobalSignatureState] in getGlobalSignatureState"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    const-string/jumbo v6, "ApplicationCotroller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[getGlobalSignatureState][adminList size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 1106
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-object v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mSignatureStateList:Ljava/util/ArrayList;

    .line 1107
    .local v5, "signatureStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMSignatureState;>;"
    if-eqz v5, :cond_32

    .line 1108
    const-string/jumbo v6, "ApplicationCotroller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[getGlobalSignatureState] signatureStateList size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1109
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    .line 1108
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "signatureState$iterator":Ljava/util/Iterator;
    :goto_64
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/mdm/config/LGMDMSignatureState;

    .line 1111
    .local v3, "signatureState":Lcom/lge/mdm/config/LGMDMSignatureState;
    const-string/jumbo v6, "ApplicationCotroller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[getGlobalSignatureState] result.contains(signatureState): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1112
    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 1111
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-direct {p0, p2, v3}, Lcom/lge/mdm/controller/LGMDMApplicationController;->pickSignatureStateFromList(Ljava/util/List;Lcom/lge/mdm/config/LGMDMSignatureState;)Lcom/lge/mdm/config/LGMDMSignatureState;

    move-result-object v2

    .line 1115
    .local v2, "resultState":Lcom/lge/mdm/config/LGMDMSignatureState;
    if-nez v2, :cond_b9

    .line 1116
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1117
    const-string/jumbo v6, "ApplicationCotroller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[getGlobalSignatureState]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1118
    const-string/jumbo v8, " add result list"

    .line 1117
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    .line 1120
    :cond_b9
    const-string/jumbo v6, "getGlobalSignatureState"

    invoke-direct {p0, v2, v3, v6}, Lcom/lge/mdm/controller/LGMDMApplicationController;->setAppStateToStrongest(Lcom/lge/mdm/config/LGMDMAppState;Lcom/lge/mdm/config/LGMDMAppState;Ljava/lang/String;)V

    goto :goto_64

    .line 1102
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .end local v2    # "resultState":Lcom/lge/mdm/config/LGMDMSignatureState;
    .end local v3    # "signatureState":Lcom/lge/mdm/config/LGMDMSignatureState;
    .end local v4    # "signatureState$iterator":Ljava/util/Iterator;
    .end local v5    # "signatureStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMSignatureState;>;"
    :cond_c0
    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMApplicationController;
    .registers 1

    .prologue
    .line 93
    sget-object v0, Lcom/lge/mdm/controller/LGMDMApplicationController;->instance:Lcom/lge/mdm/controller/LGMDMApplicationController;

    if-nez v0, :cond_b

    .line 94
    new-instance v0, Lcom/lge/mdm/controller/LGMDMApplicationController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMApplicationController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMApplicationController;->instance:Lcom/lge/mdm/controller/LGMDMApplicationController;

    .line 96
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMApplicationController;->instance:Lcom/lge/mdm/controller/LGMDMApplicationController;

    return-object v0
.end method

.method private getScreenPinValueFromDB()I
    .registers 7

    .prologue
    .line 1610
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1612
    .local v2, "identity":J
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1613
    const-string/jumbo v4, "lock_to_app_enabled"

    .line 1612
    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_15
    .catchall {:try_start_4 .. :try_end_10} :catchall_35

    move-result v1

    .line 1618
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1612
    return v1

    .line 1614
    :catch_15
    move-exception v0

    .line 1615
    .local v0, "e":Ljava/lang/Exception;
    :try_start_16
    const-string/jumbo v1, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getScreenPinValueFromDB Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_16 .. :try_end_30} :catchall_35

    .line 1616
    const/4 v1, 0x0

    .line 1618
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1616
    return v1

    .line 1617
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v1

    .line 1618
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1617
    throw v1
.end method

.method private installFailureToString(I)Ljava/lang/String;
    .registers 11
    .param p1, "result"    # I

    .prologue
    const/4 v5, 0x0

    .line 319
    const-class v6, Landroid/content/pm/PackageManager;

    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 320
    .local v3, "fields":[Ljava/lang/reflect/Field;
    array-length v6, v3

    :goto_8
    if-ge v5, v6, :cond_46

    aget-object v1, v3, v5

    .line 321
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_43

    .line 322
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    .line 324
    .local v4, "modifiers":I
    and-int/lit8 v7, v4, 0x10

    if-eqz v7, :cond_43

    and-int/lit8 v7, v4, 0x1

    if-eqz v7, :cond_43

    .line 325
    and-int/lit8 v7, v4, 0x8

    if-eqz v7, :cond_43

    .line 326
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "fieldName":Ljava/lang/String;
    const-string/jumbo v7, "INSTALL_FAILED_"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3a

    .line 328
    const-string/jumbo v7, "INSTALL_PARSE_FAILED_"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    .line 327
    if-eqz v7, :cond_43

    .line 331
    :cond_3a
    const/4 v7, 0x0

    :try_start_3b
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_3b .. :try_end_3e} :catch_42

    move-result v7

    if-ne p1, v7, :cond_43

    .line 332
    return-object v2

    .line 334
    :catch_42
    move-exception v0

    .line 320
    .end local v2    # "fieldName":Ljava/lang/String;
    .end local v4    # "modifiers":I
    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 342
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_46
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private isAllowedAppPolicy(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/lge/mdm/config/LGMDMAppState;ILjava/lang/String;)Z
    .registers 12
    .param p1, "allowValue"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p2, "item"    # Lcom/lge/mdm/config/LGMDMAppState;
    .param p3, "policyType"    # I
    .param p4, "msgPrefix"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 711
    const/4 v0, 0x0

    .line 712
    .local v0, "allowPolicy":I
    const-string/jumbo v1, ""

    .line 713
    .local v1, "logMsg":Ljava/lang/String;
    if-nez p3, :cond_3e

    .line 714
    invoke-virtual {p2}, Lcom/lge/mdm/config/LGMDMAppState;->getAllowInstallation()I

    move-result v0

    .line 715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " check application install state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 723
    :cond_21
    :goto_21
    const-string/jumbo v2, "ApplicationCotroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    if-eq v0, v6, :cond_3d

    const/4 v2, 0x3

    if-ne v0, v2, :cond_74

    .line 725
    :cond_3d
    return v5

    .line 716
    :cond_3e
    if-ne p3, v4, :cond_59

    .line 717
    invoke-virtual {p2}, Lcom/lge/mdm/config/LGMDMAppState;->getAllowUninstallation()I

    move-result v0

    .line 718
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " check application uninstall state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    .line 719
    :cond_59
    if-ne p3, v6, :cond_21

    .line 720
    invoke-virtual {p2}, Lcom/lge/mdm/config/LGMDMAppState;->getEnable()I

    move-result v0

    .line 721
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " check application run state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    .line 726
    :cond_74
    if-ne v0, v4, :cond_79

    .line 727
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 729
    :cond_79
    return v4
.end method

.method private isAllowedAppVersionPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/String;I)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionName"    # Ljava/lang/String;
    .param p3, "allowValue"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p4, "policyType"    # I
    .param p5, "msgPrefix"    # Ljava/lang/String;
    .param p6, "userHandle"    # I

    .prologue
    .line 757
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 758
    .local v2, "versionResult":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMAppVersionState;>;"
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p6}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/lge/mdm/controller/LGMDMApplicationController;->getGlobalAppVersionState(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 759
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/config/LGMDMAppVersionState;

    .line 760
    .local v0, "item":Lcom/lge/mdm/config/LGMDMAppVersionState;
    invoke-virtual {v0}, Lcom/lge/mdm/config/LGMDMAppVersionState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 761
    invoke-virtual {v0, p2}, Lcom/lge/mdm/config/LGMDMAppVersionState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 762
    invoke-direct {p0, p3, v0, p4, p5}, Lcom/lge/mdm/controller/LGMDMApplicationController;->isAllowedAppPolicy(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/lge/mdm/config/LGMDMAppState;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 763
    const/4 v3, 0x0

    return v3

    .line 768
    .end local v0    # "item":Lcom/lge/mdm/config/LGMDMAppVersionState;
    :cond_36
    const/4 v3, 0x1

    return v3
.end method

.method private isAllowedApplicationStatePolicy(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allowValue"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p3, "policyType"    # I
    .param p4, "msgPrefix"    # Ljava/lang/String;
    .param p5, "userHandle"    # I

    .prologue
    .line 773
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 774
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMApplicationState;>;"
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p5}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/lge/mdm/controller/LGMDMApplicationController;->getGlobalApplicationState(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 775
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/config/LGMDMApplicationState;

    .line 776
    .local v0, "item":Lcom/lge/mdm/config/LGMDMApplicationState;
    invoke-virtual {v0}, Lcom/lge/mdm/config/LGMDMApplicationState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 777
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/lge/mdm/controller/LGMDMApplicationController;->isAllowedAppPolicy(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/lge/mdm/config/LGMDMAppState;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 778
    const/4 v3, 0x0

    return v3

    .line 782
    .end local v0    # "item":Lcom/lge/mdm/config/LGMDMApplicationState;
    :cond_30
    const/4 v3, 0x1

    return v3
.end method

.method private isAllowedSignaturePolicy([Landroid/content/pm/Signature;Ljava/util/List;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/String;)Z
    .registers 15
    .param p1, "signature"    # [Landroid/content/pm/Signature;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "allowValue"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p5, "policyType"    # I
    .param p6, "msgPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMSignatureState;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "signatureStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMSignatureState;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 734
    if-eqz p1, :cond_7

    array-length v4, p1

    if-gtz v4, :cond_8

    .line 735
    :cond_7
    return v7

    .line 737
    :cond_8
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "item$iterator":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/config/LGMDMSignatureState;

    .line 738
    .local v1, "item":Lcom/lge/mdm/config/LGMDMSignatureState;
    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMSignatureState;->getSignature()[Landroid/content/pm/Signature;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMSignatureState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 739
    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMSignatureState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 738
    if-eqz v4, :cond_c

    .line 740
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2f
    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMSignatureState;->getSignature()[Landroid/content/pm/Signature;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_c

    .line 741
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_37
    array-length v4, p1

    if-ge v3, v4, :cond_5a

    .line 742
    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMSignatureState;->getSignature()[Landroid/content/pm/Signature;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    .line 743
    aget-object v5, p1, v3

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v5

    .line 742
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 744
    invoke-direct {p0, p4, v1, p5, p6}, Lcom/lge/mdm/controller/LGMDMApplicationController;->isAllowedAppPolicy(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/lge/mdm/config/LGMDMAppState;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_57

    .line 745
    return v6

    .line 741
    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 740
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 752
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/lge/mdm/config/LGMDMSignatureState;
    .end local v3    # "j":I
    :cond_5d
    return v7
.end method

.method private isNonMarketAppsAllowed(I)I
    .registers 7
    .param p1, "userHandle"    # I

    .prologue
    .line 142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 144
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 145
    const-string/jumbo v3, "install_non_market_apps"

    const/4 v4, 0x0

    .line 144
    invoke-static {v2, v3, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_16

    move-result v2

    .line 147
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    return v2

    .line 146
    :catchall_16
    move-exception v2

    .line 147
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    throw v2
.end method

.method private isSystemPath(Landroid/content/pm/ApplicationInfo;)Z
    .registers 9
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v6, 0x0

    .line 1163
    if-eqz p1, :cond_7

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 1164
    :cond_7
    return v6

    .line 1163
    :cond_8
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 1166
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1168
    .local v2, "sourceApk":Ljava/io/File;
    :try_start_13
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1169
    .local v0, "canonicalPath":Ljava/lang/String;
    const-string/jumbo v3, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[isSystemPath]canonical path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    if-nez v0, :cond_34

    .line 1171
    return v6

    .line 1174
    :cond_34
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 1175
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/system/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_54

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 1176
    const-string/jumbo v4, "/data/preload/"

    .line 1175
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 1174
    if-eqz v3, :cond_7c

    .line 1177
    :cond_54
    const-string/jumbo v3, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[isSystemPath] in system path app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_70} :catch_72

    .line 1178
    const/4 v3, 0x1

    return v3

    .line 1180
    .end local v0    # "canonicalPath":Ljava/lang/String;
    :catch_72
    move-exception v1

    .line 1181
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "ApplicationCotroller"

    const-string/jumbo v4, "[isSystemPath] File not found"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1183
    .end local v1    # "e":Ljava/io/IOException;
    :cond_7c
    return v6
.end method

.method private pickSignatureStateFromList(Ljava/util/List;Lcom/lge/mdm/config/LGMDMSignatureState;)Lcom/lge/mdm/config/LGMDMSignatureState;
    .registers 6
    .param p2, "signatureState"    # Lcom/lge/mdm/config/LGMDMSignatureState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMSignatureState;",
            ">;",
            "Lcom/lge/mdm/config/LGMDMSignatureState;",
            ")",
            "Lcom/lge/mdm/config/LGMDMSignatureState;"
        }
    .end annotation

    .prologue
    .line 1129
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMSignatureState;>;"
    const/4 v1, 0x0

    .line 1130
    .local v1, "pickedSignautreState":Lcom/lge/mdm/config/LGMDMSignatureState;
    const/4 v0, 0x0

    .end local v1    # "pickedSignautreState":Lcom/lge/mdm/config/LGMDMSignatureState;
    .local v0, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 1131
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/mdm/config/LGMDMSignatureState;

    invoke-virtual {v2, p2}, Lcom/lge/mdm/config/LGMDMSignatureState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1132
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/config/LGMDMSignatureState;

    .line 1130
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1135
    :cond_1d
    return-object v1
.end method

.method private setAppStateToStrongest(Lcom/lge/mdm/config/LGMDMAppState;Lcom/lge/mdm/config/LGMDMAppState;Ljava/lang/String;)V
    .registers 13
    .param p1, "resultState"    # Lcom/lge/mdm/config/LGMDMAppState;
    .param p2, "appState"    # Lcom/lge/mdm/config/LGMDMAppState;
    .param p3, "msgPrefix"    # Ljava/lang/String;

    .prologue
    .line 602
    invoke-virtual {p1}, Lcom/lge/mdm/config/LGMDMAppState;->getAllowInstallation()I

    move-result v3

    .line 603
    .local v3, "resultAllowInstallation":I
    invoke-virtual {p1}, Lcom/lge/mdm/config/LGMDMAppState;->getAllowUninstallation()I

    move-result v4

    .line 604
    .local v4, "resultAllowUninstallation":I
    invoke-virtual {p1}, Lcom/lge/mdm/config/LGMDMAppState;->getEnable()I

    move-result v5

    .line 605
    .local v5, "resultEnable":I
    invoke-virtual {p2}, Lcom/lge/mdm/config/LGMDMAppState;->getAllowInstallation()I

    move-result v0

    .line 606
    .local v0, "newAllowInstallation":I
    invoke-virtual {p2}, Lcom/lge/mdm/config/LGMDMAppState;->getAllowUninstallation()I

    move-result v1

    .line 607
    .local v1, "newAllowUninstallation":I
    invoke-virtual {p2}, Lcom/lge/mdm/config/LGMDMAppState;->getEnable()I

    move-result v2

    .line 608
    .local v2, "newEnable":I
    if-le v0, v3, :cond_3b

    .line 609
    invoke-virtual {p1, v0}, Lcom/lge/mdm/config/LGMDMAppState;->setAllowInstallation(I)V

    .line 610
    const-string/jumbo v6, "ApplicationCotroller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " modify allow install value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    :cond_3b
    if-le v1, v4, :cond_5e

    .line 613
    invoke-virtual {p1, v1}, Lcom/lge/mdm/config/LGMDMAppState;->setAllowUninstallation(I)V

    .line 614
    const-string/jumbo v6, "ApplicationCotroller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " modify allow uninstall value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :cond_5e
    if-le v2, v5, :cond_81

    .line 617
    invoke-virtual {p1, v2}, Lcom/lge/mdm/config/LGMDMAppState;->setEnable(I)V

    .line 618
    const-string/jumbo v6, "ApplicationCotroller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " modify allow running value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_81
    return-void
.end method

.method private startActivity(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 1307
    const-string/jumbo v2, "ApplicationCotroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[startAcitivty][packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "][activityName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1308
    const-string/jumbo v4, "]"

    .line 1307
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    const/16 v17, 0x0

    .line 1310
    .local v17, "result":Z
    const/4 v15, 0x0

    .line 1312
    .local v15, "launchIntent":Landroid/content/Intent;
    :try_start_33
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3b} :catch_ab

    .line 1313
    .local v5, "launchIntent":Landroid/content/Intent;
    if-nez p2, :cond_47

    .line 1314
    .end local v15    # "launchIntent":Landroid/content/Intent;
    :try_start_3d
    const-string/jumbo v2, "ApplicationCotroller"

    const-string/jumbo v3, "[startActivity] activityName is null"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    :goto_46
    return v17

    .line 1316
    :cond_47
    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1317
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1318
    const/high16 v2, 0x10000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1319
    const/high16 v2, 0x200000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1321
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const-string/jumbo v4, "android"

    .line 1322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 1321
    const/4 v3, 0x0

    .line 1322
    const/4 v7, 0x0

    .line 1323
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v13, p3

    .line 1321
    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v16

    .line 1324
    .local v16, "res":I
    if-eqz v16, :cond_8a

    .line 1325
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_96

    .line 1326
    :cond_8a
    const-string/jumbo v2, "ApplicationCotroller"

    const-string/jumbo v3, "[startActivity] - start application success"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    const/16 v17, 0x1

    goto :goto_46

    .line 1329
    :cond_96
    const-string/jumbo v2, "ApplicationCotroller"

    const-string/jumbo v3, "[startActivity] - start application fail"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_9f} :catch_a0

    goto :goto_46

    .line 1332
    .end local v16    # "res":I
    :catch_a0
    move-exception v14

    .line 1333
    .local v14, "e":Landroid/os/RemoteException;
    :goto_a1
    const-string/jumbo v2, "ApplicationCotroller"

    const-string/jumbo v3, "Failed talking with LGMDM controller"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46

    .line 1332
    .end local v5    # "launchIntent":Landroid/content/Intent;
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v15    # "launchIntent":Landroid/content/Intent;
    :catch_ab
    move-exception v14

    .restart local v14    # "e":Landroid/os/RemoteException;
    move-object v5, v15

    .restart local v5    # "launchIntent":Landroid/content/Intent;
    goto :goto_a1
.end method

.method private startService(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 1339
    const-string/jumbo v0, "ApplicationCotroller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[startService][packageName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "][serviceName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1340
    const-string/jumbo v3, "] userHandle:"

    .line 1339
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    const/4 v11, 0x0

    .line 1342
    .local v11, "result":Z
    const/4 v10, 0x0

    .line 1343
    .local v10, "launchIntent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1345
    .local v8, "identity":J
    :try_start_36
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3b} :catch_9d
    .catchall {:try_start_36 .. :try_end_3b} :catchall_9a

    .line 1346
    .end local v10    # "launchIntent":Landroid/content/Intent;
    .local v2, "launchIntent":Landroid/content/Intent;
    if-nez p2, :cond_41

    .line 1365
    :goto_3d
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1367
    :goto_40
    return v11

    .line 1349
    :cond_41
    :try_start_41
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1350
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1352
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1353
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1350
    const/4 v1, 0x0

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v6

    .line 1355
    .local v6, "cn":Landroid/content/ComponentName;
    if-eqz v6, :cond_72

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1356
    :cond_72
    const-string/jumbo v0, "ApplicationCotroller"

    const-string/jumbo v1, "[startService] - start application fail"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_7b} :catch_7c
    .catchall {:try_start_41 .. :try_end_7b} :catchall_95

    goto :goto_3d

    .line 1362
    .end local v6    # "cn":Landroid/content/ComponentName;
    :catch_7c
    move-exception v7

    .line 1363
    .local v7, "e":Landroid/os/RemoteException;
    :goto_7d
    :try_start_7d
    const-string/jumbo v0, "ApplicationCotroller"

    const-string/jumbo v1, "Failed talking with LGMDM controller"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_7d .. :try_end_86} :catchall_95

    .line 1365
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_40

    .line 1358
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v6    # "cn":Landroid/content/ComponentName;
    :cond_8a
    const/4 v11, 0x1

    .line 1359
    :try_start_8b
    const-string/jumbo v0, "ApplicationCotroller"

    const-string/jumbo v1, "[startService] - start application success"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_94} :catch_7c
    .catchall {:try_start_8b .. :try_end_94} :catchall_95

    goto :goto_3d

    .line 1364
    .end local v6    # "cn":Landroid/content/ComponentName;
    :catchall_95
    move-exception v0

    .line 1365
    :goto_96
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1364
    throw v0

    .end local v2    # "launchIntent":Landroid/content/Intent;
    .restart local v10    # "launchIntent":Landroid/content/Intent;
    :catchall_9a
    move-exception v0

    move-object v2, v10

    .restart local v2    # "launchIntent":Landroid/content/Intent;
    goto :goto_96

    .line 1362
    .end local v2    # "launchIntent":Landroid/content/Intent;
    :catch_9d
    move-exception v7

    .restart local v7    # "e":Landroid/os/RemoteException;
    move-object v2, v10

    .restart local v2    # "launchIntent":Landroid/content/Intent;
    goto :goto_7d
.end method


# virtual methods
.method public checkApplicationEnable(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 899
    invoke-virtual {p0, p1}, Lcom/lge/mdm/controller/LGMDMApplicationController;->getPackageInfoForSignature(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 900
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0, p1, v0, p2}, Lcom/lge/mdm/controller/LGMDMApplicationController;->checkApplicationEnable(Ljava/lang/String;Landroid/content/pm/PackageInfo;I)Z

    move-result v1

    return v1
.end method

.method public checkApplicationEnable(Ljava/lang/String;Landroid/content/pm/PackageInfo;I)Z
    .registers 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pi"    # Landroid/content/pm/PackageInfo;
    .param p3, "userHandle"    # I

    .prologue
    .line 904
    const-string/jumbo v1, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[checkApplicationEnable][packageName:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "] userHandle:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v13

    .line 908
    .local v13, "listSize":I
    if-nez v13, :cond_3c

    .line 909
    const-string/jumbo v1, "ApplicationCotroller"

    const-string/jumbo v4, "[checkApplicationEnable][return:true]admin list size is zero  "

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    const/4 v1, 0x1

    return v1

    .line 913
    :cond_3c
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 915
    .local v5, "run":Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v1, 0x0

    move/from16 v0, p3

    invoke-virtual {p0, v1, v0}, Lcom/lge/mdm/controller/LGMDMApplicationController;->getAllowSignatureState(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 916
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 917
    .local v3, "signatureStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMSignatureState;>;"
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/lge/mdm/controller/LGMDMApplicationController;->getGlobalSignatureState(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 919
    if-eqz p2, :cond_6f

    .line 920
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 922
    .local v2, "signature":[Landroid/content/pm/Signature;
    const-string/jumbo v7, "Signature"

    const/4 v6, 0x2

    move-object v1, p0

    move-object v4, p1

    .line 921
    invoke-direct/range {v1 .. v7}, Lcom/lge/mdm/controller/LGMDMApplicationController;->isAllowedSignaturePolicy([Landroid/content/pm/Signature;Ljava/util/List;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 923
    const/4 v1, 0x0

    return v1

    .line 928
    .end local v2    # "signature":[Landroid/content/pm/Signature;
    .end local v3    # "signatureStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMSignatureState;>;"
    :cond_6f
    if-eqz p2, :cond_86

    .line 929
    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 930
    const-string/jumbo v11, "Version"

    .line 929
    const/4 v10, 0x2

    move-object v6, p0

    move-object v7, p1

    move-object v9, v5

    move/from16 v12, p3

    invoke-direct/range {v6 .. v12}, Lcom/lge/mdm/controller/LGMDMApplicationController;->isAllowedAppVersionPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_86

    .line 931
    const/4 v1, 0x0

    return v1

    .line 935
    :cond_86
    const-string/jumbo v10, "App"

    const/4 v9, 0x2

    move-object v6, p0

    move-object v7, p1

    move-object v8, v5

    move/from16 v11, p3

    invoke-direct/range {v6 .. v11}, Lcom/lge/mdm/controller/LGMDMApplicationController;->isAllowedApplicationStatePolicy(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_97

    .line 937
    const/4 v1, 0x0

    return v1

    .line 940
    :cond_97
    const-string/jumbo v1, "ApplicationCotroller"

    const-string/jumbo v4, "[checkApplicationEnable][return:true]"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const/4 v1, 0x1

    return v1
.end method

.method public checkInstallAllow(Landroid/content/ComponentName;Ljava/lang/String;[Landroid/content/pm/Signature;IILjava/lang/String;)Z
    .registers 21
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "signature"    # [Landroid/content/pm/Signature;
    .param p4, "flag"    # I
    .param p5, "userHandle"    # I
    .param p6, "versionName"    # Ljava/lang/String;

    .prologue
    .line 787
    const/high16 v1, -0x80000000

    and-int v1, v1, p4

    if-eqz v1, :cond_11

    .line 788
    const-string/jumbo v1, "ApplicationCotroller"

    const-string/jumbo v2, "[checkInstallAllow] MDM Install return true"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const/4 v1, 0x1

    return v1

    .line 792
    :cond_11
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v13

    .line 793
    .local v13, "listSize":I
    if-nez v13, :cond_26

    .line 794
    const-string/jumbo v1, "ApplicationCotroller"

    const-string/jumbo v2, "[checkInstallAllow][return:true] admin list size is zero "

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const/4 v1, 0x1

    return v1

    .line 798
    :cond_26
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 800
    .local v5, "install":Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v1, 0x0

    move/from16 v0, p5

    invoke-virtual {p0, v1, v0}, Lcom/lge/mdm/controller/LGMDMApplicationController;->getAllowSignatureState(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_5d

    if-eqz p3, :cond_5d

    move-object/from16 v0, p3

    array-length v1, v0

    if-lez v1, :cond_5d

    .line 801
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 802
    .local v3, "signatureStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMSignatureState;>;"
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/lge/mdm/controller/LGMDMApplicationController;->getGlobalSignatureState(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 805
    const-string/jumbo v7, "Signature"

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v4, p2

    .line 804
    invoke-direct/range {v1 .. v7}, Lcom/lge/mdm/controller/LGMDMApplicationController;->isAllowedSignaturePolicy([Landroid/content/pm/Signature;Ljava/util/List;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 806
    const/4 v1, 0x0

    return v1

    .line 811
    .end local v3    # "signatureStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMSignatureState;>;"
    :cond_5d
    const-string/jumbo v11, "Version"

    .line 810
    const/4 v10, 0x0

    move-object v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p6

    move-object v9, v5

    move/from16 v12, p5

    invoke-direct/range {v6 .. v12}, Lcom/lge/mdm/controller/LGMDMApplicationController;->isAllowedAppVersionPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_71

    .line 812
    const/4 v1, 0x0

    return v1

    .line 815
    :cond_71
    const-string/jumbo v10, "App"

    const/4 v9, 0x0

    move-object v6, p0

    move-object/from16 v7, p2

    move-object v8, v5

    move/from16 v11, p5

    invoke-direct/range {v6 .. v11}, Lcom/lge/mdm/controller/LGMDMApplicationController;->isAllowedApplicationStatePolicy(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_83

    .line 817
    const/4 v1, 0x0

    return v1

    .line 820
    :cond_83
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_b2

    .line 821
    const-string/jumbo v1, "ApplicationCotroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[checkInstallAllow]DEFAULT returned. follow getAllowInstallApplication : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 822
    const/4 v4, 0x0

    move/from16 v0, p5

    invoke-virtual {p0, v4, v0}, Lcom/lge/mdm/controller/LGMDMApplicationController;->getAllowInstallApplication(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 821
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const/4 v1, 0x0

    move/from16 v0, p5

    invoke-virtual {p0, v1, v0}, Lcom/lge/mdm/controller/LGMDMApplicationController;->getAllowInstallApplication(Landroid/content/ComponentName;I)Z

    move-result v1

    return v1

    .line 826
    :cond_b2
    const-string/jumbo v1, "ApplicationCotroller"

    const-string/jumbo v2, "[checkInstallAllow][return:true]"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const/4 v1, 0x1

    return v1
.end method

.method public checkInstallByMDM(II)Z
    .registers 7
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 1873
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v0

    .line 1874
    .local v0, "listSize":I
    if-nez v0, :cond_13

    .line 1875
    const-string/jumbo v1, "ApplicationCotroller"

    const-string/jumbo v2, "[checkInstallByMDM][return:true] admin list size is zero "

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    return v3

    .line 1879
    :cond_13
    const/high16 v1, -0x80000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_23

    .line 1880
    const-string/jumbo v1, "ApplicationCotroller"

    const-string/jumbo v2, "[checkInstallByMDM] app verification is passed"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    const/4 v1, 0x1

    return v1

    .line 1883
    :cond_23
    return v3
.end method

.method public checkTopActivityEnable(ZI)V
    .registers 13
    .param p1, "isAPILevelAllFeature"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 945
    new-instance v7, Lcom/lge/mdm/util/LGMDMActivityInfo;

    invoke-direct {v7}, Lcom/lge/mdm/util/LGMDMActivityInfo;-><init>()V

    .line 946
    .local v7, "mLGMDMActivityInfo":Lcom/lge/mdm/util/LGMDMActivityInfo;
    invoke-virtual {v7, p2}, Lcom/lge/mdm/util/LGMDMActivityInfo;->getTopActivityPackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 947
    .local v3, "packageName":Ljava/lang/String;
    if-nez v3, :cond_15

    .line 948
    const-string/jumbo v0, "ApplicationCotroller"

    const-string/jumbo v1, "[checkTopActivityEnable] packageName is null"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    return-void

    .line 951
    :cond_15
    const-string/jumbo v0, "ApplicationCotroller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[checkTopActivityEnable][packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] userHandle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    const/4 v9, 0x0

    .line 954
    .local v9, "rv":I
    if-nez p1, :cond_61

    .line 955
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterApplication()Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    move-result-object v0

    .line 956
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mContext:Landroid/content/Context;

    .line 955
    const/4 v1, 0x0

    .line 956
    const/4 v4, 0x1

    move v5, p2

    .line 955
    invoke-virtual/range {v0 .. v5}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->checkStartActivityLockedForEAS(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v9

    .line 962
    :goto_4a
    if-eqz v9, :cond_60

    .line 963
    invoke-virtual {p0, v3, p2}, Lcom/lge/mdm/controller/LGMDMApplicationController;->getPidFromPackageName(Ljava/lang/String;I)I

    move-result v8

    .line 964
    .local v8, "pid":I
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v0

    invoke-virtual {v0, v3, v8, p2}, Lcom/lge/mdm/controller/LGMDMHandler;->forceStopPackage(Ljava/lang/String;II)V

    .line 965
    const-string/jumbo v0, "ApplicationCotroller"

    const-string/jumbo v1, "process is blocked by MDM"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    .end local v8    # "pid":I
    :cond_60
    return-void

    .line 958
    :cond_61
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIManager;->getUIAdapterApplication()Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 959
    const/4 v4, 0x0

    const/4 v5, 0x1

    move v6, p2

    .line 958
    invoke-virtual/range {v0 .. v6}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->checkStartActivityLocked(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)I

    move-result v9

    goto :goto_4a
.end method

.method public checkUninstallAllow(Landroid/content/ComponentName;Ljava/lang/String;II)Z
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flag"    # I
    .param p4, "userHandle"    # I

    .prologue
    .line 843
    invoke-virtual {p0, p2}, Lcom/lge/mdm/controller/LGMDMApplicationController;->getPackageInfoForSignature(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .local v4, "pi":Landroid/content/pm/PackageInfo;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    .line 844
    invoke-virtual/range {v0 .. v5}, Lcom/lge/mdm/controller/LGMDMApplicationController;->checkUninstallAllow(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/content/pm/PackageInfo;I)Z

    move-result v0

    return v0
.end method

.method public checkUninstallAllow(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/content/pm/PackageInfo;I)Z
    .registers 20
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flag"    # I
    .param p4, "pi"    # Landroid/content/pm/PackageInfo;
    .param p5, "userHandle"    # I

    .prologue
    .line 849
    const-string/jumbo v1, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[checkUninstallAllow][who:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "[packageName:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 850
    const-string/jumbo v6, "]"

    .line 849
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 850
    const-string/jumbo v6, "[flag:"

    .line 849
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 850
    const-string/jumbo v6, "]"

    .line 849
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const/high16 v1, -0x80000000

    and-int v1, v1, p3

    if-eqz v1, :cond_5a

    .line 852
    const-string/jumbo v1, "ApplicationCotroller"

    const-string/jumbo v4, "[checkUninstallAllow][return:true]MDM Unnstall return true"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const/4 v1, 0x1

    return v1

    .line 856
    :cond_5a
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v13

    .line 857
    .local v13, "listSize":I
    if-nez v13, :cond_6f

    .line 858
    const-string/jumbo v1, "ApplicationCotroller"

    const-string/jumbo v4, "[checkUninstallAllow][return:true]admin list size is zero  "

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const/4 v1, 0x1

    return v1

    .line 862
    :cond_6f
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 864
    .local v5, "uninstall":Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v1, 0x0

    move/from16 v0, p5

    invoke-virtual {p0, v1, v0}, Lcom/lge/mdm/controller/LGMDMApplicationController;->getAllowSignatureState(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_a3

    .line 865
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 866
    .local v3, "signatureStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMSignatureState;>;"
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/lge/mdm/controller/LGMDMApplicationController;->getGlobalSignatureState(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 867
    if-eqz p4, :cond_a3

    .line 868
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 870
    .local v2, "signature":[Landroid/content/pm/Signature;
    const-string/jumbo v7, "Signature"

    const/4 v6, 0x1

    move-object v1, p0

    move-object/from16 v4, p2

    .line 869
    invoke-direct/range {v1 .. v7}, Lcom/lge/mdm/controller/LGMDMApplicationController;->isAllowedSignaturePolicy([Landroid/content/pm/Signature;Ljava/util/List;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a3

    .line 871
    const/4 v1, 0x0

    return v1

    .line 876
    .end local v2    # "signature":[Landroid/content/pm/Signature;
    .end local v3    # "signatureStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMSignatureState;>;"
    :cond_a3
    if-eqz p4, :cond_bb

    .line 877
    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 878
    const-string/jumbo v11, "Version"

    .line 877
    const/4 v10, 0x1

    move-object v6, p0

    move-object/from16 v7, p2

    move-object v9, v5

    move/from16 v12, p5

    invoke-direct/range {v6 .. v12}, Lcom/lge/mdm/controller/LGMDMApplicationController;->isAllowedAppVersionPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_bb

    .line 879
    const/4 v1, 0x0

    return v1

    .line 883
    :cond_bb
    const-string/jumbo v10, "App"

    const/4 v9, 0x1

    move-object v6, p0

    move-object/from16 v7, p2

    move-object v8, v5

    move/from16 v11, p5

    invoke-direct/range {v6 .. v11}, Lcom/lge/mdm/controller/LGMDMApplicationController;->isAllowedApplicationStatePolicy(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_cd

    .line 885
    const/4 v1, 0x0

    return v1

    .line 888
    :cond_cd
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_fc

    .line 889
    const-string/jumbo v1, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[checkUninstallAllow]DEFAULT returned. follow getAllowUninstallApplication : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 890
    const/4 v6, 0x0

    move/from16 v0, p5

    invoke-virtual {p0, v6, v0}, Lcom/lge/mdm/controller/LGMDMApplicationController;->getAllowUninstallApplication(Landroid/content/ComponentName;I)Z

    move-result v6

    .line 889
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const/4 v1, 0x0

    move/from16 v0, p5

    invoke-virtual {p0, v1, v0}, Lcom/lge/mdm/controller/LGMDMApplicationController;->getAllowUninstallApplication(Landroid/content/ComponentName;I)Z

    move-result v1

    return v1

    .line 894
    :cond_fc
    const-string/jumbo v1, "ApplicationCotroller"

    const-string/jumbo v4, "[checkUninstallAllow][return:true]"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const/4 v1, 0x1

    return v1
.end method

.method public forceStopPackage(Ljava/lang/String;II)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1623
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mdm/controller/LGMDMHandler;->forceStopPackage(Ljava/lang/String;II)V

    .line 1622
    return-void
.end method

.method protected getAllowContactInfoAccess(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1901
    const/4 v0, 0x0

    .line 1902
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_10

    .line 1903
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1904
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowContactInfoAccess:I

    :goto_d
    return v5

    .line 1905
    :cond_e
    const/4 v5, 0x0

    goto :goto_d

    .line 1908
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_10
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1909
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    const/4 v4, 0x0

    .line 1910
    .local v4, "policy":I
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

    .line 1911
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowContactInfoAccess:I

    if-le v5, v4, :cond_1b

    .line 1912
    iget v4, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowContactInfoAccess:I

    goto :goto_1b

    .line 1915
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2e
    return v4
.end method

.method protected getAllowGoogleErrorReport(Landroid/content/ComponentName;I)I
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 1849
    const-string/jumbo v5, "ApplicationCotroller"

    const-string/jumbo v6, "[getAllowGoogleErrorReport]"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    const/4 v0, 0x0

    .line 1851
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_18

    .line 1852
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1853
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_17

    iget v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowGoogleErrorReport:I

    :cond_17
    return v4

    .line 1856
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_18
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v2

    .line 1857
    .local v2, "listSize":I
    if-nez v2, :cond_2a

    .line 1858
    const-string/jumbo v5, "ApplicationCotroller"

    const-string/jumbo v6, "admin list size is zero"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    return v4

    .line 1861
    :cond_2a
    const/4 v3, 0x0

    .line 1862
    .local v3, "policy":I
    const/4 v1, 0x0

    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .local v1, "i":I
    :goto_2c
    if-ge v1, v2, :cond_3d

    .line 1863
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, v1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminList(II)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1864
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowGoogleErrorReport:I

    if-le v4, v3, :cond_3a

    .line 1865
    iget v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowGoogleErrorReport:I

    .line 1862
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 1868
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_3d
    return v3
.end method

.method public getAllowInstallApplication(Landroid/content/ComponentName;I)Z
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 484
    const-string/jumbo v5, "ApplicationCotroller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[getAllowInstallApplication][who:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_30

    .line 487
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 488
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_2f

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowInstallApplication:Z

    :cond_2f
    return v4

    .line 491
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_30
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 492
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 493
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowInstallApplication:Z

    if-nez v5, :cond_3a

    .line 494
    const-string/jumbo v4, "ApplicationCotroller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[getAllowInstallApplication][return:false][admin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 495
    const-string/jumbo v6, "admin list loop"

    .line 494
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const/4 v4, 0x0

    return v4

    .line 499
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_74
    const-string/jumbo v5, "ApplicationCotroller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[getAllowInstallApplication][who:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "[return:true]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    return v4
.end method

.method public getAllowLockdownApps(Landroid/content/ComponentName;I)Z
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 1416
    const-string/jumbo v5, "ApplicationCotroller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[getAllowLockdownApps] who = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    const/4 v0, 0x0

    .line 1419
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_29

    .line 1420
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1421
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_28

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowrunningapplication:Z

    :cond_28
    return v4

    .line 1424
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_29
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1425
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 1426
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    const-string/jumbo v5, "ApplicationCotroller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[getAllowLockdownApps] isContinuousRunning = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1427
    iget-boolean v7, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowrunningapplication:Z

    .line 1426
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowrunningapplication:Z

    if-eqz v5, :cond_33

    .line 1429
    const/4 v4, 0x1

    return v4

    .line 1432
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_61
    return v4
.end method

.method public getAllowNotifySpecificProcessKillEvent(Landroid/content/ComponentName;I)Z
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 1498
    const-string/jumbo v5, "ApplicationCotroller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[getAllowNotifySpecificProcessKillEvent] who = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    const/4 v0, 0x0

    .line 1501
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_29

    .line 1502
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1503
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_28

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allownotifyprocesskillevent:Z

    :cond_28
    return v4

    .line 1506
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_29
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1507
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 1508
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    const-string/jumbo v5, "ApplicationCotroller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[getAllowNotifySpecificProcessKillEvent] allow = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1509
    iget-boolean v7, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allownotifyprocesskillevent:Z

    .line 1508
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allownotifyprocesskillevent:Z

    if-eqz v5, :cond_33

    .line 1511
    const/4 v4, 0x1

    return v4

    .line 1514
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_61
    return v4
.end method

.method public getAllowRemoveDeviceAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 236
    const-string/jumbo v5, "ApplicationCotroller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[getAllowRemoveDeviceAdmin][who:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "[packageName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 237
    const-string/jumbo v7, "]"

    .line 236
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_42

    .line 240
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p3}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 241
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_41

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowRemoveDeviceAdmin:Z

    :cond_41
    return v4

    .line 244
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_42
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p3}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 245
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 246
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-object v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->preventRemoveDeviceAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 247
    const-string/jumbo v4, "ApplicationCotroller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[getAllowRemoveDeviceAdmin][return:false][admin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 248
    const-string/jumbo v6, "admin list loop"

    .line 247
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v4, 0x0

    return v4

    .line 252
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_8a
    const-string/jumbo v5, "ApplicationCotroller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[getAllowRemoveDeviceAdmin][who:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "[return:true]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return v4
.end method

.method protected getAllowScreenPin(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 1593
    const/4 v0, 0x0

    .line 1594
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 1595
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1596
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenPin:Z

    :cond_e
    return v4

    .line 1599
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1601
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

    .line 1602
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenPin:Z

    if-nez v5, :cond_19

    .line 1603
    const/4 v4, 0x0

    return v4

    .line 1606
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method public getAllowSignatureState(Landroid/content/ComponentName;I)Z
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 1077
    const-string/jumbo v4, "ApplicationCotroller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[getAllowSignatureState][who:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    const/4 v0, 0x0

    .line 1079
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_31

    .line 1080
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1081
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_30

    iget-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSignatureState:Z

    :cond_30
    return v3

    .line 1083
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_31
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v2

    .line 1084
    .local v2, "listSize":I
    if-nez v2, :cond_43

    .line 1085
    const-string/jumbo v4, "ApplicationCotroller"

    const-string/jumbo v5, "[getAllowSignatureState][return:true] admin list size is zero "

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    return v3

    .line 1089
    :cond_43
    const/4 v1, 0x0

    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .local v1, "i":I
    :goto_44
    if-ge v1, v2, :cond_7c

    .line 1090
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, v1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminList(II)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1091
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSignatureState:Z

    if-nez v4, :cond_79

    .line 1092
    const-string/jumbo v3, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[getAllowSignatureState][return:false][admin:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1093
    const-string/jumbo v5, "admin list loop"

    .line 1092
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    return v7

    .line 1089
    :cond_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 1097
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_7c
    const-string/jumbo v4, "ApplicationCotroller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[getAllowSignatureState][who:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "[return:true]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    return v3
.end method

.method public getAllowSpecificApplication(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "applicationName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v5, 0x1

    .line 1743
    invoke-static {p2}, Lcom/lge/mdm/LGMDMManager$ApplicationType;->valueOf(Ljava/lang/String;)Lcom/lge/mdm/LGMDMManager$ApplicationType;

    move-result-object v4

    .line 1744
    .local v4, "mapplicationType":Lcom/lge/mdm/LGMDMManager$ApplicationType;
    const-string/jumbo v6, "ApplicationCotroller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[setAllowSpecificApplication][applicatin name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/lge/mdm/LGMDMManager$ApplicationType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1745
    const-string/jumbo v8, "][applicatin number = "

    .line 1744
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1745
    invoke-virtual {v4}, Lcom/lge/mdm/LGMDMManager$ApplicationType;->ordinal()I

    move-result v8

    .line 1744
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1745
    const-string/jumbo v8, "]"

    .line 1744
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    const/4 v0, 0x0

    .line 1748
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_4d

    .line 1749
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v6, p1, p3}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1750
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_4c

    iget-object v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mSpecificApplicationList:[Z

    invoke-virtual {v4}, Lcom/lge/mdm/LGMDMManager$ApplicationType;->ordinal()I

    move-result v6

    aget-boolean v5, v5, v6

    :cond_4c
    return v5

    .line 1754
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_4d
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v6, p3}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1755
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_97

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 1756
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-object v6, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->mSpecificApplicationList:[Z

    invoke-virtual {v4}, Lcom/lge/mdm/LGMDMManager$ApplicationType;->ordinal()I

    move-result v7

    aget-boolean v6, v6, v7

    if-nez v6, :cond_57

    .line 1757
    const-string/jumbo v5, "ApplicationCotroller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[getAllowSpecificApplication][return:false][who:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1758
    const-string/jumbo v7, "admin list loop"

    .line 1757
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    const/4 v5, 0x0

    return v5

    .line 1763
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_97
    const-string/jumbo v6, "ApplicationCotroller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[getAllowSpecificApplication][who:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "[return:true]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    return v5
.end method

.method public getAllowSpecificApplicationAll(Landroid/content/ComponentName;I)[Z
    .registers 14
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v9, 0x0

    .line 1768
    const/4 v0, 0x0

    .line 1769
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 1770
    iget-object v10, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v10, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1771
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-object v9, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mSpecificApplicationList:[Z

    :cond_e
    return-object v9

    .line 1774
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    invoke-static {}, Lcom/lge/mdm/LGMDMManager$ApplicationType;->values()[Lcom/lge/mdm/LGMDMManager$ApplicationType;

    move-result-object v9

    array-length v9, v9

    new-array v8, v9, [Z

    .line 1775
    .local v8, "mTotalSpecificApplicationList":[Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_17
    array-length v9, v8

    if-ge v6, v9, :cond_20

    .line 1776
    const/4 v9, 0x1

    aput-boolean v9, v8, v6

    .line 1775
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 1779
    :cond_20
    iget-object v9, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v9, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 1780
    .local v7, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 1781
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    const/4 v5, 0x0

    .line 1782
    .local v5, "count":I
    iget-object v3, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->mSpecificApplicationList:[Z

    .line 1783
    .local v3, "checkList":[Z
    const/4 v9, 0x0

    array-length v10, v3

    :goto_3b
    if-ge v9, v10, :cond_2a

    aget-boolean v4, v3, v9

    .line 1784
    .local v4, "checkValue":Z
    if-nez v4, :cond_43

    .line 1785
    aput-boolean v4, v8, v5

    .line 1787
    :cond_43
    add-int/lit8 v5, v5, 0x1

    .line 1783
    add-int/lit8 v9, v9, 0x1

    goto :goto_3b

    .line 1790
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    .end local v3    # "checkList":[Z
    .end local v4    # "checkValue":Z
    .end local v5    # "count":I
    :cond_48
    return-object v8
.end method

.method public getAllowUninstallApplication(Landroid/content/ComponentName;I)Z
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 510
    const-string/jumbo v5, "ApplicationCotroller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[getAllowUninstallApplication][who:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const/4 v0, 0x0

    .line 512
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_30

    .line 513
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 514
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_2f

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUninstallApplication:Z

    :cond_2f
    return v4

    .line 517
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_30
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 518
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 519
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUninstallApplication:Z

    if-nez v5, :cond_3a

    .line 520
    const-string/jumbo v4, "ApplicationCotroller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[getAllowUninstallApplication][return:false][admin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 521
    const-string/jumbo v6, "admin list loop"

    .line 520
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const/4 v4, 0x0

    return v4

    .line 525
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_74
    const-string/jumbo v5, "ApplicationCotroller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[getAllowUninstallApplication][who:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "[return:true]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return v4
.end method

.method public getAllowUnknownSourceInstallation(Landroid/content/ComponentName;I)Z
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 152
    const-string/jumbo v5, "ApplicationCotroller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[getAllowUnknownSourceInstallation][who:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_30

    .line 155
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 156
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_2f

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUnknownApplicationInstall:Z

    :cond_2f
    return v4

    .line 159
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_30
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 160
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 161
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUnknownApplicationInstall:Z

    if-nez v5, :cond_3a

    .line 162
    const-string/jumbo v4, "ApplicationCotroller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[getAllowUnknownSourceInstallation][return:false][admin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 163
    const-string/jumbo v6, "] "

    .line 162
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 163
    const-string/jumbo v6, "admin list loop"

    .line 162
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v4, 0x0

    return v4

    .line 167
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_74
    const-string/jumbo v5, "ApplicationCotroller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[getAllowUnknownSourceInstallation][who:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "[return:true]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return v4
.end method

.method public getAllowUnsignedApplication(Landroid/content/ComponentName;I)Z
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 987
    const-string/jumbo v4, "ApplicationCotroller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[getAllowUnsignedApplication][who:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    const/4 v0, 0x0

    .line 989
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_31

    .line 990
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 991
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_30

    iget-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUnsignedApplication:Z

    :cond_30
    return v3

    .line 993
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_31
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v2

    .line 994
    .local v2, "listSize":I
    if-nez v2, :cond_43

    .line 995
    const-string/jumbo v4, "ApplicationCotroller"

    const-string/jumbo v5, "[getAllowUnsignedApplication][return:true] admin list size is zero"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    return v3

    .line 999
    :cond_43
    const/4 v1, 0x0

    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .local v1, "i":I
    :goto_44
    if-ge v1, v2, :cond_7c

    .line 1000
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, v1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminList(II)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1001
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUnsignedApplication:Z

    if-nez v4, :cond_79

    .line 1002
    const-string/jumbo v3, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[getAllowUnsignedApplication][return:false][who:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1003
    const-string/jumbo v5, "admin list loop"

    .line 1002
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    return v7

    .line 999
    :cond_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 1007
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_7c
    const-string/jumbo v4, "ApplicationCotroller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[getAllowUnsignedApplication][who:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "[return:true]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    return v3
.end method

.method public getAppVersionState(Landroid/content/ComponentName;I)Ljava/util/List;
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
            "Lcom/lge/mdm/config/LGMDMAppVersionState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 668
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 669
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMAppVersionState;>;"
    if-eqz p1, :cond_12

    .line 670
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 671
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_11

    iget-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mAppVersionStateList:Ljava/util/ArrayList;

    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMAppVersionState;>;"
    :cond_11
    return-object v1

    .line 673
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMAppVersionState;>;"
    :cond_12
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v2

    if-lez v2, :cond_23

    .line 674
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/lge/mdm/controller/LGMDMApplicationController;->getGlobalAppVersionState(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 676
    :cond_23
    const-string/jumbo v2, "ApplicationCotroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[getApplicationState][return size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    return-object v1
.end method

.method public getApplicationState(Landroid/content/ComponentName;I)Ljava/util/List;
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
            "Lcom/lge/mdm/config/LGMDMApplicationState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 589
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 590
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMApplicationState;>;"
    if-eqz p1, :cond_12

    .line 591
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 592
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_11

    iget-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mApplicationStateList:Ljava/util/ArrayList;

    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMApplicationState;>;"
    :cond_11
    return-object v1

    .line 594
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMApplicationState;>;"
    :cond_12
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v2

    if-lez v2, :cond_23

    .line 595
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/lge/mdm/controller/LGMDMApplicationController;->getGlobalApplicationState(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 597
    :cond_23
    const-string/jumbo v2, "ApplicationCotroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[getApplicationState][return size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    return-object v1
.end method

.method protected getEnforcePowerButtonLocks(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 1929
    const/4 v0, 0x0

    .line 1930
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 1931
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1932
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforcePowerButtonLocks:Z

    :cond_e
    return v3

    .line 1934
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v2

    .line 1935
    .local v2, "listSize":I
    if-nez v2, :cond_21

    .line 1936
    const-string/jumbo v4, "ApplicationCotroller"

    const-string/jumbo v5, "admin list size is zero  "

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    return v3

    .line 1940
    :cond_21
    const/4 v1, 0x0

    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .local v1, "i":I
    :goto_22
    if-ge v1, v2, :cond_33

    .line 1941
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, v1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminList(II)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1942
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforcePowerButtonLocks:Z

    if-eqz v4, :cond_30

    .line 1943
    const/4 v3, 0x1

    return v3

    .line 1940
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 1946
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_33
    return v3
.end method

.method public getGlobalNotifySpecificProcessKillEventList(I)Ljava/util/List;
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

    .prologue
    .line 1536
    const-string/jumbo v4, "ApplicationCotroller"

    const-string/jumbo v5, "[getGlobalNotifySpecificProcessKillEventList]"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    const/4 v0, 0x0

    .line 1538
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    const/4 v2, 0x0

    .line 1539
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1541
    .local v3, "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    .end local v3    # "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1542
    .local v3, "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .local v1, "i":I
    :goto_12
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v4

    if-ge v1, v4, :cond_2c

    .line 1543
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminList(II)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1544
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->notifyprocesskilleventpackagelist:Ljava/util/List;

    if-eqz v4, :cond_29

    .line 1545
    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->notifyprocesskilleventpackagelist:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1542
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1549
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2c
    if-eqz v3, :cond_39

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_39

    .line 1550
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1552
    :cond_39
    const-string/jumbo v4, "ApplicationCotroller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[getGlobalNotifySpecificProcessKillEventList result = ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    return-object v2
.end method

.method public getLockdownAppsPackage(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v6, 0x0

    .line 1436
    const-string/jumbo v3, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[getLockdownAppsPackage] who = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    const/4 v2, 0x0

    .line 1438
    .local v2, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1440
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_44

    .line 1441
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1442
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_29

    .line 1443
    iget-object v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->runningapplicationpackage:Ljava/lang/String;

    .line 1445
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_29
    const-string/jumbo v3, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[getLockdownAppsPackage] packagename = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    return-object v2

    .line 1448
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_44
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLastLockdownAppsCompnentName(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 1449
    .local v1, "lastwho":Landroid/content/ComponentName;
    if-nez v1, :cond_4d

    .line 1450
    return-object v6

    .line 1452
    :cond_4d
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, v1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1453
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_57

    .line 1454
    iget-object v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->runningapplicationpackage:Ljava/lang/String;

    .line 1456
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_57
    const-string/jumbo v3, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[getLockdownAppsPackage] packagename = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    return-object v2
.end method

.method protected getNotifySpecificProcessKillEventList(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 9
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

    .line 1519
    const/4 v0, 0x0

    .line 1521
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    const-string/jumbo v3, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[getNotifySpecificProcessKillEventList] who = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    if-eqz p1, :cond_29

    .line 1523
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1524
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_28

    iget-object v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->notifyprocesskilleventpackagelist:Ljava/util/List;

    :cond_28
    return-object v2

    .line 1526
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_29
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v1

    .line 1527
    .local v1, "listSize":I
    if-nez v1, :cond_3b

    .line 1528
    const-string/jumbo v3, "ApplicationCotroller"

    const-string/jumbo v4, "admin list size is zero  "

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    return-object v2

    .line 1531
    :cond_3b
    invoke-virtual {p0, p2}, Lcom/lge/mdm/controller/LGMDMApplicationController;->getGlobalNotifySpecificProcessKillEventList(I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getPackageInfoForSignature(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 831
    const/4 v1, 0x0

    .line 833
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    :try_start_1
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 834
    const/16 v3, 0x40

    .line 833
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_c} :catch_e

    move-result-object v1

    .line 838
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :goto_d
    return-object v1

    .line 835
    .restart local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_e
    move-exception v0

    .line 836
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "ApplicationCotroller"

    const-string/jumbo v3, "[getPackageInfoForSignature] NameNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public getPidFromPackageName(Ljava/lang/String;I)I
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v6, 0x0

    .line 1655
    if-eqz p1, :cond_c

    const-string/jumbo v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 1656
    :cond_c
    const-string/jumbo v5, "ApplicationCotroller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPidFromPackageName : packageName check fail : packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    return v6

    .line 1660
    :cond_27
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "activity"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1661
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_4f

    .line 1662
    const-string/jumbo v5, "ApplicationCotroller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPidFromPackageName : null check fail : ActivityManager = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    return v6

    .line 1666
    :cond_4f
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 1667
    .local v1, "processList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v1, :cond_70

    .line 1668
    const-string/jumbo v5, "ApplicationCotroller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPidFromPackageName : null check fail : processList = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    return v6

    .line 1672
    :cond_70
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "rapi$iterator":Ljava/util/Iterator;
    :cond_74
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ba

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1673
    .local v3, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_84
    if-ge v5, v8, :cond_74

    aget-object v2, v7, v5

    .line 1674
    .local v2, "rPackageName":Ljava/lang/String;
    iget v9, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne v9, p2, :cond_b7

    if-eqz v2, :cond_b7

    .line 1675
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1674
    if-eqz v9, :cond_b7

    .line 1676
    const-string/jumbo v5, "ApplicationCotroller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPidFromPackageName : found pid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    return v5

    .line 1673
    :cond_b7
    add-int/lit8 v5, v5, 0x1

    goto :goto_84

    .line 1681
    .end local v2    # "rPackageName":Ljava/lang/String;
    .end local v3    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_ba
    return v6
.end method

.method public getPreInstalledAppList(I)Ljava/util/List;
    .registers 10
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
    .line 1139
    const-string/jumbo v6, "ApplicationCotroller"

    const-string/jumbo v7, "[getPreInstalledAppList]"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1142
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 1143
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1145
    .local v5, "preInstalledapplist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_5a

    .line 1146
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ai$iterator":Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1147
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_38

    .line 1148
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_20

    .line 1149
    :cond_38
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1150
    .local v2, "installerName":Ljava/lang/String;
    const-string/jumbo v6, "com.lge.lginstallservies"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 1151
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1153
    :cond_4c
    if-nez v2, :cond_20

    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMApplicationController;->isSystemPath(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 1154
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 1159
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "ai$iterator":Ljava/util/Iterator;
    .end local v2    # "installerName":Ljava/lang/String;
    :cond_5a
    return-object v5
.end method

.method public getRunningPackagesFromPid(II)[Ljava/lang/String;
    .registers 11
    .param p1, "pid"    # I
    .param p2, "userHandle"    # I

    .prologue
    const/4 v7, 0x0

    .line 1627
    const/4 v4, 0x1

    if-ge p1, v4, :cond_1f

    .line 1628
    const-string/jumbo v4, "ApplicationCotroller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRunningPackagesFromPid : pid check fail : pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    return-object v7

    .line 1631
    :cond_1f
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1632
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_47

    .line 1633
    const-string/jumbo v4, "ApplicationCotroller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRunningPackagesFromPid : null check fail : ActivityManager = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    return-object v7

    .line 1637
    :cond_47
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 1638
    .local v1, "processList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v1, :cond_68

    .line 1639
    const-string/jumbo v4, "ApplicationCotroller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRunningPackagesFromPid : null check fail : processList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    return-object v7

    .line 1644
    :cond_68
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "rapi$iterator":Ljava/util/Iterator;
    :cond_6c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1645
    .local v2, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_6c

    .line 1646
    const-string/jumbo v4, "ApplicationCotroller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRunningPackagesFromPid : found packages = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    return-object v4

    .line 1650
    .end local v2    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_9e
    const-string/jumbo v4, "ApplicationCotroller"

    const-string/jumbo v5, "getRunningPackagesFromPid : not found packages"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    return-object v7
.end method

.method public getSignatureStateList(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMSignatureState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1058
    const-string/jumbo v3, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[getSignatureState][who:+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    const/4 v0, 0x0

    .line 1060
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1061
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMSignatureState;>;"
    if-eqz p1, :cond_34

    .line 1062
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1063
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_33

    iget-object v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mSignatureStateList:Ljava/util/ArrayList;

    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMSignatureState;>;"
    :cond_33
    return-object v2

    .line 1065
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMSignatureState;>;"
    :cond_34
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v1

    .line 1066
    .local v1, "listSize":I
    if-nez v1, :cond_46

    .line 1067
    const-string/jumbo v3, "ApplicationCotroller"

    const-string/jumbo v4, "[getSignatureStateList] admin list size is zero "

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    return-object v2

    .line 1070
    :cond_46
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/lge/mdm/controller/LGMDMApplicationController;->getGlobalSignatureState(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 1071
    const-string/jumbo v3, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[getSignatureStateList][return size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    return-object v2
.end method

.method protected installApplication(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 259
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/mdm/controller/LGMDMApplicationController$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/mdm/controller/LGMDMApplicationController$1;-><init>(Lcom/lge/mdm/controller/LGMDMApplicationController;Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 258
    return-void
.end method

.method public isContainWatcherAndKeeperList(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 1712
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->watcherAndKeeperExceptList:Ljava/util/Set;

    if-nez v0, :cond_8

    .line 1713
    :cond_6
    const/4 v0, 0x0

    return v0

    .line 1715
    :cond_8
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->watcherAndKeeperExceptList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public realStartApplication(Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 1471
    const-string/jumbo v0, "ApplicationCotroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[realStartApplication] packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " userHandle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    if-eqz p1, :cond_31

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1475
    :cond_31
    return-void

    .line 1477
    :cond_32
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/lge/mdm/controller/LGMDMApplicationController;->startApplication(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 1470
    return-void
.end method

.method public reportLockdownApps(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 1462
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.lge.mdm.intent.action.LOCK_DOWN_APP_CRASH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1463
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string/jumbo v1, "COMPONENT_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1464
    const-string/jumbo v1, "PACKAGE_NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1465
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 1466
    const-string/jumbo v1, "ApplicationCotroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[reportLockdownApps] sendBroadcast ACTION_LOCK_DOWN_APP_CRASH  packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    return-void
.end method

.method protected setAllowContactInfoAccess(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1887
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1888
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowContactInfoAccess:I

    if-ne v1, p2, :cond_14

    .line 1889
    const-string/jumbo v1, "ApplicationCotroller"

    const-string/jumbo v2, "setAllowContactInfoAccess : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    return-void

    .line 1893
    :cond_14
    if-ltz p2, :cond_24

    .line 1894
    const/4 v1, 0x2

    if-gt p2, v1, :cond_24

    .line 1895
    iput p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowContactInfoAccess:I

    .line 1896
    const-string/jumbo v1, "ApplicationCotroller"

    const-string/jumbo v2, "setAllowContactInfoAccess"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    :cond_24
    return-void
.end method

.method protected setAllowGoogleErrorReport(Landroid/content/ComponentName;II)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I
    .param p3, "userHandle"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1796
    const-string/jumbo v3, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[setAllowGoogleErrorReport][who:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "[policy :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1799
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowGoogleErrorReport:I

    if-ne v3, p2, :cond_49

    .line 1800
    const-string/jumbo v1, "ApplicationCotroller"

    const-string/jumbo v2, "setAllowGoogleErrorReport : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    return-void

    .line 1804
    :cond_49
    iput p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowGoogleErrorReport:I

    .line 1806
    new-instance v3, Lcom/lge/mdm/controller/LGMDMApplicationController$MyAsyncTask;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/lge/mdm/controller/LGMDMApplicationController$MyAsyncTask;-><init>(Lcom/lge/mdm/controller/LGMDMApplicationController$MyAsyncTask;)V

    new-array v4, v1, [Ljava/lang/Boolean;

    .line 1807
    if-gtz p2, :cond_68

    :goto_55
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v2

    .line 1806
    invoke-virtual {v3, v4}, Lcom/lge/mdm/controller/LGMDMApplicationController$MyAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1809
    if-lez p2, :cond_67

    .line 1810
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/lge/mdm/controller/LGMDMHandler;->disallowGoogleErrorReport(I)V

    .line 1795
    :cond_67
    return-void

    :cond_68
    move v1, v2

    .line 1807
    goto :goto_55
.end method

.method public setAllowInstallApplication(Landroid/content/ComponentName;ZI)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 478
    const-string/jumbo v1, "ApplicationCotroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[setAllowInstallApplication][who:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "[allow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 480
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowInstallApplication:Z

    .line 477
    return-void
.end method

.method public setAllowLockdownApps(Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;II)Z
    .registers 15
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "isContinuousRunning"    # Z
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "runningApplicationMaxCrashNum"    # I
    .param p6, "userHandle"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1392
    const-string/jumbo v2, "ApplicationCotroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[setAllowLockdownApps]  who = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isContinuousRunning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1393
    const-string/jumbo v4, " packageName = "

    .line 1392
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1393
    const-string/jumbo v4, " activityName = "

    .line 1392
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1397
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p2, :cond_5c

    .line 1398
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1, p6}, Lcom/lge/mdm/admin/LGMDMadministrator;->addRunningAppComponentList(Landroid/content/ComponentName;I)V

    .line 1399
    iput-boolean v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowrunningapplication:Z

    .line 1400
    iput-object p3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->runningapplicationpackage:Ljava/lang/String;

    .line 1401
    iput-object p4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->runningapplicationactivity:Ljava/lang/String;

    .line 1402
    if-lez p5, :cond_56

    if-le p5, v1, :cond_57

    :cond_56
    move p5, v1

    .end local p5    # "runningApplicationMaxCrashNum":I
    :cond_57
    iput p5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->runningApplicationMaxCrashNum:I

    .line 1404
    iput v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->runningApplicationReportCrashNum:I

    .line 1412
    :goto_5b
    return v6

    .line 1406
    .restart local p5    # "runningApplicationMaxCrashNum":I
    :cond_5c
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1, p6}, Lcom/lge/mdm/admin/LGMDMadministrator;->removeRunningAppComponentList(Landroid/content/ComponentName;I)V

    .line 1407
    iput-boolean v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowrunningapplication:Z

    .line 1408
    iput-object v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->runningapplicationpackage:Ljava/lang/String;

    .line 1409
    iput-object v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->runningapplicationactivity:Ljava/lang/String;

    .line 1410
    const/4 v1, -0x1

    iput v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->runningApplicationMaxCrashNum:I

    goto :goto_5b
.end method

.method public setAllowNotifySpecificProcessKillEvent(Landroid/content/ComponentName;ZLjava/util/List;I)V
    .registers 9
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
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1483
    .local p3, "packagelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "ApplicationCotroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[setAllowNotifySpecificProcessKillEvent]  who = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1484
    const-string/jumbo v3, ", allow = "

    .line 1483
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1484
    const-string/jumbo v3, ", packagelist = "

    .line 1483
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1488
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p2, :cond_3e

    .line 1489
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allownotifyprocesskillevent:Z

    .line 1490
    iput-object p3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->notifyprocesskilleventpackagelist:Ljava/util/List;

    .line 1482
    :goto_3d
    return-void

    .line 1492
    :cond_3e
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allownotifyprocesskillevent:Z

    .line 1493
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->notifyprocesskilleventpackagelist:Ljava/util/List;

    goto :goto_3d
.end method

.method public setAllowRemoveDeviceAdmin(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 213
    const-string/jumbo v2, "ApplicationCotroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[setAllowRemoveDeviceAdmin][who:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "[allow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 216
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowRemoveDeviceAdmin:Z

    if-ne v2, p2, :cond_47

    .line 217
    const-string/jumbo v2, "ApplicationCotroller"

    const-string/jumbo v3, "setAllowRemoveDeviceAdmin : same policy is called"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void

    .line 221
    :cond_47
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowRemoveDeviceAdmin:Z

    .line 222
    iget-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowRemoveDeviceAdmin:Z

    if-eqz v2, :cond_5c

    .line 223
    iget-object v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preventRemoveDeviceAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 224
    const-string/jumbo v2, "ApplicationCotroller"

    const-string/jumbo v3, "[setAllowRemoveDeviceAdmin] preventRemoveDeviceAdminList clear"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_5b
    return-void

    .line 226
    :cond_5c
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preventRemoveDeviceAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 228
    iget-object v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preventRemoveDeviceAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    const-string/jumbo v2, "ApplicationCotroller"

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[setAllowRemoveDeviceAdmin] preventRemoveDeviceAdminList add packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b
.end method

.method protected setAllowScreenPin(Landroid/content/ComponentName;ZI)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 1557
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1558
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenPin:Z

    if-ne v1, p2, :cond_14

    .line 1559
    const-string/jumbo v1, "ApplicationCotroller"

    const-string/jumbo v4, "setAllowScreenPin : same policy is called"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    return-void

    .line 1562
    :cond_14
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenPin:Z

    .line 1564
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenPin:Z

    if-nez v1, :cond_20

    .line 1565
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMApplicationController;->getScreenPinValueFromDB()I

    move-result v1

    iput v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateAllowScreenPin:I

    .line 1568
    :cond_20
    invoke-virtual {p0, p1, p3}, Lcom/lge/mdm/controller/LGMDMApplicationController;->getAllowScreenPin(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 1569
    const-string/jumbo v1, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAllowScreenPin is false = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateAllowScreenPin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1572
    .local v2, "identity":J
    :try_start_46
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1573
    const-string/jumbo v4, "lock_to_app_enabled"

    const/4 v5, 0x0

    .line 1572
    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_57

    .line 1575
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1556
    :goto_56
    return-void

    .line 1574
    :catchall_57
    move-exception v1

    .line 1575
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1574
    throw v1

    .line 1578
    .end local v2    # "identity":J
    :cond_5c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1580
    .restart local v2    # "identity":J
    :try_start_60
    iget v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateAllowScreenPin:I

    if-eqz v1, :cond_7e

    .line 1581
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1582
    const-string/jumbo v4, "lock_to_app_enabled"

    iget v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateAllowScreenPin:I

    .line 1581
    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1583
    const/4 v1, 0x0

    iput v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateAllowScreenPin:I

    .line 1584
    const-string/jumbo v1, "ApplicationCotroller"

    const-string/jumbo v4, "setAllowScreenPin restore prestatus:true"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_60 .. :try_end_7e} :catchall_82

    .line 1587
    :cond_7e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_56

    .line 1586
    :catchall_82
    move-exception v1

    .line 1587
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1586
    throw v1
.end method

.method public setAllowSignatureState(Landroid/content/ComponentName;ZLjava/util/List;I)I
    .registers 13
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
            "Lcom/lge/mdm/config/LGMDMSignatureState;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p3, "signatureStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMSignatureState;>;"
    const/16 v7, 0x32

    const/4 v6, 0x1

    .line 1013
    const-string/jumbo v3, "ApplicationCotroller"

    const-string/jumbo v4, "[setAllowSignatureState]"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1016
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-nez p2, :cond_4f

    .line 1017
    if-nez p3, :cond_28

    .line 1018
    const-string/jumbo v3, "ApplicationCotroller"

    const-string/jumbo v4, "[setAllowSignatureState] signatureStateList is null"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "signatureStateList is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1021
    :cond_28
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "item$iterator":Ljava/util/Iterator;
    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/config/LGMDMSignatureState;

    .line 1022
    .local v1, "item":Lcom/lge/mdm/config/LGMDMSignatureState;
    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMSignatureState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_44

    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMSignatureState;->getSignature()[Landroid/content/pm/Signature;

    move-result-object v3

    if-nez v3, :cond_2c

    .line 1023
    :cond_44
    const-string/jumbo v3, "ApplicationCotroller"

    const-string/jumbo v4, "[setAllowSignatureState] packageName or signature is null"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    const/4 v3, -0x1

    return v3

    .line 1029
    .end local v1    # "item":Lcom/lge/mdm/config/LGMDMSignatureState;
    .end local v2    # "item$iterator":Ljava/util/Iterator;
    :cond_4f
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSignatureState:Z

    .line 1031
    iget-object v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mSignatureStateList:Ljava/util/ArrayList;

    if-nez v3, :cond_5f

    .line 1032
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mSignatureStateList:Ljava/util/ArrayList;

    .line 1036
    :goto_5c
    if-eqz p2, :cond_65

    .line 1037
    return v6

    .line 1034
    :cond_5f
    iget-object v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mSignatureStateList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_5c

    .line 1040
    :cond_65
    const-string/jumbo v3, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[setAllowSignatureState][who:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "[signatureStateList size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1041
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    .line 1040
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1041
    const-string/jumbo v5, "]"

    .line 1040
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v7, :cond_b0

    .line 1044
    const-string/jumbo v3, "ApplicationCotroller"

    const-string/jumbo v4, "[setAllowSignatureState] signatureStateList is too big"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    const/4 v3, 0x0

    invoke-interface {p3, v3, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p3

    .line 1048
    :cond_b0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "item$iterator":Ljava/util/Iterator;
    :goto_b4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/config/LGMDMSignatureState;

    .line 1049
    .restart local v1    # "item":Lcom/lge/mdm/config/LGMDMSignatureState;
    iget-object v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mSignatureStateList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    const-string/jumbo v3, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[setAllowSignatureState] add signatureStateList : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b4

    .line 1052
    .end local v1    # "item":Lcom/lge/mdm/config/LGMDMSignatureState;
    :cond_e0
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Lcom/lge/mdm/controller/LGMDMHandler;->setSignatureState(Ljava/util/List;I)V

    .line 1053
    invoke-virtual {p0, p4}, Lcom/lge/mdm/controller/LGMDMApplicationController;->updateWatcherAndKeeper(I)V

    .line 1054
    return v6
.end method

.method public setAllowSpecificApplication(Landroid/content/ComponentName;Ljava/lang/String;ZI)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "applicationName"    # Ljava/lang/String;
    .param p3, "allow"    # Z
    .param p4, "userHandle"    # I

    .prologue
    .line 1722
    invoke-static {p2}, Lcom/lge/mdm/LGMDMManager$ApplicationType;->valueOf(Ljava/lang/String;)Lcom/lge/mdm/LGMDMManager$ApplicationType;

    move-result-object v1

    .line 1723
    .local v1, "applicationType":Lcom/lge/mdm/LGMDMManager$ApplicationType;
    const-string/jumbo v2, "ApplicationCotroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[setAllowSpecificApplication][applicatin name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lge/mdm/LGMDMManager$ApplicationType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1724
    const-string/jumbo v4, "][applicatin number = "

    .line 1723
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1724
    invoke-virtual {v1}, Lcom/lge/mdm/LGMDMManager$ApplicationType;->ordinal()I

    move-result v4

    .line 1723
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1724
    const-string/jumbo v4, "]"

    .line 1723
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1727
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-object v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mSpecificApplicationList:[Z

    invoke-virtual {v1}, Lcom/lge/mdm/LGMDMManager$ApplicationType;->ordinal()I

    move-result v3

    aget-boolean v2, v2, v3

    if-ne v2, p3, :cond_52

    .line 1728
    const-string/jumbo v2, "ApplicationCotroller"

    const-string/jumbo v3, "setAllowSpecificApplication : same policy is called"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    return-void

    .line 1731
    :cond_52
    iget-object v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mSpecificApplicationList:[Z

    invoke-virtual {v1}, Lcom/lge/mdm/LGMDMManager$ApplicationType;->ordinal()I

    move-result v3

    aput-boolean p3, v2, v3

    .line 1733
    if-nez p3, :cond_6d

    .line 1734
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v2

    .line 1735
    sget-object v3, Lcom/lge/mdm/util/SpecificPackageName;->SPECIFICPACKAGENAMES:[Ljava/lang/String;

    invoke-virtual {v1}, Lcom/lge/mdm/LGMDMManager$ApplicationType;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    const/4 v4, -0x1

    .line 1734
    invoke-virtual {v2, v3, v4, p4}, Lcom/lge/mdm/controller/LGMDMHandler;->forceStopSpecificApplication(Ljava/lang/String;II)V

    .line 1721
    :goto_6c
    return-void

    .line 1738
    :cond_6d
    invoke-virtual {p0, p4}, Lcom/lge/mdm/controller/LGMDMApplicationController;->updateWatcherAndKeeper(I)V

    goto :goto_6c
.end method

.method public setAllowUninstallApplication(Landroid/content/ComponentName;ZI)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 504
    const-string/jumbo v1, "ApplicationCotroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[setAllowUninstallApplication][who:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "[allow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 506
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUninstallApplication:Z

    .line 503
    return-void
.end method

.method public setAllowUnknownSourceInstallation(Landroid/content/ComponentName;ZI)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 103
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUnknownApplicationInstall:Z

    if-ne v1, p2, :cond_14

    .line 104
    const-string/jumbo v1, "ApplicationCotroller"

    const-string/jumbo v4, "setAllowUnknownSourceInstallation : same policy is called"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void

    .line 108
    :cond_14
    const-string/jumbo v1, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[setAllowUnknownSourceInstallation][who:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "[allow:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 109
    const-string/jumbo v5, "]"

    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUnknownApplicationInstall:Z

    .line 111
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUnknownApplicationInstall:Z

    if-nez v1, :cond_76

    .line 112
    invoke-direct {p0, p3}, Lcom/lge/mdm/controller/LGMDMApplicationController;->isNonMarketAppsAllowed(I)I

    move-result v1

    iput v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUnknownAppInstall:I

    .line 113
    const-string/jumbo v1, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[setAllowUnknownSourceInstallation][preStateUnknownAppInstall:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 114
    iget v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUnknownAppInstall:I

    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 114
    const-string/jumbo v5, "]"

    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_76
    invoke-virtual {p0, p1, p3}, Lcom/lge/mdm/controller/LGMDMApplicationController;->getAllowUnknownSourceInstallation(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 117
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 119
    .local v2, "identity":J
    :try_start_80
    iget v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUnknownAppInstall:I

    if-eqz v1, :cond_9e

    .line 120
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 121
    const-string/jumbo v4, "install_non_market_apps"

    .line 122
    iget v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUnknownAppInstall:I

    .line 120
    invoke-static {v1, v4, v5, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 123
    const/4 v1, 0x0

    iput v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUnknownAppInstall:I

    .line 124
    const-string/jumbo v1, "ApplicationCotroller"

    const-string/jumbo v4, "[setAllowUnknownSourceInstallation] restore pre status:true"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9e
    .catchall {:try_start_80 .. :try_end_9e} :catchall_a2

    .line 127
    :cond_9e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    :goto_a1
    return-void

    .line 126
    :catchall_a2
    move-exception v1

    .line 127
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    throw v1

    .line 130
    .end local v2    # "identity":J
    :cond_a7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 132
    .restart local v2    # "identity":J
    :try_start_ab
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 133
    const-string/jumbo v4, "install_non_market_apps"

    const/4 v5, 0x0

    .line 132
    invoke-static {v1, v4, v5, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 134
    const-string/jumbo v1, "ApplicationCotroller"

    const-string/jumbo v4, "[setAllowUnknownSourceInstallation] set false"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c1
    .catchall {:try_start_ab .. :try_end_c1} :catchall_c5

    .line 136
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a1

    .line 135
    :catchall_c5
    move-exception v1

    .line 136
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    throw v1
.end method

.method public setAllowUnsignedApplication(Landroid/content/ComponentName;ZI)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 970
    const-string/jumbo v1, "ApplicationCotroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[setAllowUnsignedApplication][who:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "[allow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 973
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUnsignedApplication:Z

    if-ne v1, p2, :cond_47

    .line 974
    const-string/jumbo v1, "ApplicationCotroller"

    const-string/jumbo v2, "setAllowUnsignedApplication : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    return-void

    .line 978
    :cond_47
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUnsignedApplication:Z

    .line 980
    if-nez p2, :cond_52

    .line 981
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/lge/mdm/controller/LGMDMHandler;->setAllowUnsignedApplication(I)V

    .line 983
    :cond_52
    invoke-virtual {p0, p3}, Lcom/lge/mdm/controller/LGMDMApplicationController;->updateWatcherAndKeeper(I)V

    .line 969
    return-void
.end method

.method public setAppVersionState(Landroid/content/ComponentName;Ljava/util/List;I)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMAppVersionState;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 651
    .local p2, "appVersionStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMAppVersionState;>;"
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 652
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-nez p2, :cond_11

    .line 653
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "List is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 656
    :cond_11
    const-string/jumbo v1, "ApplicationCotroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[setAppVersionState][who:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "[appVersionStateList size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 657
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 656
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 657
    const-string/jumbo v3, "]"

    .line 656
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mAppVersionStateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 660
    iget-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mAppVersionStateList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 662
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/lge/mdm/controller/LGMDMHandler;->setAppVersionState(Ljava/util/List;I)V

    .line 663
    invoke-virtual {p0, p3}, Lcom/lge/mdm/controller/LGMDMApplicationController;->updateWatcherAndKeeper(I)V

    .line 650
    return-void
.end method

.method public setApplicationState(Landroid/content/ComponentName;Ljava/util/List;I)V
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMApplicationState;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 556
    .local p2, "applicationStateList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMApplicationState;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 557
    .local v1, "copyItems":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMApplicationState;>;"
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 558
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p2, :cond_13

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_45

    .line 559
    :cond_13
    const-string/jumbo v5, "ApplicationCotroller"

    const-string/jumbo v6, "[setApplicationState] remove all item."

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mApplicationStateList:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "item$iterator":Ljava/util/Iterator;
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/mdm/config/LGMDMApplicationState;

    .line 562
    .local v2, "item":Lcom/lge/mdm/config/LGMDMApplicationState;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/lge/mdm/config/LGMDMApplicationState;->setEnable(I)V

    goto :goto_22

    .line 564
    .end local v2    # "item":Lcom/lge/mdm/config/LGMDMApplicationState;
    :cond_33
    iget-object v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mApplicationStateList:Ljava/util/ArrayList;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 565
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v5

    invoke-virtual {v5, v1, p3}, Lcom/lge/mdm/controller/LGMDMHandler;->setApplicationState(Ljava/util/List;I)V

    .line 566
    iget-object v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mApplicationStateList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 567
    return-void

    .line 569
    .end local v3    # "item$iterator":Ljava/util/Iterator;
    :cond_45
    invoke-direct {p0, p2, p3}, Lcom/lge/mdm/controller/LGMDMApplicationController;->excludeCriticalPackage(Ljava/util/List;I)V

    .line 570
    const-string/jumbo v5, "ApplicationCotroller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[setApplicationState] old list is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mApplicationStateList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string/jumbo v5, "ApplicationCotroller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[setApplicationState][who:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "[applicationStateList size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 572
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    .line 571
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 572
    const-string/jumbo v7, "]"

    .line 571
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 577
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v5

    invoke-virtual {v5, v1, p3}, Lcom/lge/mdm/controller/LGMDMHandler;->setApplicationState(Ljava/util/List;I)V

    .line 580
    iget-object v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mApplicationStateList:Ljava/util/ArrayList;

    invoke-interface {p2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 581
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 582
    .local v4, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/lge/mdm/config/LGMDMApplicationState;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mApplicationStateList:Ljava/util/ArrayList;

    .line 583
    const-string/jumbo v5, "ApplicationCotroller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[setApplicationState] result list is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mApplicationStateList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0, p3}, Lcom/lge/mdm/controller/LGMDMApplicationController;->updateWatcherAndKeeper(I)V

    .line 555
    return-void
.end method

.method protected setEnforcePowerButtonLocks(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 1919
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1920
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforcePowerButtonLocks:Z

    if-ne v1, p2, :cond_14

    .line 1921
    const-string/jumbo v1, "ApplicationCotroller"

    const-string/jumbo v2, "setEnforcePowerButtonLocks : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    return-void

    .line 1924
    :cond_14
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforcePowerButtonLocks:Z

    .line 1925
    const-string/jumbo v1, "ApplicationCotroller"

    const-string/jumbo v2, "setEnforcePowerButtonLocks"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    return-void
.end method

.method public startApplication(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;IZI)V
    .registers 14
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "subInfo"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "showToast"    # Z
    .param p6, "userHandle"    # I

    .prologue
    .line 1188
    const-string/jumbo v0, "ApplicationCotroller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[startApplication][who:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "][packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1189
    const-string/jumbo v2, "][subInfo:"

    .line 1188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1189
    const-string/jumbo v2, "][type:"

    .line 1188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1189
    const-string/jumbo v2, "]"

    .line 1188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    const/4 v6, 0x0

    .line 1191
    .local v6, "result":Z
    if-eqz p2, :cond_4e

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1192
    :cond_4e
    const-string/jumbo v0, "ApplicationCotroller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[startApplication][return:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] - packageName is empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    return-void

    :cond_70
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 1197
    invoke-virtual/range {v0 .. v5}, Lcom/lge/mdm/controller/LGMDMApplicationController;->startApplication(Ljava/lang/String;Ljava/lang/String;IZI)Z

    .line 1198
    return-void
.end method

.method public startApplication(Ljava/lang/String;Ljava/lang/String;IZI)Z
    .registers 27
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "subInfo"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "showToast"    # Z
    .param p5, "userHandle"    # I

    .prologue
    .line 1203
    const/4 v15, 0x0

    .line 1204
    .local v15, "result":Z
    packed-switch p3, :pswitch_data_20e

    .line 1293
    const-string/jumbo v4, "ApplicationCotroller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[startApplication][return: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1294
    const-string/jumbo v6, "] - invalid type... choose activity or service type."

    .line 1293
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    return v15

    .line 1206
    :pswitch_26
    if-eqz p2, :cond_33

    const-string/jumbo v4, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14a

    .line 1207
    :cond_33
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    .line 1209
    .local v13, "pm":Landroid/content/pm/IPackageManager;
    if-nez v13, :cond_3b

    .line 1210
    const/4 v4, 0x0

    return v4

    .line 1212
    :cond_3b
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v14, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1213
    .local v14, "queryIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v14, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1214
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1215
    const/16 v16, 0x0

    .line 1216
    .local v16, "ri":Landroid/content/pm/ResolveInfo;
    const/16 v17, 0x0

    .line 1219
    .local v17, "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_52
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1220
    const/16 v5, 0x80

    .line 1218
    move/from16 v0, p5

    invoke-interface {v13, v14, v4, v5, v0}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    .line 1221
    .local v16, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v16, :cond_b8

    .line 1222
    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1223
    const-string/jumbo v5, "com.android.internal.app.ResolverActivity"

    .line 1222
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b8

    .line 1224
    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-direct {v0, v1, v4, v2}, Lcom/lge/mdm/controller/LGMDMApplicationController;->startActivity(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_86} :catch_101

    move-result v15

    .line 1298
    .end local v13    # "pm":Landroid/content/pm/IPackageManager;
    .end local v14    # "queryIntent":Landroid/content/Intent;
    .end local v15    # "result":Z
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v17    # "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_87
    :goto_87
    if-eqz v15, :cond_96

    if-eqz p4, :cond_96

    .line 1299
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v4

    .line 1300
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_start_application_NORMAL:I

    .line 1299
    move/from16 v0, p5

    invoke-virtual {v4, v5, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    .line 1302
    :cond_96
    const-string/jumbo v4, "ApplicationCotroller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[startApplication][return: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    return v15

    .line 1227
    .restart local v13    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v14    # "queryIntent":Landroid/content/Intent;
    .restart local v15    # "result":Z
    .restart local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v17    # "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_b8
    :try_start_b8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1228
    const/16 v5, 0x80

    .line 1226
    move/from16 v0, p5

    invoke-interface {v13, v14, v4, v5, v0}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v17

    .line 1229
    .local v17, "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v10

    .line 1230
    .local v10, "N":I
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "rinfo$iterator":Ljava/util/Iterator;
    :goto_d4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    .line 1231
    .local v18, "rinfo":Landroid/content/pm/ResolveInfo;
    const-string/jumbo v4, "ApplicationCotroller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "activity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_100
    .catch Landroid/os/RemoteException; {:try_start_b8 .. :try_end_100} :catch_101

    goto :goto_d4

    .line 1246
    .end local v10    # "N":I
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v17    # "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v18    # "rinfo":Landroid/content/pm/ResolveInfo;
    .end local v19    # "rinfo$iterator":Ljava/util/Iterator;
    :catch_101
    move-exception v11

    .line 1247
    .local v11, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "ApplicationCotroller"

    const-string/jumbo v5, "Failed talking with LGMDM controller"

    invoke-static {v4, v5, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_87

    .line 1233
    .end local v11    # "e":Landroid/os/RemoteException;
    .restart local v10    # "N":I
    .restart local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v17    # "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v19    # "rinfo$iterator":Ljava/util/Iterator;
    :cond_10d
    if-lez v10, :cond_13f

    .line 1234
    const/4 v4, 0x0

    :try_start_110
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    .line 1235
    .local v20, "seletedRi":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_87

    .line 1236
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_87

    .line 1238
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1237
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-direct {v0, v1, v4, v2}, Lcom/lge/mdm/controller/LGMDMApplicationController;->startActivity(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .local v15, "result":Z
    goto/16 :goto_87

    .line 1241
    .end local v20    # "seletedRi":Landroid/content/pm/ResolveInfo;
    .local v15, "result":Z
    :cond_13f
    const-string/jumbo v4, "ApplicationCotroller"

    .line 1242
    const-string/jumbo v5, "[startApplication] start application fail. can\'t find Activity"

    .line 1241
    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_148
    .catch Landroid/os/RemoteException; {:try_start_110 .. :try_end_148} :catch_101

    goto/16 :goto_87

    .line 1250
    .end local v10    # "N":I
    .end local v13    # "pm":Landroid/content/pm/IPackageManager;
    .end local v14    # "queryIntent":Landroid/content/Intent;
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v17    # "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v19    # "rinfo$iterator":Ljava/util/Iterator;
    :cond_14a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/mdm/controller/LGMDMApplicationController;->startActivity(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .local v15, "result":Z
    goto/16 :goto_87

    .line 1255
    .local v15, "result":Z
    :pswitch_158
    if-eqz p2, :cond_165

    const-string/jumbo v4, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b6

    .line 1256
    :cond_165
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    .line 1258
    .restart local v13    # "pm":Landroid/content/pm/IPackageManager;
    if-nez v13, :cond_16d

    .line 1259
    const/4 v4, 0x0

    return v4

    .line 1261
    :cond_16d
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1262
    .restart local v14    # "queryIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1263
    const/4 v12, 0x0

    .line 1265
    .local v12, "pi":Landroid/content/pm/PackageInfo;
    const/4 v4, 0x4

    :try_start_179
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-interface {v13, v0, v4, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 1267
    .local v12, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v12, :cond_19f

    .line 1268
    iget-object v4, v12, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_87

    iget-object v4, v12, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v4, v4

    if-lez v4, :cond_87

    .line 1269
    iget-object v4, v12, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-direct {v0, v1, v4, v2}, Lcom/lge/mdm/controller/LGMDMApplicationController;->startService(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .local v15, "result":Z
    goto/16 :goto_87

    .line 1272
    .local v15, "result":Z
    :cond_19f
    const-string/jumbo v4, "ApplicationCotroller"

    .line 1273
    const-string/jumbo v5, "[startApplication] start application fail. can\'t find service"

    .line 1272
    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a8
    .catch Landroid/os/RemoteException; {:try_start_179 .. :try_end_1a8} :catch_1aa

    goto/16 :goto_87

    .line 1275
    .end local v12    # "pi":Landroid/content/pm/PackageInfo;
    :catch_1aa
    move-exception v11

    .line 1276
    .restart local v11    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "ApplicationCotroller"

    const-string/jumbo v5, "Failed talking with LGMDM controller"

    invoke-static {v4, v5, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_87

    .line 1279
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v13    # "pm":Landroid/content/pm/IPackageManager;
    .end local v14    # "queryIntent":Landroid/content/Intent;
    :cond_1b6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/mdm/controller/LGMDMApplicationController;->startService(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .local v15, "result":Z
    goto/16 :goto_87

    .line 1284
    .local v15, "result":Z
    :pswitch_1c4
    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/lge/mdm/controller/LGMDMApplicationController;->startApplication(Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v15

    .line 1286
    .local v15, "result":Z
    const-string/jumbo v4, "ApplicationCotroller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    if-nez v15, :cond_87

    .line 1289
    const/4 v7, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v8, p4

    move/from16 v9, p5

    .line 1288
    invoke-virtual/range {v4 .. v9}, Lcom/lge/mdm/controller/LGMDMApplicationController;->startApplication(Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v15

    goto/16 :goto_87

    .line 1204
    nop

    :pswitch_data_20e
    .packed-switch 0x0
        :pswitch_26
        :pswitch_158
        :pswitch_1c4
    .end packed-switch
.end method

.method public startLockdownApps(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 1378
    const-string/jumbo v0, "ApplicationCotroller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[startLockdownApps]  who = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1379
    const-string/jumbo v2, "activity = "

    .line 1378
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    const/4 v6, 0x0

    .line 1381
    .local v6, "result":Z
    if-eqz p2, :cond_3d

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1382
    :cond_3d
    const-string/jumbo v0, "ApplicationCotroller"

    const-string/jumbo v1, "[startLockdownApps] - packageName is empty"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    return v6

    :cond_47
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v4, v3

    move v5, p4

    .line 1385
    invoke-virtual/range {v0 .. v5}, Lcom/lge/mdm/controller/LGMDMApplicationController;->startApplication(Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v6

    .line 1387
    .local v6, "result":Z
    return v6
.end method

.method public stopApplication(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 1371
    const-string/jumbo v0, "ApplicationCotroller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[stopApplication][who:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "][packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    if-eqz p2, :cond_36

    .line 1373
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1, p3}, Lcom/lge/mdm/controller/LGMDMHandler;->forceStopApplication(Ljava/lang/String;II)V

    .line 1370
    :cond_36
    return-void
.end method

.method public uninstallApplication(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 346
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/mdm/controller/LGMDMApplicationController$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/lge/mdm/controller/LGMDMApplicationController$2;-><init>(Lcom/lge/mdm/controller/LGMDMApplicationController;Landroid/content/ComponentName;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 345
    return-void
.end method

.method public uninstallSignatureApp(Landroid/content/ComponentName;Ljava/util/List;I)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p2, "packagelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "ApplicationCotroller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[uninstallSignatureApp][who:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "[packagelist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 384
    const-string/jumbo v2, "]"

    .line 383
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    if-nez p2, :cond_36

    .line 386
    return-void

    .line 388
    :cond_36
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/mdm/controller/LGMDMApplicationController$3;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/lge/mdm/controller/LGMDMApplicationController$3;-><init>(Lcom/lge/mdm/controller/LGMDMApplicationController;Ljava/util/List;ILandroid/content/ComponentName;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 382
    return-void
.end method

.method public updateWatcherAndKeeper(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 1685
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/lge/mdm/controller/LGMDMApplicationController;->getLockdownAppsPackage(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v0

    .line 1686
    .local v0, "lockDownPackage":Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Lcom/lge/mdm/controller/LGMDMApplicationController;->realStartApplication(Ljava/lang/String;I)V

    .line 1684
    return-void
.end method

.method public updateWatcherAndKeeperExceptionList([Ljava/lang/String;II)V
    .registers 8
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 1690
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->watcherAndKeeperExceptList:Ljava/util/Set;

    if-nez v2, :cond_c

    .line 1691
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->watcherAndKeeperExceptList:Ljava/util/Set;

    .line 1694
    :cond_c
    if-nez p1, :cond_18

    .line 1695
    const-string/jumbo v1, "ApplicationCotroller"

    const-string/jumbo v2, "updateWatcherAndKeeperExceptionList : packages is null"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    return-void

    .line 1698
    :cond_18
    if-nez p2, :cond_27

    .line 1699
    array-length v2, p1

    :goto_1b
    if-ge v1, v2, :cond_3f

    aget-object v0, p1, v1

    .line 1700
    .local v0, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->watcherAndKeeperExceptList:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1699
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1702
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_27
    const/4 v2, 0x1

    if-ne p2, v2, :cond_3f

    .line 1703
    array-length v2, p1

    :goto_2b
    if-ge v1, v2, :cond_3f

    aget-object v0, p1, v1

    .line 1704
    .restart local v0    # "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->watcherAndKeeperExceptList:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1705
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->watcherAndKeeperExceptList:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1703
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 1689
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_3f
    return-void
.end method

.method public wipeApplicationCache(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 187
    const-string/jumbo v3, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[wipeApplicationCache][who:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "[packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 188
    const-string/jumbo v5, "]"

    .line 187
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 191
    .local v0, "identity":J
    :try_start_37
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 192
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 193
    const-string/jumbo v3, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[wipeApplicationCache] deleteApplicationCacheFiles:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_37 .. :try_end_5b} :catchall_5f

    .line 195
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    return-void

    .line 194
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catchall_5f
    move-exception v3

    .line 195
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    throw v3
.end method

.method public wipeApplicationData(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 172
    const-string/jumbo v1, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[wipeApplicationData][who:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "[packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 173
    const-string/jumbo v5, "]"

    .line 172
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 176
    .local v2, "identity":J
    :try_start_37
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, p2, v4, p3}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    .line 178
    const-string/jumbo v1, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[wipeApplicationData] clearApplicationUserData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_59} :catch_5d
    .catchall {:try_start_37 .. :try_end_59} :catchall_68

    .line 182
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 171
    :goto_5c
    return-void

    .line 179
    :catch_5d
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5e
    const-string/jumbo v1, "ApplicationCotroller"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_68

    .line 182
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5c

    .line 181
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_68
    move-exception v1

    .line 182
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 181
    throw v1
.end method

.method public wipeApplicationDefault(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 200
    const-string/jumbo v3, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[wipeApplicationDefault][who:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "[packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 201
    const-string/jumbo v5, "]"

    .line 200
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 204
    .local v0, "identity":J
    :try_start_37
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMApplicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 205
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 206
    const-string/jumbo v3, "ApplicationCotroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[wipeApplicationDefault] clearPackagePreferredActivities:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_37 .. :try_end_5a} :catchall_5e

    .line 208
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    return-void

    .line 207
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catchall_5e
    move-exception v3

    .line 208
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    throw v3
.end method
