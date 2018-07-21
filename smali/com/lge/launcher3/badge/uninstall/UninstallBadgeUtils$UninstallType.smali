.class public final enum Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;
.super Ljava/lang/Enum;
.source "UninstallBadgeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UninstallType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DELETE:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

.field public static final enum DISABLE:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

.field private static final synthetic ENUM$VALUES:[Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

.field public static final enum UNINSTALL:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    const-string v1, "UNINSTALL"

    invoke-direct {v0, v1, v2}, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;->UNINSTALL:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    new-instance v0, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v3}, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;->DELETE:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    new-instance v0, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    const-string v1, "DISABLE"

    invoke-direct {v0, v1, v4}, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;->DISABLE:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    sget-object v1, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;->UNINSTALL:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;->DELETE:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;->DISABLE:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;->ENUM$VALUES:[Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    return-object v0
.end method

.method public static values()[Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;->ENUM$VALUES:[Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
