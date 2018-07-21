.class public Lcom/lge/mdm/controller/LGMDMDualWindowController;
.super Ljava/lang/Object;
.source "LGMDMDualWindowController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DualWindowController"

.field private static instance:Lcom/lge/mdm/controller/LGMDMDualWindowController;


# instance fields
.field mContext:Landroid/content/Context;

.field private final mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMDualWindowController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 31
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMDualWindowController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMDualWindowController;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMDualWindowController;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/lge/mdm/controller/LGMDMDualWindowController;->instance:Lcom/lge/mdm/controller/LGMDMDualWindowController;

    if-nez v0, :cond_b

    .line 36
    new-instance v0, Lcom/lge/mdm/controller/LGMDMDualWindowController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMDualWindowController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMDualWindowController;->instance:Lcom/lge/mdm/controller/LGMDMDualWindowController;

    .line 38
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMDualWindowController;->instance:Lcom/lge/mdm/controller/LGMDMDualWindowController;

    return-object v0
.end method


# virtual methods
.method protected getAllowDualWindow(Landroid/content/ComponentName;I)Z
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 113
    if-eqz p1, :cond_f

    .line 114
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMDualWindowController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 116
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDualWindow:Z

    :cond_e
    return v4

    .line 122
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMDualWindowController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, v6}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 123
    .local v3, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 124
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v1, :cond_19

    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDualWindow:Z

    if-nez v5, :cond_19

    .line 125
    return v6

    .line 130
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2c
    return v4
.end method

.method protected setAllowDualWindow(Landroid/content/ComponentName;ZI)V
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 42
    const/4 v4, 0x0

    .line 44
    .local v4, "isRunningDualwindow":Z
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMDualWindowController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v6, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 45
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDualWindow:Z

    if-ne v6, p2, :cond_15

    .line 46
    const-string/jumbo v6, "DualWindowController"

    const-string/jumbo v7, "setAllowDualWindow : same policy is called"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void

    .line 50
    :cond_15
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDualWindow:Z

    .line 52
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 54
    .local v2, "identity":J
    :try_start_1b
    iget-boolean v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDualWindow:Z

    if-nez v6, :cond_d0

    .line 57
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMDualWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "dual_window"

    const/4 v8, 0x0

    .line 56
    invoke-static {v6, v7, v8, p3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->prevStateDualWindow:I

    .line 58
    iget v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->prevStateDualWindow:I

    if-lez v6, :cond_40

    .line 59
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMDualWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "dual_window"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 63
    :cond_40
    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->USE_SPLITWINDOW:Z
    :try_end_42
    .catchall {:try_start_1b .. :try_end_42} :catchall_c1

    if-eqz v6, :cond_c6

    .line 66
    :try_start_44
    const-string/jumbo v6, "splitwindowpolicy"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService;

    move-result-object v5

    .line 67
    .local v5, "mSplitPolicy":Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService;
    if-eqz v5, :cond_b2

    .line 68
    invoke-interface {v5}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService;->isSplitMode()Z

    move-result v4

    .line 69
    .local v4, "isRunningDualwindow":Z
    invoke-interface {v5}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService;->isAppDrawerOpen()Z

    move-result v6

    or-int/2addr v4, v6

    .line 70
    const-string/jumbo v6, "DualWindowController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isSplitMode is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService;->isSplitMode()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v6, "DualWindowController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isAppDrawerOpen is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService;->isAppDrawerOpen()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_96} :catch_bc
    .catchall {:try_start_44 .. :try_end_96} :catchall_c1

    .line 79
    .end local v4    # "isRunningDualwindow":Z
    .end local v5    # "mSplitPolicy":Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService;
    :goto_96
    if-eqz v4, :cond_ae

    .line 82
    :try_start_98
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v6

    .line 83
    sget v7, Lcom/lge/internal/R$string;->sp_lgmdm_block_dualwindow_NORMAL:I

    .line 82
    invoke-virtual {v6, v7, p3}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    .line 86
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/lge/mdm/controller/LGMDMDualWindowController$1;

    invoke-direct {v7, p0}, Lcom/lge/mdm/controller/LGMDMDualWindowController$1;-><init>(Lcom/lge/mdm/controller/LGMDMDualWindowController;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V
    :try_end_ae
    .catchall {:try_start_98 .. :try_end_ae} :catchall_c1

    .line 107
    :cond_ae
    :goto_ae
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    return-void

    .line 73
    .local v4, "isRunningDualwindow":Z
    .restart local v5    # "mSplitPolicy":Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService;
    :cond_b2
    :try_start_b2
    const-string/jumbo v6, "DualWindowController"

    const-string/jumbo v7, "mSplitPolicy is null"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_bb} :catch_bc
    .catchall {:try_start_b2 .. :try_end_bb} :catchall_c1

    goto :goto_96

    .line 75
    .end local v4    # "isRunningDualwindow":Z
    .end local v5    # "mSplitPolicy":Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService;
    :catch_bc
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    :try_start_bd
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_c1

    goto :goto_96

    .line 106
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_c1
    move-exception v6

    .line 107
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    throw v6

    .line 94
    .restart local v4    # "isRunningDualwindow":Z
    :cond_c6
    :try_start_c6
    const-string/jumbo v6, "DualWindowController"

    const-string/jumbo v7, "CAPP_SPLITWINDOW build flag doesn\'t configured"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ae

    .line 98
    :cond_d0
    iget v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->prevStateDualWindow:I

    if-lez v6, :cond_ae

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p3}, Lcom/lge/mdm/controller/LGMDMDualWindowController;->getAllowDualWindow(Landroid/content/ComponentName;I)Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 99
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMDualWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "dual_window"

    .line 100
    iget v8, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->prevStateDualWindow:I

    .line 99
    invoke-static {v6, v7, v8, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 103
    const/4 v6, 0x0

    iput v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->prevStateDualWindow:I
    :try_end_ec
    .catchall {:try_start_c6 .. :try_end_ec} :catchall_c1

    goto :goto_ae
.end method
