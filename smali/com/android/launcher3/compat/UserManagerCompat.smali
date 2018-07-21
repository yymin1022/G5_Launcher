.class public abstract Lcom/android/launcher3/compat/UserManagerCompat;
.super Ljava/lang/Object;
.source "UserManagerCompat.java"


# static fields
.field private static sInstance:Lcom/android/launcher3/compat/UserManagerCompat;

.field private static final sInstanceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/compat/UserManagerCompat;->sInstanceLock:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;
    .registers 4

    .prologue
    .line 35
    sget-object v1, Lcom/android/launcher3/compat/UserManagerCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_3
    sget-object v0, Lcom/android/launcher3/compat/UserManagerCompat;->sInstance:Lcom/android/launcher3/compat/UserManagerCompat;

    if-nez v0, :cond_18

    .line 37
    invoke-static {}, Lcom/android/launcher3/Utilities;->isNycOrAbove()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 38
    new-instance v0, Lcom/android/launcher3/compat/UserManagerCompatVN;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/compat/UserManagerCompatVN;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/compat/UserManagerCompat;->sInstance:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 47
    :cond_18
    :goto_18
    sget-object v0, Lcom/android/launcher3/compat/UserManagerCompat;->sInstance:Lcom/android/launcher3/compat/UserManagerCompat;

    monitor-exit v1

    return-object v0

    .line 39
    :cond_1c
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v0, :cond_2f

    .line 40
    new-instance v0, Lcom/android/launcher3/compat/UserManagerCompatVL;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/compat/UserManagerCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/compat/UserManagerCompat;->sInstance:Lcom/android/launcher3/compat/UserManagerCompat;

    goto :goto_18

    .line 35
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v0

    .line 41
    :cond_2f
    :try_start_2f
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_JB_MR1:Z

    if-eqz v0, :cond_3f

    .line 42
    new-instance v0, Lcom/android/launcher3/compat/UserManagerCompatV17;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/compat/UserManagerCompatV17;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/compat/UserManagerCompat;->sInstance:Lcom/android/launcher3/compat/UserManagerCompat;

    goto :goto_18

    .line 44
    :cond_3f
    new-instance v0, Lcom/android/launcher3/compat/UserManagerCompatV16;

    invoke-direct {v0}, Lcom/android/launcher3/compat/UserManagerCompatV16;-><init>()V

    sput-object v0, Lcom/android/launcher3/compat/UserManagerCompat;->sInstance:Lcom/android/launcher3/compat/UserManagerCompat;
    :try_end_46
    .catchall {:try_start_2f .. :try_end_46} :catchall_2c

    goto :goto_18
.end method


# virtual methods
.method public abstract enableAndResetCache()V
.end method

.method public abstract getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/lang/CharSequence;
.end method

.method public abstract getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J
.end method

.method public abstract getUserCreationTime(Lcom/android/launcher3/compat/UserHandleCompat;)J
.end method

.method public abstract getUserForSerialNumber(J)Lcom/android/launcher3/compat/UserHandleCompat;
.end method

.method public abstract getUserProfiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isQuietModeEnabled(Lcom/android/launcher3/compat/UserHandleCompat;)Z
.end method
