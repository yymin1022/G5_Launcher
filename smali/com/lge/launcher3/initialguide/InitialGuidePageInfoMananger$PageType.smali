.class public final enum Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;
.super Ljava/lang/Enum;
.source "InitialGuidePageInfoMananger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APPS_ON_THE_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

.field public static final enum BACK_TO_THE_UX4_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

.field public static final enum CUSTOMIZE_THE_UX5_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

.field public static final enum CUSTOMIZING_THE_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

.field private static final synthetic ENUM$VALUES:[Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

.field public static final enum EXPERIENCE_THE_UX5_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

.field public static final enum HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

.field public static final enum MANAGING_APPS:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    const-string v1, "APPS_ON_THE_HOME_SCREEN"

    invoke-direct {v0, v1, v3}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->APPS_ON_THE_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    new-instance v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    const-string v1, "HOME_SCREEN"

    invoke-direct {v0, v1, v4}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    new-instance v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    const-string v1, "MANAGING_APPS"

    invoke-direct {v0, v1, v5}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->MANAGING_APPS:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    new-instance v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    const-string v1, "CUSTOMIZING_THE_HOME_SCREEN"

    invoke-direct {v0, v1, v6}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->CUSTOMIZING_THE_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    .line 26
    new-instance v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    const-string v1, "EXPERIENCE_THE_UX5_HOME_SCREEN"

    invoke-direct {v0, v1, v7}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->EXPERIENCE_THE_UX5_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    new-instance v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    const-string v1, "CUSTOMIZE_THE_UX5_HOME_SCREEN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->CUSTOMIZE_THE_UX5_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    new-instance v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    const-string v1, "BACK_TO_THE_UX4_HOME_SCREEN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->BACK_TO_THE_UX4_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    .line 24
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    sget-object v1, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->APPS_ON_THE_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->MANAGING_APPS:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->CUSTOMIZING_THE_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->EXPERIENCE_THE_UX5_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->CUSTOMIZE_THE_UX5_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->BACK_TO_THE_UX4_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->ENUM$VALUES:[Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    return-object v0
.end method

.method public static values()[Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->ENUM$VALUES:[Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
