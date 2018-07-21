.class public Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;
.super Ljava/lang/Object;
.source "OverscrollScreenEffectBase.java"


# static fields
.field protected static final IDENTITY_MATRIX:Landroid/graphics/Matrix;

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mInterpolator:Landroid/view/animation/Interpolator;

.field protected mPageMatrix:Landroid/graphics/Matrix;

.field protected mPivot:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;->mPageMatrix:Landroid/graphics/Matrix;

    .line 30
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;->mPivot:Landroid/graphics/PointF;

    .line 34
    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 42
    if-nez p1, :cond_27

    .line 43
    sget-object v0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;->TAG:Ljava/lang/String;

    const-string v1, "Context is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_26
    return-void

    .line 47
    :cond_27
    iput-object p1, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_26
.end method


# virtual methods
.method public drawChild(Landroid/graphics/Canvas;JLcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)Z
    .registers 6

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 84
    if-nez p2, :cond_5

    .line 85
    const/4 v0, 0x0

    .line 89
    :goto_4
    return v0

    .line 88
    :cond_5
    invoke-virtual {p1, p2, v0, v0, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 89
    const/4 v0, 0x1

    goto :goto_4
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)Z
    .registers 7

    .prologue
    .line 101
    if-nez p2, :cond_4

    .line 102
    const/4 v0, 0x0

    .line 106
    :goto_3
    return v0

    .line 105
    :cond_4
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 106
    const/4 v0, 0x1

    goto :goto_3
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 8

    .prologue
    .line 68
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_a

    instance-of v1, v0, Lcom/android/launcher3/Workspace;

    if-nez v1, :cond_c

    .line 70
    :cond_a
    const/4 v0, 0x0

    .line 74
    :goto_b
    return v0

    .line 73
    :cond_c
    check-cast v0, Lcom/android/launcher3/Workspace;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$superDrawChild(Lcom/android/launcher3/PagedView;Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 74
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method
