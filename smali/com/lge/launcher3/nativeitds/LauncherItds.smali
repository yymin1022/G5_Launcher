.class public Lcom/lge/launcher3/nativeitds/LauncherItds;
.super Ljava/lang/Object;
.source "LauncherItds.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherItds;

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$preClinit()V

    .line 70
    :try_start_3
    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$postClinit()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    :goto_6
    return-void

    :catch_7
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_6
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$REQUEST_THEME_SELECT()I
    .registers 1

    sget v0, Lcom/android/launcher3/Launcher;->REQUEST_THEME_SELECT:I

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isLongClickFromKeyEnter(Lcom/android/launcher3/Launcher;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->isLongClickFromKeyEnter:Z

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mDynamicGridPanelView(Lcom/android/launcher3/Launcher;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDynamicGridPanelView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mLGThemeChange(Lcom/android/launcher3/Launcher;)Lcom/lge/launcher3/theme/LGThemeChange;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->ajc$get$mLGThemeChange(Lcom/android/launcher3/Launcher;)Lcom/lge/launcher3/theme/LGThemeChange;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mSuppressCloseFolder(Lcom/android/launcher3/Launcher;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mSuppressCloseFolder:Z

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mTPMO(Lcom/android/launcher3/Launcher;)Lcom/lge/launcher3/receiver/TPhoneModeObserver;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mTPMO:Lcom/lge/launcher3/receiver/TPhoneModeObserver;

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mTPMR(Lcom/android/launcher3/Launcher;)Lcom/lge/launcher3/receiver/TPhoneModeReceiver;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mTPMR:Lcom/lge/launcher3/receiver/TPhoneModeReceiver;

    return-object v0
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$REQUEST_THEME_SELECT()V
    .registers 1

    .prologue
    .line 72
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$REQUEST_THEME_SELECT(I)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isLongClickFromKeyEnter(Lcom/android/launcher3/Launcher;)V
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isLongClickFromKeyEnter(Lcom/android/launcher3/Launcher;Z)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mDynamicGridPanelView(Lcom/android/launcher3/Launcher;)V
    .registers 1

    .prologue
    .line 74
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mLGThemeChange(Lcom/android/launcher3/Launcher;)V
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mLGThemeChange(Lcom/android/launcher3/Launcher;Lcom/lge/launcher3/theme/LGThemeChange;)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mSuppressCloseFolder(Lcom/android/launcher3/Launcher;)V
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mSuppressCloseFolder(Lcom/android/launcher3/Launcher;Z)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mTPMO(Lcom/android/launcher3/Launcher;)V
    .registers 1

    .prologue
    .line 75
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mTPMR(Lcom/android/launcher3/Launcher;)V
    .registers 1

    .prologue
    .line 76
    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$REQUEST_THEME_SELECT(I)V
    .registers 1

    sput p0, Lcom/android/launcher3/Launcher;->REQUEST_THEME_SELECT:I

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isLongClickFromKeyEnter(Lcom/android/launcher3/Launcher;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->isLongClickFromKeyEnter:Z

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mDynamicGridPanelView(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mDynamicGridPanelView:Landroid/view/ViewGroup;

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mLGThemeChange(Lcom/android/launcher3/Launcher;Lcom/lge/launcher3/theme/LGThemeChange;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/Launcher;->ajc$set$mLGThemeChange(Lcom/android/launcher3/Launcher;Lcom/lge/launcher3/theme/LGThemeChange;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mSuppressCloseFolder(Lcom/android/launcher3/Launcher;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->mSuppressCloseFolder:Z

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mTPMO(Lcom/android/launcher3/Launcher;Lcom/lge/launcher3/receiver/TPhoneModeObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mTPMO:Lcom/lge/launcher3/receiver/TPhoneModeObserver;

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$mTPMR(Lcom/android/launcher3/Launcher;Lcom/lge/launcher3/receiver/TPhoneModeReceiver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mTPMR:Lcom/lge/launcher3/receiver/TPhoneModeReceiver;

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$addWidgetInNewPage(Lcom/android/launcher3/Launcher;Landroid/content/Intent;)V
    .registers 12

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 104
    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    const-string v1, "classname"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {p0}, Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;->isExistConciergeBoardScreenInDatabase(Landroid/content/Context;)I

    move-result v0

    .line 109
    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    .line 110
    invoke-static {}, Lcom/android/launcher3/Launcher;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartNotice widget already exists"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_23
    :goto_23
    return-void

    .line 114
    :cond_24
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreen()Z

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreen()J

    move-result-wide v4

    .line 117
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/LauncherAppWidgetHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 119
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/android/launcher3/LauncherModel;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v7

    .line 120
    invoke-static {p0}, Lcom/android/launcher3/Launcher;->ajc$get$mAppWidgetManager(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v0

    invoke-virtual {v0, v1, v7, v6}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v0

    .line 121
    invoke-static {}, Lcom/android/launcher3/Launcher;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "success = "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", appWidgetId = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", appWidgetInfo = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    if-eqz v0, :cond_23

    .line 124
    new-instance v0, Lcom/android/launcher3/ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    .line 125
    const-wide/16 v2, -0x64

    iput-wide v2, v0, Lcom/android/launcher3/ItemInfo;->container:J

    .line 126
    iput-wide v4, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 127
    iput v9, v0, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 128
    iput v9, v0, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 129
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 130
    sget-object v3, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;->CURRENT_WORKSAPACE_COLUMNS:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;

    .line 129
    invoke-static {v2, v3, v9}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->getSharedPrefValue(Landroid/content/Context;Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)I

    move-result v2

    .line 131
    invoke-virtual {v7, p0}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getSpanX(Lcom/android/launcher3/Launcher;)I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 132
    if-lez v2, :cond_bc

    iget v3, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    if-le v3, v2, :cond_bc

    .line 133
    invoke-static {}, Lcom/android/launcher3/Launcher;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "info.spanX is changed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iput v2, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 136
    :cond_bc
    invoke-virtual {v7, p0}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getSpanY(Lcom/android/launcher3/Launcher;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 137
    invoke-static {}, Lcom/android/launcher3/Launcher;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "info = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->ajc$privMethod$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$resetAddInfo()V

    .line 139
    invoke-static {p0}, Lcom/android/launcher3/Launcher;->ajc$get$mPendingAddInfo(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/ItemInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/ItemInfo;->copyFrom(Lcom/android/launcher3/ItemInfo;)V

    .line 140
    iget-wide v2, v0, Lcom/android/launcher3/ItemInfo;->container:J

    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Launcher;->completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 142
    invoke-virtual {p0, v9}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)V

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/Launcher$LauncherItds$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$LauncherItds$1;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 150
    const-wide/16 v2, 0x3e8

    .line 143
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_23
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$checkActionCallSelfPermission(Lcom/android/launcher3/Launcher;Landroid/view/View;)Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 157
    invoke-static {v0}, Lcom/android/launcher3/ShortcutInfo;->ajc$get$intent(Lcom/android/launcher3/ShortcutInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 158
    sget-boolean v3, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v3, :cond_31

    const-string v3, "android.intent.action.CALL"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 159
    const-string v0, "android.permission.CALL_PHONE"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_31

    .line 160
    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "android.permission.CALL_PHONE"

    aput-object v2, v0, v1

    const/16 v2, 0x457

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/Launcher;->requestPermissions([Ljava/lang/String;I)V

    move v0, v1

    .line 164
    :goto_30
    return v0

    :cond_31
    move v0, v2

    goto :goto_30
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$enablePageAsFullSize(Lcom/android/launcher3/Launcher;Z)V
    .registers 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-static {v1, v0, p1}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$setFullScreenPage(Lcom/android/launcher3/PagedView;Landroid/view/View;Z)V

    .line 100
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$getDynamicGridPannelView(Lcom/android/launcher3/Launcher;)Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDynamicGridPanelView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isCleanViewState(Lcom/android/launcher3/Launcher;)Z
    .registers 3

    .prologue
    .line 89
    invoke-static {p0}, Lcom/android/launcher3/Launcher;->ajc$get$mState(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Launcher$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/Launcher$State;->CLEAN_VIEW:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isDynamicGridOverViewVisible(Lcom/android/launcher3/Launcher;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 186
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDynamicGridPanelView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    move v0, v1

    :goto_7
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mDynamicGridPanelView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_13

    :goto_f
    and-int/2addr v0, v1

    return v0

    :cond_11
    move v0, v2

    goto :goto_7

    :cond_13
    move v1, v2

    goto :goto_f
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isSafeMode(Lcom/android/launcher3/Launcher;)Z
    .registers 2

    .prologue
    .line 168
    invoke-static {p0}, Lcom/android/launcher3/Launcher;->ajc$get$mIsSafeModeEnabled(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    return v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isWorkspaceState(Lcom/android/launcher3/Launcher;)Z
    .registers 3

    .prologue
    .line 85
    invoke-static {p0}, Lcom/android/launcher3/Launcher;->ajc$get$mState(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Launcher$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-eq v0, v1, :cond_12

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->ajc$get$mOnResumeState(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Launcher$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-eq v0, v1, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$moveWorkspaceToDefaultScreenWithAnimation(Lcom/android/launcher3/Launcher;)V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->moveToDefaultScreen(Z)V

    .line 95
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$setState(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher$State;)V
    .registers 5

    .prologue
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/ConciergeAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->ajc$before$com_lge_launcher3_nativejoin_ConciergeAspect$5$7dc45650(Lorg/aspectj/lang/JoinPoint;)V

    :try_start_d
    invoke-static {p0, p1}, Lcom/android/launcher3/Launcher;->ajc$set$mState(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher$State;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_10} :catch_34

    nop

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$7$144f138c(Lcom/android/launcher3/Launcher$State;)V

    nop

    .line 81
    invoke-static {}, Lcom/android/launcher3/Launcher;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->ajc$get$mState(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Launcher$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void

    .line 80
    :catch_34
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$7$144f138c(Lcom/android/launcher3/Launcher$State;)V

    throw v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$setWorkspaceBG(Lcom/android/launcher3/Launcher;Z)V
    .registers 7

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 172
    invoke-static {p0}, Lcom/android/launcher3/Launcher;->ajc$get$mWorkspaceBackgroundDrawable(Lcom/android/launcher3/Launcher;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 173
    instance-of v0, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_24

    move-object v0, v1

    .line 174
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 175
    if-eqz p1, :cond_25

    move v0, v2

    :goto_15
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 176
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 177
    if-nez p1, :cond_27

    :goto_21
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 179
    :cond_24
    return-void

    :cond_25
    move v0, v3

    .line 175
    goto :goto_15

    :cond_27
    move v2, v3

    .line 177
    goto :goto_21
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$addWidgetInNewPage(Lcom/android/launcher3/Launcher;Landroid/content/Intent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->addWidgetInNewPage(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$checkActionCallSelfPermission(Lcom/android/launcher3/Launcher;Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->checkActionCallSelfPermission(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$enablePageAsFullSize(Lcom/android/launcher3/Launcher;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->enablePageAsFullSize(Z)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$getDynamicGridPannelView(Lcom/android/launcher3/Launcher;)Landroid/view/ViewGroup;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDynamicGridPannelView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isCleanViewState(Lcom/android/launcher3/Launcher;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isCleanViewState()Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isDynamicGridOverViewVisible(Lcom/android/launcher3/Launcher;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isDynamicGridOverViewVisible()Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isSafeMode(Lcom/android/launcher3/Launcher;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isSafeMode()Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isWorkspaceState(Lcom/android/launcher3/Launcher;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceState()Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$moveWorkspaceToDefaultScreenWithAnimation(Lcom/android/launcher3/Launcher;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->moveWorkspaceToDefaultScreenWithAnimation()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$setState(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher$State;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->setState(Lcom/android/launcher3/Launcher$State;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$setWorkspaceBG(Lcom/android/launcher3/Launcher;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->setWorkspaceBG(Z)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativeitds/LauncherItds;

    invoke-direct {v0}, Lcom/lge/launcher3/nativeitds/LauncherItds;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherItds;

    return-void
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "LauncherItds.aj"

    const-class v2, Lcom/lge/launcher3/nativeitds/LauncherItds;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "setState"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, "com.android.launcher3.Launcher$State"

    const-string v5, "curState"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x4f

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativeitds/LauncherItds;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherItds;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativeitds_LauncherItds"

    sget-object v2, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherItds;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherItds;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
