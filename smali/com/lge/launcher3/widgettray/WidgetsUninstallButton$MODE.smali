.class final enum Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;
.super Ljava/lang/Enum;
.source "WidgetsUninstallButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

.field public static final enum NORMAL:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

.field public static final enum UNINSTALL:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;->NORMAL:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

    new-instance v0, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

    const-string v1, "UNINSTALL"

    invoke-direct {v0, v1, v3}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;->UNINSTALL:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

    sget-object v1, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;->NORMAL:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;->UNINSTALL:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;->ENUM$VALUES:[Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

    return-object v0
.end method

.method public static values()[Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;->ENUM$VALUES:[Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
