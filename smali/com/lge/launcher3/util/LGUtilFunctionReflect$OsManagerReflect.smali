.class public Lcom/lge/launcher3/util/LGUtilFunctionReflect$OsManagerReflect;
.super Ljava/lang/Object;
.source "LGUtilFunctionReflect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/util/LGUtilFunctionReflect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OsManagerReflect"
.end annotation


# static fields
.field private static final LGCONTEXT_NAME:Ljava/lang/String; = "com.lge.systemservice.core.LGContext"

.field private static final OSMANAGER_NAME:Ljava/lang/String; = "com.lge.systemservice.core.OsManager"

.field private static sGetLGSystemService:Ljava/lang/reflect/Method;

.field private static sGoToSleepWithForce:Ljava/lang/reflect/Method;

.field private static sOsServiceField:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/lge/launcher3/util/LGUtilFunctionReflect$OsManagerReflect;->sGetLGSystemService:Ljava/lang/reflect/Method;

    .line 18
    sput-object v0, Lcom/lge/launcher3/util/LGUtilFunctionReflect$OsManagerReflect;->sOsServiceField:Ljava/lang/String;

    .line 19
    sput-object v0, Lcom/lge/launcher3/util/LGUtilFunctionReflect$OsManagerReflect;->sGoToSleepWithForce:Ljava/lang/reflect/Method;

    .line 23
    :try_start_7
    const-string v0, "com.lge.systemservice.core.LGContext"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 24
    const-string v1, "com.lge.systemservice.core.OsManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 26
    if-eqz v0, :cond_4a

    if-eqz v1, :cond_4a

    .line 27
    const-string v2, "getLGSystemService"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/lge/launcher3/util/LGUtilFunctionReflect$OsManagerReflect;->sGetLGSystemService:Ljava/lang/reflect/Method;

    .line 28
    const-string v2, "OS_SERVICE"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/lge/launcher3/util/LGUtilFunctionReflect$OsManagerReflect;->sOsServiceField:Ljava/lang/String;

    .line 30
    const-string v0, "goToSleepWithForce"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/util/LGUtilFunctionReflect$OsManagerReflect;->sGoToSleepWithForce:Ljava/lang/reflect/Method;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4a} :catch_4b

    .line 35
    :cond_4a
    :goto_4a
    return-void

    .line 32
    :catch_4b
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4a
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static goToSleepWithForce(Landroid/content/Context;JI)V
    .registers 9

    .prologue
    .line 44
    sget-object v0, Lcom/lge/launcher3/util/LGUtilFunctionReflect$OsManagerReflect;->sGetLGSystemService:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_34

    sget-object v0, Lcom/lge/launcher3/util/LGUtilFunctionReflect$OsManagerReflect;->sOsServiceField:Ljava/lang/String;

    if-eqz v0, :cond_34

    sget-object v0, Lcom/lge/launcher3/util/LGUtilFunctionReflect$OsManagerReflect;->sGoToSleepWithForce:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_34

    .line 46
    :try_start_c
    sget-object v0, Lcom/lge/launcher3/util/LGUtilFunctionReflect$OsManagerReflect;->sGetLGSystemService:Ljava/lang/reflect/Method;

    invoke-static {p0}, Lcom/lge/launcher3/util/LGUtilFunctionReflect$OsManagerReflect;->newLGContextInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/lge/launcher3/util/LGUtilFunctionReflect$OsManagerReflect;->sOsServiceField:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    sget-object v1, Lcom/lge/launcher3/util/LGUtilFunctionReflect$OsManagerReflect;->sGoToSleepWithForce:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_34} :catch_35

    .line 52
    :cond_34
    :goto_34
    return-void

    .line 48
    :catch_35
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method private static newLGContextInstance(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 56
    const-string v0, "com.lge.systemservice.core.LGContext"

    invoke-static {v0, p0}, Lcom/lge/launcher3/util/LGUtilFunctionReflect;->newInstanceByClassName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
