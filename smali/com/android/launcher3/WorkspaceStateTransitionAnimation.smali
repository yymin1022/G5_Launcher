.class public Lcom/android/launcher3/WorkspaceStateTransitionAnimation;
.super Ljava/lang/Object;
.source "WorkspaceStateTransitionAnimation.java"


# static fields
.field static final BACKGROUND_FADE_OUT_DURATION:I = 0x15e

.field public static final SCROLL_TO_CURRENT_PAGE:I = -0x1

.field public static final TAG:Ljava/lang/String; = "WorkspaceStateTransitionAnimation"

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field mAllAppsTransitionTime:I

.field mCurrentScale:F

.field mLastChildCount:I

.field final mLauncher:Lcom/android/launcher3/Launcher;

.field mNewAlphas:[F

.field mNewBackgroundAlphas:[F

.field mNewScale:F

.field mOldAlphas:[F

.field mOldBackgroundAlphas:[F

.field mOverlayTransitionTime:I

.field mOverviewModeShrinkFactor:F

.field mOverviewTransitionTime:I

.field private mPanelAlpha:F

.field mSpringLoadedShrinkFactor:F

.field mStateAnimator:Landroid/animation/AnimatorSet;

.field final mWorkspace:Lcom/android/launcher3/Workspace;

.field mWorkspaceFadeInAdjacentScreens:Z

.field mWorkspaceScrimAlpha:F

.field final mZoomInInterpolator:Lcom/android/launcher3/ZoomInInterpolator;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;)V
    .registers 7

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/WorkspaceStateTransitionAnimationItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_WorkspaceStateTransitionAnimationItds$com_android_launcher3_WorkspaceStateTransitionAnimation$mPanelAlpha(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;)V

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLastChildCount:I

    .line 195
    new-instance v0, Lcom/android/launcher3/ZoomInInterpolator;

    invoke-direct {v0}, Lcom/android/launcher3/ZoomInInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mZoomInInterpolator:Lcom/android/launcher3/ZoomInInterpolator;

    .line 206
    iput-object p1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 207
    iput-object p2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 209
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 210
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 211
    const v2, 0x7f0c0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mAllAppsTransitionTime:I

    .line 212
    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mOverviewTransitionTime:I

    .line 213
    const v2, 0x7f0c0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mOverlayTransitionTime:I

    .line 215
    const v2, 0x7f0c0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 214
    iput v2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mSpringLoadedShrinkFactor:F

    .line 216
    const v2, 0x7f0c0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspaceScrimAlpha:F

    .line 217
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DeviceProfile;->getOverviewModeScale(Z)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mOverviewModeShrinkFactor:F

    .line 218
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->shouldFadeAdjacentWorkspaceScreens()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspaceFadeInAdjacentScreens:Z

    .line 219
    return-void
.end method

.method public static ajc$get$mLauncher(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;)Lcom/android/launcher3/Launcher;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method public static ajc$get$mOverlayTransitionTime(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mOverlayTransitionTime:I

    return v0
.end method

.method public static ajc$get$mPanelAlpha(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;)F
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mPanelAlpha:F

    return v0
.end method

.method public static ajc$get$mStateAnimator(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;)Landroid/animation/AnimatorSet;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public static ajc$get$mWorkspace(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;)Lcom/android/launcher3/Workspace;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    return-object v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "WorkspaceStateTransitionAnimation.java"

    const-class v2, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getAnimationToState"

    const-string v3, "com.android.launcher3.WorkspaceStateTransitionAnimation"

    const-string v4, "com.android.launcher3.Workspace$State:com.android.launcher3.Workspace$State:int:boolean:boolean:java.util.HashMap"

    const-string v5, "fromState:toState:toPage:animated:hasOverlaySearchBar:layerViews"

    const-string v6, ""

    const-string v7, "android.animation.AnimatorSet"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xdd

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "2"

    const-string v2, "animateWorkspace"

    const-string v3, "com.android.launcher3.WorkspaceStateTransitionAnimation"

    const-string v4, "com.android.launcher3.TransitionStates:int:boolean:int:java.util.HashMap:boolean"

    const-string v5, "states:toPage:animated:duration:layerViews:accessibilityEnabled"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x10e

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$set$mLauncher(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;Lcom/android/launcher3/Launcher;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method public static ajc$set$mOverlayTransitionTime(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mOverlayTransitionTime:I

    return-void
.end method

.method public static ajc$set$mPanelAlpha(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;F)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mPanelAlpha:F

    return-void
.end method

.method public static ajc$set$mStateAnimator(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;Landroid/animation/AnimatorSet;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static ajc$set$mWorkspace(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;Lcom/android/launcher3/Workspace;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    return-void
.end method

.method private animateBackgroundGradient(Lcom/android/launcher3/TransitionStates;ZI)V
    .registers 10

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v1

    .line 570
    invoke-virtual {v1}, Lcom/android/launcher3/DragLayer;->getBackgroundAlpha()F

    move-result v2

    .line 571
    iget-boolean v0, p1, Lcom/android/launcher3/TransitionStates;->stateIsNormal:Z

    if-eqz v0, :cond_40

    const/4 v0, 0x0

    .line 573
    :goto_f
    cmpl-float v3, v0, v2

    if-eqz v3, :cond_3f

    .line 574
    if-eqz p2, :cond_43

    .line 578
    iget-object v3, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v2, 0x1

    aput v0, v4, v2

    invoke-static {v3, v4}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 579
    new-instance v2, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$3;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$3;-><init>(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;Lcom/android/launcher3/DragLayer;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 586
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 587
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 588
    iget-object v1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 593
    :cond_3f
    :goto_3f
    return-void

    .line 571
    :cond_40
    iget v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspaceScrimAlpha:F

    goto :goto_f

    .line 590
    :cond_43
    invoke-virtual {v1, v0}, Lcom/android/launcher3/DragLayer;->setBackgroundAlpha(F)V

    goto :goto_3f
.end method

.method private animateSearchBar(Lcom/android/launcher3/TransitionStates;ZIZLjava/util/HashMap;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/TransitionStates;",
            "ZIZ",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOrCreateQsbBar()Landroid/view/View;

    move-result-object v3

    .line 506
    if-eqz v3, :cond_1e

    .line 507
    iget-boolean v2, p1, Lcom/android/launcher3/TransitionStates;->stateIsNormal:Z

    .line 508
    if-eqz v2, :cond_1f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 509
    :goto_e
    if-eqz p2, :cond_4f

    .line 510
    if-eqz p4, :cond_21

    .line 512
    iget-object v6, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$2;

    move-object v1, p0

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$2;-><init>(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;ZLandroid/view/View;FZ)V

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 557
    :cond_1e
    :goto_1e
    return-void

    .line 508
    :cond_1f
    const/4 v4, 0x0

    goto :goto_e

    .line 536
    :cond_21
    new-instance v0, Lcom/android/launcher3/LauncherViewPropertyAnimator;

    invoke-direct {v0, v3}, Lcom/android/launcher3/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Lcom/android/launcher3/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/LauncherViewPropertyAnimator;

    move-result-object v0

    .line 537
    new-instance v1, Lcom/android/launcher3/AlphaUpdateListener;

    .line 538
    invoke-direct {v1, v3, p6}, Lcom/android/launcher3/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    .line 537
    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 539
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 540
    if-eqz p5, :cond_4b

    .line 543
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p5, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    :goto_41
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 549
    iget-object v1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1e

    .line 546
    :cond_4b
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherViewPropertyAnimator;->withLayer()Lcom/android/launcher3/LauncherViewPropertyAnimator;

    goto :goto_41

    .line 553
    :cond_4f
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 554
    invoke-static {v3, p6}, Lcom/android/launcher3/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_1e
.end method

.method private animateWorkspace(Lcom/android/launcher3/TransitionStates;IZILjava/util/HashMap;Z)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/TransitionStates;",
            "IZI",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    sget-object v2, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p2 .. p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static/range {p3 .. p3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static/range {p4 .. p4}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    const/4 v4, 0x5

    invoke-static/range {p6 .. p6}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v2, v0, v1, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v10

    .line 274
    :try_start_2f
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->reinitializeAnimationArrays()V

    .line 277
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->cancelAnimation()V

    .line 278
    if-eqz p3, :cond_3f

    .line 279
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 283
    :cond_3f
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/TransitionStates;->stateIsSpringLoaded:Z

    if-nez v2, :cond_4b

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/TransitionStates;->stateIsOverview:Z

    if-eqz v2, :cond_1d8

    .line 284
    :cond_4b
    const/high16 v2, 0x3f800000    # 1.0f

    move v9, v2

    .line 285
    :goto_4e
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/TransitionStates;->stateIsNormal:Z

    if-nez v2, :cond_5a

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/TransitionStates;->stateIsSpringLoaded:Z

    if-eqz v2, :cond_1dc

    .line 286
    :cond_5a
    const/high16 v2, 0x3f800000    # 1.0f

    move v8, v2

    .line 287
    :goto_5d
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/TransitionStates;->stateIsOverview:Z

    if-eqz v2, :cond_1e0

    const/high16 v2, 0x3f800000    # 1.0f

    move v7, v2

    .line 288
    :goto_66
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/TransitionStates;->stateIsOverview:Z

    if-nez v2, :cond_72

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/TransitionStates;->stateIsOverviewHidden:Z

    if-eqz v2, :cond_1e4

    .line 289
    :cond_72
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getOverviewModeTranslationY()I

    move-result v2

    .line 288
    :goto_7a
    int-to-float v11, v2

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v12

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v13

    .line 294
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    .line 296
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/TransitionStates;->oldStateIsOverview:Z

    if-eqz v2, :cond_1e7

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->disableFreeScroll()V

    .line 302
    :goto_9e
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/TransitionStates;->stateIsNormal:Z

    if-nez v2, :cond_b2

    .line 303
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/TransitionStates;->stateIsSpringLoaded:Z

    if-eqz v2, :cond_1ed

    .line 304
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mSpringLoadedShrinkFactor:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    .line 310
    :cond_b2
    :goto_b2
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_bf

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getPageNearestToCenterOfScreen()I

    move-result p2

    .line 313
    :cond_bf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mZoomInInterpolator:Lcom/android/launcher3/ZoomInInterpolator;

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/launcher3/Workspace;->snapToPage(IILandroid/animation/TimeInterpolator;)V

    .line 315
    const/4 v2, 0x0

    move v6, v2

    :goto_d0
    if-lt v6, v12, :cond_20c

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/ViewGroup;

    move-result-object v4

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v5

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getPageIndicator()Lcom/android/launcher3/PageIndicator;

    move-result-object v6

    .line 355
    if-eqz p3, :cond_3c8

    .line 356
    new-instance v2, Lcom/android/launcher3/LauncherViewPropertyAnimator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-direct {v2, v3}, Lcom/android/launcher3/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 357
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher3/LauncherViewPropertyAnimator;

    move-result-object v3

    .line 358
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    invoke-virtual {v3, v9}, Lcom/android/launcher3/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher3/LauncherViewPropertyAnimator;

    move-result-object v3

    .line 359
    invoke-virtual {v3, v11}, Lcom/android/launcher3/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/LauncherViewPropertyAnimator;

    move-result-object v3

    .line 360
    move/from16 v0, p4

    int-to-long v14, v0

    invoke-virtual {v3, v14, v15}, Lcom/android/launcher3/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v3

    .line 361
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mZoomInInterpolator:Lcom/android/launcher3/ZoomInInterpolator;

    invoke-virtual {v3, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 363
    const/4 v2, 0x0

    move v3, v2

    :goto_120
    if-lt v3, v12, :cond_29f

    .line 395
    if-eqz v6, :cond_14c

    .line 397
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/TransitionStates;->stateIsOverview:Z

    if-eqz v2, :cond_37c

    .line 398
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/lge/launcher3/nativeitds/WorkspaceStateTransitionAnimationItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceStateTransitionAnimationItds$com_android_launcher3_WorkspaceStateTransitionAnimation$getOverViewIndicatorBottomMargin(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;F)I

    move-result v2

    .line 402
    :goto_130
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    move/from16 v0, p4

    int-to-long v12, v0

    invoke-virtual {v2, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 405
    :cond_14c
    new-instance v2, Lcom/android/launcher3/LauncherViewPropertyAnimator;

    invoke-direct {v2, v5}, Lcom/android/launcher3/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 406
    invoke-virtual {v2, v8}, Lcom/android/launcher3/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/LauncherViewPropertyAnimator;

    move-result-object v2

    .line 407
    new-instance v3, Lcom/android/launcher3/AlphaUpdateListener;

    move/from16 v0, p6

    invoke-direct {v3, v5, v0}, Lcom/android/launcher3/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 410
    new-instance v3, Lcom/android/launcher3/LauncherViewPropertyAnimator;

    invoke-direct {v3, v4}, Lcom/android/launcher3/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v7}, Lcom/android/launcher3/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/LauncherViewPropertyAnimator;

    move-result-object v3

    .line 411
    new-instance v7, Lcom/android/launcher3/AlphaUpdateListener;

    .line 412
    move/from16 v0, p6

    invoke-direct {v7, v4, v0}, Lcom/android/launcher3/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    .line 411
    invoke-virtual {v3, v7}, Lcom/android/launcher3/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 416
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 417
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 418
    if-eqz p5, :cond_37f

    .line 421
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    :goto_192
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/launcher3/TransitionStates;->workspaceToOverview:Z

    if-eqz v5, :cond_387

    .line 431
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v5}, Lcom/android/launcher3/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 432
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/launcher3/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 448
    :goto_1a6
    move/from16 v0, p4

    int-to-long v6, v0

    invoke-virtual {v3, v6, v7}, Lcom/android/launcher3/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 450
    move/from16 v0, p4

    int-to-long v6, v0

    invoke-virtual {v2, v6, v7}, Lcom/android/launcher3/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 452
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v3, v0, v1, v4}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;-><init>(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;ZLandroid/view/ViewGroup;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V
    :try_end_1d0
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_1d0} :catch_203

    .line 491
    :cond_1d0
    :goto_1d0
    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceStateTransitionAnimationAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceStateTransitionAnimationAspect;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/lge/launcher3/nativejoin/WorkspaceStateTransitionAnimationAspect;->ajc$after$com_lge_launcher3_nativejoin_WorkspaceStateTransitionAnimationAspect$1$69a347f5(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 284
    :cond_1d8
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_4e

    .line 286
    :cond_1dc
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_5d

    .line 287
    :cond_1e0
    const/4 v2, 0x0

    move v7, v2

    goto/16 :goto_66

    .line 289
    :cond_1e4
    const/4 v2, 0x0

    goto/16 :goto_7a

    .line 298
    :cond_1e7
    :try_start_1e7
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/TransitionStates;->stateIsOverview:Z

    goto/16 :goto_9e

    .line 305
    :cond_1ed
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/TransitionStates;->stateIsOverview:Z

    if-nez v2, :cond_1f9

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/TransitionStates;->stateIsOverviewHidden:Z

    if-eqz v2, :cond_b2

    .line 306
    :cond_1f9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mOverviewModeShrinkFactor:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F
    :try_end_201
    .catch Ljava/lang/Throwable; {:try_start_1e7 .. :try_end_201} :catch_203

    goto/16 :goto_b2

    .line 491
    :catch_203
    move-exception v2

    invoke-static {}, Lcom/lge/launcher3/nativejoin/WorkspaceStateTransitionAnimationAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/WorkspaceStateTransitionAnimationAspect;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/lge/launcher3/nativejoin/WorkspaceStateTransitionAnimationAspect;->ajc$after$com_lge_launcher3_nativejoin_WorkspaceStateTransitionAnimationAspect$1$69a347f5(Lorg/aspectj/lang/JoinPoint;)V

    throw v2

    .line 316
    :cond_20c
    :try_start_20c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v6}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 317
    move/from16 v0, p2

    if-ne v6, v0, :cond_276

    const/4 v3, 0x1

    move v5, v3

    .line 318
    :goto_21c
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v4

    .line 320
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/launcher3/TransitionStates;->stateIsNormalHidden:Z

    if-nez v3, :cond_230

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/launcher3/TransitionStates;->stateIsOverviewHidden:Z

    if-eqz v3, :cond_279

    .line 321
    :cond_230
    const/4 v3, 0x0

    .line 330
    :goto_231
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v14}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v14

    if-nez v14, :cond_253

    .line 331
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/launcher3/TransitionStates;->workspaceToAllApps:Z

    if-nez v14, :cond_247

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/launcher3/TransitionStates;->allAppsToWorkspace:Z

    if-eqz v14, :cond_253

    .line 332
    :cond_247
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/launcher3/TransitionStates;->allAppsToWorkspace:Z

    if-eqz v14, :cond_293

    if-eqz v5, :cond_293

    .line 333
    const/4 v4, 0x0

    .line 337
    :cond_250
    :goto_250
    invoke-virtual {v2, v4}, Lcom/android/launcher3/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 341
    :cond_253
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mOldAlphas:[F

    aput v4, v5, v6

    .line 342
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewAlphas:[F

    aput v3, v4, v6

    .line 343
    if-eqz p3, :cond_298

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mOldBackgroundAlphas:[F

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getBackgroundAlpha()F

    move-result v2

    aput v2, v3, v6

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewBackgroundAlphas:[F

    aput v9, v2, v6

    .line 315
    :goto_271
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_d0

    .line 317
    :cond_276
    const/4 v3, 0x0

    move v5, v3

    goto :goto_21c

    .line 322
    :cond_279
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/launcher3/TransitionStates;->stateIsNormal:Z

    if-eqz v3, :cond_290

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspaceFadeInAdjacentScreens:Z

    if-eqz v3, :cond_290

    .line 323
    move/from16 v0, p2

    if-eq v6, v0, :cond_28b

    if-ge v6, v13, :cond_28e

    :cond_28b
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_231

    :cond_28e
    const/4 v3, 0x0

    goto :goto_231

    .line 325
    :cond_290
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_231

    .line 334
    :cond_293
    if-nez v5, :cond_250

    .line 335
    const/4 v3, 0x0

    move v4, v3

    goto :goto_250

    .line 347
    :cond_298
    invoke-virtual {v2, v9}, Lcom/android/launcher3/CellLayout;->setBackgroundAlpha(F)V

    .line 348
    invoke-virtual {v2, v3}, Lcom/android/launcher3/CellLayout;->setShortcutAndWidgetAlpha(F)V

    goto :goto_271

    .line 365
    :cond_29f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 366
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v9

    .line 367
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mOldAlphas:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-nez v13, :cond_2de

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewAlphas:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-nez v13, :cond_2de

    .line 368
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewBackgroundAlphas:[F

    aget v9, v9, v3

    invoke-virtual {v2, v9}, Lcom/android/launcher3/CellLayout;->setBackgroundAlpha(F)V

    .line 369
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewAlphas:[F

    aget v9, v9, v3

    invoke-virtual {v2, v9}, Lcom/android/launcher3/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 363
    :cond_2d9
    :goto_2d9
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_120

    .line 371
    :cond_2de
    if-eqz p5, :cond_2ea

    .line 372
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_2ea
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mOldAlphas:[F

    aget v13, v13, v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewAlphas:[F

    aget v14, v14, v3

    cmpl-float v13, v13, v14

    if-nez v13, :cond_304

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewAlphas:[F

    aget v13, v13, v3

    cmpl-float v9, v9, v13

    if-eqz v9, :cond_32c

    .line 376
    :cond_304
    new-instance v9, Lcom/android/launcher3/LauncherViewPropertyAnimator;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v13

    invoke-direct {v9, v13}, Lcom/android/launcher3/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewAlphas:[F

    aget v13, v13, v3

    invoke-virtual {v9, v13}, Lcom/android/launcher3/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/LauncherViewPropertyAnimator;

    move-result-object v13

    .line 378
    move/from16 v0, p4

    int-to-long v14, v0

    invoke-virtual {v13, v14, v15}, Lcom/android/launcher3/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v13

    .line 379
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mZoomInInterpolator:Lcom/android/launcher3/ZoomInInterpolator;

    invoke-virtual {v13, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v13, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 382
    :cond_32c
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mOldBackgroundAlphas:[F

    aget v9, v9, v3

    const/4 v13, 0x0

    cmpl-float v9, v9, v13

    if-nez v9, :cond_342

    .line 383
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewBackgroundAlphas:[F

    aget v9, v9, v3

    const/4 v13, 0x0

    cmpl-float v9, v9, v13

    if-eqz v9, :cond_2d9

    .line 384
    :cond_342
    const-string v9, "backgroundAlpha"

    const/4 v13, 0x2

    new-array v13, v13, [F

    const/4 v14, 0x0

    .line 385
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mOldBackgroundAlphas:[F

    aget v15, v15, v3

    aput v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewBackgroundAlphas:[F

    aget v15, v15, v3

    aput v15, v13, v14

    .line 384
    invoke-static {v2, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 386
    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_43a

    invoke-static {v2, v13}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mZoomInInterpolator:Lcom/android/launcher3/ZoomInInterpolator;

    invoke-virtual {v9, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 388
    move/from16 v0, p4

    int-to-long v14, v0

    invoke-virtual {v9, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_2d9

    .line 400
    :cond_37c
    const/4 v2, 0x0

    goto/16 :goto_130

    .line 425
    :cond_37f
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherViewPropertyAnimator;->withLayer()Lcom/android/launcher3/LauncherViewPropertyAnimator;

    .line 426
    invoke-virtual {v3}, Lcom/android/launcher3/LauncherViewPropertyAnimator;->withLayer()Lcom/android/launcher3/LauncherViewPropertyAnimator;

    goto/16 :goto_192

    .line 433
    :cond_387
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/launcher3/TransitionStates;->overviewToWorkspace:Z

    if-eqz v5, :cond_3a2

    .line 435
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/launcher3/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 436
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-direct {v5, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v5}, Lcom/android/launcher3/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 437
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/lge/launcher3/nativeitds/WorkspaceStateTransitionAnimationItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceStateTransitionAnimationItds$com_android_launcher3_WorkspaceStateTransitionAnimation$setVisiblePageIndicator(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;Landroid/view/View;)V

    goto/16 :goto_1a6

    .line 439
    :cond_3a2
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/launcher3/TransitionStates;->overviewToAllApps:Z

    if-nez v5, :cond_3ae

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/launcher3/TransitionStates;->stateIsOverviewHidden:Z

    if-eqz v5, :cond_3b5

    .line 440
    :cond_3ae
    const/16 v5, 0x8

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1a6

    .line 441
    :cond_3b5
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/launcher3/TransitionStates;->stateIsNormal:Z

    if-eqz v5, :cond_3c2

    .line 442
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/lge/launcher3/nativeitds/WorkspaceStateTransitionAnimationItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceStateTransitionAnimationItds$com_android_launcher3_WorkspaceStateTransitionAnimation$setVisiblePageIndicator(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;Landroid/view/View;)V

    goto/16 :goto_1a6

    .line 444
    :cond_3c2
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1a6

    .line 467
    :cond_3c8
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 468
    move/from16 v0, p6

    invoke-static {v4, v0}, Lcom/android/launcher3/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 469
    invoke-virtual {v5, v8}, Landroid/view/View;->setAlpha(F)V

    .line 470
    move/from16 v0, p6

    invoke-static {v5, v0}, Lcom/android/launcher3/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 471
    if-eqz v6, :cond_407

    .line 474
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    move/from16 v0, p4

    int-to-long v8, v0

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 475
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/TransitionStates;->overviewToWorkspace:Z

    if-nez v2, :cond_402

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/TransitionStates;->stateIsNormal:Z

    if-eqz v2, :cond_407

    .line 476
    :cond_402
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/lge/launcher3/nativeitds/WorkspaceStateTransitionAnimationItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceStateTransitionAnimationItds$com_android_launcher3_WorkspaceStateTransitionAnimation$setVisiblePageIndicator(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;Landroid/view/View;)V

    .line 481
    :cond_407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Workspace;->setScaleX(F)V

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Workspace;->setScaleY(F)V

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v11}, Lcom/android/launcher3/Workspace;->setTranslationY(F)V

    .line 485
    if-eqz p6, :cond_1d0

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1d0

    .line 486
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 487
    const/16 v3, 0x40

    const/4 v4, 0x0

    .line 486
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z
    :try_end_437
    .catch Ljava/lang/Throwable; {:try_start_20c .. :try_end_437} :catch_203

    goto/16 :goto_1d0

    .line 386
    nop

    :array_43a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private cancelAnimation()V
    .registers 5

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_10

    .line 600
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 601
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 603
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 604
    return-void
.end method

.method private getAnimationDuration(Lcom/android/launcher3/TransitionStates;)I
    .registers 3

    .prologue
    .line 258
    iget-boolean v0, p1, Lcom/android/launcher3/TransitionStates;->workspaceToAllApps:Z

    if-nez v0, :cond_8

    iget-boolean v0, p1, Lcom/android/launcher3/TransitionStates;->overviewToAllApps:Z

    if-eqz v0, :cond_b

    .line 259
    :cond_8
    iget v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mAllAppsTransitionTime:I

    .line 263
    :goto_a
    return v0

    .line 260
    :cond_b
    iget-boolean v0, p1, Lcom/android/launcher3/TransitionStates;->workspaceToOverview:Z

    if-nez v0, :cond_13

    iget-boolean v0, p1, Lcom/android/launcher3/TransitionStates;->overviewToWorkspace:Z

    if-eqz v0, :cond_16

    .line 261
    :cond_13
    iget v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mOverviewTransitionTime:I

    goto :goto_a

    .line 263
    :cond_16
    iget v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mOverlayTransitionTime:I

    goto :goto_a
.end method

.method private static final getAnimationToState_aroundBody0(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;Lorg/aspectj/lang/JoinPoint;)Landroid/animation/AnimatorSet;
    .registers 24

    .prologue
    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 224
    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .line 226
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v8

    .line 227
    new-instance v3, Lcom/android/launcher3/TransitionStates;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lcom/android/launcher3/TransitionStates;-><init>(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V

    .line 228
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getAnimationDuration(Lcom/android/launcher3/TransitionStates;)I

    move-result v6

    move-object/from16 v2, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p6

    .line 229
    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->animateWorkspace(Lcom/android/launcher3/TransitionStates;IZILjava/util/HashMap;Z)V

    move-object/from16 v9, p0

    move-object v10, v3

    move/from16 v11, p4

    move v12, v6

    move/from16 v13, p5

    move-object/from16 v14, p6

    move v15, v8

    .line 231
    invoke-direct/range {v9 .. v15}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->animateSearchBar(Lcom/android/launcher3/TransitionStates;ZIZLjava/util/HashMap;Z)V

    .line 233
    const/16 v2, 0x15e

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v3, v1, v2}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->animateBackgroundGradient(Lcom/android/launcher3/TransitionStates;ZI)V

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v2
.end method

.method private static final getAnimationToState_aroundBody1$advice(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/animation/AnimatorSet;
    .registers 28

    .prologue
    .line 230
    invoke-interface/range {p16 .. p16}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    .line 231
    invoke-static {v2}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->ajc$get$mLauncher(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;)Lcom/android/launcher3/Launcher;

    move-result-object v10

    move-object v2, p0

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move/from16 v5, p11

    move/from16 v6, p12

    move/from16 v7, p13

    move-object/from16 v8, p14

    move-object/from16 v9, p7

    .line 233
    invoke-static/range {v2 .. v9}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getAnimationToState_aroundBody0(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;Lorg/aspectj/lang/JoinPoint;)Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 235
    if-eqz v2, :cond_2e

    .line 236
    invoke-static {v10}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    move-result-object v3

    .line 237
    move-object/from16 v0, p9

    move-object/from16 v1, p10

    invoke-virtual {v3, v0, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getWorkspaceStateAnimationListener(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v3

    .line 238
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 241
    :cond_2e
    return-object v2
.end method

.method private reinitializeAnimationArrays()V
    .registers 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    .line 246
    iget v1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLastChildCount:I

    if-ne v1, v0, :cond_b

    .line 252
    :goto_a
    return-void

    .line 248
    :cond_b
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mOldBackgroundAlphas:[F

    .line 249
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mOldAlphas:[F

    .line 250
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewBackgroundAlphas:[F

    .line 251
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewAlphas:[F

    goto :goto_a
.end method


# virtual methods
.method public animateDynamicPanel(Lcom/android/launcher3/TransitionStates;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/WorkspaceStateTransitionAnimationItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceStateTransitionAnimationItds$com_android_launcher3_WorkspaceStateTransitionAnimation$animateDynamicPanel(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;Lcom/android/launcher3/TransitionStates;)V

    return-void
.end method

.method public getAnimationToState(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;)Landroid/animation/AnimatorSet;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Workspace$State;",
            "Lcom/android/launcher3/Workspace$State;",
            "IZZ",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 1
    sget-object v2, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static/range {p3 .. p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static/range {p4 .. p4}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static/range {p5 .. p5}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object p6, v3, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v2, v0, v1, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v9

    :try_start_2b
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    move-result-object v10

    const/16 v17, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v18, v9

    invoke-static/range {v2 .. v18}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getAnimationToState_aroundBody1$advice(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/animation/AnimatorSet;
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_50} :catch_65

    move-result-object v10

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;

    move-result-object v2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_HomescreenBlurAspect$4$734fe9b(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;Lorg/aspectj/lang/JoinPoint;)V

    return-object v10

    :catch_65
    move-exception v2

    move-object v10, v2

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;

    move-result-object v2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_HomescreenBlurAspect$4$734fe9b(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;Lorg/aspectj/lang/JoinPoint;)V

    throw v10
.end method

.method public getFinalScale()F
    .registers 2

    .prologue
    .line 238
    iget v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    return v0
.end method

.method public getOverViewIndicatorBottomMargin(F)I
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/WorkspaceStateTransitionAnimationItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceStateTransitionAnimationItds$com_android_launcher3_WorkspaceStateTransitionAnimation$getOverViewIndicatorBottomMargin(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;F)I

    move-result v0

    return v0
.end method

.method public setVisiblePageIndicator(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/WorkspaceStateTransitionAnimationItds;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceStateTransitionAnimationItds$com_android_launcher3_WorkspaceStateTransitionAnimation$setVisiblePageIndicator(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;Landroid/view/View;)V

    return-void
.end method
