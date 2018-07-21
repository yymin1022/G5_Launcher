.class public Lcom/lge/launcher3/receiver/PendingIntentObjectList$QMemoPanelHandler;
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
    name = "QMemoPanelHandler"
.end annotation


# static fields
.field public static final ENABLE_QMEMOPANEL_INTENT:Ljava/lang/String; = "com.lge.launcher3.intent.action.ENABLE_QMEMOPANEL"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNameOfIntent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    const-string v0, "com.lge.launcher3.intent.action.ENABLE_QMEMOPANEL"

    return-object v0
.end method

.method public onHandle(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 137
    invoke-static {p1}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->getEnableQmemopluspanel(Landroid/content/Context;)Z

    move-result v0

    .line 138
    if-eqz v0, :cond_a

    .line 139
    invoke-static {p1}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->turnOnQMemoPanel(Landroid/content/Context;)Z

    .line 143
    :goto_9
    return-void

    .line 141
    :cond_a
    invoke-static {p1}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->turnOffQMemoPanel(Landroid/content/Context;)Z

    goto :goto_9
.end method
