.class public Lcom/lge/launcher3/nativejoin/CellLayoutAspect;
.super Ljava/lang/Object;
.source "CellLayoutAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/CellLayoutAspect;


# instance fields
.field public mGestures:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->mGestures:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;

    .line 33
    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_CellLayoutAspect$1$878fdd90proceed(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_CellLayoutAspect$8$2c2e0a29proceed(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/Rect;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-virtual {p5, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/CellLayoutAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativejoin/CellLayoutAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/CellLayoutAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativejoin_CellLayoutAspect"

    sget-object v2, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/CellLayoutAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/CellLayoutAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_nativejoin_CellLayoutAspect$5$97fcc67b(Lorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "constructor()"
    .end annotation

    .prologue
    .line 85
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 86
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 88
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 89
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-static {v0, v3}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mGlowOutlineDrawPos(Lcom/android/launcher3/CellLayout;Landroid/graphics/Point;)V

    .line 90
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-static {v0, v3}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellBGPaint(Lcom/android/launcher3/CellLayout;Landroid/graphics/Paint;)V

    .line 91
    const v3, 0x7f0b001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragBGColor(Lcom/android/launcher3/CellLayout;I)V

    .line 92
    const v3, 0x7f0b001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragBGOutlineColor(Lcom/android/launcher3/CellLayout;I)V

    .line 94
    iget-object v0, p0, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->mGestures:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;

    if-nez v0, :cond_4a

    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_KNOCK_OFF:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 95
    new-instance v0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;

    new-instance v2, Lcom/lge/launcher3/knockoff/LGKnockOnListener;

    invoke-direct {v2, v1}, Lcom/lge/launcher3/knockoff/LGKnockOnListener;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;-><init>(Landroid/content/Context;Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->mGestures:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;

    .line 97
    :cond_4a
    return-void
.end method

.method public ajc$after$com_lge_launcher3_nativejoin_CellLayoutAspect$6$e804919d(ZLorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "isDragOverlapping"
        value = "setIsDragOverlapping(isDragOverlapping)"
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 104
    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->ajc$get$mIsDragOverlapping(Lcom/android/launcher3/CellLayout;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 105
    invoke-static {v0, p1}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$clearRect(Lcom/android/launcher3/CellLayout;Z)V

    .line 106
    invoke-static {v0, v2}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellRect(Lcom/android/launcher3/CellLayout;Landroid/graphics/Rect;)V

    .line 107
    invoke-static {v0, v2}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mGlowOutline(Lcom/android/launcher3/CellLayout;Landroid/graphics/Bitmap;)V

    .line 109
    :cond_16
    return-void
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_CellLayoutAspect$1$878fdd90(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "event,ajc$aroundClosure"
        value = "(execution(public boolean CellLayout.onTouchEvent(MotionEvent)) && args(event))"
    .end annotation

    .prologue
    .line 41
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 43
    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$getWorkspaceState(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_1e

    sget-object v1, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v1, :cond_1e

    .line 45
    iget-object v0, p0, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->mGestures:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->mGestures:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 46
    const/4 v0, 0x1

    .line 50
    :goto_1d
    return v0

    :cond_1e
    invoke-static {p1, p2}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->ajc$around$com_lge_launcher3_nativejoin_CellLayoutAspect$1$878fdd90proceed(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    goto :goto_1d
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_CellLayoutAspect$8$2c2e0a29(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/Rect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 14
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "cellX,cellY,cellHSpan,cellVSpan,resultRect,ajc$aroundClosure"
        value = "(execution(public void CellLayout.cellToRect(..)) && args(cellX, cellY, cellHSpan, cellVSpan, resultRect))"
    .end annotation

    .prologue
    .line 147
    invoke-interface {p7}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 148
    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountX(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_32

    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountX(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    :goto_14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 149
    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountY(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v1, v3, :cond_37

    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountY(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    :goto_26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, p1

    move-object v1, p2

    move-object v4, p5

    move-object v5, p6

    .line 150
    invoke-static/range {v0 .. v5}, Lcom/lge/launcher3/nativejoin/CellLayoutAspect;->ajc$around$com_lge_launcher3_nativejoin_CellLayoutAspect$8$2c2e0a29proceed(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/Rect;Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 151
    return-void

    .line 148
    :cond_32
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_14

    .line 149
    :cond_37
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_26
.end method

.method public ajc$before$com_lge_launcher3_nativejoin_CellLayoutAspect$2$9c256d6c(Landroid/graphics/Canvas;Lorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = "canvas"
        value = "onDraw(canvas)"
    .end annotation

    .prologue
    .line 56
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 57
    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->ajc$get$mBackgroundAlpha(Lcom/android/launcher3/CellLayout;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1f

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;)Lcom/lge/launcher3/views/CrossHairsGrid;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;)Lcom/lge/launcher3/views/CrossHairsGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/views/CrossHairsGrid;->visible()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 58
    :cond_1f
    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$initDrawable(Lcom/android/launcher3/CellLayout;)V

    .line 61
    :cond_22
    invoke-static {v0, p1}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$drawGrid(Lcom/android/launcher3/CellLayout;Landroid/graphics/Canvas;)V

    .line 62
    return-void
.end method

.method public ajc$before$com_lge_launcher3_nativejoin_CellLayoutAspect$3$1bcc09a9(Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = ""
        value = "execution(void CellLayout.onDragEnter())"
    .end annotation

    .prologue
    .line 65
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 66
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 68
    invoke-static {v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v1

    if-nez v1, :cond_18

    .line 69
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$setCrosshairAnimation(Lcom/android/launcher3/CellLayout;Z)V

    .line 71
    :cond_18
    return-void
.end method

.method public ajc$before$com_lge_launcher3_nativejoin_CellLayoutAspect$4$ae47f611(Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = ""
        value = "execution(void CellLayout.onDragExit())"
    .end annotation

    .prologue
    .line 74
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 75
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 77
    invoke-static {v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v1

    if-nez v1, :cond_18

    .line 78
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$setCrosshairAnimation(Lcom/android/launcher3/CellLayout;Z)V

    .line 80
    :cond_18
    return-void
.end method

.method public ajc$before$com_lge_launcher3_nativejoin_CellLayoutAspect$7$4f7fbc33(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;Lorg/aspectj/lang/JoinPoint;)V
    .registers 19
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = "v,dragOutline,originX,originY,cellX,cellY,spanX,spanY,resize,dragOffset,dragRegion"
        value = "visualizeDropLocation(v, dragOutline, originX, originY, cellX, cellY, spanX, spanY, resize, dragOffset, dragRegion)"
    .end annotation

    .prologue
    .line 119
    invoke-interface/range {p12 .. p12}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 120
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->isHotseat()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 143
    :cond_c
    :goto_c
    return-void

    .line 124
    :cond_d
    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->ajc$get$mDragCell(Lcom/android/launcher3/CellLayout;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 125
    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->ajc$get$mDragCell(Lcom/android/launcher3/CellLayout;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 127
    if-ne p5, v1, :cond_1f

    if-eq p6, v2, :cond_c

    .line 128
    :cond_1f
    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->ajc$get$mTmpPoint(Lcom/android/launcher3/CellLayout;)[I

    move-result-object v1

    .line 129
    invoke-virtual {v0, p5, p6, v1}, Lcom/android/launcher3/CellLayout;->ajc$privMethod$com_lge_launcher3_nativejoin_CellLayoutAspect$com_android_launcher3_CellLayout$cellToPoint(II[I)V

    .line 131
    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellRect(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_33

    .line 132
    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mTmpRect(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellRect(Lcom/android/launcher3/CellLayout;Landroid/graphics/Rect;)V

    .line 135
    :cond_33
    const/4 v2, 0x0

    aget v2, v1, v2

    .line 136
    const/4 v3, 0x1

    aget v1, v1, v3

    .line 138
    invoke-static {v0, p7, p8}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$cellSpansToSize(Lcom/android/launcher3/CellLayout;II)[I

    move-result-object v3

    .line 139
    const/4 v4, 0x0

    aget v4, v3, v4

    add-int/2addr v4, v2

    .line 140
    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v3, v1

    .line 141
    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellRect(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_c
.end method

.method synthetic ajc$declare_parents_1()V
    .registers 1
    .annotation runtime Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;
        isExtends = false
        parentTypes = "com.lge.launcher3.screeneffect.IScreenEffectable"
        targetTypePattern = "com.android.launcher3.CellLayout"
    .end annotation

    .prologue
    .line 1
    return-void
.end method

.method public synthetic ajc$pointcut$$constructor$b47()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "initialization(com.android.launcher3.CellLayout.new(..))"
    .end annotation

    .prologue
    .line 82
    return-void
.end method

.method public synthetic ajc$pointcut$$onDraw$756(Landroid/graphics/Canvas;)V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "canvas"
        value = "(execution(protected void com.android.launcher3.CellLayout.onDraw(android.graphics.Canvas)) && args(canvas))"
    .end annotation

    .prologue
    .line 53
    return-void
.end method

.method public synthetic ajc$pointcut$$setIsDragOverlapping$e22(Z)V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "isDragOverlapping"
        value = "(execution(void com.android.launcher3.CellLayout.setIsDragOverlapping(boolean)) && args(isDragOverlapping))"
    .end annotation

    .prologue
    .line 100
    return-void
.end method

.method public synthetic ajc$pointcut$$visualizeDropLocation$1009(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V
    .registers 12
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "v,dragOutline,originX,originY,cellX,cellY,spanX,spanY,resize,dragOffset,dragRegion"
        value = "(execution(void com.android.launcher3.CellLayout.visualizeDropLocation(android.view.View, android.graphics.Bitmap, int, int, int, int, int, int, boolean, android.graphics.Point, android.graphics.Rect)) && args(v, dragOutline, originX, originY, cellX, cellY, spanX, spanY, resize, dragOffset, dragRegion))"
    .end annotation

    .prologue
    .line 114
    return-void
.end method
