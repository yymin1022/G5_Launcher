.class public Lcom/android/launcher3/BuildInfo;
.super Ljava/lang/Object;
.source "BuildInfo.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BuildInfo"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadByName(Ljava/lang/String;)Lcom/android/launcher3/BuildInfo;
    .registers 4

    .prologue
    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/launcher3/BuildInfo;

    invoke-direct {v0}, Lcom/android/launcher3/BuildInfo;-><init>()V

    .line 30
    :goto_b
    return-object v0

    .line 19
    :cond_c
    :try_start_c
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BuildInfo;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_16} :catch_17
    .catch Ljava/lang/InstantiationException; {:try_start_c .. :try_end_16} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_16} :catch_2e
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_16} :catch_37

    goto :goto_b

    .line 21
    :catch_17
    move-exception v0

    .line 22
    const-string v1, "BuildInfo"

    const-string v2, "Bad BuildInfo class"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    :goto_1f
    new-instance v0, Lcom/android/launcher3/BuildInfo;

    invoke-direct {v0}, Lcom/android/launcher3/BuildInfo;-><init>()V

    goto :goto_b

    .line 23
    :catch_25
    move-exception v0

    .line 24
    const-string v1, "BuildInfo"

    const-string v2, "Bad BuildInfo class"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 25
    :catch_2e
    move-exception v0

    .line 26
    const-string v1, "BuildInfo"

    const-string v2, "Bad BuildInfo class"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 27
    :catch_37
    move-exception v0

    .line 28
    const-string v1, "BuildInfo"

    const-string v2, "Bad BuildInfo class"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method


# virtual methods
.method public isDogfoodBuild()Z
    .registers 2

    .prologue
    .line 11
    const/4 v0, 0x0

    return v0
.end method
