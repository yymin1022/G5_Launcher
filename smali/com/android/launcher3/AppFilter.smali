.class public abstract Lcom/android/launcher3/AppFilter;
.super Ljava/lang/Object;
.source "AppFilter.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "AppFilter"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadByName(Ljava/lang/String;)Lcom/android/launcher3/AppFilter;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    .line 31
    :goto_8
    return-object v0

    .line 18
    :cond_9
    :try_start_9
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppFilter;
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_13} :catch_14
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_13} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_13} :catch_28
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_13} :catch_32

    goto :goto_8

    .line 20
    :catch_14
    move-exception v0

    .line 21
    const-string v2, "AppFilter"

    const-string v3, "Bad AppFilter class"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 22
    goto :goto_8

    .line 23
    :catch_1e
    move-exception v0

    .line 24
    const-string v2, "AppFilter"

    const-string v3, "Bad AppFilter class"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 25
    goto :goto_8

    .line 26
    :catch_28
    move-exception v0

    .line 27
    const-string v2, "AppFilter"

    const-string v3, "Bad AppFilter class"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 28
    goto :goto_8

    .line 29
    :catch_32
    move-exception v0

    .line 30
    const-string v2, "AppFilter"

    const-string v3, "Bad AppFilter class"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 31
    goto :goto_8
.end method


# virtual methods
.method public abstract shouldShowApp(Landroid/content/ComponentName;)Z
.end method
