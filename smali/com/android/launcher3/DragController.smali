.class public Lcom/android/launcher3/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/DragController$DragListener;,
        Lcom/android/launcher3/DragController$ScrollRunnable;
    }
.end annotation


# static fields
.field public static DRAG_ACTION_COPY:I = 0x0

.field public static DRAG_ACTION_MOVE:I = 0x0

.field private static final MAX_FLING_DEGREES:F = 35.0f

.field private static final PROFILE_DRAWING_DURING_DRAG:Z = false

.field public static final RESCROLL_DELAY:I = 0x384

.field public static final SCROLL_DELAY:I = 0x1f4

.field static final SCROLL_LEFT:I = 0x0

.field static final SCROLL_NONE:I = -0x1

.field private static final SCROLL_OUTSIDE_ZONE:I = 0x0

.field static final SCROLL_RIGHT:I = 0x1

.field private static final SCROLL_WAITING_IN_ZONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Launcher.DragController"

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field public mConeUIFlag:Ljava/lang/Boolean;

.field private final mCoordinatesTemp:[I

.field mDistanceSinceScroll:I

.field private mDragLayerRect:Landroid/graphics/Rect;

.field private mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

.field mDragScroller:Lcom/android/launcher3/DragScroller;

.field public mDragStatus:I

.field private mDragging:Z

.field public mDragingDiff:I

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field public mExternalDragingSouce:[Ljava/lang/String;

.field private mFlingToDeleteDropTarget:Lcom/android/launcher3/DropTarget;

.field protected mFlingToDeleteThresholdVelocity:I

.field private mHandler:Landroid/os/Handler;

.field public mHomeDragingSource:[Ljava/lang/String;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsAccessibleDrag:Z

.field private final mIsRtl:Z

.field private mLastDropTarget:Lcom/android/launcher3/DropTarget;

.field mLastTouch:[I

.field mLastTouchUpTime:J

.field mLauncher:Lcom/android/launcher3/Launcher;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/DragController$DragListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionDownX:I

.field private mMotionDownY:I

.field private mMoveTarget:Landroid/view/View;

.field public mPreventBroadcastSetCurrentContent:Z

.field private mRectTemp:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/android/launcher3/DragController$ScrollRunnable;

.field mScrollState:I

.field private mScrollView:Landroid/view/View;

.field private mScrollZone:I

.field private mTmpPoint:[I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    invoke-static {}, Lcom/android/launcher3/DragController;->ajc$preClinit()V

    .line 50
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/DragController;->DRAG_ACTION_MOVE:I

    .line 53
    const/4 v0, 0x1

    sput v0, Lcom/android/launcher3/DragController;->DRAG_ACTION_COPY:I

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 6

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/launcher3/DragController;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    :try_start_9
    invoke-static {p0}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interFieldInit$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mConeUIFlag(Lcom/android/launcher3/DragController;)V

    invoke-static {p0}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interFieldInit$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mDragingDiff(Lcom/android/launcher3/DragController;)V

    invoke-static {p0}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interFieldInit$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mPreventBroadcastSetCurrentContent(Lcom/android/launcher3/DragController;)V

    invoke-static {p0}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interFieldInit$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mDragStatus(Lcom/android/launcher3/DragController;)V

    invoke-static {p0}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interFieldInit$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mHomeDragingSource(Lcom/android/launcher3/DragController;)V

    invoke-static {p0}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interFieldInit$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mExternalDragingSouce(Lcom/android/launcher3/DragController;)V

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/DragController;->mCoordinatesTemp:[I

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/DragController;->mListeners:Ljava/util/ArrayList;

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/DragController;->mScrollState:I

    .line 111
    new-instance v0, Lcom/android/launcher3/DragController$ScrollRunnable;

    invoke-direct {v0, p0}, Lcom/android/launcher3/DragController$ScrollRunnable;-><init>(Lcom/android/launcher3/DragController;)V

    iput-object v0, p0, Lcom/android/launcher3/DragController;->mScrollRunnable:Lcom/android/launcher3/DragController$ScrollRunnable;

    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/DragController;->mLastTouch:[I

    .line 118
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/launcher3/DragController;->mLastTouchUpTime:J

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/DragController;->mDistanceSinceScroll:I

    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/DragController;->mTmpPoint:[I

    .line 122
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    .line 153
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 154
    iput-object p1, p0, Lcom/android/launcher3/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 155
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/DragController;->mHandler:Landroid/os/Handler;

    .line 156
    const v2, 0x7f09006a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/DragController;->mScrollZone:I

    .line 157
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 159
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 161
    const v3, 0x7f0c0003

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 160
    iput v2, p0, Lcom/android/launcher3/DragController;->mFlingToDeleteThresholdVelocity:I

    .line 162
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/DragController;->mIsRtl:Z
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_8b} :catch_93

    .line 163
    invoke-static {}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->aspectOf()Lcom/lge/launcher3/dragndrop/DragNDropAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$after$com_lge_launcher3_dragndrop_DragNDropAspect$1$d07e48fe(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_93
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->aspectOf()Lcom/lge/launcher3/dragndrop/DragNDropAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$after$com_lge_launcher3_dragndrop_DragNDropAspect$1$d07e48fe(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .registers 3

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 826
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 828
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 829
    return-void
.end method

.method public static ajc$get$mCoordinatesTemp(Lcom/android/launcher3/DragController;)[I
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mCoordinatesTemp:[I

    return-object v0
.end method

.method public static ajc$get$mDragObject(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/DropTarget$DragObject;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    return-object v0
.end method

.method public static ajc$get$mDragging(Lcom/android/launcher3/DragController;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/DragController;->mDragging:Z

    return v0
.end method

.method public static ajc$get$mHandler(Lcom/android/launcher3/DragController;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static ajc$get$mLastDropTarget(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/DropTarget;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    return-object v0
.end method

.method public static ajc$get$mLastTouch(Lcom/android/launcher3/DragController;)[I
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mLastTouch:[I

    return-object v0
.end method

.method public static ajc$get$mLauncher(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/Launcher;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method public static ajc$get$mMotionDownX(Lcom/android/launcher3/DragController;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/DragController;->mMotionDownX:I

    return v0
.end method

.method public static ajc$get$mMotionDownY(Lcom/android/launcher3/DragController;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/DragController;->mMotionDownY:I

    return v0
.end method

.method public static ajc$get$mScrollRunnable(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/DragController$ScrollRunnable;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mScrollRunnable:Lcom/android/launcher3/DragController$ScrollRunnable;

    return-object v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "DragController.java"

    const-class v2, Lcom/android/launcher3/DragController;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-call"

    const-string v1, "1"

    const-string v2, "performHapticFeedback"

    const-string v3, "com.android.launcher3.DragLayer"

    const-string v4, "int"

    const-string v5, "feedbackConstant"

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x10b

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/DragController;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "startDrag"

    const-string v3, "com.android.launcher3.DragController"

    const-string v4, "android.graphics.Bitmap:int:int:com.android.launcher3.DragSource:java.lang.Object:int:android.graphics.Point:android.graphics.Rect:float:boolean"

    const-string v5, "b:dragLayerX:dragLayerY:source:dragInfo:dragAction:dragOffset:dragRegion:initialDragViewScale:accessible"

    const-string v6, ""

    const-string v7, "com.android.launcher3.DragView"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xd6

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/DragController;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "cancelDrag"

    const-string v3, "com.android.launcher3.DragController"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x14c

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/DragController;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onInterceptTouchEvent"

    const-string v3, "com.android.launcher3.DragController"

    const-string v4, "android.view.MotionEvent"

    const-string v5, "ev"

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x1b3

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/DragController;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onTouchEvent"

    const-string v3, "com.android.launcher3.DragController"

    const-string v4, "android.view.MotionEvent"

    const-string v5, "ev"

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x256

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/DragController;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v6, "initialization"

    const-string v1, "1"

    const-string v2, "com.android.launcher3.DragController"

    const-string v3, "com.android.launcher3.Launcher"

    const-string v4, "launcher"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->makeConstructorSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/ConstructorSignature;

    move-result-object v1

    const/16 v2, 0x98

    invoke-virtual {v0, v6, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/DragController;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$set$mCoordinatesTemp(Lcom/android/launcher3/DragController;[I)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/DragController;->mCoordinatesTemp:[I

    return-void
.end method

.method public static ajc$set$mDragObject(Lcom/android/launcher3/DragController;Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    return-void
.end method

.method public static ajc$set$mDragging(Lcom/android/launcher3/DragController;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/DragController;->mDragging:Z

    return-void
.end method

.method public static ajc$set$mHandler(Lcom/android/launcher3/DragController;Landroid/os/Handler;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/DragController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static ajc$set$mLastDropTarget(Lcom/android/launcher3/DragController;Lcom/android/launcher3/DropTarget;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    return-void
.end method

.method public static ajc$set$mLastTouch(Lcom/android/launcher3/DragController;[I)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/DragController;->mLastTouch:[I

    return-void
.end method

.method public static ajc$set$mLauncher(Lcom/android/launcher3/DragController;Lcom/android/launcher3/Launcher;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method public static ajc$set$mMotionDownX(Lcom/android/launcher3/DragController;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/DragController;->mMotionDownX:I

    return-void
.end method

.method public static ajc$set$mMotionDownY(Lcom/android/launcher3/DragController;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/DragController;->mMotionDownY:I

    return-void
.end method

.method public static ajc$set$mScrollRunnable(Lcom/android/launcher3/DragController;Lcom/android/launcher3/DragController$ScrollRunnable;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/DragController;->mScrollRunnable:Lcom/android/launcher3/DragController$ScrollRunnable;

    return-void
.end method

.method private checkTouchMove(Lcom/android/launcher3/DropTarget;)V
    .registers 4

    .prologue
    .line 549
    if-eqz p1, :cond_1e

    .line 550
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eq v0, p1, :cond_16

    .line 551
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_11

    .line 552
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    iget-object v1, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 554
    :cond_11
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {p1, v0}, Lcom/android/launcher3/DropTarget;->onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 556
    :cond_16
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {p1, v0}, Lcom/android/launcher3/DropTarget;->onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 562
    :cond_1b
    :goto_1b
    iput-object p1, p0, Lcom/android/launcher3/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    .line 563
    return-void

    .line 558
    :cond_1e
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_1b

    .line 559
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    iget-object v1, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    goto :goto_1b
.end method

.method private clearScrollRunnable()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 502
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/DragController;->mScrollRunnable:Lcom/android/launcher3/DragController$ScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 503
    iget v0, p0, Lcom/android/launcher3/DragController;->mScrollState:I

    if-ne v0, v2, :cond_22

    .line 504
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/DragController;->mScrollState:I

    .line 505
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mScrollRunnable:Lcom/android/launcher3/DragController$ScrollRunnable;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/DragController$ScrollRunnable;->setDirection(I)V

    .line 506
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mDragScroller:Lcom/android/launcher3/DragScroller;

    invoke-interface {v0}, Lcom/android/launcher3/DragScroller;->onExitScrollArea()Z

    .line 507
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->onExitScrollArea()V

    .line 509
    :cond_22
    return-void
.end method

.method private drop(FF)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 738
    iget-object v3, p0, Lcom/android/launcher3/DragController;->mCoordinatesTemp:[I

    .line 739
    float-to-int v0, p1

    float-to-int v4, p2

    invoke-direct {p0, v0, v4, v3}, Lcom/android/launcher3/DragController;->findDropTarget(II[I)Lcom/android/launcher3/DropTarget;

    move-result-object v0

    .line 741
    iget-object v4, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    aget v5, v3, v2

    iput v5, v4, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    .line 742
    iget-object v4, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    aget v3, v3, v1

    iput v3, v4, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    .line 744
    if-eqz v0, :cond_3a

    .line 745
    iget-object v3, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-boolean v1, v3, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    .line 746
    iget-object v3, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v3}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 747
    iget-object v3, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v3}, Lcom/android/launcher3/DropTarget;->acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 748
    iget-object v3, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v3}, Lcom/android/launcher3/DropTarget;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 752
    :goto_2e
    iget-object v3, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v3, v3, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    check-cast v0, Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v3, v0, v4, v2, v1}, Lcom/android/launcher3/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V

    .line 753
    return-void

    :cond_3a
    move v1, v2

    goto :goto_2e
.end method

.method private dropOnFlingToDeleteTarget(FFLandroid/graphics/PointF;)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 711
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mCoordinatesTemp:[I

    .line 713
    iget-object v3, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    aget v4, v1, v0

    iput v4, v3, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    .line 714
    iget-object v3, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    aget v1, v1, v2

    iput v1, v3, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    .line 718
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/launcher3/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher3/DropTarget;

    iget-object v3, p0, Lcom/android/launcher3/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eq v1, v3, :cond_21

    .line 719
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    iget-object v3, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v1, v3}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 724
    :cond_21
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher3/DropTarget;

    iget-object v3, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v1, v3}, Lcom/android/launcher3/DropTarget;->onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 727
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-boolean v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    .line 728
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher3/DropTarget;

    iget-object v3, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v1, v3}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 729
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher3/DropTarget;

    iget-object v3, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v1, v3}, Lcom/android/launcher3/DropTarget;->acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 730
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher3/DropTarget;

    iget-object v1, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v1, p3}, Lcom/android/launcher3/DropTarget;->onFlingToDelete(Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/PointF;)V

    move v1, v2

    .line 733
    :goto_45
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v3, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    iget-object v0, p0, Lcom/android/launcher3/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher3/DropTarget;

    check-cast v0, Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v3, v0, v4, v2, v1}, Lcom/android/launcher3/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V

    .line 735
    return-void

    :cond_53
    move v1, v0

    goto :goto_45
.end method

.method private endDrag()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 368
    iget-boolean v1, p0, Lcom/android/launcher3/DragController;->mDragging:Z

    if-eqz v1, :cond_37

    .line 369
    iput-boolean v0, p0, Lcom/android/launcher3/DragController;->mDragging:Z

    .line 370
    iput-boolean v0, p0, Lcom/android/launcher3/DragController;->mIsAccessibleDrag:Z

    .line 371
    invoke-direct {p0}, Lcom/android/launcher3/DragController;->clearScrollRunnable()V

    .line 373
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    if-eqz v1, :cond_24

    .line 374
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-boolean v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 375
    if-nez v0, :cond_1f

    .line 376
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/DragView;->remove()V

    .line 378
    :cond_1f
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    .line 382
    :cond_24
    if-nez v0, :cond_37

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 389
    :cond_37
    invoke-direct {p0}, Lcom/android/launcher3/DragController;->releaseVelocityTracker()V

    .line 390
    return-void

    .line 383
    :cond_3b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragController$DragListener;

    .line 384
    invoke-interface {v0}, Lcom/android/launcher3/DragController$DragListener;->onDragEnd()V

    goto :goto_31
.end method

.method private findDropTarget(II[I)Lcom/android/launcher3/DropTarget;
    .registers 9

    .prologue
    .line 756
    iget-object v2, p0, Lcom/android/launcher3/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 758
    iget-object v3, p0, Lcom/android/launcher3/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 759
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 760
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_b
    if-gez v1, :cond_f

    .line 778
    const/4 v0, 0x0

    :goto_e
    return-object v0

    .line 761
    :cond_f
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DropTarget;

    .line 762
    invoke-interface {v0}, Lcom/android/launcher3/DropTarget;->isDropEnabled()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 760
    :cond_1b
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_b

    .line 765
    :cond_1f
    invoke-interface {v0, v2}, Lcom/android/launcher3/DropTarget;->getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V

    .line 767
    iget-object v4, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput p1, v4, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    .line 768
    iget-object v4, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput p2, v4, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    .line 769
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 771
    const/4 v1, 0x0

    aput p1, p3, v1

    .line 772
    const/4 v1, 0x1

    aput p2, p3, v1

    .line 773
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v2

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1, p3}, Lcom/android/launcher3/DragLayer;->mapCoordInSelfToDescendent(Landroid/view/View;[I)F

    goto :goto_e
.end method

.method private getClampedDragLayerPos(FF)[I
    .registers 7

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DragLayer;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 415
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mTmpPoint:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 416
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mTmpPoint:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher3/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 417
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mTmpPoint:[I

    return-object v0
.end method

.method private handleMoveEvent(II)V
    .registers 11

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 512
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    if-nez v1, :cond_2a

    .line 513
    :cond_d
    const-string v0, "Launcher.DragController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMoveEvent() mDragObject:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :goto_29
    return-void

    .line 516
    :cond_2a
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/DragView;->move(II)V

    .line 519
    iget-object v3, p0, Lcom/android/launcher3/DragController;->mCoordinatesTemp:[I

    .line 520
    invoke-direct {p0, p1, p2, v3}, Lcom/android/launcher3/DragController;->findDropTarget(II[I)Lcom/android/launcher3/DropTarget;

    move-result-object v1

    .line 522
    iget-object v2, p0, Lcom/android/launcher3/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, v2, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v2, :cond_7b

    iget-object v2, p0, Lcom/android/launcher3/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, v2, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getOpenFolder()Lcom/android/launcher3/Folder;

    move-result-object v2

    .line 523
    :goto_45
    if-eqz v2, :cond_7d

    if-eq v2, v1, :cond_7d

    .line 527
    :goto_49
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    aget v2, v3, v6

    iput v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    .line 528
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    aget v2, v3, v7

    iput v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    .line 529
    invoke-direct {p0, v0}, Lcom/android/launcher3/DragController;->checkTouchMove(Lcom/android/launcher3/DropTarget;)V

    .line 532
    iget v0, p0, Lcom/android/launcher3/DragController;->mDistanceSinceScroll:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/android/launcher3/DragController;->mLastTouch:[I

    aget v2, v2, v6

    sub-int/2addr v2, p1

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/launcher3/DragController;->mLastTouch:[I

    aget v4, v4, v7

    sub-int/2addr v4, p2

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/DragController;->mDistanceSinceScroll:I

    .line 533
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mLastTouch:[I

    aput p1, v0, v6

    .line 534
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mLastTouch:[I

    aput p2, v0, v7

    .line 535
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/DragController;->checkScrollState(II)V

    goto :goto_29

    :cond_7b
    move-object v2, v0

    .line 522
    goto :goto_45

    :cond_7d
    move-object v0, v1

    goto :goto_49
.end method

.method private isFlingingToDelete(Lcom/android/launcher3/DragSource;)Landroid/graphics/PointF;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 690
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher3/DropTarget;

    if-nez v1, :cond_6

    .line 707
    :cond_5
    :goto_5
    return-object v0

    .line 691
    :cond_6
    invoke-interface {p1}, Lcom/android/launcher3/DragSource;->supportsFlingToDelete()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 693
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 694
    iget-object v2, p0, Lcom/android/launcher3/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v3, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 696
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/DragController;->mFlingToDeleteThresholdVelocity:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    .line 698
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/launcher3/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 699
    iget-object v3, p0, Lcom/android/launcher3/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    .line 698
    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 700
    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 701
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 702
    invoke-virtual {v1}, Landroid/graphics/PointF;->length()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/PointF;->length()F

    move-result v2

    mul-float/2addr v2, v4

    .line 701
    div-float v2, v3, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 703
    float-to-double v2, v2

    const-wide v4, 0x4041800000000000L    # 35.0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_5

    move-object v0, v1

    .line 704
    goto :goto_5
.end method

.method private static final onInterceptTouchEvent_aroundBody4(Lcom/android/launcher3/DragController;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 443
    iget-boolean v2, p0, Lcom/android/launcher3/DragController;->mIsAccessibleDrag:Z

    if-eqz v2, :cond_8

    .line 487
    :goto_7
    return v0

    .line 448
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/launcher3/DragController;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 450
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 451
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object v3

    .line 452
    aget v4, v3, v0

    .line 453
    aget v3, v3, v5

    .line 455
    packed-switch v2, :pswitch_data_66

    .line 487
    :goto_22
    :pswitch_22
    iget-boolean v0, p0, Lcom/android/launcher3/DragController;->mDragging:Z

    goto :goto_7

    .line 460
    :pswitch_25
    iput v4, p0, Lcom/android/launcher3/DragController;->mMotionDownX:I

    .line 461
    iput v3, p0, Lcom/android/launcher3/DragController;->mMotionDownY:I

    .line 462
    iput-object v1, p0, Lcom/android/launcher3/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    .line 464
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mLastTouch:[I

    aput v4, v1, v0

    .line 465
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mLastTouch:[I

    aput v3, v0, v5

    goto :goto_22

    .line 468
    :pswitch_34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/launcher3/DragController;->mLastTouchUpTime:J

    .line 469
    iget-boolean v0, p0, Lcom/android/launcher3/DragController;->mDragging:Z

    if-eqz v0, :cond_58

    .line 470
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    invoke-direct {p0, v0}, Lcom/android/launcher3/DragController;->isFlingingToDelete(Lcom/android/launcher3/DragSource;)Landroid/graphics/PointF;

    move-result-object v0

    .line 471
    iget-object v2, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/launcher3/DeleteDropTarget;->supportsDrop(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    move-object v0, v1

    .line 474
    :cond_51
    if-eqz v0, :cond_5c

    .line 475
    int-to-float v1, v4

    int-to-float v2, v3

    invoke-direct {p0, v1, v2, v0}, Lcom/android/launcher3/DragController;->dropOnFlingToDeleteTarget(FFLandroid/graphics/PointF;)V

    .line 480
    :cond_58
    :goto_58
    invoke-direct {p0}, Lcom/android/launcher3/DragController;->endDrag()V

    goto :goto_22

    .line 477
    :cond_5c
    int-to-float v0, v4

    int-to-float v1, v3

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/DragController;->drop(FF)V

    goto :goto_58

    .line 483
    :pswitch_62
    invoke-virtual {p0}, Lcom/android/launcher3/DragController;->cancelDrag()V

    goto :goto_22

    .line 455
    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_25
        :pswitch_34
        :pswitch_22
        :pswitch_62
    .end packed-switch
.end method

.method private static final onInterceptTouchEvent_aroundBody5$advice(Lcom/android/launcher3/DragController;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/dragndrop/DragNDropAspect;Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 10

    .prologue
    .line 65
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragController;

    .line 66
    invoke-static {v0}, Lcom/android/launcher3/DragController;->ajc$get$mDragObject(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object v0

    .line 68
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 69
    const/4 v2, 0x3

    if-ne v1, v2, :cond_25

    .line 70
    if-eqz v0, :cond_25

    iget-object v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    if-eqz v1, :cond_25

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/DragView;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_25

    .line 71
    const/4 v0, 0x0

    .line 75
    :goto_24
    return v0

    :cond_25
    invoke-static {p0, p4, p2}, Lcom/android/launcher3/DragController;->onInterceptTouchEvent_aroundBody4(Lcom/android/launcher3/DragController;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    goto :goto_24
.end method

.method private static final onTouchEvent_aroundBody6(Lcom/android/launcher3/DragController;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 599
    iget-boolean v2, p0, Lcom/android/launcher3/DragController;->mDragging:Z

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/android/launcher3/DragController;->mIsAccessibleDrag:Z

    if-eqz v2, :cond_c

    :cond_a
    move v0, v1

    .line 652
    :goto_b
    return v0

    .line 604
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/launcher3/DragController;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 606
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 607
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object v3

    .line 608
    aget v4, v3, v1

    .line 609
    aget v3, v3, v0

    .line 611
    packed-switch v2, :pswitch_data_8e

    goto :goto_b

    .line 614
    :pswitch_27
    iput v4, p0, Lcom/android/launcher3/DragController;->mMotionDownX:I

    .line 615
    iput v3, p0, Lcom/android/launcher3/DragController;->mMotionDownY:I

    .line 617
    iget v2, p0, Lcom/android/launcher3/DragController;->mScrollZone:I

    if-lt v4, v2, :cond_3a

    iget-object v2, p0, Lcom/android/launcher3/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v5, p0, Lcom/android/launcher3/DragController;->mScrollZone:I

    sub-int/2addr v2, v5

    if-le v4, v2, :cond_49

    .line 618
    :cond_3a
    iput v0, p0, Lcom/android/launcher3/DragController;->mScrollState:I

    .line 619
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher3/DragController;->mScrollRunnable:Lcom/android/launcher3/DragController$ScrollRunnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 623
    :goto_45
    invoke-direct {p0, v4, v3}, Lcom/android/launcher3/DragController;->handleMoveEvent(II)V

    goto :goto_b

    .line 621
    :cond_49
    iput v1, p0, Lcom/android/launcher3/DragController;->mScrollState:I

    goto :goto_45

    .line 626
    :pswitch_4c
    invoke-direct {p0, v4, v3}, Lcom/android/launcher3/DragController;->handleMoveEvent(II)V

    goto :goto_b

    .line 630
    :pswitch_50
    invoke-direct {p0, v4, v3}, Lcom/android/launcher3/DragController;->handleMoveEvent(II)V

    .line 631
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher3/DragController;->mScrollRunnable:Lcom/android/launcher3/DragController$ScrollRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 633
    iget-boolean v1, p0, Lcom/android/launcher3/DragController;->mDragging:Z

    if-eqz v1, :cond_78

    .line 634
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    invoke-direct {p0, v1}, Lcom/android/launcher3/DragController;->isFlingingToDelete(Lcom/android/launcher3/DragSource;)Landroid/graphics/PointF;

    move-result-object v1

    .line 635
    iget-object v2, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/launcher3/DeleteDropTarget;->supportsDrop(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71

    .line 636
    const/4 v1, 0x0

    .line 638
    :cond_71
    if-eqz v1, :cond_7c

    .line 639
    int-to-float v2, v4

    int-to-float v3, v3

    invoke-direct {p0, v2, v3, v1}, Lcom/android/launcher3/DragController;->dropOnFlingToDeleteTarget(FFLandroid/graphics/PointF;)V

    .line 644
    :cond_78
    :goto_78
    invoke-direct {p0}, Lcom/android/launcher3/DragController;->endDrag()V

    goto :goto_b

    .line 641
    :cond_7c
    int-to-float v1, v4

    int-to-float v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/DragController;->drop(FF)V

    goto :goto_78

    .line 647
    :pswitch_82
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher3/DragController;->mScrollRunnable:Lcom/android/launcher3/DragController$ScrollRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 648
    invoke-virtual {p0}, Lcom/android/launcher3/DragController;->cancelDrag()V

    goto/16 :goto_b

    .line 611
    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_27
        :pswitch_50
        :pswitch_4c
        :pswitch_82
    .end packed-switch
.end method

.method private static final onTouchEvent_aroundBody7$advice(Lcom/android/launcher3/DragController;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/dragndrop/DragNDropAspect;Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragController;

    .line 80
    invoke-static {v0}, Lcom/android/launcher3/DragController;->ajc$get$mDragObject(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object v2

    .line 82
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 83
    const/4 v4, 0x3

    if-ne v3, v4, :cond_26

    .line 84
    if-eqz v2, :cond_26

    iget-object v3, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    if-eqz v3, :cond_26

    iget-object v3, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v3}, Lcom/android/launcher3/DragView;->getAlpha()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_26

    move v0, v1

    .line 95
    :goto_25
    return v0

    .line 89
    :cond_26
    iget-object v0, v0, Lcom/android/launcher3/DragController;->mConeUIFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 90
    if-eqz v2, :cond_38

    iget-object v0, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v0, v0, Lcom/lge/launcher3/dragndrop/ConeShortcut;

    if-eqz v0, :cond_38

    move v0, v1

    .line 91
    goto :goto_25

    .line 95
    :cond_38
    invoke-static {p0, p4, p2}, Lcom/android/launcher3/DragController;->onTouchEvent_aroundBody6(Lcom/android/launcher3/DragController;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    goto :goto_25
.end method

.method private static final performHapticFeedback_aroundBody0(Lcom/android/launcher3/DragController;Lcom/android/launcher3/DragLayer;ILorg/aspectj/lang/JoinPoint;)Z
    .registers 5

    .prologue
    .line 267
    invoke-virtual {p1, p2}, Lcom/android/launcher3/DragLayer;->performHapticFeedback(I)Z

    move-result v0

    return v0
.end method

.method private static final performHapticFeedback_aroundBody1$advice(Lcom/android/launcher3/DragController;Lcom/android/launcher3/DragLayer;ILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/crosscutting/GlobalAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 8

    .prologue
    .line 50
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/util/VibratorManager;->isVibratorFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/DragController;->performHapticFeedback_aroundBody0(Lcom/android/launcher3/DragController;Lcom/android/launcher3/DragLayer;ILorg/aspectj/lang/JoinPoint;)Z

    .line 54
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private releaseVelocityTracker()V
    .registers 2

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 833
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 834
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 836
    :cond_c
    return-void
.end method

.method private static final startDrag_aroundBody2(Lcom/android/launcher3/DragController;Landroid/graphics/Bitmap;IILcom/android/launcher3/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FZLorg/aspectj/lang/JoinPoint;)Lcom/android/launcher3/DragView;
    .registers 26

    .prologue
    .line 222
    iget-object v3, p0, Lcom/android/launcher3/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_10

    .line 224
    iget-object v3, p0, Lcom/android/launcher3/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 223
    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/android/launcher3/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 226
    :cond_10
    iget-object v3, p0, Lcom/android/launcher3/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/launcher3/DragController;->mWindowToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 228
    iget-object v3, p0, Lcom/android/launcher3/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_c9

    .line 232
    iget v3, p0, Lcom/android/launcher3/DragController;->mMotionDownX:I

    sub-int v6, v3, p2

    .line 233
    iget v3, p0, Lcom/android/launcher3/DragController;->mMotionDownY:I

    sub-int v7, v3, p3

    .line 235
    if-nez p8, :cond_da

    const/4 v3, 0x0

    move v4, v3

    .line 236
    :goto_30
    if-nez p8, :cond_e1

    const/4 v3, 0x0

    .line 238
    :goto_33
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher3/DragController;->mDragging:Z

    .line 239
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/android/launcher3/DragController;->mIsAccessibleDrag:Z

    .line 241
    new-instance v5, Lcom/android/launcher3/DropTarget$DragObject;

    invoke-direct {v5}, Lcom/android/launcher3/DropTarget$DragObject;-><init>()V

    iput-object v5, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 243
    iget-object v5, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    .line 244
    iget-boolean v5, p0, Lcom/android/launcher3/DragController;->mIsAccessibleDrag:Z

    if-eqz v5, :cond_e7

    .line 246
    iget-object v3, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    .line 247
    iget-object v3, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/android/launcher3/DropTarget$DragObject;->yOffset:I

    .line 248
    iget-object v3, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/launcher3/DropTarget$DragObject;->accessibleDrag:Z

    .line 254
    :goto_63
    iget-object v3, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    move-object/from16 v0, p4

    iput-object v0, v3, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    .line 255
    iget-object v3, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    move-object/from16 v0, p5

    iput-object v0, v3, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 257
    iget-object v13, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    new-instance v3, Lcom/android/launcher3/DragView;

    iget-object v4, p0, Lcom/android/launcher3/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 258
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object v5, p1

    move/from16 v12, p9

    invoke-direct/range {v3 .. v12}, Lcom/android/launcher3/DragView;-><init>(Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;IIIIIIF)V

    .line 257
    iput-object v3, v13, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    .line 260
    if-eqz p7, :cond_93

    .line 261
    new-instance v4, Landroid/graphics/Point;

    move-object/from16 v0, p7

    invoke-direct {v4, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/DragView;->setDragVisualizeOffset(Landroid/graphics/Point;)V

    .line 263
    :cond_93
    if-eqz p8, :cond_9f

    .line 264
    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, p8

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 267
    :cond_9f
    iget-object v4, p0, Lcom/android/launcher3/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v4, Lcom/android/launcher3/DragController;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v6}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, p0, v5, v7}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v7

    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v10, v7

    invoke-static/range {v4 .. v10}, Lcom/android/launcher3/DragController;->performHapticFeedback_aroundBody1$advice(Lcom/android/launcher3/DragController;Lcom/android/launcher3/DragLayer;ILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/crosscutting/GlobalAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z

    .line 268
    iget v4, p0, Lcom/android/launcher3/DragController;->mMotionDownX:I

    iget v5, p0, Lcom/android/launcher3/DragController;->mMotionDownY:I

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/DragView;->show(II)V

    .line 269
    iget v4, p0, Lcom/android/launcher3/DragController;->mMotionDownX:I

    iget v5, p0, Lcom/android/launcher3/DragController;->mMotionDownY:I

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/DragController;->handleMoveEvent(II)V

    .line 270
    return-object v3

    .line 228
    :cond_c9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/DragController$DragListener;

    .line 229
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v2, p6

    invoke-interface {v3, v0, v1, v2}, Lcom/android/launcher3/DragController$DragListener;->onDragStart(Lcom/android/launcher3/DragSource;Ljava/lang/Object;I)V

    goto/16 :goto_1e

    .line 235
    :cond_da
    move-object/from16 v0, p8

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move v4, v3

    goto/16 :goto_30

    .line 236
    :cond_e1
    move-object/from16 v0, p8

    iget v3, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_33

    .line 250
    :cond_e7
    iget-object v5, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget v8, p0, Lcom/android/launcher3/DragController;->mMotionDownX:I

    add-int v4, v4, p2

    sub-int v4, v8, v4

    iput v4, v5, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    .line 251
    iget-object v4, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget v5, p0, Lcom/android/launcher3/DragController;->mMotionDownY:I

    add-int v3, v3, p3

    sub-int v3, v5, v3

    iput v3, v4, Lcom/android/launcher3/DropTarget$DragObject;->yOffset:I

    goto/16 :goto_63
.end method

.method private static final startDrag_aroundBody3$advice(Lcom/android/launcher3/DragController;Landroid/graphics/Bitmap;IILcom/android/launcher3/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FZLorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/dragndrop/DragNDropAspect;Landroid/graphics/Bitmap;IILcom/android/launcher3/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FZLorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Lcom/android/launcher3/DragView;
    .registers 40

    .prologue
    .line 105
    invoke-interface/range {p24 .. p24}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/launcher3/DragController;

    .line 106
    iget-object v1, v13, Lcom/android/launcher3/DragController;->mConeUIFlag:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4b

    move-object/from16 v0, p17

    instance-of v1, v0, Lcom/android/launcher3/ItemInfo;

    if-eqz v1, :cond_4b

    const/4 v1, 0x1

    move v14, v1

    :goto_17
    move-object v1, p0

    move-object/from16 v2, p13

    move/from16 v3, p14

    move/from16 v4, p15

    move-object/from16 v5, p16

    move-object/from16 v6, p17

    move/from16 v7, p18

    move-object/from16 v8, p19

    move-object/from16 v9, p20

    move/from16 v10, p21

    move/from16 v11, p22

    move-object/from16 v12, p11

    .line 108
    invoke-static/range {v1 .. v12}, Lcom/android/launcher3/DragController;->startDrag_aroundBody2(Lcom/android/launcher3/DragController;Landroid/graphics/Bitmap;IILcom/android/launcher3/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FZLorg/aspectj/lang/JoinPoint;)Lcom/android/launcher3/DragView;

    move-result-object v7

    .line 111
    if-eqz v14, :cond_4a

    .line 112
    invoke-static {v13}, Lcom/android/launcher3/DragController;->ajc$get$mMotionDownX(Lcom/android/launcher3/DragController;)I

    move-result v1

    sub-int v5, v1, p14

    .line 113
    invoke-static {v13}, Lcom/android/launcher3/DragController;->ajc$get$mMotionDownY(Lcom/android/launcher3/DragController;)I

    move-result v1

    sub-int v6, v1, p15

    move-object v1, v13

    move-object/from16 v2, p13

    move-object/from16 v3, p16

    move-object/from16 v4, p17

    .line 112
    invoke-static/range {v1 .. v7}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$startDragShadow(Lcom/android/launcher3/DragController;Landroid/graphics/Bitmap;Lcom/android/launcher3/DragSource;Ljava/lang/Object;IILcom/android/launcher3/DragView;)V

    .line 115
    :cond_4a
    return-object v7

    .line 106
    :cond_4b
    const/4 v1, 0x0

    move v14, v1

    goto :goto_17
.end method


# virtual methods
.method public addDragListener(Lcom/android/launcher3/DragController$DragListener;)V
    .registers 3

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    return-void
.end method

.method public addDropTarget(Lcom/android/launcher3/DropTarget;)V
    .registers 3

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_dragndrop_DragNDropAspect$checkConeShortcut()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$checkConeShortcut(Lcom/android/launcher3/DragController;)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_dragndrop_DragNDropAspect$creatDummyShortView(Landroid/view/DragEvent;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$creatDummyShortView(Lcom/android/launcher3/DragController;Landroid/view/DragEvent;)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_dragndrop_DragNDropAspect$handledragEndEvent(Landroid/view/DragEvent;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$handledragEndEvent(Lcom/android/launcher3/DragController;Landroid/view/DragEvent;)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_dragndrop_DragNDropAspect$hideFloatingApp()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$hideFloatingApp(Lcom/android/launcher3/DragController;)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_dragndrop_DragNDropAspect$isDragingConeShortCut(Landroid/view/DragEvent;)Z
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$isDragingConeShortCut(Lcom/android/launcher3/DragController;Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_dragndrop_DragNDropAspect$isDragingSource(Landroid/view/DragEvent;)Z
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$isDragingSource(Lcom/android/launcher3/DragController;Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_dragndrop_DragNDropAspect$replaceDragView(Landroid/view/DragEvent;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$replaceDragView(Lcom/android/launcher3/DragController;Landroid/view/DragEvent;)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_dragndrop_DragNDropAspect$showFloatApp()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$showFloatApp(Lcom/android/launcher3/DragController;)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$drop(FF)V
    .registers 3

    .prologue
    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/DragController;->drop(FF)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$endDrag()V
    .registers 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/DragController;->endDrag()V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$findDropTarget(II[I)Lcom/android/launcher3/DropTarget;
    .registers 5

    .prologue
    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/DragController;->findDropTarget(II[I)Lcom/android/launcher3/DropTarget;

    move-result-object v0

    return-object v0
.end method

.method public ajc$privMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$getClampedDragLayerPos(FF)[I
    .registers 4

    .prologue
    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object v0

    return-object v0
.end method

.method public ajc$privMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$handleMoveEvent(II)V
    .registers 3

    .prologue
    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/DragController;->handleMoveEvent(II)V

    return-void
.end method

.method public cancelDrag()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/android/launcher3/DragController;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 333
    invoke-static {}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->aspectOf()Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$before$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$8$6fc88d18(Lorg/aspectj/lang/JoinPoint;)V

    iget-boolean v0, p0, Lcom/android/launcher3/DragController;->mDragging:Z

    if-eqz v0, :cond_34

    .line 334
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_1e

    .line 335
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    iget-object v1, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 337
    :cond_1e
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-boolean v3, v0, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 338
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-boolean v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    .line 339
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-boolean v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    .line 340
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/android/launcher3/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V

    .line 342
    :cond_34
    invoke-direct {p0}, Lcom/android/launcher3/DragController;->endDrag()V

    .line 343
    return-void
.end method

.method checkScrollState(II)V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 566
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    .line 567
    iget v1, p0, Lcom/android/launcher3/DragController;->mDistanceSinceScroll:I

    if-ge v1, v0, :cond_44

    const/16 v0, 0x384

    .line 568
    :goto_12
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v4

    .line 569
    iget-boolean v1, p0, Lcom/android/launcher3/DragController;->mIsRtl:Z

    if-eqz v1, :cond_47

    move v1, v2

    .line 570
    :goto_1d
    iget-boolean v5, p0, Lcom/android/launcher3/DragController;->mIsRtl:Z

    if-eqz v5, :cond_49

    .line 572
    :goto_21
    iget v5, p0, Lcom/android/launcher3/DragController;->mScrollZone:I

    if-ge p1, v5, :cond_4b

    .line 573
    iget v3, p0, Lcom/android/launcher3/DragController;->mScrollState:I

    if-nez v3, :cond_43

    .line 574
    iput v2, p0, Lcom/android/launcher3/DragController;->mScrollState:I

    .line 575
    iget-object v2, p0, Lcom/android/launcher3/DragController;->mDragScroller:Lcom/android/launcher3/DragScroller;

    invoke-interface {v2, p1, p2, v1}, Lcom/android/launcher3/DragScroller;->onEnterScrollArea(III)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 576
    invoke-virtual {v4, v1}, Lcom/android/launcher3/DragLayer;->onEnterScrollArea(I)V

    .line 577
    iget-object v2, p0, Lcom/android/launcher3/DragController;->mScrollRunnable:Lcom/android/launcher3/DragController$ScrollRunnable;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/DragController$ScrollRunnable;->setDirection(I)V

    .line 578
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher3/DragController;->mScrollRunnable:Lcom/android/launcher3/DragController$ScrollRunnable;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 593
    :cond_43
    :goto_43
    return-void

    .line 567
    :cond_44
    const/16 v0, 0x1f4

    goto :goto_12

    :cond_47
    move v1, v3

    .line 569
    goto :goto_1d

    :cond_49
    move v3, v2

    .line 570
    goto :goto_21

    .line 581
    :cond_4b
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v5, p0, Lcom/android/launcher3/DragController;->mScrollZone:I

    sub-int/2addr v1, v5

    if-le p1, v1, :cond_75

    .line 582
    iget v1, p0, Lcom/android/launcher3/DragController;->mScrollState:I

    if-nez v1, :cond_43

    .line 583
    iput v2, p0, Lcom/android/launcher3/DragController;->mScrollState:I

    .line 584
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mDragScroller:Lcom/android/launcher3/DragScroller;

    invoke-interface {v1, p1, p2, v3}, Lcom/android/launcher3/DragScroller;->onEnterScrollArea(III)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 585
    invoke-virtual {v4, v3}, Lcom/android/launcher3/DragLayer;->onEnterScrollArea(I)V

    .line 586
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mScrollRunnable:Lcom/android/launcher3/DragController$ScrollRunnable;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/DragController$ScrollRunnable;->setDirection(I)V

    .line 587
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher3/DragController;->mScrollRunnable:Lcom/android/launcher3/DragController$ScrollRunnable;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_43

    .line 591
    :cond_75
    invoke-direct {p0}, Lcom/android/launcher3/DragController;->clearScrollRunnable()V

    goto :goto_43
.end method

.method public completeAccessibleDrag([I)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 670
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mCoordinatesTemp:[I

    .line 673
    aget v1, p1, v4

    aget v2, p1, v5

    invoke-direct {p0, v1, v2, v0}, Lcom/android/launcher3/DragController;->findDropTarget(II[I)Lcom/android/launcher3/DropTarget;

    move-result-object v1

    .line 674
    iget-object v2, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    aget v3, v0, v4

    iput v3, v2, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    .line 675
    iget-object v2, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    aget v0, v0, v5

    iput v0, v2, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    .line 676
    invoke-direct {p0, v1}, Lcom/android/launcher3/DragController;->checkTouchMove(Lcom/android/launcher3/DropTarget;)V

    .line 678
    invoke-interface {v1}, Lcom/android/launcher3/DropTarget;->prepareAccessibilityDrop()V

    .line 680
    aget v0, p1, v4

    int-to-float v0, v0

    aget v1, p1, v5

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/DragController;->drop(FF)V

    .line 681
    invoke-direct {p0}, Lcom/android/launcher3/DragController;->endDrag()V

    .line 682
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/android/launcher3/DragController;->mDragging:Z

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 4

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mMoveTarget:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/DragController;->mMoveTarget:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public dragging()Z
    .registers 2

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/launcher3/DragController;->mDragging:Z

    return v0
.end method

.method public forceTouchMove()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 539
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mCoordinatesTemp:[I

    .line 541
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mLastTouch:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/launcher3/DragController;->mLastTouch:[I

    aget v2, v2, v4

    invoke-direct {p0, v1, v2, v0}, Lcom/android/launcher3/DragController;->findDropTarget(II[I)Lcom/android/launcher3/DropTarget;

    move-result-object v1

    .line 543
    iget-object v2, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    aget v3, v0, v3

    iput v3, v2, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    .line 544
    iget-object v2, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    aget v0, v0, v4

    iput v0, v2, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    .line 545
    invoke-direct {p0, v1}, Lcom/android/launcher3/DragController;->checkTouchMove(Lcom/android/launcher3/DropTarget;)V

    .line 546
    return-void
.end method

.method public getDragDistance()F
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/DragControllerItds;->ajc$interMethod$com_lge_launcher3_nativeitds_DragControllerItds$com_android_launcher3_DragController$getDragDistance(Lcom/android/launcher3/DragController;)F

    move-result v0

    return v0
.end method

.method getDragView()Lcom/android/launcher3/DragView;
    .registers 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    return-object v0
.end method

.method getLastGestureUpTime()J
    .registers 3

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/android/launcher3/DragController;->mDragging:Z

    if-eqz v0, :cond_9

    .line 422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 424
    :goto_8
    return-wide v0

    :cond_9
    iget-wide v0, p0, Lcom/android/launcher3/DragController;->mLastTouchUpTime:J

    goto :goto_8
.end method

.method getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 278
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v1

    .line 281
    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v2

    .line 286
    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    .line 288
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 290
    if-eqz v2, :cond_23

    .line 291
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 293
    :cond_23
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 295
    if-nez v0, :cond_4d

    .line 296
    const-string v0, "Launcher.DragController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed getViewBitmap("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    const/4 v0, 0x0

    .line 308
    :goto_4c
    return-object v0

    .line 300
    :cond_4d
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 303
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 304
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 305
    invoke-virtual {p1, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 306
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_4c
.end method

.method public isDragging()Z
    .registers 2

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/android/launcher3/DragController;->mDragging:Z

    return v0
.end method

.method public onAppsRemoved(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz v0, :cond_18

    .line 348
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 349
    instance-of v1, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_18

    .line 350
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 351
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_19

    .line 365
    :cond_18
    :goto_18
    return-void

    .line 351
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 353
    if-eqz v0, :cond_12

    iget-object v3, v0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_12

    .line 354
    iget-object v3, v0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 355
    if-eqz v3, :cond_44

    invoke-virtual {v3, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 356
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 355
    :cond_3d
    const/4 v1, 0x1

    .line 357
    :goto_3e
    if-eqz v1, :cond_12

    .line 358
    invoke-virtual {p0}, Lcom/android/launcher3/DragController;->cancelDrag()V

    goto :goto_18

    .line 355
    :cond_44
    const/4 v1, 0x0

    goto :goto_3e
.end method

.method onDeferredEndDrag(Lcom/android/launcher3/DragView;)V
    .registers 4

    .prologue
    .line 396
    invoke-virtual {p1}, Lcom/android/launcher3/DragView;->remove()V

    .line 398
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-boolean v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    if-eqz v0, :cond_1a

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 404
    :cond_1a
    return-void

    .line 400
    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragController$DragListener;

    .line 401
    invoke-interface {v0}, Lcom/android/launcher3/DragController$DragListener;->onDragEnd()V

    goto :goto_14
.end method

.method public onDeferredEndFling(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 3

    .prologue
    .line 407
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    invoke-interface {v0}, Lcom/android/launcher3/DragSource;->onFlingToDeleteCompleted()V

    .line 408
    return-void
.end method

.method public onDragCancel()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_DragController$onDragCancel(Lcom/android/launcher3/DragController;)V

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$onDragEvent(Lcom/android/launcher3/DragController;Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/DragController;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->aspectOf()Lcom/lge/launcher3/dragndrop/DragNDropAspect;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/DragController;->onInterceptTouchEvent_aroundBody5$advice(Lcom/android/launcher3/DragController;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/dragndrop/DragNDropAspect;Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/DragController;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->aspectOf()Lcom/lge/launcher3/dragndrop/DragNDropAspect;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/DragController;->onTouchEvent_aroundBody7$advice(Lcom/android/launcher3/DragController;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/dragndrop/DragNDropAspect;Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    return v0
.end method

.method public prepareAccessibleDrag(II)V
    .registers 4

    .prologue
    .line 660
    iput p1, p0, Lcom/android/launcher3/DragController;->mMotionDownX:I

    .line 661
    iput p2, p0, Lcom/android/launcher3/DragController;->mMotionDownY:I

    .line 662
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    .line 663
    return-void
.end method

.method public removeDragListener(Lcom/android/launcher3/DragController$DragListener;)V
    .registers 3

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 801
    return-void
.end method

.method public removeDropTarget(Lcom/android/launcher3/DropTarget;)V
    .registers 3

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 815
    return-void
.end method

.method resetLastGestureUpTime()V
    .registers 3

    .prologue
    .line 429
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/DragController;->mLastTouchUpTime:J

    .line 430
    return-void
.end method

.method public setDragScoller(Lcom/android/launcher3/DragScroller;)V
    .registers 2

    .prologue
    .line 782
    iput-object p1, p0, Lcom/android/launcher3/DragController;->mDragScroller:Lcom/android/launcher3/DragScroller;

    .line 783
    return-void
.end method

.method public setFlingToDeleteDropTarget(Lcom/android/launcher3/DropTarget;)V
    .registers 2

    .prologue
    .line 821
    iput-object p1, p0, Lcom/android/launcher3/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher3/DropTarget;

    .line 822
    return-void
.end method

.method setMoveTarget(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/launcher3/DragController;->mMoveTarget:Landroid/view/View;

    .line 495
    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 842
    iput-object p1, p0, Lcom/android/launcher3/DragController;->mScrollView:Landroid/view/View;

    .line 843
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .registers 2

    .prologue
    .line 786
    iput-object p1, p0, Lcom/android/launcher3/DragController;->mWindowToken:Landroid/os/IBinder;

    .line 787
    return-void
.end method

.method public startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher3/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FZ)Lcom/android/launcher3/DragView;
    .registers 38

    .prologue
    .line 1
    sget-object v2, Lcom/android/launcher3/DragController;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p2 .. p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static/range {p3 .. p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    const/4 v4, 0x5

    invoke-static/range {p6 .. p6}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    aput-object p7, v3, v4

    const/4 v4, 0x7

    aput-object p8, v3, v4

    const/16 v4, 0x8

    invoke-static/range {p9 .. p9}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x9

    invoke-static/range {p10 .. p10}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v2, v0, v1, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v13

    invoke-static {}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->aspectOf()Lcom/lge/launcher3/dragndrop/DragNDropAspect;

    move-result-object v14

    const/16 v25, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move/from16 v20, p6

    move-object/from16 v21, p7

    move-object/from16 v22, p8

    move/from16 v23, p9

    move/from16 v24, p10

    move-object/from16 v26, v13

    invoke-static/range {v2 .. v26}, Lcom/android/launcher3/DragController;->startDrag_aroundBody3$advice(Lcom/android/launcher3/DragController;Landroid/graphics/Bitmap;IILcom/android/launcher3/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FZLorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/dragndrop/DragNDropAspect;Landroid/graphics/Bitmap;IILcom/android/launcher3/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FZLorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Lcom/android/launcher3/DragView;

    move-result-object v2

    return-object v2
.end method

.method public startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher3/DragSource;Ljava/lang/Object;Landroid/graphics/Rect;IF)V
    .registers 20

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/launcher3/DragController;->mCoordinatesTemp:[I

    .line 185
    iget-object v2, p0, Lcom/android/launcher3/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/android/launcher3/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 186
    const/4 v2, 0x0

    aget v2, v1, v2

    move-object/from16 v0, p5

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    .line 187
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 186
    add-int/2addr v3, v2

    .line 188
    const/4 v2, 0x1

    aget v1, v1, v2

    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    .line 189
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    float-to-int v2, v2

    .line 188
    add-int v4, v1, v2

    .line 191
    const/4 v8, 0x0

    .line 192
    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p6

    move/from16 v10, p7

    .line 191
    invoke-virtual/range {v1 .. v11}, Lcom/android/launcher3/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher3/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FZ)Lcom/android/launcher3/DragView;

    .line 194
    sget v1, Lcom/android/launcher3/DragController;->DRAG_ACTION_MOVE:I

    move/from16 v0, p6

    if-ne v0, v1, :cond_5a

    .line 195
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :cond_5a
    return-void
.end method

.method public startDragShadow(Landroid/graphics/Bitmap;Lcom/android/launcher3/DragSource;Ljava/lang/Object;IILcom/android/launcher3/DragView;)V
    .registers 7

    .prologue
    .line 1
    invoke-static/range {p0 .. p6}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$startDragShadow(Lcom/android/launcher3/DragController;Landroid/graphics/Bitmap;Lcom/android/launcher3/DragSource;Ljava/lang/Object;IILcom/android/launcher3/DragView;)V

    return-void
.end method
