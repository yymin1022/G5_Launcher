.class public Lcom/lge/launcher3/initialguide/InitialGuideManager;
.super Ljava/lang/Object;
.source "InitialGuideManager.java"


# static fields
.field public static final DEBUG:Z = false

.field private static final DEBUG_ALWAYS_SHOW_INITIAL_GUIDE:Z = false

.field private static final DONT_SHOW_AGAIN_FLAG:J = 0x0L

.field public static final TAG:Ljava/lang/String;

.field private static final UNBLOCK_DURATION_TO_START_ACTIVITY_AGAIN:I = 0x1f4

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/lge/launcher3/initialguide/InitialGuideManager;


# instance fields
.field private mFirstShownTime:J

.field private mIsAlreadyShown:Z

.field private mIsInitialGuideActivityStarted:Z

.field private mIsReadyToShow:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 21
    const-class v0, Lcom/lge/launcher3/initialguide/InitialGuideManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->TAG:Ljava/lang/String;

    .line 25
    sput-object v1, Lcom/lge/launcher3/initialguide/InitialGuideManager;->sContext:Landroid/content/Context;

    .line 26
    sput-object v1, Lcom/lge/launcher3/initialguide/InitialGuideManager;->sInstance:Lcom/lge/launcher3/initialguide/InitialGuideManager;

    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v2, p0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->mIsAlreadyShown:Z

    .line 29
    iput-boolean v2, p0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->mIsReadyToShow:Z

    .line 30
    iput-boolean v2, p0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->mIsInitialGuideActivityStarted:Z

    .line 58
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->TAG:Ljava/lang/String;

    const-string v1, "Create a new InitialGuideManager instance."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sput-object p1, Lcom/lge/launcher3/initialguide/InitialGuideManager;->sContext:Landroid/content/Context;

    .line 62
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->sContext:Landroid/content/Context;

    .line 63
    sget-object v1, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$InitialGuideKey;->ALREADY_SHOWN:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$InitialGuideKey;

    .line 62
    invoke-static {v0, v2, v1, v2}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->getBoolean(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->mIsAlreadyShown:Z

    .line 64
    return-void
.end method

.method static synthetic access$0()Landroid/content/Context;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/initialguide/InitialGuideManager;J)V
    .registers 4

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->mFirstShownTime:J

    return-void
.end method

.method static synthetic access$2(Lcom/lge/launcher3/initialguide/InitialGuideManager;)J
    .registers 3

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->mFirstShownTime:J

    return-wide v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/launcher3/initialguide/InitialGuideManager;
    .registers 3

    .prologue
    .line 42
    if-nez p0, :cond_b

    .line 43
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->TAG:Ljava/lang/String;

    const-string v1, "Context is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    .line 51
    :goto_a
    return-object v0

    .line 47
    :cond_b
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->sInstance:Lcom/lge/launcher3/initialguide/InitialGuideManager;

    if-nez v0, :cond_1a

    .line 48
    new-instance v0, Lcom/lge/launcher3/initialguide/InitialGuideManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/launcher3/initialguide/InitialGuideManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->sInstance:Lcom/lge/launcher3/initialguide/InitialGuideManager;

    .line 51
    :cond_1a
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->sInstance:Lcom/lge/launcher3/initialguide/InitialGuideManager;

    goto :goto_a
.end method


# virtual methods
.method public checkNeedShowAgain()V
    .registers 3

    .prologue
    .line 176
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/launcher3/initialguide/InitialGuideManager$2;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/initialguide/InitialGuideManager$2;-><init>(Lcom/lge/launcher3/initialguide/InitialGuideManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 204
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 205
    return-void
.end method

.method public destroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 210
    sput-object v0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->sInstance:Lcom/lge/launcher3/initialguide/InitialGuideManager;

    .line 211
    sput-object v0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->sContext:Landroid/content/Context;

    .line 212
    return-void
.end method

.method public isAlreadyShown()Z
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->mIsAlreadyShown:Z

    return v0
.end method

.method public isReadyToShow()Z
    .registers 2

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->mIsReadyToShow:Z

    return v0
.end method

.method public saveFirstShownTime()V
    .registers 8

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x0

    .line 155
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 158
    sget-object v1, Lcom/lge/launcher3/initialguide/InitialGuideManager;->sContext:Landroid/content/Context;

    .line 159
    sget-object v2, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$InitialGuideKey;->FIRST_SHOWN_TIME:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$InitialGuideKey;

    .line 158
    invoke-static {v1, v6, v2, v4, v5}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->getLong(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->mFirstShownTime:J

    .line 161
    iget-wide v2, p0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->mFirstShownTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_38

    .line 162
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->TAG:Ljava/lang/String;

    const-string v1, "Initial Guide doesn\'t show again any more"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->sContext:Landroid/content/Context;

    .line 164
    sget-object v1, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$InitialGuideKey;->FIRST_SHOWN_TIME:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$InitialGuideKey;

    const-wide/16 v2, 0x0

    .line 163
    invoke-static {v0, v6, v1, v2, v3}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->putLong(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;J)Z

    .line 170
    :goto_37
    return-void

    .line 166
    :cond_38
    sget-object v1, Lcom/lge/launcher3/initialguide/InitialGuideManager;->TAG:Ljava/lang/String;

    const-string v2, "saveInitialGuideShownFistShownTime(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget-object v1, Lcom/lge/launcher3/initialguide/InitialGuideManager;->sContext:Landroid/content/Context;

    .line 168
    sget-object v2, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$InitialGuideKey;->FIRST_SHOWN_TIME:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$InitialGuideKey;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 167
    invoke-static {v1, v6, v2, v4, v5}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->putLong(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;J)Z

    goto :goto_37
.end method

.method public saveInitialGuideShown(Z)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 116
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->TAG:Ljava/lang/String;

    const-string v1, "saveInitialGuideShown(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iput-boolean p1, p0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->mIsAlreadyShown:Z

    .line 120
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->sContext:Landroid/content/Context;

    .line 121
    sget-object v1, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$InitialGuideKey;->ALREADY_SHOWN:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$InitialGuideKey;

    .line 120
    invoke-static {v0, v4, v1, p1}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->putBoolean(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;Z)Z

    .line 122
    return-void
.end method

.method public setInitialGuideActivityIsStarted(Z)V
    .registers 7

    .prologue
    .line 128
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->TAG:Ljava/lang/String;

    const-string v1, "setInitialGuideActivityIsStarted(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iput-boolean p1, p0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->mIsInitialGuideActivityStarted:Z

    .line 137
    if-eqz p1, :cond_28

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/lge/launcher3/initialguide/InitialGuideManager$1;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/initialguide/InitialGuideManager$1;-><init>(Lcom/lge/launcher3/initialguide/InitialGuideManager;)V

    .line 147
    const-wide/16 v2, 0x1f4

    .line 138
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    :cond_28
    return-void
.end method

.method public setReadyToShow(Z)V
    .registers 7

    .prologue
    .line 107
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->TAG:Ljava/lang/String;

    const-string v1, "setReadyToShow(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iput-boolean p1, p0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->mIsReadyToShow:Z

    .line 110
    return-void
.end method

.method public showInitialGuide(Landroid/app/Activity;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 70
    iget-boolean v2, p0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->mIsInitialGuideActivityStarted:Z

    if-eqz v2, :cond_e

    .line 71
    sget-object v1, Lcom/lge/launcher3/initialguide/InitialGuideManager;->TAG:Ljava/lang/String;

    const-string v2, "showInitialGuide() : InitialGuideActivity is already started."

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_d
    return v0

    .line 75
    :cond_e
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/lge/launcher3/initialguide/InitialGuideActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 78
    sget-object v3, Lcom/lge/launcher3/initialguide/InitialGuideManager;->TAG:Ljava/lang/String;

    const-string v4, "showInitialGuide() : Start InitialGuideActivity(%s)"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, v1}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->setInitialGuideActivityIsStarted(Z)V

    move v0, v1

    .line 82
    goto :goto_d
.end method
