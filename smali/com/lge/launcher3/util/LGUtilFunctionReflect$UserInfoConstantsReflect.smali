.class public Lcom/lge/launcher3/util/LGUtilFunctionReflect$UserInfoConstantsReflect;
.super Ljava/lang/Object;
.source "LGUtilFunctionReflect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/util/LGUtilFunctionReflect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserInfoConstantsReflect"
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.lge.constants.UserInfoConstants"

.field public static sFlagKids:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    sput v0, Lcom/lge/launcher3/util/LGUtilFunctionReflect$UserInfoConstantsReflect;->sFlagKids:I

    .line 87
    :try_start_3
    const-string v0, "com.lge.constants.UserInfoConstants"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_17

    .line 89
    const-string v1, "FLAG_KIDS"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/lge/launcher3/util/LGUtilFunctionReflect$UserInfoConstantsReflect;->sFlagKids:I
    :try_end_17
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_17} :catch_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_17} :catch_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_17} :catch_22

    .line 99
    :cond_17
    :goto_17
    return-void

    .line 92
    :catch_18
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_17

    .line 94
    :catch_1d
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_17

    .line 96
    :catch_22
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_17
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
