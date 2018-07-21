.class public Lcom/lge/launcher3/util/ClassUtils;
.super Ljava/lang/Object;
.source "ClassUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClassUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOutperClassReference(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 20
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "this$0"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 21
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_12} :catch_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_12} :catch_1d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_12} :catch_14

    move-result-object v0

    .line 26
    :goto_13
    return-object v0

    .line 24
    :catch_14
    move-exception v1

    :goto_15
    const-string v1, "ClassUtils"

    const-string v2, "An outer class\'s reference could\'t be gotten."

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :catch_1d
    move-exception v1

    goto :goto_15

    :catch_1f
    move-exception v1

    goto :goto_15
.end method
