.class public abstract Lcom/android/launcher3/model/AbstractUserComparator;
.super Ljava/lang/Object;
.source "AbstractUserComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/ItemInfo;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mMyUser:Lcom/android/launcher3/compat/UserHandleCompat;

.field private final mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

.field private mUserSerialCache:Ljava/util/HashMap;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/AbstractUserComparator;->mUserSerialCache:Ljava/util/HashMap;

    .line 37
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/AbstractUserComparator;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 38
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/AbstractUserComparator;->mMyUser:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 39
    return-void
.end method

.method private getAndCacheUserSerial(Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/lang/Long;
    .registers 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/launcher3/model/AbstractUserComparator;->mUserSerialCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 57
    if-nez v0, :cond_19

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/model/AbstractUserComparator;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/android/launcher3/model/AbstractUserComparator;->mUserSerialCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_19
    return-object v0
.end method


# virtual methods
.method public clearUserCache()V
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher3/model/AbstractUserComparator;->mUserSerialCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 66
    return-void
.end method

.method public compare(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher3/model/AbstractUserComparator;->mMyUser:Lcom/android/launcher3/compat/UserHandleCompat;

    iget-object v1, p1, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 44
    const/4 v0, -0x1

    .line 48
    :goto_b
    return v0

    .line 46
    :cond_c
    iget-object v0, p1, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/AbstractUserComparator;->getAndCacheUserSerial(Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/lang/Long;

    move-result-object v0

    .line 47
    iget-object v1, p2, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/AbstractUserComparator;->getAndCacheUserSerial(Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/lang/Long;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    goto :goto_b
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Lcom/android/launcher3/ItemInfo;

    check-cast p2, Lcom/android/launcher3/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/model/AbstractUserComparator;->compare(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;)I

    move-result v0

    return v0
.end method
