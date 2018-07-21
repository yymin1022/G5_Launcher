.class public Lcom/lge/mdm/controller/LGMDMShortcutKeyController;
.super Ljava/lang/Object;
.source "LGMDMShortcutKeyController.java"


# static fields
.field private static final SHORTCUT_KEY_NO_CHANGED:I = -0x1

.field private static final SHORTCUT_KEY_OFF:I = 0x0

.field private static final SHORTCUT_KEY_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ShortcutKeyController"

.field private static instance:Lcom/lge/mdm/controller/LGMDMShortcutKeyController;


# instance fields
.field mContext:Landroid/content/Context;

.field private final mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMShortcutKeyController;->instance:Lcom/lge/mdm/controller/LGMDMShortcutKeyController;

    .line 18
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMShortcutKeyController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 26
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMShortcutKeyController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMShortcutKeyController;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private checkShortcutKeyValueAtSystem(Landroid/content/ComponentName;I)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 68
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lcom/lge/mdm/controller/LGMDMShortcutKeyController;->getAllowShortcutKeyPolicy(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 69
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMShortcutKeyController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 70
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateShortcutKey:Z

    if-eqz v1, :cond_16

    .line 71
    iput-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateShortcutKey:Z

    .line 72
    const/4 v1, 0x1

    return v1

    .line 74
    :cond_16
    const/4 v1, -0x1

    return v1

    .line 76
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_18
    return v2
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMShortcutKeyController;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/lge/mdm/controller/LGMDMShortcutKeyController;->instance:Lcom/lge/mdm/controller/LGMDMShortcutKeyController;

    if-nez v0, :cond_b

    .line 31
    new-instance v0, Lcom/lge/mdm/controller/LGMDMShortcutKeyController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMShortcutKeyController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMShortcutKeyController;->instance:Lcom/lge/mdm/controller/LGMDMShortcutKeyController;

    .line 34
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMShortcutKeyController;->instance:Lcom/lge/mdm/controller/LGMDMShortcutKeyController;

    return-object v0
.end method

.method private isListEmpty(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TI;>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TI;>;"
    const/4 v1, 0x1

    .line 167
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_a

    .line 168
    :cond_9
    return v1

    .line 171
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private readShortcutKeyValueAtSystem()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 85
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 86
    .local v2, "identity":J
    const/4 v4, 0x0

    .line 89
    .local v4, "value":I
    :try_start_6
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMShortcutKeyController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 92
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v6, "shortcut_key_status"

    .line 90
    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_12} :catch_19
    .catchall {:try_start_6 .. :try_end_12} :catchall_27

    move-result v4

    .line 96
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :goto_16
    if-nez v4, :cond_2c

    :goto_18
    return v5

    .line 93
    :catch_19
    move-exception v1

    .line 94
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    :try_start_1a
    const-string/jumbo v6, "ShortcutKeyController"

    const-string/jumbo v7, "catch Exception !!"

    invoke-static {v6, v7, v1}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_27

    .line 96
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_16

    .line 95
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catchall_27
    move-exception v5

    .line 96
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    throw v5

    .line 99
    :cond_2c
    const/4 v5, 0x1

    goto :goto_18
.end method

.method private writeShortcutKeyValueAtSystem(Z)V
    .registers 7
    .param p1, "value"    # Z

    .prologue
    .line 127
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 130
    .local v2, "identity":J
    :try_start_4
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMShortcutKeyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 133
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v4, "shortcut_key_status"

    .line 134
    if-eqz p1, :cond_17

    const/4 v1, 0x1

    .line 131
    :goto_10
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_19

    .line 136
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    return-void

    .line 134
    :cond_17
    const/4 v1, 0x0

    goto :goto_10

    .line 135
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :catchall_19
    move-exception v1

    .line 136
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    throw v1
.end method


# virtual methods
.method public getAllowShortcutKeyPolicy(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 146
    if-eqz p1, :cond_e

    .line 147
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMShortcutKeyController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 148
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_d

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowShortcutKey:Z

    :cond_d
    return v4

    .line 151
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_e
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMShortcutKeyController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 153
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-direct {p0, v3}, Lcom/lge/mdm/controller/LGMDMShortcutKeyController;->isListEmpty(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 154
    return v4

    .line 157
    :cond_1b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 158
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowShortcutKey:Z

    if-nez v5, :cond_1f

    .line 159
    const/4 v4, 0x0

    return v4

    .line 163
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_31
    return v4
.end method

.method public setAllowShortcutKeyPolicy(Landroid/content/ComponentName;ZI)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 48
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMShortcutKeyController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 50
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowShortcutKey:Z

    if-ne v1, p2, :cond_c

    .line 51
    const/4 v1, -0x1

    return v1

    .line 54
    :cond_c
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowShortcutKey:Z

    .line 56
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowShortcutKey:Z

    if-nez v1, :cond_18

    .line 57
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMShortcutKeyController;->readShortcutKeyValueAtSystem()Z

    move-result v1

    iput-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateShortcutKey:Z

    .line 60
    :cond_18
    invoke-direct {p0, p1, p3}, Lcom/lge/mdm/controller/LGMDMShortcutKeyController;->checkShortcutKeyValueAtSystem(Landroid/content/ComponentName;I)I

    move-result v1

    return v1
.end method

.method protected setShortcutKeyValueAtSystem(I)V
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 106
    packed-switch p1, :pswitch_data_2a

    .line 117
    const-string/jumbo v0, "ShortcutKeyController"

    const-string/jumbo v1, "[SHORTCUT_KEY_NO_CHANGED]"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_c
    return-void

    .line 108
    :pswitch_d
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMShortcutKeyController;->writeShortcutKeyValueAtSystem(Z)V

    .line 109
    const-string/jumbo v0, "ShortcutKeyController"

    const-string/jumbo v1, "[SHORTCUT_KEY_ON]"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 112
    :pswitch_1b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMShortcutKeyController;->writeShortcutKeyValueAtSystem(Z)V

    .line 113
    const-string/jumbo v0, "ShortcutKeyController"

    const-string/jumbo v1, "[SHORTCUT_KEY_OFF]"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 106
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_d
    .end packed-switch
.end method
