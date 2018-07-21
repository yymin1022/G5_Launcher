.class public Lcom/lge/mdm/controller/LGMDMAirplaneModeController;
.super Ljava/lang/Object;
.source "LGMDMAirplaneModeController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LGMDMAirplaneModeController"

.field private static sInstance:Lcom/lge/mdm/controller/LGMDMAirplaneModeController;


# instance fields
.field mContext:Landroid/content/Context;

.field private mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->sInstance:Lcom/lge/mdm/controller/LGMDMAirplaneModeController;

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 26
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 27
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private getAvailableTurnOnAirplaneMode()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 123
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->mContext:Landroid/content/Context;

    .line 124
    const-string/jumbo v3, "phone"

    .line 123
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 126
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_15

    .line 127
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_15

    .line 128
    return v4

    .line 132
    :cond_15
    const-string/jumbo v2, "ril.cdma.inecmmode"

    const-string/jumbo v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "inEcm":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 134
    return v4

    .line 136
    :cond_29
    const/4 v2, 0x1

    return v2
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMAirplaneModeController;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->sInstance:Lcom/lge/mdm/controller/LGMDMAirplaneModeController;

    if-nez v0, :cond_b

    .line 32
    new-instance v0, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->sInstance:Lcom/lge/mdm/controller/LGMDMAirplaneModeController;

    .line 34
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->sInstance:Lcom/lge/mdm/controller/LGMDMAirplaneModeController;

    return-object v0
.end method

.method private isAirplaneModeOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 165
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 166
    const-string/jumbo v2, "airplane_mode_on"

    .line 165
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method


# virtual methods
.method protected changeAirplaneMode(ZI)V
    .registers 5
    .param p1, "allowAirplaneMode"    # Z
    .param p2, "airplane_mode"    # I

    .prologue
    .line 105
    packed-switch p2, :pswitch_data_1a

    .line 118
    return-void

    .line 107
    :pswitch_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->changeAirplaneModeSystemSetting(Z)V

    .line 104
    :goto_8
    return-void

    .line 110
    :pswitch_9
    if-eqz p1, :cond_10

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->changeAirplaneModeSystemSetting(Z)V

    goto :goto_8

    .line 113
    :cond_10
    const-string/jumbo v0, "LGMDMAirplaneModeController"

    const-string/jumbo v1, "Do not enforce airplane mode by disallow airplane mode !!"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 105
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_4
        :pswitch_9
    .end packed-switch
.end method

.method protected changeAirplaneModeSystemSetting(Z)V
    .registers 9
    .param p1, "on"    # Z

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->isAirplaneModeOn()Z

    move-result v3

    .line 141
    .local v3, "isAirplaneMode":Z
    if-eqz v3, :cond_12

    if-eqz p1, :cond_12

    .line 142
    const-string/jumbo v4, "LGMDMAirplaneModeController"

    const-string/jumbo v5, "changeAirplaneModeSystemSetting, already airplane mode"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void

    .line 145
    :cond_12
    if-nez v3, :cond_20

    if-nez p1, :cond_20

    .line 146
    const-string/jumbo v4, "LGMDMAirplaneModeController"

    const-string/jumbo v5, "changeAirplaneModeSystemSetting, already not airplane mode"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void

    .line 149
    :cond_20
    if-eqz p1, :cond_28

    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->getAvailableTurnOnAirplaneMode()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 150
    :cond_28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 152
    .local v0, "identity":J
    :try_start_2c
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 153
    const-string/jumbo v6, "airplane_mode_on"

    if-eqz p1, :cond_59

    const/4 v4, 0x1

    .line 152
    :goto_38
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3b
    .catchall {:try_start_2c .. :try_end_3b} :catchall_5b

    .line 155
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 157
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 159
    const-string/jumbo v4, "state"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    .end local v0    # "identity":J
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_58
    return-void

    .line 153
    .restart local v0    # "identity":J
    :cond_59
    const/4 v4, 0x0

    goto :goto_38

    .line 154
    :catchall_5b
    move-exception v4

    .line 155
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 154
    throw v4
.end method

.method protected changeAirplaneModeSystemSetting(ZZ)V
    .registers 3
    .param p1, "allow"    # Z
    .param p2, "enforce"    # Z

    .prologue
    .line 173
    if-nez p1, :cond_6

    .line 175
    invoke-virtual {p0, p1}, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->changeAirplaneModeSystemSetting(Z)V

    .line 172
    :goto_5
    return-void

    .line 178
    :cond_6
    invoke-virtual {p0, p2}, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->changeAirplaneModeSystemSetting(Z)V

    goto :goto_5
.end method

.method protected getAllowAirplaneModeOn(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 43
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 44
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAirplaneMode:Z

    :cond_e
    return v4

    .line 47
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 48
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

    .line 49
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAirplaneMode:Z

    if-nez v5, :cond_19

    .line 50
    const/4 v4, 0x0

    return v4

    .line 53
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getEnforceAirplaneMode(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 71
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 72
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceAirplaneMode:Z

    :cond_e
    return v4

    .line 74
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 75
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

    .line 76
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceAirplaneMode:Z

    if-eqz v5, :cond_19

    .line 77
    const/4 v4, 0x1

    return v4

    .line 80
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected restoreEnforceAirplaneMode(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-virtual {p0, v2, p1}, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->getEnforceAirplaneMode(Landroid/content/ComponentName;I)Z

    move-result v1

    .line 187
    .local v1, "enforceAirplaneMode":Z
    if-eqz v1, :cond_f

    .line 188
    invoke-virtual {p0, v2, p1}, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->getAllowAirplaneModeOn(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 189
    .local v0, "allowAirplaneMode":Z
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->changeAirplaneMode(ZI)V

    .line 185
    .end local v0    # "allowAirplaneMode":Z
    :cond_f
    return-void
.end method

.method protected setAllowAirplaneModeOn(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 57
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 58
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_a

    .line 59
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAirplaneMode:Z

    .line 61
    :cond_a
    const-string/jumbo v1, "LGMDMAirplaneModeController"

    const-string/jumbo v2, "setAllowAirplaneModeOn airplane mode controll"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method protected setEnforceAirplaneMode(Lcom/lge/mdm/admin/LGMDMadminlist;ZI)I
    .registers 9
    .param p1, "admin"    # Lcom/lge/mdm/admin/LGMDMadminlist;
    .param p2, "enforce"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 84
    const/4 v0, -0x1

    .line 85
    .local v0, "airplane_mode":I
    iget-boolean v2, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceAirplaneMode:Z

    if-ne v2, p2, :cond_20

    .line 86
    const-string/jumbo v2, "LGMDMAirplaneModeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEnforceAirplaneMode : same policy is called, enforce :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return v0

    .line 89
    :cond_20
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->isAirplaneModeOn()Z

    move-result v1

    .line 90
    .local v1, "isAirplaneMode":Z
    iput-boolean p2, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceAirplaneMode:Z

    .line 91
    iget-boolean v2, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceAirplaneMode:Z

    if-eqz v2, :cond_30

    .line 92
    iput-boolean v1, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->prestateAirplaneMode:Z

    .line 93
    if-nez v1, :cond_2f

    .line 94
    const/4 v0, 0x1

    .line 101
    :cond_2f
    :goto_2f
    return v0

    .line 97
    :cond_30
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p3}, Lcom/lge/mdm/controller/LGMDMAirplaneModeController;->getEnforceAirplaneMode(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 98
    iget-boolean v2, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->prestateAirplaneMode:Z

    if-eqz v2, :cond_3d

    const/4 v0, 0x1

    goto :goto_2f

    :cond_3d
    const/4 v0, 0x0

    goto :goto_2f
.end method
