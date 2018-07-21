.class public final enum Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;
.super Ljava/lang/Enum;
.source "ScreenEffectConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/screeneffect/ScreenEffectConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenEffectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BREEZE:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

.field public static final enum CAROUSEL:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

.field private static final synthetic ENUM$VALUES:[Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

.field public static final enum PANORAMA:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

.field public static final enum SLIDE:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;


# instance fields
.field private mResId:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    const-string v1, "SLIDE"

    const v2, 0x7f0f00fc

    invoke-direct {v0, v1, v3, v2}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->SLIDE:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    .line 23
    new-instance v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    const-string v1, "BREEZE"

    const v2, 0x7f0f00fd

    invoke-direct {v0, v1, v4, v2}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->BREEZE:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    .line 24
    new-instance v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    const-string v1, "PANORAMA"

    const v2, 0x7f0f00fe

    invoke-direct {v0, v1, v5, v2}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->PANORAMA:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    .line 25
    new-instance v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    const-string v1, "CAROUSEL"

    const v2, 0x7f0f00ff

    invoke-direct {v0, v1, v6, v2}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->CAROUSEL:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->SLIDE:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->BREEZE:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->PANORAMA:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->CAROUSEL:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->ENUM$VALUES:[Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 5

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->mResId:I

    .line 33
    iput p3, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->mResId:I

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    return-object v0
.end method

.method public static values()[Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->ENUM$VALUES:[Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public equals(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->mResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
