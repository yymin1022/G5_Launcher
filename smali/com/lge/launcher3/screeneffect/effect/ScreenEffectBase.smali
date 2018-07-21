.class public Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;
.super Ljava/lang/Object;
.source "ScreenEffectBase.java"


# static fields
.field protected static final IDENTITY_MATRIX:Landroid/graphics/Matrix;

.field public static final TAG:Ljava/lang/String;

.field protected static sIsRtL:Z


# instance fields
.field protected mCamera:Landroid/graphics/Camera;

.field protected mContext:Landroid/content/Context;

.field protected mInterpolator:Landroid/view/animation/Interpolator;

.field protected mPageMatrix:Landroid/graphics/Matrix;

.field protected mPagePaint:Landroid/graphics/Paint;

.field protected mPivot:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->sIsRtL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 49
    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;-><init>(Landroid/content/Context;F)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;F)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->mCamera:Landroid/graphics/Camera;

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->mPageMatrix:Landroid/graphics/Matrix;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->mPagePaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->mPivot:Landroid/graphics/PointF;

    .line 40
    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 57
    if-nez p1, :cond_35

    .line 58
    sget-object v0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->TAG:Ljava/lang/String;

    const-string v1, "Context is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_34
    return-void

    .line 62
    :cond_35
    iput-object p1, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->mContext:Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->setupCameraLocationZ()V

    .line 65
    new-instance v0, Lcom/lge/launcher3/screeneffect/interpolator/ScreenEffectInterpolatorOvershoot;

    invoke-direct {v0, p1, p2}, Lcom/lge/launcher3/screeneffect/interpolator/ScreenEffectInterpolatorOvershoot;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 67
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->sIsRtL:Z

    goto :goto_34
.end method

.method private setupCameraLocationZ()V
    .registers 5

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->getLocationZ()F

    move-result v0

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/launcher3/util/WindowUtils;->getDensity(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 75
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->mCamera:Landroid/graphics/Camera;

    iget-object v2, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->getLocationX()F

    move-result v2

    iget-object v3, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->getLocationY()F

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 76
    return-void
.end method


# virtual methods
.method public drawChild(Landroid/graphics/Canvas;JLcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)Z
    .registers 6

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 119
    if-nez p2, :cond_5

    .line 120
    const/4 v0, 0x0

    .line 124
    :goto_4
    return v0

    .line 123
    :cond_5
    invoke-virtual {p1, p2, v0, v0, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 124
    const/4 v0, 0x1

    goto :goto_4
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)Z
    .registers 7

    .prologue
    .line 136
    if-nez p2, :cond_4

    .line 137
    const/4 v0, 0x0

    .line 141
    :goto_3
    return v0

    .line 140
    :cond_4
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 141
    const/4 v0, 0x1

    goto :goto_3
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 8

    .prologue
    .line 103
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_a

    instance-of v1, v0, Lcom/android/launcher3/Workspace;

    if-nez v1, :cond_c

    .line 105
    :cond_a
    const/4 v0, 0x0

    .line 109
    :goto_b
    return v0

    .line 108
    :cond_c
    check-cast v0, Lcom/android/launcher3/Workspace;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$superDrawChild(Lcom/android/launcher3/PagedView;Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 109
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public isOverscrollHandledBySelf()Z
    .registers 2

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method protected scaleCameraLocationZ(F)V
    .registers 6

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->getLocationZ()F

    move-result v0

    mul-float/2addr v0, p1

    .line 83
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->mCamera:Landroid/graphics/Camera;

    iget-object v2, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->getLocationX()F

    move-result v2

    iget-object v3, p0, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->getLocationY()F

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 84
    return-void
.end method
