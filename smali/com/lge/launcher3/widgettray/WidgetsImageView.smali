.class public Lcom/lge/launcher3/widgettray/WidgetsImageView;
.super Lcom/android/launcher3/widget/WidgetImageView;
.source "WidgetsImageView.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mIsDownloaded:Z

.field private mIsUninstallMode:Z

.field private mShadowDistance:I

.field private mUninstallBadge:Landroid/widget/ImageView;

.field private mUninstallBadgePositionX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/WidgetImageView;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mUninstallBadgePositionX:I

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/WidgetImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mUninstallBadgePositionX:I

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/WidgetImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mUninstallBadgePositionX:I

    .line 59
    return-void
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    .line 179
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 181
    if-nez v0, :cond_a

    .line 197
    :goto_9
    return-void

    .line 185
    :cond_a
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 186
    iget-object v2, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mDstRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mDstRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mDstRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mDstRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 187
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 188
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mShadowDistance:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mShadowDistance:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 193
    :goto_3d
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 194
    const/high16 v1, -0x1000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 195
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 196
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_9

    .line 190
    :cond_50
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mShadowDistance:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mShadowDistance:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_3d
.end method


# virtual methods
.method public getIsDownloaded()Z
    .registers 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mIsDownloaded:Z

    return v0
.end method

.method public getUninstallBadgePositionX()I
    .registers 2

    .prologue
    .line 163
    iget v0, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mUninstallBadgePositionX:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_33

    .line 135
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->updateDstRectF()V

    .line 136
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mUninstallBadge:Landroid/widget/ImageView;

    if-eqz v0, :cond_11

    .line 137
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mUninstallBadge:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    :cond_11
    iget-boolean v0, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mIsUninstallMode:Z

    if-eqz v0, :cond_29

    .line 141
    invoke-direct {p0, p1}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->drawShadow(Landroid/graphics/Canvas;)V

    .line 142
    iget-boolean v0, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mIsDownloaded:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mUninstallBadge:Landroid/widget/ImageView;

    if-eqz v0, :cond_29

    .line 143
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->setUninstallBadgePositionX()V

    .line 144
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mUninstallBadge:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    :cond_29
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mDstRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 150
    :cond_33
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mShadowDistance:I

    .line 64
    return-void
.end method

.method public setUninstallBadge(Landroid/widget/ImageView;ZZ)V
    .registers 4

    .prologue
    .line 171
    if-eqz p1, :cond_8

    .line 172
    iput-object p1, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mUninstallBadge:Landroid/widget/ImageView;

    .line 173
    iput-boolean p2, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mIsUninstallMode:Z

    .line 174
    iput-boolean p3, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mIsDownloaded:Z

    .line 176
    :cond_8
    return-void
.end method

.method public setUninstallBadgePositionX()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 154
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mDstRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float v0, v1, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mUninstallBadgePositionX:I

    .line 155
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 156
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mUninstallBadge:Landroid/widget/ImageView;

    iget v1, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mUninstallBadgePositionX:I

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 160
    :goto_37
    return-void

    .line 158
    :cond_38
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mUninstallBadge:Landroid/widget/ImageView;

    iget v1, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mUninstallBadgePositionX:I

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_37
.end method

.method protected updateDstRectF()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_22

    .line 70
    const-string v0, "WidgetsImageView"

    const-string v1, "GroupWidgetItemAdapter does not use the widgetsImageView Rect "

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mDstRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 130
    :goto_21
    return-void

    .line 79
    :cond_22
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_7e

    .line 81
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mShadowDistance:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    .line 82
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 83
    iget-object v2, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    .line 85
    iget v2, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mShadowDistance:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_62

    .line 86
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mShadowDistance:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    div-float/2addr v2, v3

    .line 87
    mul-float/2addr v1, v2

    .line 88
    mul-float/2addr v0, v2

    .line 117
    :cond_62
    :goto_62
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 118
    iget-object v2, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mDstRectF:Landroid/graphics/RectF;

    .line 119
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v1, v3, v1

    .line 121
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 118
    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_21

    .line 90
    :cond_7e
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_b7

    .line 92
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mShadowDistance:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 93
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 94
    iget-object v2, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 96
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_62

    .line 97
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 98
    mul-float/2addr v1, v2

    .line 99
    mul-float/2addr v0, v2

    .line 101
    goto :goto_62

    .line 103
    :cond_b7
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v1, v0

    .line 104
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 106
    iget v2, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mShadowDistance:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_db

    .line 107
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mShadowDistance:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    move v1, v0

    .line 111
    :cond_db
    iget v2, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mShadowDistance:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_62

    .line 112
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mShadowDistance:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    move v1, v0

    .line 113
    goto/16 :goto_62

    .line 124
    :cond_f3
    iget-object v2, p0, Lcom/lge/launcher3/widgettray/WidgetsImageView;->mDstRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v4, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_21
.end method
