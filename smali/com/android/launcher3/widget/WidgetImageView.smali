.class public Lcom/android/launcher3/widget/WidgetImageView;
.super Landroid/view/View;
.source "WidgetImageView.java"


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected final mDstRectF:Landroid/graphics/RectF;

.field protected final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetImageView;->mPaint:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetImageView;->mPaint:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetImageView;->mPaint:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    .line 48
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapBounds()Landroid/graphics/Rect;
    .registers 3

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetImageView;->updateDstRectF()V

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 95
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11

    .line 62
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetImageView;->updateDstRectF()V

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 65
    :cond_11
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 52
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetImageView;->invalidate()V

    .line 53
    return-void
.end method

.method protected updateDstRectF()V
    .registers 7

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetImageView;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_2f

    .line 77
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 78
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-virtual {v1, v4, v4, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 86
    :goto_2e
    return-void

    .line 80
    :cond_2f
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    .line 81
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetImageView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v5

    .line 83
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetImageView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v5

    .line 84
    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 80
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2e
.end method
