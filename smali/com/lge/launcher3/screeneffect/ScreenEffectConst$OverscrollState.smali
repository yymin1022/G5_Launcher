.class public final enum Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;
.super Ljava/lang/Enum;
.source "ScreenEffectConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/screeneffect/ScreenEffectConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OverscrollState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

.field public static final enum INNER:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

.field public static final enum NONE:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

.field public static final enum OUTER:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    const-string v1, "INNER"

    invoke-direct {v0, v1, v2}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;->INNER:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    new-instance v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    const-string v1, "OUTER"

    invoke-direct {v0, v1, v3}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;->OUTER:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    new-instance v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;->NONE:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;->INNER:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;->OUTER:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;->NONE:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;->ENUM$VALUES:[Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    return-object v0
.end method

.method public static values()[Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;->ENUM$VALUES:[Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method