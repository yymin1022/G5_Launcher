.class public Lcom/android/launcher3/compat/UserManagerCompatV16;
.super Lcom/android/launcher3/compat/UserManagerCompat;
.source "UserManagerCompatV16.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/launcher3/compat/UserManagerCompat;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public enableAndResetCache()V
    .registers 1

    .prologue
    .line 64
    return-void
.end method

.method public getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 41
    return-object p1
.end method

.method public getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 49
    return-object p1
.end method

.method public getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J
    .registers 4

    .prologue
    .line 45
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUserCreationTime(Lcom/android/launcher3/compat/UserHandleCompat;)J
    .registers 4

    .prologue
    .line 54
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUserForSerialNumber(J)Lcom/android/launcher3/compat/UserHandleCompat;
    .registers 4

    .prologue
    .line 36
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    return-object v0
.end method

.method public getUserProfiles()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-object v0
.end method

.method public isQuietModeEnabled(Lcom/android/launcher3/compat/UserHandleCompat;)Z
    .registers 3

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method
