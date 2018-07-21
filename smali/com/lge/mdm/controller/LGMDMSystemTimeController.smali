.class public Lcom/lge/mdm/controller/LGMDMSystemTimeController;
.super Ljava/lang/Object;
.source "LGMDMSystemTimeController.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static instance:Lcom/lge/mdm/controller/LGMDMSystemTimeController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->instance:Lcom/lge/mdm/controller/LGMDMSystemTimeController;

    .line 17
    const-string/jumbo v0, "LGMDMSystemTimeController"

    sput-object v0, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->TAG:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 21
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMSystemTimeController;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->instance:Lcom/lge/mdm/controller/LGMDMSystemTimeController;

    if-nez v0, :cond_b

    .line 26
    new-instance v0, Lcom/lge/mdm/controller/LGMDMSystemTimeController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMSystemTimeController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->instance:Lcom/lge/mdm/controller/LGMDMSystemTimeController;

    .line 28
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->instance:Lcom/lge/mdm/controller/LGMDMSystemTimeController;

    return-object v0
.end method


# virtual methods
.method protected changeDateAndTime(II)V
    .registers 7
    .param p1, "status"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 78
    const/4 v2, -0x1

    if-ne p1, v2, :cond_4

    .line 79
    return-void

    .line 81
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 84
    .local v0, "identity":J
    :try_start_8
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "auto_time"

    .line 83
    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_20

    .line 86
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    sget-object v2, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "system date and time are changed by mdm"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void

    .line 85
    :catchall_20
    move-exception v2

    .line 86
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    throw v2
.end method

.method protected changeTimezone(II)V
    .registers 7
    .param p1, "status"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 138
    const/4 v2, -0x1

    if-ne p1, v2, :cond_4

    .line 139
    return-void

    .line 141
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 144
    .local v0, "identity":J
    :try_start_8
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "auto_time_zone"

    .line 143
    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_20

    .line 146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 148
    sget-object v2, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "system timezone is changed by mdm"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void

    .line 145
    :catchall_20
    move-exception v2

    .line 146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 145
    throw v2
.end method

.method protected checkChangeDateAndTime(Landroid/content/ComponentName;I)I
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->getAllowChangeDateAndTime(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 65
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 66
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateChangeDateAndTime:Z

    if-eqz v1, :cond_16

    .line 67
    iput-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateChangeDateAndTime:Z

    .line 68
    return v2

    .line 70
    :cond_16
    return v3

    .line 73
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_17
    return v3
.end method

.method protected checkChangeTimezone(Landroid/content/ComponentName;I)I
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->getAllowChangeTimezone(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 125
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 126
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateChangeTimezone:Z

    if-eqz v1, :cond_16

    .line 127
    iput-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateChangeTimezone:Z

    .line 128
    return v2

    .line 130
    :cond_16
    return v3

    .line 133
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_17
    return v3
.end method

.method protected getAllowChangeDateAndTime(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 50
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 51
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowChangeDateAndTime:Z

    :cond_e
    return v4

    .line 54
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 55
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

    .line 56
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowChangeDateAndTime:Z

    if-nez v5, :cond_19

    .line 57
    const/4 v4, 0x0

    return v4

    .line 60
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowChangeTimezone(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 94
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 95
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowChangeTimezone:Z

    :cond_e
    return v4

    .line 98
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 99
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

    .line 100
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowChangeTimezone:Z

    if-nez v5, :cond_19

    .line 101
    const/4 v4, 0x0

    return v4

    .line 104
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected setAllowChangeDateAndTime(Landroid/content/ComponentName;ZI)I
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 32
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 33
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowChangeDateAndTime:Z

    if-ne v2, p2, :cond_15

    .line 34
    sget-object v1, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "allowChangeDateAndTime : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v1, -0x1

    return v1

    .line 38
    :cond_15
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowChangeDateAndTime:Z

    .line 40
    iget-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowChangeDateAndTime:Z

    if-nez v2, :cond_2c

    .line 41
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 42
    const-string/jumbo v3, "auto_time"

    .line 41
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_31

    :goto_2a
    iput-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateChangeDateAndTime:Z

    .line 44
    :cond_2c
    invoke-virtual {p0, p1, p3}, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->checkChangeDateAndTime(Landroid/content/ComponentName;I)I

    move-result v1

    return v1

    .line 42
    :cond_31
    const/4 v1, 0x1

    goto :goto_2a
.end method

.method protected setAllowChangeTimezone(Landroid/content/ComponentName;ZI)I
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 109
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowChangeTimezone:Z

    if-ne v2, p2, :cond_15

    .line 110
    sget-object v1, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "allowChangeTimezone : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v1, -0x1

    return v1

    .line 114
    :cond_15
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowChangeTimezone:Z

    .line 116
    iget-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowChangeTimezone:Z

    if-nez v2, :cond_2c

    .line 117
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 118
    const-string/jumbo v3, "auto_time_zone"

    .line 117
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_31

    :goto_2a
    iput-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateChangeTimezone:Z

    .line 120
    :cond_2c
    invoke-virtual {p0, p1, p3}, Lcom/lge/mdm/controller/LGMDMSystemTimeController;->checkChangeTimezone(Landroid/content/ComponentName;I)I

    move-result v1

    return v1

    .line 118
    :cond_31
    const/4 v1, 0x1

    goto :goto_2a
.end method
