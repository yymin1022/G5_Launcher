.class public Lcom/lge/launcher3/util/UserUtils;
.super Ljava/lang/Object;
.source "UserUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(Landroid/os/UserHandle;Landroid/os/UserHandle;)I
    .registers 4

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/os/UserHandle;->isOwner()Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->isOwner()Z

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    return v0
.end method

.method public static existUser(Landroid/content/Context;Lcom/android/launcher3/compat/UserHandleCompat;)Z
    .registers 6

    .prologue
    .line 81
    invoke-static {p0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static final getAllUsers(Landroid/content/Context;)Landroid/util/LongSparseArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0}, Lcom/lge/launcher3/util/UserUtils;->getUserManagerCompat(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v1

    .line 32
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    .line 33
    invoke-virtual {v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_18

    .line 36
    return-object v2

    .line 33
    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/UserHandleCompat;

    .line 34
    invoke-virtual {v1, v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_11
.end method

.method public static getCurrentUserInfo(Landroid/content/Context;)Landroid/content/pm/UserInfo;
    .registers 3

    .prologue
    .line 71
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 72
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final getUserHandleCompat(Landroid/content/Context;I)Lcom/android/launcher3/compat/UserHandleCompat;
    .registers 6

    .prologue
    .line 44
    invoke-static {p0}, Lcom/lge/launcher3/util/UserUtils;->getAllUsers(Landroid/content/Context;)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 45
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/UserHandleCompat;

    return-object v0
.end method

.method public static final getUserManagerCompat(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;
    .registers 2

    .prologue
    .line 24
    invoke-static {p0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    return-object v0
.end method

.method public static isAdminUser(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 62
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 63
    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    return v0
.end method
