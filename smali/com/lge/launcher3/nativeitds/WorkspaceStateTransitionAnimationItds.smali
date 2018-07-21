.class public Lcom/lge/launcher3/nativeitds/WorkspaceStateTransitionAnimationItds;
.super Ljava/lang/Object;
.source "WorkspaceStateTransitionAnimationItds.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/WorkspaceStateTransitionAnimationItds;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/nativeitds/WorkspaceStateTransitionAnimationItds;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativeitds/WorkspaceStateTransitionAnimationItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_WorkspaceStateTransitionAnimationItds$com_android_launcher3_WorkspaceStateTransitionAnimation$mPanelAlpha(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;)F
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->ajc$get$mPanelAlpha(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;)F

    move-result v0

    return v0
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_WorkspaceStateTransitionAnimationItds$com_android_launcher3_WorkspaceStateTransitionAnimation$mPanelAlpha(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;)V
    .registers 1

    .prologue
    .line 12
    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_WorkspaceStateTransitionAnimationItds$com_android_launcher3_WorkspaceStateTransitionAnimation$mPanelAlpha(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;F)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->ajc$set$mPanelAlpha(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;F)V

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceStateTransitionAnimationItds$com_android_launcher3_WorkspaceStateTransitionAnimation$animateDynamicPanel(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;Lcom/android/launcher3/TransitionStates;)V
    .registers 4

    .prologue
    .line 16
    invoke-static {p1}, Lcom/android/launcher3/TransitionStates;->ajc$get$stateIsOverview(Lcom/android/launcher3/TransitionStates;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 17
    invoke-static {p1}, Lcom/android/launcher3/TransitionStates;->ajc$get$oldStateIsOverview(Lcom/android/launcher3/TransitionStates;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {p1}, Lcom/android/launcher3/TransitionStates;->ajc$get$stateIsNormal(Lcom/android/launcher3/TransitionStates;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 18
    :cond_12
    invoke-static {p0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->ajc$get$mLauncher(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$getDynamicGridPannelView(Lcom/android/launcher3/Launcher;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 20
    :cond_1f
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceStateTransitionAnimationItds$com_android_launcher3_WorkspaceStateTransitionAnimation$getOverViewIndicatorBottomMargin(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;F)I
    .registers 4

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-static {p0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->ajc$get$mLauncher(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 36
    invoke-static {p0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->ajc$get$mLauncher(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_29

    .line 37
    invoke-static {p0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->ajc$get$mLauncher(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 38
    const v1, 0x7f090017

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 38
    const v1, -0x406ccccd    # -1.15f

    .line 37
    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 44
    :cond_28
    :goto_28
    return v0

    .line 40
    :cond_29
    const v0, 0x3fb33333    # 1.4f

    .line 41
    mul-float/2addr v0, p1

    float-to-int v0, v0

    goto :goto_28
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceStateTransitionAnimationItds$com_android_launcher3_WorkspaceStateTransitionAnimation$setVisiblePageIndicator(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 23
    if-eqz p1, :cond_25

    .line 24
    invoke-static {p0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->ajc$get$mWorkspace(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;)Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    if-nez v0, :cond_26

    invoke-static {p0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->ajc$get$mWorkspace(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;)Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v0

    if-nez v0, :cond_26

    .line 25
    invoke-static {p0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->ajc$get$mWorkspace(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;)Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 26
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    :cond_25
    :goto_25
    return-void

    .line 28
    :cond_26
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_25
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceStateTransitionAnimationItds$com_android_launcher3_WorkspaceStateTransitionAnimation$animateDynamicPanel(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;Lcom/android/launcher3/TransitionStates;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->animateDynamicPanel(Lcom/android/launcher3/TransitionStates;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceStateTransitionAnimationItds$com_android_launcher3_WorkspaceStateTransitionAnimation$getOverViewIndicatorBottomMargin(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;F)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getOverViewIndicatorBottomMargin(F)I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceStateTransitionAnimationItds$com_android_launcher3_WorkspaceStateTransitionAnimation$setVisiblePageIndicator(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->setVisiblePageIndicator(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativeitds/WorkspaceStateTransitionAnimationItds;

    invoke-direct {v0}, Lcom/lge/launcher3/nativeitds/WorkspaceStateTransitionAnimationItds;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativeitds/WorkspaceStateTransitionAnimationItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/WorkspaceStateTransitionAnimationItds;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativeitds/WorkspaceStateTransitionAnimationItds;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/WorkspaceStateTransitionAnimationItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/WorkspaceStateTransitionAnimationItds;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativeitds_WorkspaceStateTransitionAnimationItds"

    sget-object v2, Lcom/lge/launcher3/nativeitds/WorkspaceStateTransitionAnimationItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativeitds/WorkspaceStateTransitionAnimationItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/WorkspaceStateTransitionAnimationItds;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/WorkspaceStateTransitionAnimationItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/WorkspaceStateTransitionAnimationItds;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
