.class public Lcom/lge/mdm/controller/LGMDMQuickCoverController;
.super Ljava/lang/Object;
.source "LGMDMQuickCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/controller/LGMDMQuickCoverController$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LGMDMQuickCoverController"

.field private static sInstance:Lcom/lge/mdm/controller/LGMDMQuickCoverController;


# instance fields
.field mContext:Landroid/content/Context;

.field private mCoverCallback:Lcom/lge/systemservice/core/SmartCoverManager$CoverCallback;

.field private mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

.field mSmartCover:Lcom/lge/systemservice/core/SmartCoverManager;

.field private mSmartCoverState:I


# direct methods
.method static synthetic -set0(Lcom/lge/mdm/controller/LGMDMQuickCoverController;I)I
    .registers 2

    iput p1, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->mSmartCoverState:I

    return p1
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->sInstance:Lcom/lge/mdm/controller/LGMDMQuickCoverController;

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->mSmartCoverState:I

    .line 27
    new-instance v0, Lcom/lge/mdm/controller/LGMDMQuickCoverController$1;

    invoke-direct {v0, p0}, Lcom/lge/mdm/controller/LGMDMQuickCoverController$1;-><init>(Lcom/lge/mdm/controller/LGMDMQuickCoverController;)V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->mCoverCallback:Lcom/lge/systemservice/core/SmartCoverManager$CoverCallback;

    .line 36
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 37
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Lcom/lge/systemservice/core/LGContext;

    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    .line 40
    const-string/jumbo v1, "smartcover"

    .line 39
    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/SmartCoverManager;

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->mSmartCover:Lcom/lge/systemservice/core/SmartCoverManager;

    .line 41
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->mSmartCover:Lcom/lge/systemservice/core/SmartCoverManager;

    if-eqz v0, :cond_3b

    .line 42
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->mSmartCover:Lcom/lge/systemservice/core/SmartCoverManager;

    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->mCoverCallback:Lcom/lge/systemservice/core/SmartCoverManager$CoverCallback;

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/SmartCoverManager;->registerCallback(Lcom/lge/systemservice/core/ISmartCoverCallback;)Z

    .line 35
    :cond_3b
    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMQuickCoverController;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->sInstance:Lcom/lge/mdm/controller/LGMDMQuickCoverController;

    if-nez v0, :cond_b

    .line 48
    new-instance v0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMQuickCoverController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->sInstance:Lcom/lge/mdm/controller/LGMDMQuickCoverController;

    .line 50
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->sInstance:Lcom/lge/mdm/controller/LGMDMQuickCoverController;

    return-object v0
.end method


# virtual methods
.method protected changeQuickCircleSystemSetting(Z)I
    .registers 9
    .param p1, "on"    # Z

    .prologue
    const/4 v1, 0x1

    .line 129
    const-string/jumbo v4, "LGMDMQuickCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "changeQuickCircleSystemSetting : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x1

    .line 131
    .local v0, "backupSettingValue":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 133
    .local v2, "identity":J
    :try_start_20
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 134
    const-string/jumbo v5, "quick_view_enable"

    const/4 v6, 0x1

    .line 133
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 135
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 136
    const-string/jumbo v5, "quick_view_enable"

    if-eqz p1, :cond_40

    .line 135
    :goto_39
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3c
    .catchall {:try_start_20 .. :try_end_3c} :catchall_42

    .line 138
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    return v0

    .line 136
    :cond_40
    const/4 v1, 0x0

    goto :goto_39

    .line 137
    :catchall_42
    move-exception v1

    .line 138
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    throw v1
.end method

.method protected getAllowQuickCircle(Landroid/content/ComponentName;I)Z
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    const-string/jumbo v5, "LGMDMQuickCoverController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAllowQuickCircle ("

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

    .line 60
    if-eqz p1, :cond_3b

    .line 61
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 62
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_3a

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowQuickCircle:Z

    :cond_3a
    return v4

    .line 64
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_3b
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 65
    sget v6, Lcom/lge/internal/R$bool;->config_using_circle_cover:I

    .line 64
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_53

    .line 67
    const-string/jumbo v5, "LGMDMQuickCoverController"

    const-string/jumbo v6, "getAllowQuickCircle : device not support QuickCircle"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return v4

    .line 70
    :cond_53
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 71
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 72
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowQuickCircle:Z

    if-nez v5, :cond_5d

    .line 73
    const-string/jumbo v4, "LGMDMQuickCoverController"

    const-string/jumbo v5, "getAllowQuickCircle ret : disallow"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v4, 0x0

    return v4

    .line 77
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_78
    const-string/jumbo v5, "LGMDMQuickCoverController"

    const-string/jumbo v6, "getAllowQuickCircle ret : allow"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return v4
.end method

.method protected getQuickCircleSystemSetting()I
    .registers 7

    .prologue
    .line 116
    const-string/jumbo v1, "LGMDMQuickCoverController"

    const-string/jumbo v4, "getQuickCircleSystemSetting"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x1

    .line 118
    .local v0, "backupSettingValue":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 120
    .local v2, "identity":J
    :try_start_e
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 121
    const-string/jumbo v4, "quick_view_enable"

    const/4 v5, 0x1

    .line 120
    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_20

    move-result v0

    .line 123
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    return v0

    .line 122
    :catchall_20
    move-exception v1

    .line 123
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    throw v1
.end method

.method protected restoreQuickCircleSystemSetting(I)V
    .registers 7
    .param p1, "backupSettingValue"    # I

    .prologue
    .line 159
    const-string/jumbo v2, "LGMDMQuickCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreQuickCircleSystemSetting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 162
    .local v0, "identity":J
    const/4 v2, 0x1

    if-eq p1, v2, :cond_23

    if-nez p1, :cond_2f

    .line 163
    :cond_23
    :try_start_23
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 164
    const-string/jumbo v3, "quick_view_enable"

    .line 163
    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_33

    .line 167
    :cond_2f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 158
    return-void

    .line 166
    :catchall_33
    move-exception v2

    .line 167
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 166
    throw v2
.end method

.method protected setAllowQuickCircle(Landroid/content/ComponentName;ZI)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 82
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1, p3}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 85
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-nez v0, :cond_14

    .line 86
    const-string/jumbo v1, "LGMDMQuickCoverController"

    const-string/jumbo v2, "setAllowQuickCircle : admin is null"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return v3

    .line 90
    :cond_14
    if-nez p2, :cond_2e

    .line 91
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 92
    sget v2, Lcom/lge/internal/R$bool;->config_using_circle_cover:I

    .line 91
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 93
    const-string/jumbo v1, "LGMDMQuickCoverController"

    const-string/jumbo v2, "setAllowQuickCircle : device not support QuickCircle"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return v3

    .line 97
    :cond_2e
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowQuickCircle:Z

    if-ne v1, p2, :cond_3c

    .line 98
    const-string/jumbo v1, "LGMDMQuickCoverController"

    const-string/jumbo v2, "setAllowQuickCircle : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return v3

    .line 102
    :cond_3c
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowQuickCircle:Z

    .line 103
    if-nez p2, :cond_62

    .line 104
    invoke-virtual {p0}, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->getQuickCircleSystemSetting()I

    move-result v1

    iput v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateQuickCircle:I

    .line 111
    :cond_46
    :goto_46
    const-string/jumbo v1, "LGMDMQuickCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAllowQuickCircle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v1, 0x1

    return v1

    .line 107
    :cond_62
    invoke-virtual {p0, v4, p3}, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->getAllowQuickCircle(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 108
    iget v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateQuickCircle:I

    invoke-virtual {p0, v1}, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->restoreQuickCircleSystemSetting(I)V

    goto :goto_46
.end method

.method protected updateSmartCoverOpen()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 144
    const-string/jumbo v1, "LGMDMQuickCoverController"

    const-string/jumbo v2, "updateSmartCoverOpen: called enforceUpdateSmartCoverOpen()"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 146
    .local v0, "powerManager":Landroid/os/PowerManager;
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 147
    const-string/jumbo v1, "LGMDMQuickCoverController"

    const-string/jumbo v2, "Screen OFF."

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0, v3}, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->changeQuickCircleSystemSetting(Z)I

    .line 143
    :goto_29
    return-void

    .line 149
    :cond_2a
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->mSmartCover:Lcom/lge/systemservice/core/SmartCoverManager;

    if-eqz v1, :cond_41

    iget v1, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->mSmartCoverState:I

    if-eqz v1, :cond_41

    .line 150
    const-string/jumbo v1, "LGMDMQuickCoverController"

    const-string/jumbo v2, "Screen ON and Smart Cover is Closed."

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->mSmartCover:Lcom/lge/systemservice/core/SmartCoverManager;

    invoke-virtual {v1}, Lcom/lge/systemservice/core/SmartCoverManager;->enforceUpdateSmartCoverOpen()V

    goto :goto_29

    .line 153
    :cond_41
    const-string/jumbo v1, "LGMDMQuickCoverController"

    const-string/jumbo v2, "Screen ON and Smart Cover is Open."

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, v3}, Lcom/lge/mdm/controller/LGMDMQuickCoverController;->changeQuickCircleSystemSetting(Z)I

    goto :goto_29
.end method
