.class public Lcom/lge/launcher3/receiver/PendingIntentObjectList$AppBoxInstalledHandler;
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
    name = "AppBoxInstalledHandler"
.end annotation


# static fields
.field public static final APPBOX_RELOAD_INTENT:Ljava/lang/String; = "com.lge.appbox.bootinstall.completed"

.field private static final INSTALL_COMPLETE_HANDLER_DELAY:I = 0x1388


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNameOfIntent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    const-string v0, "com.lge.appbox.bootinstall.completed"

    return-object v0
.end method

.method public onHandle(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    .line 33
    invoke-virtual {p1, p2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 34
    invoke-static {p1}, Lcom/lge/launcher3/nativeitds/LauncherProviderItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherProviderItds$com_android_launcher3_LauncherProvider$isUpgradeDB(Landroid/content/Context;)Z

    move-result v0

    .line 35
    if-eqz v0, :cond_a

    .line 42
    :goto_9
    return-void

    .line 39
    :cond_a
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 40
    invoke-static {}, Lcom/lge/launcher3/receiver/PendingIntentObjectList;->access$0()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    invoke-static {}, Lcom/lge/launcher3/util/LGHomeFeature;->getInstance()Lcom/lge/launcher3/util/LGHomeFeature;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/util/LGHomeFeature;->checkSmartWorldAppSca(Landroid/content/Context;)V

    goto :goto_9
.end method
