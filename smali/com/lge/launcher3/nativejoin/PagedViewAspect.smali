.class public Lcom/lge/launcher3/nativejoin/PagedViewAspect;
.super Ljava/lang/Object;
.source "PagedViewAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/PagedViewAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    :try_start_0
    const-class v0, Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$postClinit()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    .line 23
    :goto_b
    return-void

    .line 22
    :catch_c
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_PagedViewAspect$6$2b7d49e6proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Integer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativejoin/PagedViewAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativejoin_PagedViewAspect"

    sget-object v2, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$2$533d92a8(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(void PagedView.init())"
    .end annotation

    .prologue
    .line 31
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView;

    .line 33
    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$setupTouchSlopRatio(Lcom/android/launcher3/PagedView;)V

    .line 34
    return-void
.end method

.method public ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$3$5cabaaea(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(void PagedView.onAttachedToWindow())"
    .end annotation

    .prologue
    .line 37
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView;

    .line 38
    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$afterAttachedToWindow(Lcom/android/launcher3/PagedView;)V

    .line 39
    return-void
.end method

.method public ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$4$d33fbce8(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(void PagedView.updateMaxScrollX())"
    .end annotation

    .prologue
    .line 42
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView;

    .line 43
    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->ajc$privMethod$com_lge_launcher3_nativejoin_PagedViewAspect$com_android_launcher3_PagedView$updateFreescrollBounds()V

    .line 44
    return-void
.end method

.method public ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$5$db176c0f(Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "ev"
        value = "(execution(private void acquireVelocityTrackerAndAddMovement(MotionEvent)) && (args(ev) && within(com.android.launcher3.PagedView)))"
    .end annotation

    .prologue
    .line 48
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView;

    .line 49
    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$mTouchPrediction(Lcom/android/launcher3/PagedView;)Lcom/lge/launcher3/util/TouchPrediction;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/util/TouchPrediction;->observedEvent(Landroid/view/MotionEvent;)V

    .line 50
    return-void
.end method

.method public ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$7$ebce283(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "set(int PagedView.mCurrentPage)"
    .end annotation

    .prologue
    .line 81
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView;

    .line 87
    return-void
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_PagedViewAspect$6$2b7d49e6(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Integer;
    .registers 10
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(protected int PagedView.getNearestHoverOverPageIndex())"
    .end annotation

    .prologue
    .line 53
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView;

    .line 54
    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mDragView(Lcom/android/launcher3/PagedView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_80

    .line 55
    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mDragView(Lcom/android/launcher3/PagedView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    const v2, 0x3fe66666    # 1.8f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 56
    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mDragView(Lcom/android/launcher3/PagedView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 57
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_30

    .line 58
    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mDragView(Lcom/android/launcher3/PagedView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    .line 60
    :cond_30
    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mDragView(Lcom/android/launcher3/PagedView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    add-int v5, v2, v1

    .line 61
    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mTempVisiblePagesRange(Lcom/android/launcher3/PagedView;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->ajc$privMethod$com_lge_launcher3_nativejoin_PagedViewAspect$com_android_launcher3_PagedView$getFreeScrollPageRange([I)V

    .line 62
    const v3, 0x7fffffff

    .line 63
    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mDragView(Lcom/android/launcher3/PagedView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 64
    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mTempVisiblePagesRange(Lcom/android/launcher3/PagedView;)[I

    move-result-object v1

    const/4 v4, 0x0

    aget v1, v1, v4

    :goto_56
    invoke-static {v0}, Lcom/android/launcher3/PagedView;->ajc$get$mTempVisiblePagesRange(Lcom/android/launcher3/PagedView;)[I

    move-result-object v4

    const/4 v6, 0x1

    aget v4, v4, v6

    if-le v1, v4, :cond_64

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 75
    :goto_63
    return-object v0

    .line 65
    :cond_64
    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 66
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v6

    .line 67
    sub-int v4, v5, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 68
    if-ge v4, v3, :cond_7d

    move v2, v1

    move v3, v4

    .line 64
    :cond_7d
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 75
    :cond_80
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_63
.end method

.method public ajc$before$com_lge_launcher3_nativejoin_PagedViewAspect$1$533d92a8(Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = ""
        value = "execution(void PagedView.init())"
    .end annotation

    .prologue
    .line 26
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView;

    .line 27
    new-instance v1, Lcom/lge/launcher3/util/TouchPrediction;

    invoke-direct {v1}, Lcom/lge/launcher3/util/TouchPrediction;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$mTouchPrediction(Lcom/android/launcher3/PagedView;Lcom/lge/launcher3/util/TouchPrediction;)V

    .line 28
    return-void
.end method
