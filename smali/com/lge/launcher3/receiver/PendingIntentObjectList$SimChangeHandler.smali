.class public Lcom/lge/launcher3/receiver/PendingIntentObjectList$SimChangeHandler;
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
    name = "SimChangeHandler"
.end annotation


# static fields
.field public static final SIMCHANGE_INTENT:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field protected static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 94
    const-class v0, Lcom/lge/launcher3/receiver/PendingIntentObjectList$SimChangeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/receiver/PendingIntentObjectList$SimChangeHandler;->TAG:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNameOfIntent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    return-object v0
.end method

.method public onHandle(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 104
    invoke-static {p1}, Lcom/lge/launcher3/nativeitds/LauncherProviderItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherProviderItds$com_android_launcher3_LauncherProvider$isUpgradeDB(Landroid/content/Context;)Z

    move-result v0

    .line 105
    if-eqz v0, :cond_8

    .line 124
    :cond_7
    :goto_7
    return-void

    .line 109
    :cond_8
    sget-object v0, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;->ISLOADING:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;

    invoke-static {p1, v4, v0, v4}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->getBoolean(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 110
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 111
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 112
    sget-object v1, Lcom/lge/launcher3/receiver/PendingIntentObjectList$SimChangeHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "curSimState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 114
    invoke-static {p1}, Lcom/lge/launcher3/receiver/DefaultWorkspaceLoader;->getIDFromCAList(Landroid/content/Context;)I

    move-result v0

    .line 115
    sget-object v1, Lcom/lge/launcher3/receiver/PendingIntentObjectList$SimChangeHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "returnID = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    if-lez v0, :cond_7

    .line 117
    sget-object v0, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;->ISLOADING:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;

    const/4 v1, 0x1

    invoke-static {p1, v4, v0, v1}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->putBoolean(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;Z)Z

    .line 118
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/LauncherAppStateItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherAppStateItds$com_android_launcher3_LauncherAppState$clearNReloadWorkspace(Lcom/android/launcher3/LauncherAppState;)V

    .line 119
    sget-object v0, Lcom/lge/launcher3/receiver/PendingIntentObjectList$SimChangeHandler;->TAG:Ljava/lang/String;

    const-string v1, "DB is clear by android.intent.action.SIM_STATE_CHANGED"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method
