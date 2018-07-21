.class public Lcom/android/launcher3/compat/UserManagerCompatV17;
.super Lcom/android/launcher3/compat/UserManagerCompatV16;
.source "UserManagerCompatV17.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# instance fields
.field protected mUserManager:Landroid/os/UserManager;

.field protected mUserToSerialMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mUsers:Lcom/android/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/launcher3/compat/UserManagerCompatV16;-><init>()V

    .line 38
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatV17;->mUserManager:Landroid/os/UserManager;

    .line 39
    return-void
.end method


# virtual methods
.method public enableAndResetCache()V
    .registers 5

    .prologue
    .line 51
    monitor-enter p0

    .line 52
    :try_start_1
    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatV17;->mUsers:Lcom/android/launcher3/util/LongArrayMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatV17;->mUserToSerialMap:Ljava/util/HashMap;

    .line 54
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/android/launcher3/compat/UserManagerCompatV17;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 56
    iget-object v1, p0, Lcom/android/launcher3/compat/UserManagerCompatV17;->mUsers:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 57
    iget-object v1, p0, Lcom/android/launcher3/compat/UserManagerCompatV17;->mUserToSerialMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    monitor-exit p0

    .line 59
    return-void

    .line 51
    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J
    .registers 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatV17;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Lcom/android/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserForSerialNumber(J)Lcom/android/launcher3/compat/UserHandleCompat;
    .registers 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatV17;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    return-object v0
.end method
