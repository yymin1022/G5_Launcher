.class final enum Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;
.super Ljava/lang/Enum;
.source "LauncherViewPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Properties"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALPHA:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

.field public static final enum DURATION:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

.field private static final synthetic ENUM$VALUES:[Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

.field public static final enum INTERPOLATOR:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

.field public static final enum ROTATION_Y:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

.field public static final enum SCALE_X:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

.field public static final enum SCALE_Y:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

.field public static final enum START_DELAY:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

.field public static final enum TRANSLATION_X:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

.field public static final enum TRANSLATION_Y:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

.field public static final enum WITH_LAYER:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    const-string v1, "TRANSLATION_X"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->TRANSLATION_X:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    .line 31
    new-instance v0, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    const-string v1, "TRANSLATION_Y"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->TRANSLATION_Y:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    .line 32
    new-instance v0, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    const-string v1, "SCALE_X"

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->SCALE_X:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    .line 33
    new-instance v0, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    const-string v1, "SCALE_Y"

    invoke-direct {v0, v1, v6}, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->SCALE_Y:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    .line 34
    new-instance v0, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    const-string v1, "ROTATION_Y"

    invoke-direct {v0, v1, v7}, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->ROTATION_Y:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    .line 35
    new-instance v0, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    const-string v1, "ALPHA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->ALPHA:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    .line 36
    new-instance v0, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    const-string v1, "START_DELAY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->START_DELAY:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    .line 37
    new-instance v0, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    const-string v1, "DURATION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->DURATION:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    .line 38
    new-instance v0, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    const-string v1, "INTERPOLATOR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->INTERPOLATOR:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    .line 39
    new-instance v0, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    const-string v1, "WITH_LAYER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->WITH_LAYER:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    .line 29
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    sget-object v1, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->TRANSLATION_X:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->TRANSLATION_Y:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->SCALE_X:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->SCALE_Y:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->ROTATION_Y:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->ALPHA:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->START_DELAY:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->DURATION:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->INTERPOLATOR:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->WITH_LAYER:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->ENUM$VALUES:[Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->ENUM$VALUES:[Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    array-length v1, v0

    new-array v2, v1, [Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
