.class public Lcom/lge/launcher3/smartbulletin/view/SBStateManager;
.super Ljava/lang/Object;
.source "SBStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;
    }
.end annotation


# static fields
.field private static sOldState:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

.field private static sState:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 7
    sput-object v0, Lcom/lge/launcher3/smartbulletin/view/SBStateManager;->sState:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    .line 8
    sput-object v0, Lcom/lge/launcher3/smartbulletin/view/SBStateManager;->sOldState:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOldState()Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/lge/launcher3/smartbulletin/view/SBStateManager;->sOldState:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    return-object v0
.end method

.method public static getState()Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/lge/launcher3/smartbulletin/view/SBStateManager;->sState:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    return-object v0
.end method

.method public static onChangeState(Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;)V
    .registers 4

    .prologue
    .line 15
    sget-object v0, Lcom/lge/launcher3/smartbulletin/view/SBStateManager;->sState:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    if-ne v0, p0, :cond_5

    .line 22
    :goto_4
    return-void

    .line 19
    :cond_5
    sget-object v0, Lcom/lge/launcher3/smartbulletin/view/SBStateManager;->sState:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    sput-object v0, Lcom/lge/launcher3/smartbulletin/view/SBStateManager;->sOldState:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    .line 20
    sput-object p0, Lcom/lge/launcher3/smartbulletin/view/SBStateManager;->sState:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    .line 21
    const-string v0, "SBStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sOldState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lge/launcher3/smartbulletin/view/SBStateManager;->sOldState:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/launcher3/smartbulletin/view/SBStateManager;->sState:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method
