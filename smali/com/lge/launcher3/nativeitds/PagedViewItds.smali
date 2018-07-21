.class public Lcom/lge/launcher3/nativeitds/PagedViewItds;
.super Ljava/lang/Object;
.source "PagedViewItds.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/PagedViewItds;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    :try_start_0
    const-class v0, Lcom/lge/launcher3/nativeitds/PagedViewItds;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/nativeitds/PagedViewItds;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$postClinit()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    .line 23
    :goto_b
    return-void

    .line 22
    :catch_c
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$TOUCH_SLOP_INIT_REACTION_DISTANCE()F
    .registers 1

    invoke-static {}, Lcom/android/launcher3/PagedView;->ajc$get$TOUCH_SLOP_INIT_REACTION_DISTANCE()F

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$TOUCH_SLOP_MM_PER_INCH()F
    .registers 1

    invoke-static {}, Lcom/android/launcher3/PagedView;->ajc$get$TOUCH_SLOP_MM_PER_INCH()F

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$mNormalChildRect(Lcom/android/launcher3/PagedView;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mNormalChildRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$mOverviewPageIndicator(Lcom/android/launcher3/PagedView;)Lcom/android/launcher3/PageIndicator;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOverviewPageIndicator:Lcom/android/launcher3/PageIndicator;

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$mTouchPrediction(Lcom/android/launcher3/PagedView;)Lcom/lge/launcher3/util/TouchPrediction;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mTouchPrediction(Lcom/android/launcher3/PagedView;)Lcom/lge/launcher3/util/TouchPrediction;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$sTouchSlopRatio()F
    .registers 1

    sget v0, Lcom/android/launcher3/PagedView;->sTouchSlopRatio:F

    return v0
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$TOUCH_SLOP_INIT_REACTION_DISTANCE()V
    .registers 1

    .prologue
    .line 29
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$TOUCH_SLOP_INIT_REACTION_DISTANCE(F)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$TOUCH_SLOP_MM_PER_INCH()V
    .registers 1

    .prologue
    .line 30
    const v0, 0x41cb3333    # 25.4f

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$TOUCH_SLOP_MM_PER_INCH(F)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$mNormalChildRect(Lcom/android/launcher3/PagedView;)V
    .registers 2

    .prologue
    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$mNormalChildRect(Lcom/android/launcher3/PagedView;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$mOverviewPageIndicator(Lcom/android/launcher3/PagedView;)V
    .registers 1

    .prologue
    .line 27
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$mTouchPrediction(Lcom/android/launcher3/PagedView;)V
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$mTouchPrediction(Lcom/android/launcher3/PagedView;Lcom/lge/launcher3/util/TouchPrediction;)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$sTouchSlopRatio()V
    .registers 0

    .prologue
    .line 31
    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$TOUCH_SLOP_INIT_REACTION_DISTANCE(F)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$set$TOUCH_SLOP_INIT_REACTION_DISTANCE(F)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$TOUCH_SLOP_MM_PER_INCH(F)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$set$TOUCH_SLOP_MM_PER_INCH(F)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$mNormalChildRect(Lcom/android/launcher3/PagedView;Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mNormalChildRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$mOverviewPageIndicator(Lcom/android/launcher3/PagedView;Lcom/android/launcher3/PageIndicator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mOverviewPageIndicator:Lcom/android/launcher3/PageIndicator;

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$mTouchPrediction(Lcom/android/launcher3/PagedView;Lcom/lge/launcher3/util/TouchPrediction;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/PagedView;->ajc$set$mTouchPrediction(Lcom/android/launcher3/PagedView;Lcom/lge/launcher3/util/TouchPrediction;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$sTouchSlopRatio(F)V
    .registers 1

    sput p0, Lcom/android/launcher3/PagedView;->sTouchSlopRatio:F

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$afterAttachedToWindow(Lcom/android/launcher3/PagedView;)V
    .registers 4

    .prologue
    const v2, 0x7f09000b

    .line 72
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mPageIndicator(Lcom/android/launcher3/PagedView;)Lcom/android/launcher3/PageIndicator;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 73
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    .line 74
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mPageIndicator(Lcom/android/launcher3/PagedView;)Lcom/android/launcher3/PageIndicator;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$setPageIndicator(Lcom/android/launcher3/PagedView;Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;)V

    .line 75
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mPageIndicator(Lcom/android/launcher3/PagedView;)Lcom/android/launcher3/PageIndicator;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->setTypePadding(I)V

    .line 77
    :cond_24
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOverviewPageIndicator:Lcom/android/launcher3/PageIndicator;

    if-eqz v0, :cond_3f

    .line 78
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOverviewPageIndicator:Lcom/android/launcher3/PageIndicator;

    check-cast v0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$setPageIndicator(Lcom/android/launcher3/PagedView;Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;)V

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOverviewPageIndicator:Lcom/android/launcher3/PageIndicator;

    check-cast v0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->setTypePadding(I)V

    .line 82
    :cond_3f
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getChildOffset(Lcom/android/launcher3/PagedView;Lcom/android/launcher3/CellLayout;)I
    .registers 3

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getChildOffset(I)I

    move-result v0

    return v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getCurrentPagePublic(Lcom/android/launcher3/PagedView;)I
    .registers 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    return v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getMaxScrollX(Lcom/android/launcher3/PagedView;)I
    .registers 2

    .prologue
    .line 96
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mMaxScrollX(Lcom/android/launcher3/PagedView;)I

    move-result v0

    return v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getPageAtPublic(Lcom/android/launcher3/PagedView;I)Landroid/view/View;
    .registers 3

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getPageCountPublic(Lcom/android/launcher3/PagedView;)I
    .registers 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->ajc$privMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getPageCount()I

    move-result v0

    return v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getPageSpacing(Lcom/android/launcher3/PagedView;)I
    .registers 2

    .prologue
    .line 146
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mPageSpacing(Lcom/android/launcher3/PagedView;)I

    move-result v0

    return v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getPredictionX(Lcom/android/launcher3/PagedView;Landroid/view/MotionEvent;)F
    .registers 5

    .prologue
    .line 118
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$mTouchPrediction(Lcom/android/launcher3/PagedView;)Lcom/lge/launcher3/util/TouchPrediction;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/util/TouchPrediction;->computePredictionLocation(Landroid/view/MotionEvent;)F

    move-result v0

    .line 119
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_16

    .line 120
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v0

    int-to-float v0, v0

    .line 122
    :cond_16
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2e

    .line 123
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 125
    :cond_2e
    return v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getScroller(Lcom/android/launcher3/PagedView;)Lcom/android/launcher3/LauncherScroller;
    .registers 2

    .prologue
    .line 153
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mScroller(Lcom/android/launcher3/PagedView;)Lcom/android/launcher3/LauncherScroller;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getViewport(Lcom/android/launcher3/PagedView;)Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 103
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mViewport(Lcom/android/launcher3/PagedView;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$ignoreReorderingUpdatePageIndicator(Lcom/android/launcher3/PagedView;)V
    .registers 3

    .prologue
    .line 190
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mPageIndicator(Lcom/android/launcher3/PagedView;)Lcom/android/launcher3/PageIndicator;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 191
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mPageIndicator(Lcom/android/launcher3/PagedView;)Lcom/android/launcher3/PageIndicator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->ajc$protectedDispatch$com_android_launcher3_PagedView$getPageIndicatorDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    .line 193
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mPageIndicator(Lcom/android/launcher3/PagedView;)Lcom/android/launcher3/PageIndicator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/PageIndicator;->setActiveMarker(I)V

    .line 195
    :cond_1c
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$isDistZeroChecked(Lcom/android/launcher3/PagedView;I)Z
    .registers 4

    .prologue
    .line 134
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mScroller(Lcom/android/launcher3/PagedView;)Lcom/android/launcher3/LauncherScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_25

    if-nez p1, :cond_25

    .line 135
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mScroller(Lcom/android/launcher3/PagedView;)Lcom/android/launcher3/LauncherScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->getFinalX()I

    move-result v0

    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mScroller(Lcom/android/launcher3/PagedView;)Lcom/android/launcher3/LauncherScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherScroller;->getStartX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_25

    .line 136
    const/4 v0, 0x0

    .line 139
    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x1

    goto :goto_24
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$isScrolling(Lcom/android/launcher3/PagedView;)Z
    .registers 2

    .prologue
    .line 160
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$isTouchActive(Lcom/android/launcher3/PagedView;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mScroller(Lcom/android/launcher3/PagedView;)Lcom/android/launcher3/LauncherScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->ajc$protectedDispatch$com_android_launcher3_PagedView$isPageMoving()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x1

    goto :goto_17
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$isTouchActive(Lcom/android/launcher3/PagedView;)Z
    .registers 3

    .prologue
    .line 167
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mTouchState(Lcom/android/launcher3/PagedView;)I

    move-result v0

    invoke-static {}, Lcom/android/launcher3/PagedView;->ajc$get$TOUCH_STATE_REST()I

    move-result v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$setFullScreenPage(Lcom/android/launcher3/PagedView;Landroid/view/View;Z)V
    .registers 5

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView$LayoutParams;

    .line 108
    if-eqz p2, :cond_f

    const/4 v1, 0x0

    :goto_9
    iput-boolean v1, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isOverviewMode:Z

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    return-void

    .line 108
    :cond_f
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$setPageIndicator(Lcom/android/launcher3/PagedView;Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;)V
    .registers 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->ajc$protectedDispatch$com_android_launcher3_PagedView$getPageIndicatorDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 63
    new-instance v0, Lcom/android/launcher3/PagedView$PagedViewItds$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/PagedView$PagedViewItds$1;-><init>(Lcom/android/launcher3/PagedView;)V

    invoke-virtual {p1, v0}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->setListener(Lcom/lge/launcher3/pageindicator/PageIndicatorListener;)V

    .line 69
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$setupTouchSlopRatio(Lcom/android/launcher3/PagedView;)V
    .registers 4

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 37
    invoke-static {}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$TOUCH_SLOP_INIT_REACTION_DISTANCE()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$TOUCH_SLOP_MM_PER_INCH()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 38
    const v2, 0x7f0c001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 39
    if-ge v0, v1, :cond_61

    .line 43
    :goto_22
    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mTouchSlop(Lcom/android/launcher3/PagedView;)I

    move-result v1

    if-ge v0, v1, :cond_5e

    .line 44
    int-to-float v1, v0

    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mTouchSlop(Lcom/android/launcher3/PagedView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 43
    :goto_2f
    sput v1, Lcom/android/launcher3/PagedView;->sTouchSlopRatio:F

    .line 46
    sget-object v1, Lcom/lge/launcher3/nativeitds/PagedViewItds;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ",  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/PagedView;->ajc$get$mTouchSlop(Lcom/android/launcher3/PagedView;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/launcher3/PagedView;->sTouchSlopRatio:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void

    .line 44
    :cond_5e
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2f

    :cond_61
    move v0, v1

    goto :goto_22
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$superDrawChild(Lcom/android/launcher3/PagedView;Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6

    .prologue
    .line 185
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/PagedView;->ajc$superDispatch$com_android_launcher3_PagedView$drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$superScrollTo(Lcom/android/launcher3/PagedView;II)V
    .registers 3

    .prologue
    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/PagedView;->ajc$superDispatch$com_android_launcher3_PagedView$scrollTo(II)V

    .line 176
    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$afterAttachedToWindow(Lcom/android/launcher3/PagedView;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->afterAttachedToWindow()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getChildOffset(Lcom/android/launcher3/PagedView;Lcom/android/launcher3/CellLayout;)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getChildOffset(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getCurrentPagePublic(Lcom/android/launcher3/PagedView;)I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPagePublic()I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getMaxScrollX(Lcom/android/launcher3/PagedView;)I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMaxScrollX()I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getPageAtPublic(Lcom/android/launcher3/PagedView;I)Landroid/view/View;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageAtPublic(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getPageCountPublic(Lcom/android/launcher3/PagedView;)I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCountPublic()I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getPageSpacing(Lcom/android/launcher3/PagedView;)I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageSpacing()I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getPredictionX(Lcom/android/launcher3/PagedView;Landroid/view/MotionEvent;)F
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPredictionX(Landroid/view/MotionEvent;)F

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getScroller(Lcom/android/launcher3/PagedView;)Lcom/android/launcher3/LauncherScroller;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScroller()Lcom/android/launcher3/LauncherScroller;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$getViewport(Lcom/android/launcher3/PagedView;)Landroid/graphics/Rect;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewport()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$ignoreReorderingUpdatePageIndicator(Lcom/android/launcher3/PagedView;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->ignoreReorderingUpdatePageIndicator()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$isDistZeroChecked(Lcom/android/launcher3/PagedView;I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->isDistZeroChecked(I)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$isScrolling(Lcom/android/launcher3/PagedView;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isScrolling()Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$isTouchActive(Lcom/android/launcher3/PagedView;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isTouchActive()Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$setFullScreenPage(Lcom/android/launcher3/PagedView;Landroid/view/View;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/PagedView;->setFullScreenPage(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$setPageIndicator(Lcom/android/launcher3/PagedView;Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setPageIndicator(Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$setupTouchSlopRatio(Lcom/android/launcher3/PagedView;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->ajc$interMethodDispatch2$com_lge_launcher3_nativeitds_PagedViewItds$setupTouchSlopRatio()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$superDrawChild(Lcom/android/launcher3/PagedView;Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/PagedView;->superDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$superScrollTo(Lcom/android/launcher3/PagedView;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/PagedView;->superScrollTo(II)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativeitds/PagedViewItds;

    invoke-direct {v0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/PagedViewItds;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativeitds/PagedViewItds;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/PagedViewItds;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativeitds_PagedViewItds"

    sget-object v2, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/PagedViewItds;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/PagedViewItds;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
