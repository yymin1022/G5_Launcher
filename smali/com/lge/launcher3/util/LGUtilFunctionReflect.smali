.class public Lcom/lge/launcher3/util/LGUtilFunctionReflect;
.super Ljava/lang/Object;
.source "LGUtilFunctionReflect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/util/LGUtilFunctionReflect$OsManagerReflect;,
        Lcom/lge/launcher3/util/LGUtilFunctionReflect$UserInfoConstantsReflect;,
        Lcom/lge/launcher3/util/LGUtilFunctionReflect$WallpaperManagerExReflect;
    }
.end annotation


# static fields
.field private static final CONTEXT_CLASS_NAME:Ljava/lang/String; = "android.content.Context"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstanceByClassName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 65
    :try_start_1
    const-string v1, "android.content.Context"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 66
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_22

    move-result-object v1

    .line 71
    :goto_15
    if-eqz v1, :cond_21

    .line 73
    const/4 v2, 0x1

    :try_start_18
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_20} :catch_28

    move-result-object v0

    .line 78
    :cond_21
    :goto_21
    return-object v0

    .line 67
    :catch_22
    move-exception v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    goto :goto_15

    .line 74
    :catch_28
    move-exception v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method
