.class public Lcom/lge/launcher3/receiver/PendingIntentObjectList$OWBReloadHandler;
.super Ljava/lang/Object;
.source "PendingIntentObjectList.java"

# interfaces
.implements Lcom/lge/launcher3/receiver/IntentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/receiver/PendingIntentObjectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OWBReloadHandler"
.end annotation


# static fields
.field public static final OWB_RELOAD_INTENT:Ljava/lang/String; = "com.lge.android.owb.OWB_RELOAD"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNameOfIntent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    const-string v0, "com.lge.android.owb.OWB_RELOAD"

    return-object v0
.end method

.method public onHandle(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 62
    invoke-virtual {p1, p2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 63
    invoke-static {p1}, Lcom/lge/launcher3/nativeitds/LauncherProviderItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherProviderItds$com_android_launcher3_LauncherProvider$isUpgradeDB(Landroid/content/Context;)Z

    move-result v0

    .line 64
    if-eqz v0, :cond_a

    .line 68
    :goto_9
    return-void

    .line 67
    :cond_a
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/LauncherAppStateItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherAppStateItds$com_android_launcher3_LauncherAppState$clearNReloadWorkspace(Lcom/android/launcher3/LauncherAppState;)V

    goto :goto_9
.end method
