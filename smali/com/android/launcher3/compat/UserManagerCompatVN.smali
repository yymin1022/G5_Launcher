.class public Lcom/android/launcher3/compat/UserManagerCompatVN;
.super Lcom/android/launcher3/compat/UserManagerCompatVL;
.source "UserManagerCompatVN.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UserManagerCompatVN"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/launcher3/compat/UserManagerCompatVL;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method


# virtual methods
.method public isQuietModeEnabled(Lcom/android/launcher3/compat/UserHandleCompat;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 38
    if-eqz p1, :cond_32

    .line 41
    :try_start_3
    const-class v0, Landroid/os/UserManager;

    const-string v2, "isQuietModeEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 42
    const-class v5, Landroid/os/UserHandle;

    aput-object v5, v3, v4

    .line 41
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 43
    iget-object v2, p0, Lcom/android/launcher3/compat/UserManagerCompatVN;->mUserManager:Landroid/os/UserManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_28
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_28} :catch_39
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_28} :catch_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_28} :catch_3b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_28} :catch_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_28} :catch_34

    move-result v0

    .line 53
    :goto_29
    return v0

    .line 45
    :catch_2a
    move-exception v0

    .line 46
    :goto_2b
    const-string v2, "UserManagerCompatVN"

    const-string v3, "Running on N without isQuietModeEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_32
    :goto_32
    move v0, v1

    .line 53
    goto :goto_29

    .line 47
    :catch_34
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_32

    .line 45
    :catch_39
    move-exception v0

    goto :goto_2b

    :catch_3b
    move-exception v0

    goto :goto_2b

    :catch_3d
    move-exception v0

    goto :goto_2b
.end method
