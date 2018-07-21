.class public Lcom/android/launcher3/SearchDropTargetBar;
.super Landroid/widget/FrameLayout;
.source "SearchDropTargetBar.java"

# interfaces
.implements Lcom/android/launcher3/DragController$DragListener;


# static fields
.field private static final TRANSITION_DURATION:I = 0xc8

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final sAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;


# instance fields
.field private mCancelDropTarget:Lcom/android/launcher3/ButtonDropTarget;

.field private mDeferOnDragEnd:Z

.field private mDeleteDropTarget:Lcom/android/launcher3/ButtonDropTarget;

.field private mDisableDropTarget:Lcom/android/launcher3/ButtonDropTarget;

.field private mDropTargetBar:Landroid/view/View;

.field private mHideSearchBarAnim:Landroid/animation/ValueAnimator;

.field private mInfoDropTarget:Lcom/android/launcher3/ButtonDropTarget;

.field private mIsSearchBarHidden:Z

.field private mQSBSearchBar:Landroid/view/View;

.field private mShowDropTargetBarAnim:Landroid/animation/ObjectAnimator;

.field private mUninstallDropTarget:Lcom/android/launcher3/ButtonDropTarget;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    invoke-static {}, Lcom/android/launcher3/SearchDropTargetBar;->ajc$preClinit()V

    .line 42
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 41
    sput-object v0, Lcom/android/launcher3/SearchDropTargetBar;->sAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/SearchDropTargetBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p0}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$interFieldInit$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$mCancelDropTarget(Lcom/android/launcher3/SearchDropTargetBar;)V

    invoke-static {p0}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$interFieldInit$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$mDisableDropTarget(Lcom/android/launcher3/SearchDropTargetBar;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mDeferOnDragEnd:Z

    .line 60
    return-void
.end method

.method public static ajc$get$mCancelDropTarget(Lcom/android/launcher3/SearchDropTargetBar;)Lcom/android/launcher3/ButtonDropTarget;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mCancelDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    return-object v0
.end method

.method public static ajc$get$mDisableDropTarget(Lcom/android/launcher3/SearchDropTargetBar;)Lcom/android/launcher3/ButtonDropTarget;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mDisableDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    return-object v0
.end method

.method public static ajc$get$mDropTargetBar(Lcom/android/launcher3/SearchDropTargetBar;)Landroid/view/View;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    return-object v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "SearchDropTargetBar.java"

    const-class v2, Lcom/android/launcher3/SearchDropTargetBar;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "setup"

    const-string v3, "com.android.launcher3.SearchDropTargetBar"

    const-string v4, "com.android.launcher3.Launcher:com.android.launcher3.DragController"

    const-string v5, "launcher:dragController"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/SearchDropTargetBar;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "onFinishInflate"

    const-string v3, "com.android.launcher3.SearchDropTargetBar"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x71

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/SearchDropTargetBar;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onDragStart"

    const-string v3, "com.android.launcher3.SearchDropTargetBar"

    const-string v4, "com.android.launcher3.DragSource:java.lang.Object:int"

    const-string v5, "source:info:dragAction"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/SearchDropTargetBar;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onDragEnd"

    const-string v3, "com.android.launcher3.SearchDropTargetBar"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xd1

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/SearchDropTargetBar;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "enableAccessibleDrag"

    const-string v3, "com.android.launcher3.SearchDropTargetBar"

    const-string v4, "boolean"

    const-string v5, "enable"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xe9

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/SearchDropTargetBar;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$set$mCancelDropTarget(Lcom/android/launcher3/SearchDropTargetBar;Lcom/android/launcher3/ButtonDropTarget;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/SearchDropTargetBar;->mCancelDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    return-void
.end method

.method public static ajc$set$mDisableDropTarget(Lcom/android/launcher3/SearchDropTargetBar;Lcom/android/launcher3/ButtonDropTarget;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/SearchDropTargetBar;->mDisableDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    return-void
.end method

.method public static ajc$set$mDropTargetBar(Lcom/android/launcher3/SearchDropTargetBar;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    return-void
.end method

.method private static final onDragEnd_aroundBody4(Lcom/android/launcher3/SearchDropTargetBar;Lorg/aspectj/lang/JoinPoint;)V
    .registers 3

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mDeferOnDragEnd:Z

    if-nez v0, :cond_8

    .line 211
    invoke-virtual {p0}, Lcom/android/launcher3/SearchDropTargetBar;->hideDeleteTarget()V

    .line 215
    :goto_7
    return-void

    .line 213
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mDeferOnDragEnd:Z

    goto :goto_7
.end method

.method private static final onDragEnd_aroundBody5$advice(Lcom/android/launcher3/SearchDropTargetBar;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 7

    .prologue
    .line 103
    invoke-interface {p4}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/SearchDropTargetBar;

    .line 104
    invoke-virtual {v0}, Lcom/android/launcher3/SearchDropTargetBar;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 106
    invoke-static {v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 107
    invoke-static {v0}, Lcom/android/launcher3/SearchDropTargetBar;->ajc$get$mDropTargetBar(Lcom/android/launcher3/SearchDropTargetBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_22

    .line 113
    :goto_21
    return-void

    .line 112
    :cond_22
    invoke-static {p0, p1}, Lcom/android/launcher3/SearchDropTargetBar;->onDragEnd_aroundBody4(Lcom/android/launcher3/SearchDropTargetBar;Lorg/aspectj/lang/JoinPoint;)V

    goto :goto_21
.end method

.method private static final onDragStart_aroundBody2(Lcom/android/launcher3/SearchDropTargetBar;Lcom/android/launcher3/DragSource;Ljava/lang/Object;ILorg/aspectj/lang/JoinPoint;)V
    .registers 5

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/launcher3/SearchDropTargetBar;->showDeleteTarget()V

    .line 202
    return-void
.end method

.method private static final onDragStart_aroundBody3$advice(Lcom/android/launcher3/SearchDropTargetBar;Lcom/android/launcher3/DragSource;Ljava/lang/Object;ILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;Lcom/android/launcher3/DragSource;Ljava/lang/Object;ILorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 12

    .prologue
    .line 90
    invoke-interface {p10}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/SearchDropTargetBar;

    .line 91
    invoke-virtual {v0}, Lcom/android/launcher3/SearchDropTargetBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 98
    :goto_14
    return-void

    .line 97
    :cond_15
    invoke-static {p0, p6, p7, p8, p4}, Lcom/android/launcher3/SearchDropTargetBar;->onDragStart_aroundBody2(Lcom/android/launcher3/SearchDropTargetBar;Lcom/android/launcher3/DragSource;Ljava/lang/Object;ILorg/aspectj/lang/JoinPoint;)V

    goto :goto_14
.end method

.method private prepareStartAnimation(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 94
    if-eqz p1, :cond_7

    .line 95
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 97
    :cond_7
    return-void
.end method

.method private setupAnimation(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 100
    sget-object v0, Lcom/android/launcher3/SearchDropTargetBar;->sAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 101
    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 102
    new-instance v0, Lcom/android/launcher3/SearchDropTargetBar$1;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/SearchDropTargetBar$1;-><init>(Lcom/android/launcher3/SearchDropTargetBar;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 110
    return-void
.end method

.method private static final setup_aroundBody0(Lcom/android/launcher3/SearchDropTargetBar;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragController;Lorg/aspectj/lang/JoinPoint;)V
    .registers 5

    .prologue
    .line 63
    invoke-virtual {p2, p0}, Lcom/android/launcher3/DragController;->addDragListener(Lcom/android/launcher3/DragController$DragListener;)V

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/DragController;->setFlingToDeleteDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/DragController;->addDragListener(Lcom/android/launcher3/DragController$DragListener;)V

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/DragController;->addDragListener(Lcom/android/launcher3/DragController$DragListener;)V

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mUninstallDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/DragController;->addDragListener(Lcom/android/launcher3/DragController$DragListener;)V

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mUninstallDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ButtonDropTarget;->setLauncher(Lcom/android/launcher3/Launcher;)V

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ButtonDropTarget;->setLauncher(Lcom/android/launcher3/Launcher;)V

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mUninstallDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ButtonDropTarget;->setLauncher(Lcom/android/launcher3/Launcher;)V

    .line 77
    return-void
.end method

.method private static final setup_aroundBody1$advice(Lcom/android/launcher3/SearchDropTargetBar;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragController;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragController;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 11

    .prologue
    .line 28
    invoke-interface {p8}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/SearchDropTargetBar;

    .line 29
    invoke-static {p5}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isSafeMode(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    .line 30
    if-eqz v1, :cond_d

    .line 37
    :goto_c
    return-void

    .line 34
    :cond_d
    invoke-static {p0, p5, p6, p3}, Lcom/android/launcher3/SearchDropTargetBar;->setup_aroundBody0(Lcom/android/launcher3/SearchDropTargetBar;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragController;Lorg/aspectj/lang/JoinPoint;)V

    .line 36
    invoke-static {v0, p5, p6}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$interMethodDispatch1$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$setupAdditionalDropTargets(Lcom/android/launcher3/SearchDropTargetBar;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragController;)V

    goto :goto_c
.end method


# virtual methods
.method public ajc$interMethodDispatch2$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$initAdditionalDropTargets()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$interMethod$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$initAdditionalDropTargets(Lcom/android/launcher3/SearchDropTargetBar;)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$setupAdditionalDropTargets(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragController;)V
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$interMethod$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$com_android_launcher3_SearchDropTargetBar$setupAdditionalDropTargets(Lcom/android/launcher3/SearchDropTargetBar;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragController;)V

    return-void
.end method

.method public deferOnDragEnd()V
    .registers 2

    .prologue
    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mDeferOnDragEnd:Z

    .line 206
    return-void
.end method

.method public enableAccessibleDrag(Z)V
    .registers 5

    .prologue
    sget-object v0, Lcom/android/launcher3/SearchDropTargetBar;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 234
    :try_start_a
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 235
    iget-object v2, p0, Lcom/android/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    if-eqz p1, :cond_2e

    const/16 v0, 0x8

    :goto_14
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :cond_17
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ButtonDropTarget;->enableAccessibleDrag(Z)V

    .line 238
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ButtonDropTarget;->enableAccessibleDrag(Z)V

    .line 239
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mUninstallDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ButtonDropTarget;->enableAccessibleDrag(Z)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_26} :catch_30

    .line 240
    invoke-static {}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->aspectOf()Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$after$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$3$51b4f3b1(ZLorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 235
    :cond_2e
    const/4 v0, 0x0

    goto :goto_14

    .line 240
    :catch_30
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->aspectOf()Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$after$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$3$51b4f3b1(ZLorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public finishAnimations()V
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher3/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mShowDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 138
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher3/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mHideSearchBarAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 140
    return-void
.end method

.method public getSearchBarBounds()Landroid/graphics/Rect;
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 218
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    if-eqz v0, :cond_32

    .line 219
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 220
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 222
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 223
    aget v2, v1, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 224
    aget v2, v1, v4

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 225
    aget v2, v1, v3

    iget-object v3, p0, Lcom/android/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 226
    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 229
    :goto_31
    return-object v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public hideDeleteTarget()V
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher3/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mShowDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 193
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SearchDropTargetBar;->showSearchBar(Z)V

    .line 194
    return-void
.end method

.method public hideSearchBar(Z)V
    .registers 4

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mIsSearchBarHidden:Z

    if-eqz v0, :cond_5

    .line 174
    :goto_4
    return-void

    .line 164
    :cond_5
    if-eqz p1, :cond_15

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher3/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 166
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mHideSearchBarAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 173
    :cond_11
    :goto_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mIsSearchBarHidden:Z

    goto :goto_4

    .line 168
    :cond_15
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mHideSearchBarAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 169
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_11
.end method

.method public onDragEnd()V
    .registers 4

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/SearchDropTargetBar;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->aspectOf()Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v0}, Lcom/android/launcher3/SearchDropTargetBar;->onDragEnd_aroundBody5$advice(Lcom/android/launcher3/SearchDropTargetBar;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DragSource;Ljava/lang/Object;I)V
    .registers 15

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/SearchDropTargetBar;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    invoke-static {}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->aspectOf()Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;

    move-result-object v5

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move-object v10, v4

    invoke-static/range {v0 .. v10}, Lcom/android/launcher3/SearchDropTargetBar;->onDragStart_aroundBody3$advice(Lcom/android/launcher3/SearchDropTargetBar;Lcom/android/launcher3/DragSource;Ljava/lang/Object;ILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;Lcom/android/launcher3/DragSource;Ljava/lang/Object;ILorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    sget-object v0, Lcom/android/launcher3/SearchDropTargetBar;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 114
    :try_start_6
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 117
    const v0, 0x7f0e00c6

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SearchDropTargetBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const v2, 0x7f0e00c8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ButtonDropTarget;

    iput-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const v2, 0x7f0e00c7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ButtonDropTarget;

    iput-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    .line 120
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const v2, 0x7f0e00c9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ButtonDropTarget;

    iput-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mUninstallDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/ButtonDropTarget;->setSearchDropTargetBar(Lcom/android/launcher3/SearchDropTargetBar;)V

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/ButtonDropTarget;->setSearchDropTargetBar(Lcom/android/launcher3/SearchDropTargetBar;)V

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mUninstallDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/ButtonDropTarget;->setSearchDropTargetBar(Lcom/android/launcher3/SearchDropTargetBar;)V

    .line 127
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_76

    invoke-static {v0, v2, v3}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mShowDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mShowDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/launcher3/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/SearchDropTargetBar;->setupAnimation(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_65} :catch_6d

    .line 130
    invoke-static {}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->aspectOf()Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$after$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$2$e6100280(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_6d
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->aspectOf()Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->ajc$after$com_lge_launcher3_droptarget_SearchDropTargetBarAspect$2$e6100280(Lorg/aspectj/lang/JoinPoint;)V

    throw v0

    .line 128
    :array_76
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setQsbSearchBar(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v2, 0x2

    .line 80
    iput-object p1, p0, Lcom/android/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_32

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mHideSearchBarAnim:Landroid/animation/ValueAnimator;

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mHideSearchBarAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/SearchDropTargetBar;->setupAnimation(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    .line 89
    :goto_1d
    return-void

    .line 86
    :cond_1e
    new-array v0, v2, [F

    fill-array-data v0, :array_3a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mHideSearchBarAnim:Landroid/animation/ValueAnimator;

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mHideSearchBarAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1d

    .line 82
    nop

    :array_32
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 86
    :array_3a
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public setup(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragController;)V
    .registers 12

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/SearchDropTargetBar;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;->aspectOf()Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;

    move-result-object v4

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p1

    move-object v6, p2

    move-object v8, v3

    invoke-static/range {v0 .. v8}, Lcom/android/launcher3/SearchDropTargetBar;->setup_aroundBody1$advice(Lcom/android/launcher3/SearchDropTargetBar;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragController;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/droptarget/SearchDropTargetBarAspect;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragController;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method public showDeleteTarget()V
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher3/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 182
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mShowDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SearchDropTargetBar;->hideSearchBar(Z)V

    .line 184
    return-void
.end method

.method public showSearchBar(Z)V
    .registers 4

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mIsSearchBarHidden:Z

    if-nez v0, :cond_5

    .line 157
    :goto_4
    return-void

    .line 147
    :cond_5
    if-eqz p1, :cond_15

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher3/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 149
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mHideSearchBarAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 156
    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mIsSearchBarHidden:Z

    goto :goto_4

    .line 151
    :cond_15
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mHideSearchBarAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_11
.end method
