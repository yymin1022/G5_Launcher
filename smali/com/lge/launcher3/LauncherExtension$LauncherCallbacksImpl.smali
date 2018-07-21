.class public Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;
.super Ljava/lang/Object;
.source "LauncherExtension.java"

# interfaces
.implements Lcom/android/launcher3/LauncherCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/LauncherExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LauncherCallbacksImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherClientCallbacksImpl;,
        Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherOverlayImpl;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mLauncherClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

.field mLauncherOverlay:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherClientCallbacksImpl;

.field private mLauncherOverlayCallbacks:Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;

.field private mOverlayProgress:F

.field final synthetic this$0:Lcom/lge/launcher3/LauncherExtension;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/LauncherExtension;)V
    .registers 3

    .prologue
    .line 263
    iput-object p1, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const-class v0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->TAG:Ljava/lang/String;

    .line 266
    new-instance v0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherClientCallbacksImpl;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherClientCallbacksImpl;-><init>(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;)V

    iput-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->mLauncherOverlay:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherClientCallbacksImpl;

    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;)Lcom/google/android/libraries/launcherclient/LauncherClient;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->mLauncherClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;F)V
    .registers 2

    .prologue
    .line 672
    iput p1, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->mOverlayProgress:F

    return-void
.end method

.method static synthetic access$2(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;)V
    .registers 2

    .prologue
    .line 671
    iput-object p1, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->mLauncherOverlayCallbacks:Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;

    return-void
.end method

.method static synthetic access$3(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;)Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;
    .registers 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->mLauncherOverlayCallbacks:Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;)Lcom/lge/launcher3/LauncherExtension;
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    return-object v0
.end method

.method private checkConditionToMoveDefaultScreen(Landroid/content/Intent;)Z
    .registers 6

    .prologue
    .line 406
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension;->access$15(Lcom/lge/launcher3/LauncherExtension;)Lcom/android/launcher3/Launcher$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_2e

    .line 407
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_QMEMOPLUS_PANEL:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 408
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    iget-object v0, v0, Lcom/lge/launcher3/LauncherExtension;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_2e

    .line 409
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    iget-object v0, v0, Lcom/lge/launcher3/LauncherExtension;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 410
    iget-object v1, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    iget-object v1, v1, Lcom/lge/launcher3/LauncherExtension;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    .line 409
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v0

    .line 410
    const-wide/16 v2, -0x12d

    .line 409
    cmp-long v0, v0, v2

    if-eqz v0, :cond_5c

    .line 411
    :cond_2e
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension;->access$16(Lcom/lge/launcher3/LauncherExtension;)Lcom/android/launcher3/LauncherCallbacks;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 412
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension;->access$16(Lcom/lge/launcher3/LauncherExtension;)Lcom/android/launcher3/LauncherCallbacks;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;

    iget v0, v0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->mOverlayProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5a

    .line 413
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension;->access$14(Lcom/lge/launcher3/LauncherExtension;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 406
    :cond_5a
    const/4 v0, 0x0

    :goto_5b
    return v0

    :cond_5c
    const/4 v0, 0x1

    goto :goto_5b
.end method

.method private isSupportedLGPreferenceFragment()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation

    .prologue
    .line 657
    const-class v0, Landroid/preference/LGPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 658
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public bindAllApplications(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 476
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 437
    return-void
.end method

.method public finishBindingItems(Z)V
    .registers 4

    .prologue
    .line 462
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-virtual {v0}, Lcom/lge/launcher3/LauncherExtension;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 463
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-virtual {v0}, Lcom/lge/launcher3/LauncherExtension;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$changeDefaultPageForDirectv(Lcom/android/launcher3/Workspace;Z)V

    .line 465
    :cond_12
    return-void
.end method

.method public getAllAppsSearchBarController()Lcom/android/launcher3/allapps/AllAppsSearchBarController;
    .registers 2

    .prologue
    .line 743
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstRunActivity()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 615
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntroScreen()Landroid/view/View;
    .registers 2

    .prologue
    .line 630
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPredictedApps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 748
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getQsbBar()Landroid/view/View;
    .registers 2

    .prologue
    .line 610
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleBackPressed()Z
    .registers 3

    .prologue
    .line 446
    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->isExtViewMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 447
    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->cancelExtViewMode()V

    .line 450
    :cond_9
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/ConciergeItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_Launcher$getState(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Launcher$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-virtual {v0}, Lcom/lge/launcher3/LauncherExtension;->isOnCustomContent()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 451
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$moveWorkspaceToDefaultScreenWithAnimation(Lcom/android/launcher3/Launcher;)V

    .line 453
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public hasCustomContentToLeft()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 546
    iget-object v1, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-virtual {v1}, Lcom/lge/launcher3/LauncherExtension;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->getGoogleNowEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 553
    :cond_d
    :goto_d
    return v0

    .line 549
    :cond_e
    iget-object v1, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-virtual {v1}, Lcom/lge/launcher3/LauncherExtension;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->existSmartBulletinItemInDataBase(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 550
    iget-object v1, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-virtual {v1}, Lcom/lge/launcher3/LauncherExtension;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->existQmemoPanelItemInDataBase(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 551
    :cond_26
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public hasDismissableIntroScreen()Z
    .registers 2

    .prologue
    .line 625
    const/4 v0, 0x0

    return v0
.end method

.method public hasFirstRunActivity()Z
    .registers 2

    .prologue
    .line 620
    const/4 v0, 0x0

    return v0
.end method

.method public hasSettings()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 646
    :try_start_1
    invoke-direct {p0}, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->isSupportedLGPreferenceFragment()Z
    :try_end_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_4} :catch_8

    move-result v1

    if-eqz v1, :cond_7

    .line 653
    :cond_7
    :goto_7
    return v0

    .line 649
    :catch_8
    move-exception v0

    .line 650
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 651
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isLauncherPreinstalled()Z
    .registers 2

    .prologue
    .line 668
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .prologue
    .line 418
    const/16 v0, 0x458

    if-ne p1, v0, :cond_10

    const/16 v0, 0x459

    if-ne p2, v0, :cond_10

    .line 419
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/LauncherExtension;->closeFolder([Z)V

    .line 421
    :cond_10
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->mLauncherClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-eqz v0, :cond_9

    .line 290
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->mLauncherClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->onAttachedToWindow()V

    .line 292
    :cond_9
    return-void
.end method

.method public onClickAddWidgetButton(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 502
    return-void
.end method

.method public onClickAllAppsButton(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 469
    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->isExtViewMode()Z

    move-result v0

    if-nez v0, :cond_9

    .line 470
    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->cancelExtViewMode()V

    .line 472
    :cond_9
    return-void
.end method

.method public onClickAppShortcut(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 484
    return-void
.end method

.method public onClickFolderIcon(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 480
    return-void
.end method

.method public onClickPagedViewIcon(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 488
    return-void
.end method

.method public onClickSettingsButton(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 496
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension;->access$17(Lcom/lge/launcher3/LauncherExtension;)V

    .line 497
    return-void
.end method

.method public onClickWallpaperPicker(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 492
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 281
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-virtual {v0}, Lcom/lge/launcher3/LauncherExtension;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->getGoogleNowEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 282
    new-instance v0, Lcom/google/android/libraries/launcherclient/LauncherClient;

    iget-object v1, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    iget-object v2, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->mLauncherOverlay:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherClientCallbacksImpl;

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/launcherclient/LauncherClient;-><init>(Landroid/app/Activity;Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;)V

    iput-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->mLauncherClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    .line 284
    :cond_17
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension;->access$1(Lcom/lge/launcher3/LauncherExtension;)V

    .line 285
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0}, Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;->unregisterReceiver(Landroid/content/Context;)V

    .line 354
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension;->access$10(Lcom/lge/launcher3/LauncherExtension;)V

    .line 355
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension;->access$11(Lcom/lge/launcher3/LauncherExtension;)V

    .line 357
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->mLauncherClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-eqz v0, :cond_18

    .line 358
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->mLauncherClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->onDestroy()V

    .line 360
    :cond_18
    invoke-static {}, Lcom/lge/launcher3/folder/FolderColorUtil;->destoryFolderIconMask()V

    .line 362
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChangeReciever;->unregisterReceiver(Landroid/content/Context;)V

    .line 363
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0}, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->unregisterReceiver(Landroid/content/Context;)V

    .line 365
    invoke-static {}, Lcom/lge/launcher3/DDTChangeWatcher;->getInstance()Lcom/lge/launcher3/DDTChangeWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/DDTChangeWatcher;->removeAllListeners()V

    .line 366
    invoke-static {}, Lcom/lge/launcher3/ScreenZoomChangeWatcher;->getInstance()Lcom/lge/launcher3/ScreenZoomChangeWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/ScreenZoomChangeWatcher;->removeAllListeners()V

    .line 367
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->mLauncherClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-eqz v0, :cond_9

    .line 297
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->mLauncherClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->onDetachedFromWindow()V

    .line 299
    :cond_9
    return-void
.end method

.method public onDragStarted(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 515
    return-void
.end method

.method public onHomeIntent()V
    .registers 1

    .prologue
    .line 442
    return-void
.end method

.method public onInteractionBegin()V
    .registers 3

    .prologue
    .line 519
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->mLauncherClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-eqz v0, :cond_a

    .line 520
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->mLauncherClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->requestHotwordDetection(Z)V

    .line 523
    :cond_a
    return-void
.end method

.method public onInteractionEnd()V
    .registers 3

    .prologue
    .line 527
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->mLauncherClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-eqz v0, :cond_a

    .line 528
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->mLauncherClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->requestHotwordDetection(Z)V

    .line 531
    :cond_a
    return-void
.end method

.method public onLauncherProviderChange()V
    .registers 1

    .prologue
    .line 458
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x1e

    .line 379
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension;->access$12(Lcom/lge/launcher3/LauncherExtension;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    .line 380
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    iget-object v0, v0, Lcom/lge/launcher3/LauncherExtension;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v1, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$1;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$1;-><init>(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 403
    :cond_17
    :goto_17
    return-void

    .line 390
    :cond_18
    invoke-direct {p0, p1}, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->checkConditionToMoveDefaultScreen(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 391
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    iget-object v0, v0, Lcom/lge/launcher3/LauncherExtension;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v1, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$2;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$2;-><init>(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_17
.end method

.method public onPageSwitch(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 506
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-virtual {v0}, Lcom/lge/launcher3/LauncherExtension;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->clearAllResizeFrames()V

    .line 507
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 340
    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->isExtViewMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 341
    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->cancelExtViewMode()V

    .line 344
    :cond_9
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->mLauncherClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-eqz v0, :cond_12

    .line 345
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->mLauncherClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->onPause()V

    .line 348
    :cond_12
    invoke-static {}, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->enableQueue()V

    .line 349
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 375
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    .prologue
    .line 429
    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->isExtViewMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 430
    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->cancelExtViewMode()V

    .line 432
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    .prologue
    .line 733
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/launcher3/LauncherExtension;->access$2(Lcom/lge/launcher3/LauncherExtension;I)V

    .line 309
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension;->access$3(Lcom/lge/launcher3/LauncherExtension;)V

    .line 310
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension;->access$4(Lcom/lge/launcher3/LauncherExtension;)V

    .line 311
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension;->access$5(Lcom/lge/launcher3/LauncherExtension;)V

    .line 312
    sget-object v0, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 313
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-virtual {v0}, Lcom/lge/launcher3/LauncherExtension;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/initialguide/InitialGuideManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->checkNeedShowAgain()V

    .line 315
    :cond_2c
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->mLauncherClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-eqz v0, :cond_35

    .line 316
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->mLauncherClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->onResume()V

    .line 318
    :cond_35
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension;->access$6(Lcom/lge/launcher3/LauncherExtension;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 319
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/launcher3/LauncherExtension;->access$7(Lcom/lge/launcher3/LauncherExtension;Z)V

    .line 322
    :cond_43
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0}, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->disableAndFlushQueue(Landroid/content/Context;)V

    .line 323
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 371
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/launcher3/LauncherExtension;->access$8(Lcom/lge/launcher3/LauncherExtension;Z)V

    .line 328
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 332
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0, v1}, Lcom/lge/launcher3/LauncherExtension;->access$8(Lcom/lge/launcher3/LauncherExtension;Z)V

    .line 333
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension;->access$9(Lcom/lge/launcher3/LauncherExtension;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 334
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0, v1}, Lcom/lge/launcher3/LauncherExtension;->access$7(Lcom/lge/launcher3/LauncherExtension;Z)V

    .line 336
    :cond_13
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 2

    .prologue
    .line 738
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .prologue
    .line 425
    return-void
.end method

.method public onWorkspaceLockedChanged()V
    .registers 1

    .prologue
    .line 511
    return-void
.end method

.method public overrideWallpaperDimensions()Z
    .registers 2

    .prologue
    .line 663
    const/4 v0, 0x0

    return v0
.end method

.method public populateCustomContentContainer()V
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 558
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-virtual {v0}, Lcom/lge/launcher3/LauncherExtension;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->getGoogleNowEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 606
    :cond_10
    :goto_10
    return-void

    .line 563
    :cond_11
    const-string v0, "populateCustomContentContainer is called"

    .line 564
    iget-object v2, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-virtual {v2}, Lcom/lge/launcher3/LauncherExtension;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 565
    invoke-static {v3}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->existSmartBulletinItemInDataBase(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 566
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-virtual {v0}, Lcom/lge/launcher3/LauncherExtension;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f04003d

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 567
    check-cast v0, Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    .line 568
    const-string v2, "This is for SmartBulletin"

    move-object v9, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v9

    .line 603
    :goto_35
    iget-object v3, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-virtual {v3}, Lcom/lge/launcher3/LauncherExtension;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 604
    iget-object v3, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-virtual {v3, v2, v1, v0}, Lcom/lge/launcher3/LauncherExtension;->addToCustomContentPage(Landroid/view/View;Lcom/android/launcher3/Launcher$CustomContentCallbacks;Ljava/lang/String;)V

    goto :goto_10

    .line 569
    :cond_43
    invoke-static {v3}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->existQmemoPanelItemInDataBase(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 570
    const-string v2, "com.lge.qmemoplus"

    .line 571
    const-string v4, "com.lge.qmemoplus.appwidget.QMemoPlusFullAppWidgetProvider"

    .line 572
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v2, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-virtual {v2}, Lcom/lge/launcher3/LauncherExtension;->getAppWidgetHost()Lcom/android/launcher3/LauncherAppWidgetHost;

    move-result-object v2

    .line 574
    if-eqz v2, :cond_a2

    .line 575
    sget-object v0, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$QMemoWidgetKey;->WIDGETID:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$QMemoWidgetKey;

    invoke-static {v3, v6, v0, v7}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->getInt(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)I

    move-result v0

    .line 576
    if-eq v0, v7, :cond_65

    .line 577
    invoke-virtual {v2, v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 579
    :cond_65
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 580
    if-ne v0, v7, :cond_78

    .line 581
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->TAG:Ljava/lang/String;

    const-string v1, "appWidgetId is -1"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    sget-object v0, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$QMemoWidgetKey;->WIDGETID:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$QMemoWidgetKey;

    invoke-static {v3, v6, v0, v7}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->putInt(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)Z

    goto :goto_10

    .line 585
    :cond_78
    sget-object v4, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$QMemoWidgetKey;->WIDGETID:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$QMemoWidgetKey;

    invoke-static {v3, v6, v4, v0}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->putInt(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)Z

    .line 586
    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    .line 587
    invoke-virtual {v4, v0, v5}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 588
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v4

    invoke-static {v3, v5, v4}, Lcom/android/launcher3/LauncherModel;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v4

    .line 589
    invoke-static {v2}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherAppWidgetHostItds$com_android_launcher3_LauncherAppWidgetHost$getLauncher(Lcom/android/launcher3/LauncherAppWidgetHost;)Lcom/android/launcher3/Launcher;

    move-result-object v5

    invoke-virtual {v2, v5, v0, v4}, Lcom/android/launcher3/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    .line 590
    if-eqz v2, :cond_9c

    .line 591
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 592
    invoke-virtual {v2, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 594
    :cond_9c
    invoke-static {v3, v8}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->putEnableQmemopluspanel(Landroid/content/Context;Z)V

    .line 595
    const-string v0, "This is for QMemoPlus panel"

    goto :goto_35

    .line 597
    :cond_a2
    iget-object v2, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->TAG:Ljava/lang/String;

    const-string v3, "getAppWidgetHost() is null"

    invoke-static {v2, v3}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 599
    goto :goto_35

    .line 600
    :cond_ab
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->TAG:Ljava/lang/String;

    const-string v1, "FullScreenItemInfo does not exist"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10
.end method

.method public preOnCreate()V
    .registers 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChangeReciever;->registerReceiver(Landroid/content/Context;)V

    .line 271
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0}, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->registerReceiver(Landroid/content/Context;)V

    .line 273
    invoke-static {}, Lcom/lge/launcher3/DDTChangeWatcher;->getInstance()Lcom/lge/launcher3/DDTChangeWatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/DDTChangeWatcher;->addListener(Lcom/lge/launcher3/DDTChangeWatcher$DDTChangeListener;)Z

    .line 275
    invoke-static {}, Lcom/lge/launcher3/ScreenZoomChangeWatcher;->getInstance()Lcom/lge/launcher3/ScreenZoomChangeWatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/ScreenZoomChangeWatcher;->addListener(Lcom/lge/launcher3/ScreenZoomChangeWatcher$ScreenZoomChangeListener;)Z

    .line 276
    invoke-static {}, Lcom/lge/launcher3/ScreenZoomChangeWatcher;->getInstance()Lcom/lge/launcher3/ScreenZoomChangeWatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/ScreenZoomChangeWatcher;->checkScreenZoomChangedOnCreate(Landroid/content/Context;)Z

    .line 277
    return-void
.end method

.method public preOnResume()V
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-virtual {v0}, Lcom/lge/launcher3/LauncherExtension;->invalidateHasCustomContentToLeft()V

    .line 304
    return-void
.end method

.method public providesSearch()Z
    .registers 2

    .prologue
    .line 535
    const/4 v0, 0x1

    return v0
.end method

.method public setLauncherSearchCallback(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 754
    return-void
.end method

.method public shouldMoveToDefaultScreenOnHomeIntent()Z
    .registers 2

    .prologue
    .line 635
    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->isExtViewMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 636
    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->cancelExtViewMode()V

    .line 637
    const/4 v0, 0x0

    .line 640
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)Z
    .registers 6

    .prologue
    .line 541
    const/4 v0, 0x0

    return v0
.end method
