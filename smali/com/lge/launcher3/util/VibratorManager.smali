.class public Lcom/lge/launcher3/util/VibratorManager;
.super Ljava/lang/Object;
.source "VibratorManager.java"


# static fields
.field private static final DURATION:J = 0x1eL

.field private static final NO_REPEAT:I = -0x1

.field private static final SYSCONFIG_VIBRATOR_DISABLED:Ljava/lang/String; = "config_disableVibratorFeedback"

.field private static final SYSPROP_KEY_HAPTIC_FEEDBACK:Ljava/lang/String; = "ro.device.hapticfeedback"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/lge/launcher3/util/VibratorManager;


# instance fields
.field private mHapticPattern:[J

.field private mIsSystemHapticFeedbackEnabled:Z

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/lge/launcher3/util/VibratorManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/util/VibratorManager;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/util/VibratorManager;->sInstance:Lcom/lge/launcher3/util/VibratorManager;

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/lge/launcher3/util/VibratorManager;->mVibrator:Landroid/os/Vibrator;

    .line 23
    iput-object v1, p0, Lcom/lge/launcher3/util/VibratorManager;->mHapticPattern:[J

    .line 25
    iput-boolean v0, p0, Lcom/lge/launcher3/util/VibratorManager;->mIsSystemHapticFeedbackEnabled:Z

    .line 54
    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1}, Landroid/os/SystemVibrator;-><init>()V

    iput-object v1, p0, Lcom/lge/launcher3/util/VibratorManager;->mVibrator:Landroid/os/Vibrator;

    .line 55
    invoke-direct {p0, p1}, Lcom/lge/launcher3/util/VibratorManager;->getHapticPattern(Landroid/content/Context;)[J

    move-result-object v1

    iput-object v1, p0, Lcom/lge/launcher3/util/VibratorManager;->mHapticPattern:[J

    .line 57
    invoke-static {p1}, Lcom/lge/launcher3/util/VibratorManager;->isVibratorFeedbackDisabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_21

    :goto_1e
    iput-boolean v0, p0, Lcom/lge/launcher3/util/VibratorManager;->mIsSystemHapticFeedbackEnabled:Z

    .line 58
    return-void

    .line 57
    :cond_21
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method private getHapticPattern(Landroid/content/Context;)[J
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 65
    const/4 v0, 0x0

    .line 67
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 68
    const v2, 0x1070026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 69
    invoke-static {v1}, Lcom/lge/launcher3/util/ArrayUtils;->convertIntToLongArray([I)[J
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_11} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_11} :catch_28

    move-result-object v0

    .line 75
    :goto_12
    return-object v0

    .line 70
    :catch_13
    move-exception v1

    .line 71
    sget-object v2, Lcom/lge/launcher3/util/VibratorManager;->TAG:Ljava/lang/String;

    const-string v3, "getHapticPattern() : NotFoundException(%s)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 72
    :catch_28
    move-exception v1

    .line 73
    sget-object v2, Lcom/lge/launcher3/util/VibratorManager;->TAG:Ljava/lang/String;

    const-string v3, "getHapticPattern() : NullPointerException(%s)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/launcher3/util/VibratorManager;
    .registers 3

    .prologue
    .line 38
    if-nez p0, :cond_b

    .line 39
    sget-object v0, Lcom/lge/launcher3/util/VibratorManager;->TAG:Ljava/lang/String;

    const-string v1, "getInstance() : Context is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    .line 47
    :goto_a
    return-object v0

    .line 43
    :cond_b
    sget-object v0, Lcom/lge/launcher3/util/VibratorManager;->sInstance:Lcom/lge/launcher3/util/VibratorManager;

    if-nez v0, :cond_1a

    .line 44
    new-instance v0, Lcom/lge/launcher3/util/VibratorManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/launcher3/util/VibratorManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/launcher3/util/VibratorManager;->sInstance:Lcom/lge/launcher3/util/VibratorManager;

    .line 47
    :cond_1a
    sget-object v0, Lcom/lge/launcher3/util/VibratorManager;->sInstance:Lcom/lge/launcher3/util/VibratorManager;

    goto :goto_a
.end method

.method private static isSettingsHapticFeedbackEnabled(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 126
    const-string v2, "haptic_feedback_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 127
    if-eqz v1, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isSystemHapticFeedbackEnabled()Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    :try_start_2
    const-string v2, "ro.device.hapticfeedback"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_9} :catch_29

    move-result-object v2

    .line 91
    sget-object v3, Lcom/lge/launcher3/util/VibratorManager;->TAG:Ljava/lang/String;

    const-string v4, "isSystemHapticFeedbackEnabled() : %s is %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 92
    const-string v6, "ro.device.hapticfeedback"

    aput-object v6, v5, v1

    aput-object v2, v5, v0

    .line 91
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-eqz v2, :cond_3f

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    :goto_28
    return v0

    .line 85
    :catch_29
    move-exception v2

    .line 86
    sget-object v3, Lcom/lge/launcher3/util/VibratorManager;->TAG:Ljava/lang/String;

    const-string v4, "isSystemHapticFeedbackEnabled() : NotFoundException(%s)"

    new-array v0, v0, [Ljava/lang/Object;

    .line 87
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 86
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 88
    goto :goto_28

    :cond_3f
    move v0, v1

    .line 94
    goto :goto_28
.end method

.method private static isVibratorFeedbackDisabled(Landroid/content/Context;)Z
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 137
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 138
    const-string v1, "config_disableVibratorFeedback"

    const-string v3, "bool"

    .line 139
    const-string v4, "com.lge"

    .line 138
    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_13} :catch_2a

    move-result v0

    .line 141
    :try_start_14
    sget-object v1, Lcom/lge/launcher3/util/VibratorManager;->TAG:Ljava/lang/String;

    const-string v3, "isVibratorFeedbackDisabled() : SYSCONFIG_VIBRATOR_DISABLED(%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_29} :catch_41

    .line 145
    :goto_29
    return v0

    .line 142
    :catch_2a
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 143
    :goto_2d
    sget-object v3, Lcom/lge/launcher3/util/VibratorManager;->TAG:Ljava/lang/String;

    const-string v4, "isVibratorFeedbackDisabled() : NotFoundException(%s)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 142
    :catch_41
    move-exception v1

    goto :goto_2d
.end method

.method public static isVibratorFeedbackEnabled(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 117
    invoke-static {p0}, Lcom/lge/launcher3/util/VibratorManager;->isVibratorFeedbackDisabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0}, Lcom/lge/launcher3/util/VibratorManager;->isSettingsHapticFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public vibrateIfSystemHapticFeedbackEnabled()V
    .registers 5

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/lge/launcher3/util/VibratorManager;->mIsSystemHapticFeedbackEnabled:Z

    if-nez v0, :cond_5

    .line 110
    :goto_4
    return-void

    .line 105
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/util/VibratorManager;->mHapticPattern:[J

    if-eqz v0, :cond_12

    .line 106
    iget-object v0, p0, Lcom/lge/launcher3/util/VibratorManager;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/lge/launcher3/util/VibratorManager;->mHapticPattern:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_4

    .line 108
    :cond_12
    iget-object v0, p0, Lcom/lge/launcher3/util/VibratorManager;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_4
.end method
