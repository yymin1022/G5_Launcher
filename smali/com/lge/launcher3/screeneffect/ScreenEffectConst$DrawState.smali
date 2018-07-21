.class public final enum Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;
.super Ljava/lang/Enum;
.source "ScreenEffectConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/screeneffect/ScreenEffectConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrawState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

.field public static final enum NORMAL_SCREEN_EFFECT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

.field public static final enum OVERSCROLL_SCREEN_EFFECT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

.field public static final enum SKIP:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

.field public static final enum VIEW_SELF:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    const-string v1, "NORMAL_SCREEN_EFFECT"

    invoke-direct {v0, v1, v2}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->NORMAL_SCREEN_EFFECT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    new-instance v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    const-string v1, "OVERSCROLL_SCREEN_EFFECT"

    invoke-direct {v0, v1, v3}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->OVERSCROLL_SCREEN_EFFECT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    new-instance v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    const-string v1, "VIEW_SELF"

    invoke-direct {v0, v1, v4}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->VIEW_SELF:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    new-instance v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    const-string v1, "SKIP"

    invoke-direct {v0, v1, v5}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->SKIP:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->NORMAL_SCREEN_EFFECT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->OVERSCROLL_SCREEN_EFFECT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->VIEW_SELF:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->SKIP:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->ENUM$VALUES:[Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    return-object v0
.end method

.method public static values()[Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;->ENUM$VALUES:[Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
