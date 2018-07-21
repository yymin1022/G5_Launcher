.class final enum Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;
.super Ljava/lang/Enum;
.source "SBContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/smartbulletin/view/SBContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VelocityLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;

.field public static final enum HIGH:Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;

.field public static final enum INIT:Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;

.field public static final enum LOW:Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;

.field public static final enum MID:Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;


# instance fields
.field private mLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 325
    new-instance v0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;

    const-string v1, "INIT"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;->INIT:Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;

    new-instance v0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v4, v3}, Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;->LOW:Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;

    new-instance v0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;

    const-string v1, "MID"

    invoke-direct {v0, v1, v5, v4}, Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;->MID:Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;

    new-instance v0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v6, v5}, Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;->HIGH:Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;

    .line 324
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;

    sget-object v1, Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;->INIT:Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;->LOW:Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;->MID:Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;->HIGH:Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;

    aput-object v1, v0, v6

    sput-object v0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;->ENUM$VALUES:[Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .prologue
    .line 329
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 330
    iput p3, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;->mLevel:I

    .line 331
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;

    return-object v0
.end method

.method public static values()[Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;->ENUM$VALUES:[Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getLevel()I
    .registers 2

    .prologue
    .line 334
    iget v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$VelocityLevel;->mLevel:I

    return v0
.end method
