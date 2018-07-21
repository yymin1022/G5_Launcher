.class public Lcom/lge/mdm/util/LGMDMPasswordInfo;
.super Ljava/lang/Object;
.source "LGMDMPasswordInfo.java"


# static fields
.field private static sInstance:Lcom/lge/mdm/util/LGMDMPasswordInfo;

.field private static sTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-string/jumbo v0, "LGMDMPasswordInfo"

    sput-object v0, Lcom/lge/mdm/util/LGMDMPasswordInfo;->sTAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/util/LGMDMPasswordInfo;->sInstance:Lcom/lge/mdm/util/LGMDMPasswordInfo;

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/util/LGMDMPasswordInfo;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/lge/mdm/util/LGMDMPasswordInfo;->sInstance:Lcom/lge/mdm/util/LGMDMPasswordInfo;

    if-nez v0, :cond_b

    .line 37
    new-instance v0, Lcom/lge/mdm/util/LGMDMPasswordInfo;

    invoke-direct {v0}, Lcom/lge/mdm/util/LGMDMPasswordInfo;-><init>()V

    sput-object v0, Lcom/lge/mdm/util/LGMDMPasswordInfo;->sInstance:Lcom/lge/mdm/util/LGMDMPasswordInfo;

    .line 39
    :cond_b
    sget-object v0, Lcom/lge/mdm/util/LGMDMPasswordInfo;->sInstance:Lcom/lge/mdm/util/LGMDMPasswordInfo;

    return-object v0
.end method


# virtual methods
.method public getPasswordLeftDaysToExpire(Lcom/android/internal/widget/LockPatternUtils;I)I
    .registers 21
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "userHandle"    # I

    .prologue
    .line 43
    sget-object v11, Lcom/lge/mdm/util/LGMDMPasswordInfo;->sTAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getPasswordLeftDaysToExpire, userHandle:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string/jumbo v11, "device_policy"

    .line 44
    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v5

    .line 46
    .local v5, "idpm":Landroid/app/admin/IDevicePolicyManager;
    if-nez v5, :cond_32

    .line 47
    sget-object v11, Lcom/lge/mdm/util/LGMDMPasswordInfo;->sTAG:Ljava/lang/String;

    const-string/jumbo v14, "getPasswordLeftDaysToExpire, idpm is null"

    invoke-static {v11, v14}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v11, 0x0

    return v11

    .line 50
    :cond_32
    if-nez p1, :cond_3e

    .line 51
    sget-object v11, Lcom/lge/mdm/util/LGMDMPasswordInfo;->sTAG:Ljava/lang/String;

    const-string/jumbo v14, "getPasswordLeftDaysToExpire, lockPatternUtils is null"

    invoke-static {v11, v14}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v11, 0x0

    return v11

    .line 54
    :cond_3e
    invoke-virtual/range {p1 .. p2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v11

    .line 55
    const/high16 v14, 0x20000

    .line 54
    if-ge v11, v14, :cond_49

    .line 56
    const/16 v11, 0x16d

    return v11

    .line 59
    :cond_49
    const-wide/16 v6, 0x0

    .line 61
    .local v6, "expire":J
    const/4 v11, 0x0

    :try_start_4c
    move/from16 v0, p2

    invoke-interface {v5, v11, v0}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J

    move-result-wide v6

    .line 63
    const-wide/16 v14, 0x0

    cmp-long v11, v6, v14

    if-gtz v11, :cond_7b

    .line 64
    sget-object v11, Lcom/lge/mdm/util/LGMDMPasswordInfo;->sTAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "expire : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", return 365"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/16 v11, 0x16d

    return v11

    .line 68
    :cond_7b
    const/4 v11, 0x0

    move/from16 v0, p2

    invoke-interface {v5, v11, v0}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;I)J

    move-result-wide v8

    .line 69
    .local v8, "expireMills":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 70
    .local v2, "currentMills":J
    sub-long v12, v8, v2

    .line 71
    .local v12, "leftMills":J
    sget-object v11, Lcom/lge/mdm/util/LGMDMPasswordInfo;->sTAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "expireMills : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", currentMills : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 72
    const-string/jumbo v15, ", leftMills : "

    .line 71
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-wide/32 v14, 0x5265c00

    div-long v14, v12, v14

    long-to-int v10, v14

    .line 76
    .local v10, "leftDays":I
    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-gez v11, :cond_de

    .line 77
    const/4 v10, 0x0

    .line 83
    :cond_c4
    :goto_c4
    sget-object v11, Lcom/lge/mdm/util/LGMDMPasswordInfo;->sTAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getPasswordLeftDaysToExpire leftDays : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return v10

    .line 79
    :cond_de
    const-wide/32 v14, 0x5265c00

    rem-long v14, v12, v14
    :try_end_e3
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_e3} :catch_ec

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_c4

    .line 80
    add-int/lit8 v10, v10, 0x1

    goto :goto_c4

    .line 85
    .end local v2    # "currentMills":J
    .end local v8    # "expireMills":J
    .end local v10    # "leftDays":I
    .end local v12    # "leftMills":J
    :catch_ec
    move-exception v4

    .line 86
    .local v4, "e":Landroid/os/RemoteException;
    sget-object v11, Lcom/lge/mdm/util/LGMDMPasswordInfo;->sTAG:Ljava/lang/String;

    const-string/jumbo v14, "Failed talking with DevicePolicyManager"

    invoke-static {v11, v14, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    const/4 v11, 0x0

    return v11
.end method
