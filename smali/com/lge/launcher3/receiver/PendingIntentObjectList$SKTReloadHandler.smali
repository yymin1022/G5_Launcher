.class public Lcom/lge/launcher3/receiver/PendingIntentObjectList$SKTReloadHandler;
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
    name = "SKTReloadHandler"
.end annotation


# static fields
.field public static final SKT_RELOAD_INTENT:Ljava/lang/String; = "com.lge.launcher.SKT_PHONE_MODE_RELOAD"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNameOfIntent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    const-string v0, "com.lge.launcher.SKT_PHONE_MODE_RELOAD"

    return-object v0
.end method

.method public onHandle(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-static {p1}, Lcom/lge/launcher3/nativeitds/LauncherProviderItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherProviderItds$com_android_launcher3_LauncherProvider$isUpgradeDB(Landroid/content/Context;)Z

    move-result v0

    .line 82
    if-eqz v0, :cond_8

    .line 90
    :cond_7
    :goto_7
    return-void

    .line 86
    :cond_8
    sget-object v0, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;->ISLOADING:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;

    invoke-static {p1, v2, v0, v2}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->getBoolean(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 87
    sget-object v0, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;->ISLOADING:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;

    const/4 v1, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->putBoolean(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;Z)Z

    .line 88
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/LauncherAppStateItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherAppStateItds$com_android_launcher3_LauncherAppState$clearNReloadWorkspace(Lcom/android/launcher3/LauncherAppState;)V

    goto :goto_7
.end method
