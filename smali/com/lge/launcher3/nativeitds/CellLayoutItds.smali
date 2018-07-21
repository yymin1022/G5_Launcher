.class public Lcom/lge/launcher3/nativeitds/CellLayoutItds;
.super Ljava/lang/Object;
.source "CellLayoutItds.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/CellLayoutItds;

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    invoke-static {}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$preClinit()V

    .line 29
    :try_start_3
    invoke-static {}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$postClinit()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    :goto_6
    return-void

    :catch_7
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_6
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$BACKGROUND_BOUND_LINE_MAX_ALPHA()F
    .registers 1

    invoke-static {}, Lcom/android/launcher3/CellLayout;->ajc$get$BACKGROUND_BOUND_LINE_MAX_ALPHA()F

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mBackgroundBoundLinePaint(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Paint;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mBackgroundBoundLinePaint(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;)Lcom/lge/launcher3/views/CrossHairsGrid;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;)Lcom/lge/launcher3/views/CrossHairsGrid;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrosshairsAnimator(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/InterruptibleInOutAnimator;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCrosshairsAnimator(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/InterruptibleInOutAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCustomScreenEffect(Lcom/android/launcher3/CellLayout;)Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCustomScreenEffect(Lcom/android/launcher3/CellLayout;)Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragBGColor(Lcom/android/launcher3/CellLayout;)I
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mDragBGColor(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragBGOutlineColor(Lcom/android/launcher3/CellLayout;)I
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mDragBGOutlineColor(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellBGPaint(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Paint;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mDragCellBGPaint(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellRect(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Rect;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mDragCellRect(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDrawWidgetPreview(Lcom/android/launcher3/CellLayout;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mDrawWidgetPreview(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mGlowOutline(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Bitmap;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mGlowOutline(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mGlowOutlineDrawPos(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Point;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mGlowOutlineDrawPos(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mTmpRect(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Rect;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mTmpRect(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mWidgetDropCue(Lcom/android/launcher3/CellLayout;)Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mWidgetDropCue(Lcom/android/launcher3/CellLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$BACKGROUND_BOUND_LINE_MAX_ALPHA()V
    .registers 1

    .prologue
    .line 47
    const v0, 0x3f59999a    # 0.85f

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$BACKGROUND_BOUND_LINE_MAX_ALPHA(F)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mBackgroundBoundLinePaint(Lcom/android/launcher3/CellLayout;)V
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mBackgroundBoundLinePaint(Lcom/android/launcher3/CellLayout;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;)V
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;Lcom/lge/launcher3/views/CrossHairsGrid;)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrosshairsAnimator(Lcom/android/launcher3/CellLayout;)V
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrosshairsAnimator(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/InterruptibleInOutAnimator;)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCustomScreenEffect(Lcom/android/launcher3/CellLayout;)V
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCustomScreenEffect(Lcom/android/launcher3/CellLayout;Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragBGColor(Lcom/android/launcher3/CellLayout;)V
    .registers 1

    .prologue
    .line 40
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragBGOutlineColor(Lcom/android/launcher3/CellLayout;)V
    .registers 1

    .prologue
    .line 41
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellBGPaint(Lcom/android/launcher3/CellLayout;)V
    .registers 1

    .prologue
    .line 39
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellRect(Lcom/android/launcher3/CellLayout;)V
    .registers 1

    .prologue
    .line 34
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDrawWidgetPreview(Lcom/android/launcher3/CellLayout;)V
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDrawWidgetPreview(Lcom/android/launcher3/CellLayout;Z)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mGlowOutline(Lcom/android/launcher3/CellLayout;)V
    .registers 1

    .prologue
    .line 36
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mGlowOutlineDrawPos(Lcom/android/launcher3/CellLayout;)V
    .registers 1

    .prologue
    .line 37
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mTmpRect(Lcom/android/launcher3/CellLayout;)V
    .registers 2

    .prologue
    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mTmpRect(Lcom/android/launcher3/CellLayout;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mWidgetDropCue(Lcom/android/launcher3/CellLayout;)V
    .registers 1

    .prologue
    .line 42
    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$BACKGROUND_BOUND_LINE_MAX_ALPHA(F)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$set$BACKGROUND_BOUND_LINE_MAX_ALPHA(F)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mBackgroundBoundLinePaint(Lcom/android/launcher3/CellLayout;Landroid/graphics/Paint;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$set$mBackgroundBoundLinePaint(Lcom/android/launcher3/CellLayout;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;Lcom/lge/launcher3/views/CrossHairsGrid;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$set$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;Lcom/lge/launcher3/views/CrossHairsGrid;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrosshairsAnimator(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/InterruptibleInOutAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$set$mCrosshairsAnimator(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/InterruptibleInOutAnimator;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCustomScreenEffect(Lcom/android/launcher3/CellLayout;Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$set$mCustomScreenEffect(Lcom/android/launcher3/CellLayout;Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragBGColor(Lcom/android/launcher3/CellLayout;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$set$mDragBGColor(Lcom/android/launcher3/CellLayout;I)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragBGOutlineColor(Lcom/android/launcher3/CellLayout;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$set$mDragBGOutlineColor(Lcom/android/launcher3/CellLayout;I)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellBGPaint(Lcom/android/launcher3/CellLayout;Landroid/graphics/Paint;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$set$mDragCellBGPaint(Lcom/android/launcher3/CellLayout;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellRect(Lcom/android/launcher3/CellLayout;Landroid/graphics/Rect;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$set$mDragCellRect(Lcom/android/launcher3/CellLayout;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDrawWidgetPreview(Lcom/android/launcher3/CellLayout;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$set$mDrawWidgetPreview(Lcom/android/launcher3/CellLayout;Z)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mGlowOutline(Lcom/android/launcher3/CellLayout;Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$set$mGlowOutline(Lcom/android/launcher3/CellLayout;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mGlowOutlineDrawPos(Lcom/android/launcher3/CellLayout;Landroid/graphics/Point;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$set$mGlowOutlineDrawPos(Lcom/android/launcher3/CellLayout;Landroid/graphics/Point;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mTmpRect(Lcom/android/launcher3/CellLayout;Landroid/graphics/Rect;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$set$mTmpRect(Lcom/android/launcher3/CellLayout;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mWidgetDropCue(Lcom/android/launcher3/CellLayout;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$set$mWidgetDropCue(Lcom/android/launcher3/CellLayout;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$animationChangeGrid(Lcom/android/launcher3/CellLayout;Z)V
    .registers 12

    .prologue
    const/4 v6, 0x0

    .line 200
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v9

    move v8, v6

    .line 201
    :goto_a
    if-lt v8, v9, :cond_d

    .line 211
    return-void

    .line 202
    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 203
    if-eqz p1, :cond_2e

    .line 204
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 205
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    const/16 v4, 0x190

    const/16 v5, 0x64

    move-object v0, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 201
    :goto_2a
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_a

    .line 207
    :cond_2e
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getChildrenScale()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 208
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getChildrenScale()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_2a
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$cellSpansToSize(Lcom/android/launcher3/CellLayout;II)[I
    .registers 8

    .prologue
    .line 149
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 150
    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCellWidth(Lcom/android/launcher3/CellLayout;)I

    move-result v2

    mul-int/2addr v2, p1

    add-int/lit8 v3, p1, -0x1

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mWidthGap(Lcom/android/launcher3/CellLayout;)I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 151
    const/4 v1, 0x1

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCellHeight(Lcom/android/launcher3/CellLayout;)I

    move-result v2

    mul-int/2addr v2, p2

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mHeightGap(Lcom/android/launcher3/CellLayout;)I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 152
    return-object v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$clearRect(Lcom/android/launcher3/CellLayout;Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mIsDragOverlapping(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-eq v0, p1, :cond_d

    .line 138
    invoke-static {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$set$mIsDragOverlapping(Lcom/android/launcher3/CellLayout;Z)V

    .line 139
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 142
    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mIsDragOverlapping(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 143
    invoke-static {p0, v1}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellRect(Lcom/android/launcher3/CellLayout;Landroid/graphics/Rect;)V

    .line 144
    invoke-static {p0, v1}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mGlowOutline(Lcom/android/launcher3/CellLayout;Landroid/graphics/Bitmap;)V

    .line 146
    :cond_19
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$createCrossHairsGrid(Lcom/android/launcher3/CellLayout;)V
    .registers 3

    .prologue
    .line 60
    new-instance v0, Lcom/lge/launcher3/views/CrossHairsGrid;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/launcher3/views/CrossHairsGrid;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;Lcom/lge/launcher3/views/CrossHairsGrid;)V

    .line 61
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$dispatchDraw(Lcom/android/launcher3/CellLayout;Landroid/graphics/Canvas;)V
    .registers 3

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$superDispatch$com_android_launcher3_CellLayout$dispatchDraw(Landroid/graphics/Canvas;)V

    .line 99
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;)Lcom/lge/launcher3/views/CrossHairsGrid;

    move-result-object v0

    if-nez v0, :cond_a

    .line 110
    :cond_9
    :goto_9
    return-void

    .line 103
    :cond_a
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellRect(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 104
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDrawWidgetPreview(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 105
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$drawWidgetDropCue(Lcom/android/launcher3/CellLayout;Landroid/graphics/Canvas;)V

    goto :goto_9

    .line 107
    :cond_1a
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$drawGlowOutlineDropCue(Lcom/android/launcher3/CellLayout;Landroid/graphics/Canvas;)V

    goto :goto_9
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$drawBackgroundOutlineInOverviewMode(Lcom/android/launcher3/CellLayout;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .registers 9

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    const/4 v1, 0x0

    .line 254
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$getWorkspaceState(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_d

    sget-object v2, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-eq v0, v2, :cond_e

    .line 273
    :cond_d
    :goto_d
    return-void

    .line 259
    :cond_e
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mBackgroundBoundLinePaint(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Paint;

    move-result-object v0

    if-nez v0, :cond_30

    .line 260
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 261
    const v2, 0x7f09003f

    .line 260
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 262
    const/4 v2, -0x1

    int-to-float v0, v0

    const/16 v3, 0xff

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/lge/launcher3/util/PaintUtils;->getStrokePaint(IFILandroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mBackgroundBoundLinePaint(Lcom/android/launcher3/CellLayout;Landroid/graphics/Paint;)V

    .line 265
    :cond_30
    const/high16 v0, 0x3f800000    # 1.0f

    .line 266
    if-eqz p2, :cond_3a

    .line 267
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    .line 269
    :cond_3a
    invoke-static {}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$BACKGROUND_BOUND_LINE_MAX_ALPHA()F

    move-result v2

    mul-float/2addr v0, v2

    mul-float/2addr v0, v5

    float-to-int v0, v0

    .line 270
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mBackgroundBoundLinePaint(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 272
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mBackgroundBoundLinePaint(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_d
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$drawGlowOutlineDropCue(Lcom/android/launcher3/CellLayout;Landroid/graphics/Canvas;)V
    .registers 6

    .prologue
    .line 113
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellBGPaint(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 114
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellBGPaint(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellBGPaint(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragBGColor(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellRect(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellBGPaint(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 118
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellBGPaint(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellBGPaint(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragBGOutlineColor(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellBGPaint(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellRect(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellBGPaint(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 124
    :cond_4d
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mGlowOutline(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 125
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mGlowOutline(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mGlowOutlineDrawPos(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mGlowOutlineDrawPos(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 127
    :cond_69
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$drawGrid(Lcom/android/launcher3/CellLayout;Landroid/graphics/Canvas;)V
    .registers 3

    .prologue
    .line 70
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;)Lcom/lge/launcher3/views/CrossHairsGrid;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;)Lcom/lge/launcher3/views/CrossHairsGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/views/CrossHairsGrid;->visible()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 71
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;)Lcom/lge/launcher3/views/CrossHairsGrid;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/lge/launcher3/views/CrossHairsGrid;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 73
    :cond_17
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$drawWidgetDropCue(Lcom/android/launcher3/CellLayout;Landroid/graphics/Canvas;)V
    .registers 4

    .prologue
    .line 130
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mWidgetDropCue(Lcom/android/launcher3/CellLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 131
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mWidgetDropCue(Lcom/android/launcher3/CellLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mDragCellRect(Lcom/android/launcher3/CellLayout;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 132
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mWidgetDropCue(Lcom/android/launcher3/CellLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 134
    :cond_18
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$findAppWidgetByComponentName(Lcom/android/launcher3/CellLayout;Landroid/content/ComponentName;)Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 276
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    move v1, v2

    .line 277
    :goto_6
    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_d

    .line 292
    :goto_c
    return v2

    .line 278
    :cond_d
    invoke-virtual {v3, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 279
    instance-of v4, v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    if-nez v4, :cond_19

    .line 277
    :cond_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 283
    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 284
    if-eqz v0, :cond_15

    iget-object v4, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v4, :cond_15

    .line 288
    if-eqz p1, :cond_15

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 289
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$getChildrenDrawingCache(Lcom/android/launcher3/CellLayout;Z)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 225
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$getShortcutAndWidgetLayer(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    if-ne v0, v1, :cond_10

    .line 226
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 228
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$getCustomScreenEffect(Lcom/android/launcher3/CellLayout;)Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;
    .registers 2

    .prologue
    .line 235
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCustomScreenEffect(Lcom/android/launcher3/CellLayout;)Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$getOccupied(Lcom/android/launcher3/CellLayout;)[[Z
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mOccupied(Lcom/android/launcher3/CellLayout;)[[Z

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$getShortcutAndWidgetLayer(Lcom/android/launcher3/CellLayout;)I
    .registers 2

    .prologue
    .line 217
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getLayerType()I

    move-result v0

    return v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$getWorkspaceState(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/Workspace$State;
    .registers 4

    .prologue
    .line 245
    const/4 v1, 0x0

    .line 246
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_12

    instance-of v2, v0, Lcom/android/launcher3/Workspace;

    if-eqz v2, :cond_12

    .line 248
    check-cast v0, Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    .line 250
    :goto_11
    return-object v0

    :cond_12
    move-object v0, v1

    goto :goto_11
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$initDrawable(Lcom/android/launcher3/CellLayout;)V
    .registers 3

    .prologue
    .line 64
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;)Lcom/lge/launcher3/views/CrossHairsGrid;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 65
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;)Lcom/lge/launcher3/views/CrossHairsGrid;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/views/CrossHairsGrid;->initDrawables(Landroid/content/Context;)V

    .line 67
    :cond_11
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$removeViewWithoutMarkingCells(Lcom/android/launcher3/CellLayout;Landroid/view/View;)V
    .registers 5

    .prologue
    sget-object v0, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 51
    :try_start_6
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeView(Landroid/view/View;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_d} :catch_1c

    .line 52
    :try_start_d
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$10$d5a90007(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_14} :catch_25

    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$1$c2bb5bcf(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_1c
    move-exception v0

    :try_start_1d
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$10$d5a90007(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_25} :catch_25

    :catch_25
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$1$c2bb5bcf(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$setCrosshairAnimation(Lcom/android/launcher3/CellLayout;Z)V
    .registers 4

    .prologue
    .line 82
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;)Lcom/lge/launcher3/views/CrossHairsGrid;

    move-result-object v0

    if-nez v0, :cond_7

    .line 92
    :goto_6
    return-void

    .line 86
    :cond_7
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;)Lcom/lge/launcher3/views/CrossHairsGrid;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/lge/launcher3/views/CrossHairsGrid;->setAnimator(Landroid/view/View;I)Lcom/android/launcher3/InterruptibleInOutAnimator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrosshairsAnimator(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/InterruptibleInOutAnimator;)V

    .line 87
    if-eqz p1, :cond_1d

    .line 88
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrosshairsAnimator(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/InterruptibleInOutAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateIn()V

    goto :goto_6

    .line 90
    :cond_1d
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrosshairsAnimator(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/InterruptibleInOutAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateOut()V

    goto :goto_6
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$setCrosshairsVisibility(Lcom/android/launcher3/CellLayout;F)V
    .registers 3

    .prologue
    .line 76
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;)Lcom/lge/launcher3/views/CrossHairsGrid;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 77
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;)Lcom/lge/launcher3/views/CrossHairsGrid;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/views/CrossHairsGrid;->setAlpha(F)V

    .line 79
    :cond_d
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$setCustomScreenEffect(Lcom/android/launcher3/CellLayout;Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;)V
    .registers 2

    .prologue
    .line 242
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCustomScreenEffect(Lcom/android/launcher3/CellLayout;Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;)V

    .line 243
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$updateCurrentOccupied(Lcom/android/launcher3/CellLayout;[[ZII)V
    .registers 13

    .prologue
    const/4 v0, 0x0

    move v2, v0

    .line 185
    :goto_2
    if-lt v2, p2, :cond_10

    .line 191
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v8

    move v7, v0

    .line 192
    :goto_d
    if-lt v7, v8, :cond_1e

    .line 197
    return-void

    :cond_10
    move v1, v0

    .line 186
    :goto_11
    if-lt v1, p3, :cond_17

    .line 185
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 187
    :cond_17
    aget-object v3, p1, v2

    aput-boolean v0, v3, v1

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 193
    :cond_1e
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 195
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/CellLayout;->ajc$privMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$markCellsForView(IIII[[ZZ)V

    .line 192
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_d
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$updateGridSize(Lcom/android/launcher3/CellLayout;II)V
    .registers 11

    .prologue
    const/high16 v7, -0x80000000

    .line 156
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCellWidth(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountX(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    mul-int/2addr v1, v0

    .line 157
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCellHeight(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountY(Lcom/android/launcher3/CellLayout;)I

    move-result v2

    mul-int/2addr v2, v0

    .line 158
    invoke-static {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$set$mCountX(Lcom/android/launcher3/CellLayout;I)V

    .line 159
    invoke-static {p0, p2}, Lcom/android/launcher3/CellLayout;->ajc$set$mCountY(Lcom/android/launcher3/CellLayout;I)V

    .line 160
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountX(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountY(Lcom/android/launcher3/CellLayout;)I

    move-result v3

    filled-new-array {v0, v3}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    invoke-static {p0, v0}, Lcom/android/launcher3/CellLayout;->ajc$set$mOccupied(Lcom/android/launcher3/CellLayout;[[Z)V

    .line 162
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountX(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountY(Lcom/android/launcher3/CellLayout;)I

    move-result v3

    filled-new-array {v0, v3}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    invoke-static {p0, v0}, Lcom/android/launcher3/CellLayout;->ajc$set$mTmpOccupied(Lcom/android/launcher3/CellLayout;[[Z)V

    .line 163
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mTempRectStack(Lcom/android/launcher3/CellLayout;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 164
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountX(Lcom/android/launcher3/CellLayout;)I

    move-result v3

    div-int/2addr v1, v3

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountY(Lcom/android/launcher3/CellLayout;)I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mWidthGap(Lcom/android/launcher3/CellLayout;)I

    move-result v3

    .line 165
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mHeightGap(Lcom/android/launcher3/CellLayout;)I

    move-result v4

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountX(Lcom/android/launcher3/CellLayout;)I

    move-result v5

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountY(Lcom/android/launcher3/CellLayout;)I

    move-result v6

    .line 164
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIIII)V

    .line 166
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 167
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 170
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->requestLayout()V

    .line 171
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/CellLayout;->measure(II)V

    .line 172
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;)Lcom/lge/launcher3/views/CrossHairsGrid;

    move-result-object v0

    if-eqz v0, :cond_aa

    .line 173
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$mCrossHairsGrid(Lcom/android/launcher3/CellLayout;)Lcom/lge/launcher3/views/CrossHairsGrid;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountX(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountY(Lcom/android/launcher3/CellLayout;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/views/CrossHairsGrid;->updateCrossPoint(II)V

    .line 174
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 178
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->requestLayout()V

    .line 181
    :cond_aa
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mOccupied(Lcom/android/launcher3/CellLayout;)[[Z

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountX(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountY(Lcom/android/launcher3/CellLayout;)I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$updateCurrentOccupied(Lcom/android/launcher3/CellLayout;[[ZII)V

    .line 182
    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$animationChangeGrid(Lcom/android/launcher3/CellLayout;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->animationChangeGrid(Z)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$cellSpansToSize(Lcom/android/launcher3/CellLayout;II)[I
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->cellSpansToSize(II)[I

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$clearRect(Lcom/android/launcher3/CellLayout;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->clearRect(Z)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$createCrossHairsGrid(Lcom/android/launcher3/CellLayout;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->createCrossHairsGrid()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$dispatchDraw(Lcom/android/launcher3/CellLayout;Landroid/graphics/Canvas;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$drawBackgroundOutlineInOverviewMode(Lcom/android/launcher3/CellLayout;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->drawBackgroundOutlineInOverviewMode(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$drawGlowOutlineDropCue(Lcom/android/launcher3/CellLayout;Landroid/graphics/Canvas;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$interMethodDispatch2$com_lge_launcher3_nativeitds_CellLayoutItds$drawGlowOutlineDropCue(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$drawGrid(Lcom/android/launcher3/CellLayout;Landroid/graphics/Canvas;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$interMethodDispatch2$com_lge_launcher3_nativeitds_CellLayoutItds$drawGrid(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$drawWidgetDropCue(Lcom/android/launcher3/CellLayout;Landroid/graphics/Canvas;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$interMethodDispatch2$com_lge_launcher3_nativeitds_CellLayoutItds$drawWidgetDropCue(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$findAppWidgetByComponentName(Lcom/android/launcher3/CellLayout;Landroid/content/ComponentName;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->findAppWidgetByComponentName(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$getChildrenDrawingCache(Lcom/android/launcher3/CellLayout;Z)Landroid/graphics/Bitmap;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->getChildrenDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$getCustomScreenEffect(Lcom/android/launcher3/CellLayout;)Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCustomScreenEffect()Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$getOccupied(Lcom/android/launcher3/CellLayout;)[[Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getOccupied()[[Z

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$getShortcutAndWidgetLayer(Lcom/android/launcher3/CellLayout;)I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutAndWidgetLayer()I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$getWorkspaceState(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/Workspace$State;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getWorkspaceState()Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$initDrawable(Lcom/android/launcher3/CellLayout;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->ajc$interMethodDispatch2$com_lge_launcher3_nativeitds_CellLayoutItds$initDrawable()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$removeViewWithoutMarkingCells(Lcom/android/launcher3/CellLayout;Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->removeViewWithoutMarkingCells(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$setCrosshairAnimation(Lcom/android/launcher3/CellLayout;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->setCrosshairAnimation(Z)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$setCrosshairsVisibility(Lcom/android/launcher3/CellLayout;F)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->setCrosshairsVisibility(F)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$setCustomScreenEffect(Lcom/android/launcher3/CellLayout;Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->setCustomScreenEffect(Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$updateCurrentOccupied(Lcom/android/launcher3/CellLayout;[[ZII)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/CellLayout;->ajc$interMethodDispatch2$com_lge_launcher3_nativeitds_CellLayoutItds$updateCurrentOccupied([[ZII)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CellLayoutItds$com_android_launcher3_CellLayout$updateGridSize(Lcom/android/launcher3/CellLayout;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->updateGridSize(II)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativeitds/CellLayoutItds;

    invoke-direct {v0}, Lcom/lge/launcher3/nativeitds/CellLayoutItds;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/CellLayoutItds;

    return-void
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "CellLayoutItds.aj"

    const-class v2, Lcom/lge/launcher3/nativeitds/CellLayoutItds;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "removeViewWithoutMarkingCells"

    const-string v3, "com.android.launcher3.CellLayout"

    const-string v4, "android.view.View"

    const-string v5, "view"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativeitds/CellLayoutItds;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/CellLayoutItds;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativeitds_CellLayoutItds"

    sget-object v2, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/CellLayoutItds;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/CellLayoutItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/CellLayoutItds;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
