.class public Lcom/android/launcher3/compat/UserHandleCompat;
.super Ljava/lang/Object;
.source "UserHandleCompat.java"


# instance fields
.field private mUser:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/os/UserHandle;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/launcher3/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    .line 30
    return-void
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/android/launcher3/compat/UserHandleCompat;
    .registers 2

    .prologue
    .line 98
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v0, :cond_13

    .line 99
    const-string v0, "android.intent.extra.USER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 100
    if-eqz v0, :cond_13

    .line 101
    invoke-static {v0}, Lcom/android/launcher3/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    .line 104
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/compat/UserHandleCompat;
    .registers 2

    .prologue
    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    .line 48
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-direct {v0, p0}, Lcom/android/launcher3/compat/UserHandleCompat;-><init>(Landroid/os/UserHandle;)V

    goto :goto_3
.end method

.method public static myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_10

    .line 38
    new-instance v0, Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/compat/UserHandleCompat;-><init>(Landroid/os/UserHandle;)V

    .line 40
    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-direct {v0}, Lcom/android/launcher3/compat/UserHandleCompat;-><init>()V

    goto :goto_f
.end method


# virtual methods
.method public addToIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 92
    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/launcher3/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_f

    .line 93
    iget-object v0, p0, Lcom/android/launcher3/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 95
    :cond_f
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 67
    instance-of v0, p1, Lcom/android/launcher3/compat/UserHandleCompat;

    if-nez v0, :cond_6

    .line 68
    const/4 v0, 0x0

    .line 73
    :goto_5
    return v0

    .line 70
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_17

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    check-cast p1, Lcom/android/launcher3/compat/UserHandleCompat;

    iget-object v1, p1, Lcom/android/launcher3/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5

    .line 73
    :cond_17
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public getUser()Landroid/os/UserHandle;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/launcher3/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_d

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    .line 82
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_d

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_c
    return-object v0

    :cond_d
    const-string v0, ""

    goto :goto_c
.end method
