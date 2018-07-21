.class public Lcom/android/launcher3/DragLayer;
.super Lcom/android/launcher3/InsettableFrameLayout;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/DragLayer$LayoutParams;,
        Lcom/android/launcher3/DragLayer$TouchCompleteListener;
    }
.end annotation


# static fields
.field public static final ANIMATION_END_DISAPPEAR:I = 0x0

.field public static final ANIMATION_END_REMAIN_VISIBLE:I = 0x2

.field private static final SCRIM_COLOR:I

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field mAnchorView:Landroid/view/View;

.field mAnchorViewInitialScrollX:I

.field private mBackgroundAlpha:F

.field private mBlockTouches:Z

.field private mChildCountOnLastUpdate:I

.field private final mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

.field mDragController:Lcom/android/launcher3/DragController;

.field private mDropAnim:Landroid/animation/ValueAnimator;

.field mDropView:Lcom/android/launcher3/DragView;

.field private final mHitRect:Landroid/graphics/Rect;

.field private mHoverPointClosesFolder:Z

.field private mInScrollArea:Z

.field private final mIsRtl:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mLeftHoverDrawableActive:Landroid/graphics/drawable/Drawable;

.field private mOverlayView:Landroid/view/View;

.field private final mResizeFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/AppWidgetResizeFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mRightHoverDrawableActive:Landroid/graphics/drawable/Drawable;

.field private final mScrollChildPosition:Landroid/graphics/Rect;

.field private mShowPageHints:Z

.field private final mTmpXY:[I

.field private mTopViewIndex:I

.field private mTouchCompleteListener:Lcom/android/launcher3/DragLayer$TouchCompleteListener;

.field private mXDown:I

.field private mYDown:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/android/launcher3/DragLayer;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/DragLayer;->mTmpXY:[I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    .line 73
    iput-object v3, p0, Lcom/android/launcher3/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 74
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 75
    iput-object v3, p0, Lcom/android/launcher3/DragLayer;->mDropView:Lcom/android/launcher3/DragView;

    .line 76
    iput v2, p0, Lcom/android/launcher3/DragLayer;->mAnchorViewInitialScrollX:I

    .line 77
    iput-object v3, p0, Lcom/android/launcher3/DragLayer;->mAnchorView:Landroid/view/View;

    .line 79
    iput-boolean v2, p0, Lcom/android/launcher3/DragLayer;->mHoverPointClosesFolder:Z

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/DragLayer;->mHitRect:Landroid/graphics/Rect;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/DragLayer;->mChildCountOnLastUpdate:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/DragLayer;->mBackgroundAlpha:F

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/DragLayer;->mScrollChildPosition:Landroid/graphics/Rect;

    .line 100
    iput-boolean v2, p0, Lcom/android/launcher3/DragLayer;->mBlockTouches:Z

    .line 112
    invoke-virtual {p0, v2}, Lcom/android/launcher3/DragLayer;->setMotionEventSplittingEnabled(Z)V

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DragLayer;->setChildrenDrawingOrderEnabled(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 116
    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/DragLayer;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/DragLayer;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/DragLayer;->mLeftHoverDrawableActive:Landroid/graphics/drawable/Drawable;

    .line 119
    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/DragLayer;->mRightHoverDrawableActive:Landroid/graphics/drawable/Drawable;

    .line 120
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/DragLayer;->mIsRtl:Z

    .line 121
    return-void
.end method

.method private static final addResizeFrame_aroundBody4(Lcom/android/launcher3/DragLayer;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;Lorg/aspectj/lang/JoinPoint;)V
    .registers 8

    .prologue
    const/4 v2, -0x1

    .line 562
    new-instance v0, Lcom/android/launcher3/AppWidgetResizeFrame;

    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p0}, Lcom/android/launcher3/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DragLayer;)V

    .line 565
    new-instance v1, Lcom/android/launcher3/DragLayer$LayoutParams;

    invoke-direct {v1, v2, v2}, Lcom/android/launcher3/DragLayer$LayoutParams;-><init>(II)V

    .line 566
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher3/DragLayer$LayoutParams;->customPosition:Z

    .line 568
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    iget-object v1, p0, Lcom/android/launcher3/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->snapToWidget(Z)V

    .line 572
    return-void
.end method

.method private static final addResizeFrame_aroundBody5$advice(Lcom/android/launcher3/DragLayer;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/DragLayerAspect;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 17

    .prologue
    .line 100
    invoke-interface/range {p10 .. p10}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragLayer;

    .line 101
    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 103
    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->clearAllResizeFrames()V

    .line 105
    invoke-static {v0}, Lcom/android/launcher3/DragLayer;->ajc$get$mLauncher(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    .line 106
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq v2, v3, :cond_2a

    .line 107
    invoke-static {v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 126
    :goto_29
    return-void

    .line 111
    :cond_2a
    sget-object v2, Lcom/lge/launcher3/nativejoin/DragLayerAspect;->TAG:Ljava/lang/String;

    const-string v3, "addResizeFrame()"

    invoke-static {v2, v3}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v2, Lcom/lge/launcher3/LGAppWidgetResizeFrame;

    invoke-direct {v2, v1, p7, p8, v0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DragLayer;)V

    .line 116
    new-instance v3, Lcom/android/launcher3/DragLayer$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Lcom/android/launcher3/DragLayer$LayoutParams;-><init>(II)V

    .line 117
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/launcher3/DragLayer$LayoutParams;->customPosition:Z

    .line 119
    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-static {v0}, Lcom/android/launcher3/DragLayer;->ajc$get$mResizeFrames(Lcom/android/launcher3/DragLayer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->snapToWidget(Z)V

    .line 123
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->sendAccessibilityEvent(I)V

    .line 125
    invoke-static {v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->enableResizedFrame(Z)V

    goto :goto_29
.end method

.method public static ajc$get$mDragController(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/DragController;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mDragController:Lcom/android/launcher3/DragController;

    return-object v0
.end method

.method public static ajc$get$mLauncher(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/Launcher;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method public static ajc$get$mResizeFrames(Lcom/android/launcher3/DragLayer;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "DragLayer.java"

    const-class v2, Lcom/android/launcher3/DragLayer;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "2"

    const-string v2, "handleTouchDown"

    const-string v3, "com.android.launcher3.DragLayer"

    const-string v4, "android.view.MotionEvent:boolean"

    const-string v5, "ev:intercept"

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xaf

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/DragLayer;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onInterceptTouchEvent"

    const-string v3, "com.android.launcher3.DragLayer"

    const-string v4, "android.view.MotionEvent"

    const-string v5, "ev"

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xe0

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/DragLayer;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "clearAllResizeFrames"

    const-string v3, "com.android.launcher3.DragLayer"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x21e

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/DragLayer;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "addResizeFrame"

    const-string v3, "com.android.launcher3.DragLayer"

    const-string v4, "com.android.launcher3.ItemInfo:com.android.launcher3.LauncherAppWidgetHostView:com.android.launcher3.CellLayout"

    const-string v5, "itemInfo:widget:cellLayout"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x230

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/DragLayer;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$set$mDragController(Lcom/android/launcher3/DragLayer;Lcom/android/launcher3/DragController;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/DragLayer;->mDragController:Lcom/android/launcher3/DragController;

    return-void
.end method

.method public static ajc$set$mLauncher(Lcom/android/launcher3/DragLayer;Lcom/android/launcher3/Launcher;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method public static ajc$set$mResizeFrames(Lcom/android/launcher3/DragLayer;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    return-void
.end method

.method private static final animateViewIntoPosition_aroundBody6(Lcom/android/launcher3/DragLayer;Lcom/android/launcher3/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V
    .registers 24

    .prologue
    .line 597
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 599
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 601
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 602
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/android/launcher3/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 604
    const/4 v3, 0x2

    new-array v5, v3, [I

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v7

    .line 606
    const/4 v3, 0x0

    iget v8, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v7

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    aput v8, v5, v3

    .line 607
    const/4 v3, 0x1

    iget v4, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v7

    mul-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v4, v8

    aput v4, v5, v3

    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/launcher3/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v3

    .line 614
    mul-float v4, v3, v7

    .line 615
    const/4 v3, 0x0

    aget v7, v5, v3

    .line 616
    const/4 v3, 0x1

    aget v5, v5, v3

    .line 618
    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_d8

    move-object/from16 v3, p2

    .line 619
    check-cast v3, Landroid/widget/TextView;

    .line 622
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/DragView;->getIntrinsicIconScaleFactor()F

    move-result v8

    div-float v12, v4, v8

    .line 627
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v5

    .line 628
    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/DragView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v12

    mul-float/2addr v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    sub-float/2addr v3, v5

    float-to-int v3, v3

    .line 629
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v5

    if-eqz v5, :cond_9b

    .line 630
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float/2addr v5, v12

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v3, v5

    .line 633
    :cond_9b
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/DragView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int v4, v5, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v7, v4

    move v8, v3

    .line 647
    :goto_af
    iget v5, v6, Landroid/graphics/Rect;->left:I

    .line 648
    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 649
    const/4 v3, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 650
    new-instance v14, Lcom/android/launcher3/DragLayer$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v14, v0, v1, v2}, Lcom/android/launcher3/DragLayer$1;-><init>(Lcom/android/launcher3/DragLayer;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 658
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    .line 659
    const/4 v15, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move v13, v12

    move/from16 v16, p3

    move-object/from16 v17, p5

    .line 658
    invoke-virtual/range {v3 .. v17}, Lcom/android/launcher3/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 660
    return-void

    .line 634
    :cond_d8
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher3/FolderIcon;

    if-eqz v3, :cond_11a

    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/DragView;->getDragRegionTop()I

    move-result v8

    sub-int/2addr v3, v8

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v5

    .line 637
    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    sub-float/2addr v3, v5

    float-to-int v3, v3

    .line 638
    int-to-float v3, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/DragView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    sub-float/2addr v3, v5

    float-to-int v8, v3

    .line 640
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/DragView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    move v12, v4

    .line 641
    goto :goto_af

    .line 642
    :cond_11a
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/DragView;->getHeight()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v3, v8

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v8, v5, v3

    .line 643
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/DragView;->getMeasuredWidth()I

    move-result v3

    .line 644
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    .line 643
    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 644
    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    move v12, v4

    goto/16 :goto_af
.end method

.method private static final animateViewIntoPosition_aroundBody7$advice(Lcom/android/launcher3/DragLayer;Lcom/android/launcher3/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;Lcom/lge/launcher3/nativejoin/DragLayerAspect;Lcom/android/launcher3/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 19

    .prologue
    .line 131
    if-nez p8, :cond_a

    .line 132
    sget-object v0, Lcom/lge/launcher3/nativejoin/DragLayerAspect;->TAG:Ljava/lang/String;

    const-string v1, "child is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_9
    return-void

    :cond_a
    move-object v0, p0

    move-object v1, p7

    move-object v2, p8

    move v3, p9

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    .line 135
    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/DragLayer;->animateViewIntoPosition_aroundBody6(Lcom/android/launcher3/DragLayer;Lcom/android/launcher3/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto :goto_9
.end method

.method private drawPageHints(Landroid/graphics/Canvas;)V
    .registers 9

    .prologue
    .line 918
    iget-boolean v0, p0, Lcom/android/launcher3/DragLayer;->mShowPageHints:Z

    if-eqz v0, :cond_79

    .line 919
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    .line 920
    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->getMeasuredWidth()I

    move-result v3

    .line 921
    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v1

    .line 922
    iget-boolean v0, p0, Lcom/android/launcher3/DragLayer;->mIsRtl:Z

    if-eqz v0, :cond_7a

    add-int/lit8 v0, v1, 0x1

    :goto_18
    invoke-virtual {v2, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 923
    iget-boolean v4, p0, Lcom/android/launcher3/DragLayer;->mIsRtl:Z

    if-eqz v4, :cond_7d

    add-int/lit8 v1, v1, -0x1

    :goto_24
    invoke-virtual {v2, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 925
    if-eqz v0, :cond_51

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->isDragTarget()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 926
    iget-boolean v2, p0, Lcom/android/launcher3/DragLayer;->mInScrollArea:Z

    if-eqz v2, :cond_80

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getIsDragOverlapping()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 927
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mLeftHoverDrawableActive:Landroid/graphics/drawable/Drawable;

    .line 928
    :goto_3e
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/launcher3/DragLayer;->mScrollChildPosition:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 929
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/DragLayer;->mScrollChildPosition:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 928
    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 930
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 932
    :cond_51
    if-eqz v1, :cond_79

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->isDragTarget()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 933
    iget-boolean v0, p0, Lcom/android/launcher3/DragLayer;->mInScrollArea:Z

    if-eqz v0, :cond_83

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getIsDragOverlapping()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 934
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mRightHoverDrawableActive:Landroid/graphics/drawable/Drawable;

    .line 935
    :goto_65
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int v1, v3, v1

    .line 936
    iget-object v2, p0, Lcom/android/launcher3/DragLayer;->mScrollChildPosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/launcher3/DragLayer;->mScrollChildPosition:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 935
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 937
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 940
    :cond_79
    return-void

    .line 922
    :cond_7a
    add-int/lit8 v0, v1, -0x1

    goto :goto_18

    .line 923
    :cond_7d
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 927
    :cond_80
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3e

    .line 934
    :cond_83
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_65
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;Z)Z
    .registers 12

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/DragLayer;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, p1, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/lge/launcher3/nativejoin/DragLayerAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/DragLayerAspect;

    move-result-object v4

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p1

    move v6, p2

    move-object v8, v3

    invoke-static/range {v0 .. v8}, Lcom/android/launcher3/DragLayer;->handleTouchDown_aroundBody1$advice(Lcom/android/launcher3/DragLayer;Landroid/view/MotionEvent;ZLorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/DragLayerAspect;Landroid/view/MotionEvent;ZLorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    return v0
.end method

.method private static final handleTouchDown_aroundBody0(Lcom/android/launcher3/DragLayer;Landroid/view/MotionEvent;ZLorg/aspectj/lang/JoinPoint;)Z
    .registers 13

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 176
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v4, v0

    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v5, v0

    .line 186
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 199
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getOpenFolder()Lcom/android/launcher3/Folder;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_85

    if-eqz p2, :cond_85

    .line 201
    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->isEditingName()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 202
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/DragLayer;->isEventOverFolderTextRegion(Lcom/android/launcher3/Folder;Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_68

    .line 203
    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->dismissEditingName()V

    move v0, v1

    .line 220
    :goto_3b
    return v0

    .line 186
    :cond_3c
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppWidgetResizeFrame;

    .line 187
    invoke-virtual {v0, v3}, Lcom/android/launcher3/AppWidgetResizeFrame;->getHitRect(Landroid/graphics/Rect;)V

    .line 188
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 189
    invoke-virtual {v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLeft()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getTop()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {v0, v7, v8}, Lcom/android/launcher3/AppWidgetResizeFrame;->beginResizeIfPointInRegion(II)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 190
    iput-object v0, p0, Lcom/android/launcher3/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    .line 191
    iput v4, p0, Lcom/android/launcher3/DragLayer;->mXDown:I

    .line 192
    iput v5, p0, Lcom/android/launcher3/DragLayer;->mYDown:I

    .line 193
    invoke-virtual {p0, v1}, Lcom/android/launcher3/DragLayer;->requestDisallowInterceptTouchEvent(Z)V

    move v0, v1

    .line 194
    goto :goto_3b

    .line 208
    :cond_68
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/DragLayer;->isEventOverFolder(Lcom/android/launcher3/Folder;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 209
    invoke-direct {p0}, Lcom/android/launcher3/DragLayer;->isInAccessibleDrag()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 211
    invoke-direct {p0, p1}, Lcom/android/launcher3/DragLayer;->isEventOverDropTargetBar(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_85

    move v0, v1

    .line 212
    goto :goto_3b

    .line 215
    :cond_7c
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    new-array v2, v2, [Z

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->closeFolder([Z)V

    move v0, v1

    .line 216
    goto :goto_3b

    :cond_85
    move v0, v2

    .line 220
    goto :goto_3b
.end method

.method private static final handleTouchDown_aroundBody1$advice(Lcom/android/launcher3/DragLayer;Landroid/view/MotionEvent;ZLorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/DragLayerAspect;Landroid/view/MotionEvent;ZLorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 17

    .prologue
    .line 44
    invoke-interface/range {p8 .. p8}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragLayer;

    .line 45
    invoke-static {v0}, Lcom/android/launcher3/DragLayer;->ajc$get$mLauncher(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    .line 47
    invoke-virtual {p4, v1}, Lcom/lge/launcher3/nativejoin/DragLayerAspect;->ajc$privMethod$com_lge_launcher3_nativejoin_DragLayerAspect$com_lge_launcher3_nativejoin_DragLayerAspect$blockTouchDown(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 48
    const/4 v0, 0x1

    .line 71
    :goto_11
    return v0

    .line 51
    :cond_12
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 52
    invoke-virtual {p5}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 53
    invoke-virtual {p5}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 54
    invoke-static {v0}, Lcom/android/launcher3/DragLayer;->ajc$get$mResizeFrames(Lcom/android/launcher3/DragLayer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_34

    .line 71
    invoke-static {p0, p5, p6, p3}, Lcom/android/launcher3/DragLayer;->handleTouchDown_aroundBody0(Lcom/android/launcher3/DragLayer;Landroid/view/MotionEvent;ZLorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    goto :goto_11

    .line 54
    :cond_34
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppWidgetResizeFrame;

    .line 55
    check-cast v0, Lcom/lge/launcher3/LGAppWidgetResizeFrame;

    .line 56
    invoke-virtual {v0, v1}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->getHitRect(Landroid/graphics/Rect;)V

    .line 57
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 58
    invoke-virtual {v0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->getLeft()I

    move-result v5

    sub-int v5, v2, v5

    .line 59
    invoke-virtual {v0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->getTop()I

    move-result v6

    sub-int v6, v3, v6

    .line 60
    invoke-virtual {v0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->getTouchTargetWidth()I

    move-result v7

    if-gt v5, v7, :cond_29

    .line 61
    invoke-virtual {v0}, Lcom/lge/launcher3/LGAppWidgetResizeFrame;->getTouchTargetWidth()I

    move-result v0

    if-ge v6, v0, :cond_29

    .line 63
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isEventOverDropTargetBar(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSearchBar()Lcom/android/launcher3/SearchDropTargetBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 166
    const/4 v0, 0x1

    .line 168
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private isEventOverFolder(Lcom/android/launcher3/Folder;Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 157
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 158
    const/4 v0, 0x1

    .line 160
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private isEventOverFolderTextRegion(Lcom/android/launcher3/Folder;Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    .line 148
    invoke-virtual {p1}, Lcom/android/launcher3/Folder;->getEditTextRegion()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 149
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 150
    const/4 v0, 0x1

    .line 152
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private isInAccessibleDrag()Z
    .registers 2

    .prologue
    .line 298
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static final onInterceptTouchEvent_aroundBody2(Lcom/android/launcher3/DragLayer;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 227
    if-nez v1, :cond_e

    .line 228
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 238
    :goto_d
    return v0

    .line 231
    :cond_e
    if-eq v1, v0, :cond_13

    const/4 v0, 0x3

    if-ne v1, v0, :cond_1f

    .line 232
    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/DragLayer$TouchCompleteListener;

    if-eqz v0, :cond_1c

    .line 233
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/DragLayer$TouchCompleteListener;

    invoke-interface {v0}, Lcom/android/launcher3/DragLayer$TouchCompleteListener;->onTouchComplete()V

    .line 235
    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/DragLayer$TouchCompleteListener;

    .line 237
    :cond_1f
    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->clearAllResizeFrames()V

    .line 238
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mDragController:Lcom/android/launcher3/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/DragController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_d
.end method

.method private static final onInterceptTouchEvent_aroundBody3$advice(Lcom/android/launcher3/DragLayer;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/ConciergeAspect;Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 11

    .prologue
    .line 74
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragLayer;

    .line 75
    invoke-static {v0}, Lcom/android/launcher3/DragLayer;->ajc$get$mLauncher(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/launcher3/nativeitds/ConciergeItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_Launcher$getState(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Launcher$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v1, v2, :cond_38

    .line 76
    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->isExtViewMode()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 77
    invoke-static {p3}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_nativejoin_ConciergeAspect$com_lge_launcher3_nativejoin_ConciergeAspect$TAG(Lcom/lge/launcher3/nativejoin/ConciergeAspect;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prevent touch event in case that concierge board is extended "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher3/DragLayer;->ajc$get$mLauncher(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/ConciergeItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_Launcher$getState(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Launcher$State;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    .line 81
    :goto_37
    return v0

    :cond_38
    invoke-static {p0, p4, p2}, Lcom/android/launcher3/DragLayer;->onInterceptTouchEvent_aroundBody2(Lcom/android/launcher3/DragLayer;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    goto :goto_37
.end method

.method private sendTapOutsideFolderAccessibilityEvent(Z)V
    .registers 7

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 284
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 286
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 287
    if-eqz p1, :cond_33

    const v1, 0x7f0f004b

    .line 289
    :goto_17
    const/16 v2, 0x8

    .line 288
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 290
    invoke-virtual {p0, v2}, Lcom/android/launcher3/DragLayer;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 291
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 294
    :cond_32
    return-void

    .line 287
    :cond_33
    const v1, 0x7f0f004a

    goto :goto_17
.end method

.method private static final showPageHints_aroundBody8(Lcom/android/launcher3/DragLayer;)V
    .registers 3

    .prologue
    .line 894
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/DragLayer;->mShowPageHints:Z

    .line 895
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 896
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 897
    iget-object v1, p0, Lcom/android/launcher3/DragLayer;->mScrollChildPosition:Landroid/graphics/Rect;

    .line 896
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 898
    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->invalidate()V

    .line 899
    return-void
.end method

.method private static final showPageHints_aroundBody9$advice(Lcom/android/launcher3/DragLayer;Lcom/lge/launcher3/nativejoin/DragLayerAspect;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 3

    .prologue
    .line 36
    return-void
.end method

.method private updateChildIndices()V
    .registers 4

    .prologue
    .line 847
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/DragLayer;->mTopViewIndex:I

    .line 848
    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->getChildCount()I

    move-result v1

    .line 849
    const/4 v0, 0x0

    :goto_8
    if-lt v0, v1, :cond_d

    .line 854
    iput v1, p0, Lcom/android/launcher3/DragLayer;->mChildCountOnLastUpdate:I

    .line 855
    return-void

    .line 850
    :cond_d
    invoke-virtual {p0, v0}, Lcom/android/launcher3/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/DragView;

    if-eqz v2, :cond_17

    .line 851
    iput v0, p0, Lcom/android/launcher3/DragLayer;->mTopViewIndex:I

    .line 849
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getOpenFolder()Lcom/android/launcher3/Folder;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_1f

    .line 325
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-direct {p0}, Lcom/android/launcher3/DragLayer;->isInAccessibleDrag()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 328
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSearchBar()Lcom/android/launcher3/SearchDropTargetBar;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_1e
    :goto_1e
    return-void

    .line 331
    :cond_1f
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    goto :goto_1e
.end method

.method public addResizeFrame(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V
    .registers 15

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/DragLayer;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    invoke-static {}, Lcom/lge/launcher3/nativejoin/DragLayerAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/DragLayerAspect;

    move-result-object v5

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v10, v4

    invoke-static/range {v0 .. v10}, Lcom/android/launcher3/DragLayer;->addResizeFrame_aroundBody5$advice(Lcom/android/launcher3/DragLayer;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/DragLayerAspect;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_dragndrop_DragLayerAspect$dropFileManagerShortcut(Landroid/content/ClipData;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/DragLayerAspect;->ajc$interMethod$com_lge_launcher3_dragndrop_DragLayerAspect$com_android_launcher3_DragLayer$dropFileManagerShortcut(Lcom/android/launcher3/DragLayer;Landroid/content/ClipData;)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_dragndrop_DragLayerAspect$floatingFileManagerDragEvent(Landroid/view/DragEvent;)Z
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/DragLayerAspect;->ajc$interMethod$com_lge_launcher3_dragndrop_DragLayerAspect$com_android_launcher3_DragLayer$floatingFileManagerDragEvent(Lcom/android/launcher3/DragLayer;Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method public animateView(Lcom/android/launcher3/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .registers 12

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 771
    :cond_9
    iput-object p1, p0, Lcom/android/launcher3/DragLayer;->mDropView:Lcom/android/launcher3/DragView;

    .line 772
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mDropView:Lcom/android/launcher3/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/DragView;->cancelAnimation()V

    .line 773
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mDropView:Lcom/android/launcher3/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/DragView;->resetLayoutParams()V

    .line 776
    if-eqz p7, :cond_1d

    .line 777
    invoke-virtual {p7}, Landroid/view/View;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DragLayer;->mAnchorViewInitialScrollX:I

    .line 779
    :cond_1d
    iput-object p7, p0, Lcom/android/launcher3/DragLayer;->mAnchorView:Landroid/view/View;

    .line 782
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 783
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 784
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 785
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_52

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 786
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 787
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/DragLayer$3;

    invoke-direct {v1, p0, p5, p6}, Lcom/android/launcher3/DragLayer$3;-><init>(Lcom/android/launcher3/DragLayer;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 801
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 802
    return-void

    .line 785
    nop

    :array_52
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateView(Lcom/android/launcher3/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .registers 32

    .prologue
    .line 701
    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v3, v2

    .line 702
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 703
    const v2, 0x7f0c0014

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v5, v2

    .line 706
    if-gez p9, :cond_49

    .line 707
    const v2, 0x7f0c0010

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 708
    cmpg-float v6, v3, v5

    if-gez v6, :cond_3e

    .line 709
    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    div-float/2addr v3, v5

    invoke-interface {v6, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 711
    :cond_3e
    const v3, 0x7f0c000f

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p9

    .line 715
    :cond_49
    const/4 v2, 0x0

    .line 716
    if-eqz p11, :cond_4e

    if-nez p10, :cond_8a

    .line 717
    :cond_4e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v16, v2

    .line 721
    :goto_54
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/DragView;->getAlpha()F

    move-result v13

    .line 722
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/DragView;->getScaleX()F

    move-result v8

    .line 723
    new-instance v2, Lcom/android/launcher3/DragLayer$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p11

    move-object/from16 v6, p10

    move/from16 v7, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p4

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v2 .. v15}, Lcom/android/launcher3/DragLayer$2;-><init>(Lcom/android/launcher3/DragLayer;Lcom/android/launcher3/DragView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v2

    move/from16 v6, p9

    move-object/from16 v7, v16

    move-object/from16 v8, p12

    move/from16 v9, p13

    move-object/from16 v10, p14

    .line 760
    invoke-virtual/range {v3 .. v10}, Lcom/android/launcher3/DragLayer;->animateView(Lcom/android/launcher3/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 762
    return-void

    :cond_8a
    move-object/from16 v16, v2

    goto :goto_54
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V
    .registers 32

    .prologue
    .line 666
    new-instance v4, Landroid/graphics/Rect;

    .line 667
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/DragView;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/DragView;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p3

    .line 666
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 668
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/DragView;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, p4

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/DragView;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p5

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 670
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p13

    move-object/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p14

    .line 669
    invoke-virtual/range {v2 .. v16}, Lcom/android/launcher3/DragLayer;->animateView(Lcom/android/launcher3/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 671
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/DragView;Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 575
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/launcher3/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    .line 576
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V
    .registers 19

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/nativejoin/DragLayerAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/DragLayerAspect;

    move-result-object v6

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v7, p1

    move-object v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {v0 .. v12}, Lcom/android/launcher3/DragLayer;->animateViewIntoPosition_aroundBody7$advice(Lcom/android/launcher3/DragLayer;Lcom/android/launcher3/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;Lcom/lge/launcher3/nativejoin/DragLayerAspect;Lcom/android/launcher3/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 11

    .prologue
    .line 592
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    .line 593
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/DragView;[IFFFILjava/lang/Runnable;I)V
    .registers 26

    .prologue
    .line 581
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 582
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 583
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 584
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 586
    const/4 v2, 0x0

    aget v6, p2, v2

    const/4 v2, 0x1

    aget v7, p2, v2

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 587
    const/16 v16, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v8, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p7

    move/from16 v14, p6

    move/from16 v15, p8

    .line 586
    invoke-virtual/range {v2 .. v16}, Lcom/android/launcher3/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 588
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 837
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 838
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mOverlayView:Landroid/view/View;

    if-eq p1, v0, :cond_10

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mOverlayView:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 841
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 843
    :cond_10
    invoke-direct {p0}, Lcom/android/launcher3/DragLayer;->updateChildIndices()V

    .line 844
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .prologue
    .line 470
    instance-of v0, p1, Lcom/android/launcher3/DragLayer$LayoutParams;

    return v0
.end method

.method public clearAllResizeFrames()V
    .registers 3

    .prologue
    sget-object v0, Lcom/android/launcher3/DragLayer;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 543
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$before$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$10$6b00ed44(Lorg/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_26

    .line 544
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_27

    .line 548
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 550
    :cond_26
    return-void

    .line 544
    :cond_27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppWidgetResizeFrame;

    .line 545
    invoke-virtual {v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->commitResize()V

    .line 546
    invoke-virtual {p0, v0}, Lcom/android/launcher3/DragLayer;->removeView(Landroid/view/View;)V

    goto :goto_1b
.end method

.method public clearAnimatedView()V
    .registers 3

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 806
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 808
    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mDropView:Lcom/android/launcher3/DragView;

    if-eqz v0, :cond_14

    .line 809
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mDragController:Lcom/android/launcher3/DragController;

    iget-object v1, p0, Lcom/android/launcher3/DragLayer;->mDropView:Lcom/android/launcher3/DragView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DragController;->onDeferredEndDrag(Lcom/android/launcher3/DragView;)V

    .line 811
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/DragLayer;->mDropView:Lcom/android/launcher3/DragView;

    .line 812
    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->invalidate()V

    .line 813
    return-void
.end method

.method public dismissOverlayView()V
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mOverlayView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DragLayer;->removeView(Landroid/view/View;)V

    .line 145
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .prologue
    .line 909
    iget v0, p0, Lcom/android/launcher3/DragLayer;->mBackgroundAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    .line 910
    iget v0, p0, Lcom/android/launcher3/DragLayer;->mBackgroundAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 911
    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 914
    :cond_12
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 915
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mDragController:Lcom/android/launcher3/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 4

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mDragController:Lcom/android/launcher3/DragController;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/DragController;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 8

    .prologue
    .line 943
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/InsettableFrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 946
    instance-of v1, p2, Lcom/android/launcher3/Workspace;

    if-eqz v1, :cond_b

    .line 947
    invoke-direct {p0, p1}, Lcom/android/launcher3/DragLayer;->drawPageHints(Landroid/graphics/Canvas;)V

    .line 949
    :cond_b
    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->generateDefaultLayoutParams()Lcom/android/launcher3/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->generateDefaultLayoutParams()Lcom/android/launcher3/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/launcher3/DragLayer$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 464
    new-instance v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/DragLayer$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->generateDefaultLayoutParams()Lcom/android/launcher3/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/DragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/DragLayer;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/DragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/DragLayer$LayoutParams;
    .registers 4

    .prologue
    .line 459
    new-instance v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/DragLayer$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/DragLayer$LayoutParams;
    .registers 3

    .prologue
    .line 475
    new-instance v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/DragLayer$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/DragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/DragLayer;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAnimatedView()Landroid/view/View;
    .registers 2

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mDropView:Lcom/android/launcher3/DragView;

    return-object v0
.end method

.method public getBackgroundAlpha()F
    .registers 2

    .prologue
    .line 960
    iget v0, p0, Lcom/android/launcher3/DragLayer;->mBackgroundAlpha:F

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 5

    .prologue
    .line 859
    iget v0, p0, Lcom/android/launcher3/DragLayer;->mChildCountOnLastUpdate:I

    if-eq v0, p1, :cond_7

    .line 864
    invoke-direct {p0}, Lcom/android/launcher3/DragLayer;->updateChildIndices()V

    .line 868
    :cond_7
    iget v0, p0, Lcom/android/launcher3/DragLayer;->mTopViewIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 879
    :cond_c
    :goto_c
    return p2

    .line 871
    :cond_d
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_14

    .line 873
    iget p2, p0, Lcom/android/launcher3/DragLayer;->mTopViewIndex:I

    goto :goto_c

    .line 874
    :cond_14
    iget v0, p0, Lcom/android/launcher3/DragLayer;->mTopViewIndex:I

    if-lt p2, v0, :cond_c

    .line 879
    add-int/lit8 p2, p2, 0x1

    goto :goto_c
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F
    .registers 4

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    move-result v0

    return v0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F
    .registers 5

    .prologue
    .line 426
    invoke-static {p1, p0, p2, p3}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result v0

    return v0
.end method

.method public getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 392
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mTmpXY:[I

    aput v4, v0, v4

    .line 393
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mTmpXY:[I

    aput v4, v0, v5

    .line 394
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mTmpXY:[I

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    .line 396
    iget-object v1, p0, Lcom/android/launcher3/DragLayer;->mTmpXY:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/launcher3/DragLayer;->mTmpXY:[I

    aget v2, v2, v5

    .line 397
    iget-object v3, p0, Lcom/android/launcher3/DragLayer;->mTmpXY:[I

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 398
    iget-object v4, p0, Lcom/android/launcher3/DragLayer;->mTmpXY:[I

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 396
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 399
    return v0
.end method

.method public getLocationInDragLayer(Landroid/view/View;[I)F
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 403
    aput v1, p2, v1

    .line 404
    const/4 v0, 0x1

    aput v1, p2, v0

    .line 405
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    return v0
.end method

.method public getTouchCompleteListener()Lcom/android/launcher3/DragLayer$TouchCompleteListener;
    .registers 2

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/DragLayer$TouchCompleteListener;

    return-object v0
.end method

.method public getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 438
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 439
    invoke-virtual {p0, v0}, Lcom/android/launcher3/DragLayer;->getLocationInWindow([I)V

    .line 440
    aget v1, v0, v3

    .line 441
    aget v2, v0, v4

    .line 443
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 444
    aget v3, v0, v3

    .line 445
    aget v0, v0, v4

    .line 447
    sub-int v1, v3, v1

    .line 448
    sub-int/2addr v0, v2

    .line 449
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 450
    return-void
.end method

.method public hasResizeFrames()Z
    .registers 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method hidePageHints()V
    .registers 2

    .prologue
    .line 902
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/DragLayer;->mShowPageHints:Z

    .line 903
    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->invalidate()V

    .line 904
    return-void
.end method

.method public isWidgetBeingResized()Z
    .registers 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public mapCoordInSelfToDescendent(Landroid/view/View;[I)F
    .registers 4

    .prologue
    .line 434
    invoke-static {p1, p0, p2}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendent(Landroid/view/View;Landroid/view/View;[I)F

    move-result v0

    return v0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 821
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 822
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mOverlayView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 825
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 827
    :cond_c
    invoke-direct {p0}, Lcom/android/launcher3/DragLayer;->updateChildIndices()V

    .line 828
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 832
    invoke-direct {p0}, Lcom/android/launcher3/DragLayer;->updateChildIndices()V

    .line 833
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/DragLayerAspect;->ajc$interMethod$com_lge_launcher3_dragndrop_DragLayerAspect$com_android_launcher3_DragLayer$onDragEvent(Lcom/android/launcher3/DragLayer;Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method onEnterScrollArea(I)V
    .registers 3

    .prologue
    .line 884
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/DragLayer;->mInScrollArea:Z

    .line 885
    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->invalidate()V

    .line 886
    return-void
.end method

.method onExitScrollArea()V
    .registers 2

    .prologue
    .line 889
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/DragLayer;->mInScrollArea:Z

    .line 890
    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->invalidate()V

    .line 891
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 243
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    if-nez v0, :cond_10

    :cond_e
    move v0, v1

    .line 280
    :goto_f
    return v0

    .line 246
    :cond_10
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getOpenFolder()Lcom/android/launcher3/Folder;

    move-result-object v3

    .line 247
    if-nez v3, :cond_1e

    move v0, v1

    .line 248
    goto :goto_f

    .line 251
    :cond_1e
    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "accessibility"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 250
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 252
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 255
    packed-switch v0, :pswitch_data_8c

    :cond_37
    :goto_37
    :pswitch_37
    move v0, v1

    .line 280
    goto :goto_f

    .line 257
    :pswitch_39
    invoke-direct {p0, v3, p1}, Lcom/android/launcher3/DragLayer;->isEventOverFolder(Lcom/android/launcher3/Folder;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 258
    invoke-direct {p0}, Lcom/android/launcher3/DragLayer;->isInAccessibleDrag()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-direct {p0, p1}, Lcom/android/launcher3/DragLayer;->isEventOverDropTargetBar(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_59

    :cond_4b
    move v0, v1

    .line 259
    :goto_4c
    if-nez v0, :cond_5b

    .line 260
    invoke-virtual {v3}, Lcom/android/launcher3/Folder;->isEditingName()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/DragLayer;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 261
    iput-boolean v2, p0, Lcom/android/launcher3/DragLayer;->mHoverPointClosesFolder:Z

    move v0, v2

    .line 262
    goto :goto_f

    :cond_59
    move v0, v2

    .line 257
    goto :goto_4c

    .line 264
    :cond_5b
    iput-boolean v1, p0, Lcom/android/launcher3/DragLayer;->mHoverPointClosesFolder:Z

    goto :goto_37

    .line 267
    :pswitch_5e
    invoke-direct {p0, v3, p1}, Lcom/android/launcher3/DragLayer;->isEventOverFolder(Lcom/android/launcher3/Folder;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_82

    .line 268
    invoke-direct {p0}, Lcom/android/launcher3/DragLayer;->isInAccessibleDrag()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-direct {p0, p1}, Lcom/android/launcher3/DragLayer;->isEventOverDropTargetBar(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_82

    :cond_70
    move v0, v1

    .line 269
    :goto_71
    if-nez v0, :cond_84

    iget-boolean v4, p0, Lcom/android/launcher3/DragLayer;->mHoverPointClosesFolder:Z

    if-nez v4, :cond_84

    .line 270
    invoke-virtual {v3}, Lcom/android/launcher3/Folder;->isEditingName()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/DragLayer;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 271
    iput-boolean v2, p0, Lcom/android/launcher3/DragLayer;->mHoverPointClosesFolder:Z

    move v0, v2

    .line 272
    goto :goto_f

    :cond_82
    move v0, v2

    .line 267
    goto :goto_71

    .line 273
    :cond_84
    if-nez v0, :cond_88

    move v0, v2

    .line 274
    goto :goto_f

    .line 276
    :cond_88
    iput-boolean v1, p0, Lcom/android/launcher3/DragLayer;->mHoverPointClosesFolder:Z

    goto :goto_37

    .line 255
    nop

    :pswitch_data_8c
    .packed-switch 0x7
        :pswitch_5e
        :pswitch_37
        :pswitch_39
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/DragLayer;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/ConciergeAspect;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/DragLayer;->onInterceptTouchEvent_aroundBody3$advice(Lcom/android/launcher3/DragLayer;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/ConciergeAspect;Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 14

    .prologue
    .line 528
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/InsettableFrameLayout;->onLayout(ZIIII)V

    .line 529
    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->getChildCount()I

    move-result v2

    .line 530
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-lt v1, v2, :cond_c

    .line 540
    return-void

    .line 531
    :cond_c
    invoke-virtual {p0, v1}, Lcom/android/launcher3/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 532
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 533
    instance-of v4, v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    if-eqz v4, :cond_31

    .line 534
    check-cast v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    .line 535
    iget-boolean v4, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->customPosition:Z

    if-eqz v4, :cond_31

    .line 536
    iget v4, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->x:I

    iget v5, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->y:I

    iget v6, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->x:I

    iget v7, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->width:I

    add-int/2addr v6, v7

    iget v7, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->y:I

    iget v0, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->height:I

    add-int/2addr v0, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 530
    :cond_31
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getOpenFolder()Lcom/android/launcher3/Folder;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_24

    .line 306
    if-ne p1, v0, :cond_13

    .line 307
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 317
    :goto_12
    return v0

    .line 310
    :cond_13
    invoke-direct {p0}, Lcom/android/launcher3/DragLayer;->isInAccessibleDrag()Z

    move-result v0

    if-eqz v0, :cond_22

    instance-of v0, p1, Lcom/android/launcher3/SearchDropTargetBar;

    if-eqz v0, :cond_22

    .line 311
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_12

    .line 315
    :cond_22
    const/4 v0, 0x0

    goto :goto_12

    .line 317
    :cond_24
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_12
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 356
    if-nez v2, :cond_1a

    .line 357
    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 381
    :cond_19
    :goto_19
    return v0

    .line 360
    :cond_1a
    if-eq v2, v0, :cond_1f

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2a

    .line 361
    :cond_1f
    iget-object v5, p0, Lcom/android/launcher3/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/DragLayer$TouchCompleteListener;

    if-eqz v5, :cond_28

    .line 362
    iget-object v5, p0, Lcom/android/launcher3/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/DragLayer$TouchCompleteListener;

    invoke-interface {v5}, Lcom/android/launcher3/DragLayer$TouchCompleteListener;->onTouchComplete()V

    .line 364
    :cond_28
    iput-object v6, p0, Lcom/android/launcher3/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/DragLayer$TouchCompleteListener;

    .line 367
    :cond_2a
    iget-object v5, p0, Lcom/android/launcher3/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    if-eqz v5, :cond_32

    .line 369
    packed-switch v2, :pswitch_data_60

    :goto_31
    move v1, v0

    .line 380
    :cond_32
    :goto_32
    if-nez v1, :cond_19

    .line 381
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mDragController:Lcom/android/launcher3/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/DragController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_19

    .line 371
    :pswitch_3b
    iget-object v1, p0, Lcom/android/launcher3/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    iget v2, p0, Lcom/android/launcher3/DragLayer;->mXDown:I

    sub-int v2, v3, v2

    iget v3, p0, Lcom/android/launcher3/DragLayer;->mYDown:I

    sub-int v3, v4, v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    move v1, v0

    .line 372
    goto :goto_32

    .line 375
    :pswitch_4a
    iget-object v1, p0, Lcom/android/launcher3/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    iget v2, p0, Lcom/android/launcher3/DragLayer;->mXDown:I

    sub-int v2, v3, v2

    iget v3, p0, Lcom/android/launcher3/DragLayer;->mYDown:I

    sub-int v3, v4, v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    .line 376
    iget-object v1, p0, Lcom/android/launcher3/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    invoke-virtual {v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->onTouchUp()V

    .line 377
    iput-object v6, p0, Lcom/android/launcher3/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    goto :goto_31

    .line 369
    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_3b
        :pswitch_4a
    .end packed-switch
.end method

.method public setBackgroundAlpha(F)V
    .registers 3

    .prologue
    .line 953
    iget v0, p0, Lcom/android/launcher3/DragLayer;->mBackgroundAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 954
    iput p1, p0, Lcom/android/launcher3/DragLayer;->mBackgroundAlpha:F

    .line 955
    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->invalidate()V

    .line 957
    :cond_b
    return-void
.end method

.method public setBlockTouch(Z)V
    .registers 2

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/android/launcher3/DragLayer;->mBlockTouches:Z

    .line 173
    return-void
.end method

.method public setTouchCompleteListener(Lcom/android/launcher3/DragLayer$TouchCompleteListener;)V
    .registers 2

    .prologue
    .line 964
    iput-object p1, p0, Lcom/android/launcher3/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/DragLayer$TouchCompleteListener;

    .line 965
    return-void
.end method

.method public setup(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragController;)V
    .registers 3

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/launcher3/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 125
    iput-object p2, p0, Lcom/android/launcher3/DragLayer;->mDragController:Lcom/android/launcher3/DragController;

    .line 126
    return-void
.end method

.method public showOverlayView(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 134
    new-instance v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/DragLayer$LayoutParams;-><init>(II)V

    .line 135
    iput-object p1, p0, Lcom/android/launcher3/DragLayer;->mOverlayView:Landroid/view/View;

    .line 136
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 141
    return-void
.end method

.method showPageHints()V
    .registers 3

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/nativejoin/DragLayerAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/DragLayerAspect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/DragLayer;->showPageHints_aroundBody9$advice(Lcom/android/launcher3/DragLayer;Lcom/lge/launcher3/nativejoin/DragLayerAspect;Lorg/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method
