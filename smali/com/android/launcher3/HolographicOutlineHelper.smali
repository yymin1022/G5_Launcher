.class public Lcom/android/launcher3/HolographicOutlineHelper;
.super Ljava/lang/Object;
.source "HolographicOutlineHelper.java"


# static fields
.field private static sInstance:Lcom/android/launcher3/HolographicOutlineHelper;


# instance fields
.field private final mBitmapCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private final mErasePaint:Landroid/graphics/Paint;

.field private final mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mShadowBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mBitmapCache:Landroid/util/SparseArray;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    const v1, 0x7f09007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 59
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v1, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v2, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 60
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v1, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v2, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 62
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    .line 63
    const v2, 0x7f090079

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 62
    iput-object v1, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 65
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    .line 66
    const v2, 0x7f09007b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v0, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 65
    iput-object v1, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mShadowBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    return-void
.end method

.method public static obtain(Landroid/content/Context;)Lcom/android/launcher3/HolographicOutlineHelper;
    .registers 2

    .prologue
    .line 78
    sget-object v0, Lcom/android/launcher3/HolographicOutlineHelper;->sInstance:Lcom/android/launcher3/HolographicOutlineHelper;

    if-nez v0, :cond_b

    .line 79
    new-instance v0, Lcom/android/launcher3/HolographicOutlineHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/HolographicOutlineHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/HolographicOutlineHelper;->sInstance:Lcom/android/launcher3/HolographicOutlineHelper;

    .line 81
    :cond_b
    sget-object v0, Lcom/android/launcher3/HolographicOutlineHelper;->sInstance:Lcom/android/launcher3/HolographicOutlineHelper;

    return-object v0
.end method


# virtual methods
.method applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .registers 11

    .prologue
    .line 90
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZ)V

    .line 91
    return-void
.end method

.method applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZ)V
    .registers 20

    .prologue
    .line 97
    if-eqz p5, :cond_37

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v2, v1, [I

    .line 100
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object v1, p1

    .line 99
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 101
    const/4 v1, 0x0

    :goto_21
    array-length v3, v2

    if-lt v1, v3, :cond_110

    .line 108
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object v1, p1

    .line 107
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 110
    :cond_37
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 113
    iget-object v1, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 114
    const/4 v1, 0x2

    new-array v8, v1, [I

    .line 115
    iget-object v1, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 117
    iget-object v1, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 118
    const/4 v1, 0x2

    new-array v10, v1, [I

    .line 119
    iget-object v1, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v10}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 122
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    const/high16 v1, -0x1000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 124
    iget-object v1, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 125
    const/4 v1, 0x2

    new-array v12, v1, [I

    .line 126
    iget-object v1, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v12}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 129
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    const/4 v1, 0x0

    aget v1, v12, v1

    neg-int v1, v1

    int-to-float v1, v1

    .line 131
    const/4 v2, 0x1

    aget v2, v12, v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 130
    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 132
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    aget v1, v12, v1

    neg-int v1, v1

    int-to-float v4, v1

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v5, v1

    .line 133
    iget-object v6, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p2

    .line 132
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 134
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v4, v1

    const/4 v1, 0x1

    aget v1, v12, v1

    neg-int v1, v1

    int-to-float v5, v1

    .line 135
    iget-object v6, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p2

    .line 134
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 138
    move-object/from16 v0, p2

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 139
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 140
    iget-object v1, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    const/4 v1, 0x0

    aget v1, v12, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v2, v12, v2

    int-to-float v2, v2

    .line 142
    iget-object v3, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    .line 141
    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 143
    const/4 v1, 0x0

    aget v1, v8, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v2, v8, v2

    int-to-float v2, v2

    .line 144
    iget-object v3, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    .line 143
    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 147
    iget-object v1, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    const/4 v1, 0x0

    aget v1, v10, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v2, v10, v2

    int-to-float v2, v2

    .line 149
    iget-object v3, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    .line 148
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 152
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 153
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 155
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 156
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 157
    return-void

    .line 102
    :cond_110
    aget v3, v2, v1

    ushr-int/lit8 v3, v3, 0x18

    .line 103
    const/16 v4, 0xbc

    if-ge v3, v4, :cond_11b

    .line 104
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 101
    :cond_11b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_21
.end method

.method createMediumDropShadow(Lcom/android/launcher3/BubbleTextView;)Landroid/graphics/Bitmap;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 161
    if-nez v2, :cond_9

    move-object v0, v1

    .line 192
    :goto_8
    return-object v0

    .line 164
    :cond_9
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 166
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getScaleX()F

    move-result v4

    mul-float/2addr v0, v4

    float-to-int v4, v0

    .line 167
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getScaleY()F

    move-result v5

    mul-float/2addr v0, v5

    float-to-int v5, v0

    .line 169
    if-lez v4, :cond_27

    if-gtz v5, :cond_29

    :cond_27
    move-object v0, v1

    .line 170
    goto :goto_8

    .line 173
    :cond_29
    shl-int/lit8 v0, v4, 0x10

    or-int v6, v0, v5

    .line 174
    iget-object v0, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 175
    if-nez v0, :cond_84

    .line 176
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    iget-object v4, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 178
    iget-object v4, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    :goto_47
    iget-object v4, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->save(I)I

    .line 185
    iget-object v4, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getScaleX()F

    move-result v5

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getScaleY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 186
    iget-object v4, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    int-to-float v5, v5

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 187
    iget-object v3, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 188
    iget-object v2, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 189
    iget-object v2, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 191
    iget-object v2, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mShadowBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 192
    iget-object v2, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_8

    .line 180
    :cond_84
    iget-object v4, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 181
    iget-object v4, p0, Lcom/android/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_47
.end method
