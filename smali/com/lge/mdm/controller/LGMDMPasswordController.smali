.class public Lcom/lge/mdm/controller/LGMDMPasswordController;
.super Ljava/lang/Object;
.source "LGMDMPasswordController.java"


# static fields
.field public static final ACTION_EXPIRED_PASSWORD_NOTIFICATION:Ljava/lang/String; = "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

.field public static final DEF_PASSWORD_EXPIRATION_DATE:J = 0x0L

.field static final MAX_LOCKOUT_DESCRIPT_LENGTH:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "PasswordController"

.field private static instance:Lcom/lge/mdm/controller/LGMDMPasswordController;

.field static mActiveEnforcePasswordChange:Z

.field private static mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# instance fields
.field mActiveAllowSimplePassword:Z

.field mActiveMinimumPasswordComplextChars:I

.field mContext:Landroid/content/Context;

.field private final mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMPasswordController;->instance:Lcom/lge/mdm/controller/LGMDMPasswordController;

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mActiveEnforcePasswordChange:Z

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mActiveMinimumPasswordComplextChars:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mActiveAllowSimplePassword:Z

    .line 48
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 49
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 47
    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMPasswordController;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/lge/mdm/controller/LGMDMPasswordController;->instance:Lcom/lge/mdm/controller/LGMDMPasswordController;

    if-nez v0, :cond_b

    .line 59
    new-instance v0, Lcom/lge/mdm/controller/LGMDMPasswordController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMPasswordController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMPasswordController;->instance:Lcom/lge/mdm/controller/LGMDMPasswordController;

    .line 62
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMPasswordController;->instance:Lcom/lge/mdm/controller/LGMDMPasswordController;

    return-object v0
.end method

.method private getRecoveryPassword(I)Lcom/lge/mdm/util/keystore/RecoveryPassword;
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 54
    new-instance v0, Lcom/lge/mdm/util/keystore/RecoveryPassword;

    invoke-direct {v0, p1}, Lcom/lge/mdm/util/keystore/RecoveryPassword;-><init>(I)V

    return-object v0
.end method

.method private setLockoutNow(Landroid/content/ComponentName;ILjava/lang/String;I)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "level"    # I
    .param p3, "str"    # Ljava/lang/String;
    .param p4, "userHandle"    # I

    .prologue
    const/16 v3, 0x1f4

    const/4 v2, 0x1

    .line 328
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 330
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-ge p2, v2, :cond_3a

    .line 331
    const/4 p2, 0x1

    .line 336
    :cond_e
    :goto_e
    iput p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->lockoutNowLevel:I

    .line 338
    if-eqz p3, :cond_1d

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1d

    .line 339
    const/4 v1, 0x0

    invoke-virtual {p3, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 342
    :cond_1d
    if-eqz p3, :cond_28

    const-string/jumbo v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 343
    :cond_28
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mContext:Landroid/content/Context;

    .line 344
    sget v2, Lcom/lge/internal/R$string;->sp_lgmdm_lockout_NORMAL:I

    .line 343
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->strLockoutDeScript:Ljava/lang/String;

    .line 349
    :goto_32
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v1

    invoke-virtual {v1, p1, p4}, Lcom/lge/mdm/admin/LGMDMadministrator;->addLockoutDescriptComponentList(Landroid/content/ComponentName;I)V

    .line 327
    return-void

    .line 332
    :cond_3a
    if-le p2, v2, :cond_e

    .line 333
    const/4 p2, 0x1

    goto :goto_e

    .line 346
    :cond_3e
    iput-object p3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->strLockoutDeScript:Ljava/lang/String;

    goto :goto_32
.end method


# virtual methods
.method public checkLockoutRecoveryKey(Ljava/lang/String;I)Z
    .registers 15
    .param p1, "recoveryKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v11, 0x0

    .line 421
    const/4 v10, 0x0

    invoke-virtual {p0, v10, p2}, Lcom/lge/mdm/controller/LGMDMPasswordController;->getLockoutNow(Landroid/content/ComponentName;I)Z

    move-result v10

    if-nez v10, :cond_9

    .line 422
    return v11

    .line 425
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 426
    .local v6, "identity":J
    new-instance v9, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 427
    .local v9, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v9, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    .line 428
    .local v4, "hashRecoveryLockout":[B
    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    .line 429
    .local v3, "checkPwd":Ljava/lang/String;
    const/4 v2, 0x0

    .line 430
    .local v2, "bRet":Z
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 432
    iget-object v10, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v10, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v8

    .line 433
    .local v8, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admins$iterator":Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 434
    .local v0, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-object v10, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->hashRecoveryLockout:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 435
    const/4 v2, 0x1

    .line 439
    .end local v0    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_3f
    if-eqz v2, :cond_87

    .line 440
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v10, "com.lge.mdm.intent.action.LOCKOUT_RECOVERY"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v5, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 442
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_54
    :goto_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 443
    .restart local v0    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v10, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->lockoutNowLevel:I

    if-eqz v10, :cond_54

    .line 444
    iput v11, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->lockoutNowLevel:I

    .line 445
    const-string/jumbo v10, ""

    iput-object v10, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->strLockoutDeScript:Ljava/lang/String;

    .line 446
    const-string/jumbo v10, ""

    iput-object v10, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->hashRecoveryLockout:Ljava/lang/String;

    goto :goto_54

    .line 449
    .end local v0    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_71
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v10

    invoke-virtual {v10, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->clearLockoutDescriptComponentList(I)V

    .line 451
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    const-string/jumbo v10, "com.lge.mdm.intent.action.LGMDM_LOCK_OUT"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 452
    .restart local v5    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 454
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_87
    return v2
.end method

.method protected checkPasswordRecovery(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 417
    invoke-direct {p0, p2}, Lcom/lge/mdm/controller/LGMDMPasswordController;->getRecoveryPassword(I)Lcom/lge/mdm/util/keystore/RecoveryPassword;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/mdm/util/keystore/RecoveryPassword;->checkPasswordRecovery(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllowMaximumRepeatedPassword(Landroid/content/ComponentName;I)I
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 84
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v6, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 85
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMaximumRepeatedPassword:I

    :cond_e
    return v5

    .line 88
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    const/4 v4, 0x0

    .line 89
    .local v4, "policy":I
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v6, v5}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 90
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 91
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-nez v4, :cond_30

    .line 92
    iget v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMaximumRepeatedPassword:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_1a

    .line 93
    iget v4, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMaximumRepeatedPassword:I

    goto :goto_1a

    .line 95
    :cond_30
    iget v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMaximumRepeatedPassword:I

    if-ge v5, v4, :cond_1a

    .line 96
    iget v4, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMaximumRepeatedPassword:I

    goto :goto_1a

    .line 99
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_37
    return v4
.end method

.method public getAllowMaximumSequentialPassword(Landroid/content/ComponentName;I)I
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 105
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v6, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 106
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMaximumSequentialPassword:I

    :cond_e
    return v5

    .line 108
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    const/4 v4, 0x0

    .line 109
    .local v4, "policy":I
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v6, v5}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 110
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 111
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-nez v4, :cond_30

    .line 112
    iget v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMaximumSequentialPassword:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_1a

    .line 113
    iget v4, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMaximumSequentialPassword:I

    goto :goto_1a

    .line 115
    :cond_30
    iget v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMaximumSequentialPassword:I

    if-ge v5, v4, :cond_1a

    .line 116
    iget v4, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMaximumSequentialPassword:I

    goto :goto_1a

    .line 119
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_37
    return v4
.end method

.method protected getAllowPasswordComplexForEAS(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 152
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 153
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPasswordComplexForEAS:Z

    :cond_e
    return v4

    .line 155
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 156
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

    .line 157
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPasswordComplexForEAS:Z

    if-eqz v5, :cond_19

    .line 158
    const/4 v4, 0x1

    return v4

    .line 161
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowSimplePasswordEx(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_10

    .line 68
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 69
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSimplePassword:I

    :goto_d
    return v5

    :cond_e
    const/4 v5, 0x0

    goto :goto_d

    .line 71
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_10
    const/4 v4, 0x0

    .line 72
    .local v4, "policy":I
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 73
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

    .line 74
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSimplePassword:I

    if-le v5, v4, :cond_1b

    .line 75
    iget v4, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSimplePassword:I

    goto :goto_1b

    .line 78
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2e
    return v4
.end method

.method protected getEnforcePasswordChange(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 251
    const-string/jumbo v0, "PasswordController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gEPC mActiveEnforcePasswordChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/mdm/controller/LGMDMPasswordController;->mActiveEnforcePasswordChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-boolean v0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mActiveEnforcePasswordChange:Z

    return v0
.end method

.method protected getLockoutDescript(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 298
    const/4 v1, 0x0

    .line 299
    .local v1, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_1a

    .line 300
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v1

    .line 301
    .local v1, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v1, :cond_11

    iget-object v3, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->strLockoutDeScript:Ljava/lang/String;

    :goto_10
    return-object v3

    :cond_11
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mContext:Landroid/content/Context;

    .line 302
    sget v4, Lcom/lge/internal/R$string;->sp_lgmdm_lockout_NORMAL:I

    .line 301
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    .line 304
    .local v1, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_1a
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLastLockoutDescriptCompnentName(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 306
    .local v0, "CptName":Landroid/content/ComponentName;
    if-nez v0, :cond_25

    .line 307
    return-object v4

    .line 310
    :cond_25
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v1

    .line 311
    .local v1, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-nez v1, :cond_38

    .line 312
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mContext:Landroid/content/Context;

    sget v4, Lcom/lge/internal/R$string;->sp_lgmdm_lockout_NORMAL:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 315
    :cond_38
    iget-object v2, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->strLockoutDeScript:Ljava/lang/String;

    .line 317
    .local v2, "strLockoutDeScript":Ljava/lang/String;
    return-object v2
.end method

.method protected getLockoutLevel(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_10

    .line 286
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 287
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->lockoutNowLevel:I

    :goto_d
    return v5

    :cond_e
    const/4 v5, 0x0

    goto :goto_d

    .line 289
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_10
    const/4 v4, 0x0

    .line 290
    .local v4, "nLockoutLevel":I
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 291
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 292
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->lockoutNowLevel:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_1b

    .line 294
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2e
    return v4
.end method

.method protected getLockoutNow(Landroid/content/ComponentName;I)Z
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 321
    invoke-virtual {p0, p1, p2}, Lcom/lge/mdm/controller/LGMDMPasswordController;->getLockoutLevel(Landroid/content/ComponentName;I)I

    move-result v0

    if-nez v0, :cond_8

    .line 322
    return v1

    .line 324
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method protected getPasswordMinimumChange(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    const/4 v4, 0x0

    .line 190
    .local v4, "minimumChange":I
    if-eqz p1, :cond_11

    .line 191
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 192
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_f

    iget v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->minimumPasswordChange:I

    :goto_e
    return v5

    .line 189
    :cond_f
    const/4 v5, 0x0

    .line 192
    goto :goto_e

    .line 194
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_11
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 195
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

    .line 196
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->minimumPasswordChange:I

    if-ge v4, v5, :cond_1b

    .line 197
    iget v4, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->minimumPasswordChange:I

    goto :goto_1b

    .line 200
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2e
    return v4
.end method

.method protected getPasswordRecoveryEnabled(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 206
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 207
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->passwordRecoveryEnabled:Z

    :cond_e
    return v4

    .line 209
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, v4, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminListsForUserApp(ZI)Ljava/util/ArrayList;

    move-result-object v3

    .line 211
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

    .line 212
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->passwordRecoveryEnabled:Z

    if-eqz v5, :cond_19

    .line 213
    const/4 v4, 0x1

    return v4

    .line 216
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected handlePasswordExpirationNotification(I)V
    .registers 9
    .param p1, "userHandle"    # I

    .prologue
    .line 459
    invoke-static {}, Lcom/lge/mdm/util/LGMDMPasswordInfo;->getInstance()Lcom/lge/mdm/util/LGMDMPasswordInfo;

    move-result-object v4

    .line 460
    sget-object v5, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 459
    invoke-virtual {v4, v5, p1}, Lcom/lge/mdm/util/LGMDMPasswordInfo;->getPasswordLeftDaysToExpire(Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result v1

    .line 461
    .local v1, "expireDay":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 462
    .local v0, "currentUserId":I
    const-string/jumbo v4, "MDM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pw expired cId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", uId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 463
    const-string/jumbo v6, ", day : "

    .line 462
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    if-gtz v1, :cond_5d

    .line 465
    if-ne v0, p1, :cond_4e

    .line 466
    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/lge/mdm/controller/LGMDMPasswordController;->getLockoutNow(Landroid/content/ComponentName;I)Z

    move-result v3

    .line 467
    .local v3, "lockoutNow":Z
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lcom/lge/mdm/controller/LGMDMHandler;->showPasswordDialog(IZ)V

    .line 469
    .end local v3    # "lockoutNow":Z
    :cond_4e
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.lge.android.intent.action.FLOATING_WINDOW_CLOSE_REQUESTED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 458
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5d
    return-void
.end method

.method public setAllowMaximumRepeatedPassword(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "max"    # I
    .param p3, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1, v2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLockedForNativePolicy(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 134
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-ltz p2, :cond_f

    .line 135
    const/16 v1, 0x10

    if-gt p2, v1, :cond_f

    .line 136
    iput p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMaximumRepeatedPassword:I

    .line 131
    :cond_f
    return-void
.end method

.method public setAllowMaximumSequentialPassword(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "max"    # I
    .param p3, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 141
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1, v2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLockedForNativePolicy(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 143
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-ltz p2, :cond_f

    .line 144
    const/16 v1, 0x10

    if-gt p2, v1, :cond_f

    .line 145
    iput p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMaximumSequentialPassword:I

    .line 140
    :cond_f
    return-void
.end method

.method protected setAllowPasswordComplexForEAS(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 165
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 166
    const/4 v2, 0x0

    .line 165
    invoke-virtual {v1, p1, v2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLockedForNativePolicy(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 167
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPasswordComplexForEAS:Z

    .line 164
    return-void
.end method

.method protected setAllowSimplePasswordEx(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I
    .param p3, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1, v2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLockedForNativePolicy(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 125
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-ltz p2, :cond_e

    .line 126
    const/4 v1, 0x2

    if-gt p2, v1, :cond_e

    .line 127
    iput p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSimplePassword:I

    .line 122
    :cond_e
    return-void
.end method

.method protected setEnforcePasswordChange(ZI)V
    .registers 7
    .param p1, "enforcePassword"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 256
    sput-boolean p1, Lcom/lge/mdm/controller/LGMDMPasswordController;->mActiveEnforcePasswordChange:Z

    .line 257
    const-string/jumbo v1, "PasswordController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sEPC mActiveEnforcePasswordChange"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/lge/mdm/controller/LGMDMPasswordController;->mActiveEnforcePasswordChange:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    sget-boolean v1, Lcom/lge/mdm/controller/LGMDMPasswordController;->mActiveEnforcePasswordChange:Z

    if-eqz v1, :cond_3e

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "minimum_quality"

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 270
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/lge/mdm/controller/LGMDMHandler;->startActivity(Landroid/content/Intent;I)V

    .line 255
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3e
    return-void
.end method

.method protected setEnforceRecoveryPassword(Ljava/lang/String;I)V
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 413
    invoke-direct {p0, p2}, Lcom/lge/mdm/controller/LGMDMPasswordController;->getRecoveryPassword(I)Lcom/lge/mdm/util/keystore/RecoveryPassword;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/mdm/util/keystore/RecoveryPassword;->setEnforceRecoveryPassword(Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method protected setLockoutNow(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;I)Z
    .registers 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "level"    # I
    .param p3, "str"    # Ljava/lang/String;
    .param p4, "recoveryKey"    # Ljava/lang/String;
    .param p5, "userHandle"    # I

    .prologue
    const/16 v9, 0x1f4

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 353
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 354
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-nez p4, :cond_12

    .line 355
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/lge/mdm/controller/LGMDMPasswordController;->setLockoutNow(Landroid/content/ComponentName;ILjava/lang/String;I)V

    .line 356
    return v7

    .line 359
    :cond_12
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x10

    if-ne v3, v6, :cond_7f

    const-string/jumbo v3, "^[0-9*#]*$"

    invoke-virtual {p4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 360
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 361
    .local v4, "ident":J
    const/4 v2, 0x0

    .line 363
    .local v2, "hashRecoveryLockout":[B
    :try_start_28
    sget-object v3, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p4, p5}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_65
    .catchall {:try_start_28 .. :try_end_2d} :catchall_73

    move-result-object v2

    .line 368
    .local v2, "hashRecoveryLockout":[B
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 371
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->hashRecoveryLockout:Ljava/lang/String;

    .line 373
    if-ge p2, v7, :cond_78

    .line 374
    const/4 p2, 0x1

    .line 379
    :cond_3a
    :goto_3a
    iput p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->lockoutNowLevel:I

    .line 381
    if-eqz p3, :cond_48

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_48

    .line 382
    invoke-virtual {p3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 385
    :cond_48
    if-eqz p3, :cond_53

    const-string/jumbo v3, ""

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 386
    :cond_53
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mContext:Landroid/content/Context;

    .line 387
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_lockout_NORMAL:I

    .line 386
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->strLockoutDeScript:Ljava/lang/String;

    .line 392
    :goto_5d
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v3

    invoke-virtual {v3, p1, p5}, Lcom/lge/mdm/admin/LGMDMadministrator;->addLockoutDescriptComponentList(Landroid/content/ComponentName;I)V

    .line 393
    return v7

    .line 364
    .local v2, "hashRecoveryLockout":[B
    :catch_65
    move-exception v1

    .line 365
    .local v1, "e":Ljava/lang/Exception;
    :try_start_66
    const-string/jumbo v3, "MDM"

    const-string/jumbo v6, "Fail Lock-out"

    invoke-static {v3, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_73

    .line 368
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 366
    return v8

    .line 367
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_73
    move-exception v3

    .line 368
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 367
    throw v3

    .line 375
    .local v2, "hashRecoveryLockout":[B
    :cond_78
    if-le p2, v7, :cond_3a

    .line 376
    const/4 p2, 0x1

    goto :goto_3a

    .line 389
    :cond_7c
    iput-object p3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->strLockoutDeScript:Ljava/lang/String;

    goto :goto_5d

    .line 395
    .end local v2    # "hashRecoveryLockout":[B
    .end local v4    # "ident":J
    :cond_7f
    return v8
.end method

.method protected setPasswordMinimumChange(Lcom/lge/mdm/admin/LGMDMadminlist;II)Z
    .registers 6
    .param p1, "admin"    # Lcom/lge/mdm/admin/LGMDMadminlist;
    .param p2, "number"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "changed":Z
    if-nez p1, :cond_4

    .line 174
    return v0

    .line 176
    :cond_4
    const/16 v1, 0x10

    if-le p2, v1, :cond_a

    .line 177
    const/16 p2, 0x10

    .line 179
    :cond_a
    iget v1, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->minimumPasswordChange:I

    if-eq v1, p2, :cond_11

    .line 180
    iput p2, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->minimumPasswordChange:I

    .line 181
    const/4 v0, 0x1

    .line 183
    :cond_11
    return v0
.end method

.method protected setPasswordRecoveryEnabled(Landroid/content/ComponentName;ZI)Ljava/lang/String;
    .registers 14
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enable"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v9, 0x0

    .line 220
    iget-object v8, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v8, p1, v9}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLockedForNativePolicy(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 223
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->passwordRecoveryEnabled:Z

    .line 225
    invoke-virtual {p0, p1, p3}, Lcom/lge/mdm/controller/LGMDMPasswordController;->getPasswordRecoveryEnabled(Landroid/content/ComponentName;I)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 226
    const-wide/16 v4, 0x0

    .line 227
    .local v4, "ident":J
    const-string/jumbo v7, ""

    .line 229
    .local v7, "s":Ljava/lang/String;
    :try_start_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 231
    const/4 v3, 0x0

    .line 232
    .local v3, "enabledSize":I
    iget-object v8, p0, Lcom/lge/mdm/controller/LGMDMPasswordController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 233
    const/4 v9, 0x0

    .line 232
    invoke-virtual {v8, v9}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminLists(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 234
    .local v6, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 235
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v8, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->passwordRecoveryEnabled:Z

    if-eqz v8, :cond_24

    .line 236
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 240
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_37
    invoke-direct {p0, p3}, Lcom/lge/mdm/controller/LGMDMPasswordController;->getRecoveryPassword(I)Lcom/lge/mdm/util/keystore/RecoveryPassword;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/lge/mdm/util/keystore/RecoveryPassword;->getPasswordRecovery(I)Ljava/lang/String;
    :try_end_3e
    .catchall {:try_start_14 .. :try_end_3e} :catchall_43

    move-result-object v7

    .line 242
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    return-object v7

    .line 241
    .end local v2    # "admins$iterator":Ljava/util/Iterator;
    .end local v3    # "enabledSize":I
    .end local v6    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    :catchall_43
    move-exception v8

    .line 242
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 241
    throw v8

    .line 246
    .end local v4    # "ident":J
    .end local v7    # "s":Ljava/lang/String;
    :cond_48
    const/4 v8, 0x0

    return-object v8
.end method

.method protected setUnlockoutNow(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 400
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 402
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    const/4 v2, 0x0

    iput v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->lockoutNowLevel:I

    .line 403
    const-string/jumbo v2, ""

    iput-object v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->strLockoutDeScript:Ljava/lang/String;

    .line 404
    const-string/jumbo v2, ""

    iput-object v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->hashRecoveryLockout:Ljava/lang/String;

    .line 406
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->removeLockoutDescriptComponentList(Landroid/content/ComponentName;I)V

    .line 408
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.lge.mdm.intent.action.LGMDM_LOCK_OUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 399
    return-void
.end method
