.class public Lcom/lge/launcher3/receiver/PendingIntentObjectList;
.super Ljava/lang/Object;
.source "PendingIntentObjectList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/receiver/PendingIntentObjectList$AppBoxInstalledHandler;,
        Lcom/lge/launcher3/receiver/PendingIntentObjectList$CotaReloadHandler;,
        Lcom/lge/launcher3/receiver/PendingIntentObjectList$KillProcessHandler;,
        Lcom/lge/launcher3/receiver/PendingIntentObjectList$OWBReloadHandler;,
        Lcom/lge/launcher3/receiver/PendingIntentObjectList$QMemoPanelHandler;,
        Lcom/lge/launcher3/receiver/PendingIntentObjectList$SKTReloadHandler;,
        Lcom/lge/launcher3/receiver/PendingIntentObjectList$SimChangeHandler;
    }
.end annotation


# static fields
.field private static sAppBoxInstallCompleteHandler:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Lcom/lge/launcher3/receiver/PendingIntentObjectList$1;

    invoke-direct {v0}, Lcom/lge/launcher3/receiver/PendingIntentObjectList$1;-><init>()V

    sput-object v0, Lcom/lge/launcher3/receiver/PendingIntentObjectList;->sAppBoxInstallCompleteHandler:Ljava/lang/Runnable;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/lge/launcher3/receiver/PendingIntentObjectList;->sAppBoxInstallCompleteHandler:Ljava/lang/Runnable;

    return-object v0
.end method
