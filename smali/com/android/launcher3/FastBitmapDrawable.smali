.class public Lcom/android/launcher3/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"

# interfaces
.implements Lcom/lge/launcher3/util/IFastBitmapDrawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/FastBitmapDrawable$State;
    }
.end annotation


# static fields
.field static final CLICK_FEEDBACK_DURATION:J = 0x7d0L

.field static final CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final REDUCED_FILTER_VALUE_SPACE:I = 0x30

.field private static final sCachedFilter:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

.field private static final sTempFilterMatrix:Landroid/graphics/ColorMatrix;


# instance fields
.field private mAlpha:I

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mBrightness:I

.field private mDesaturation:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mPrevUpdateKey:I

.field private mPropertyAnimator:Landroid/animation/AnimatorSet;

.field private mState:Lcom/android/launcher3/FastBitmapDrawable$State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable$1;

    invoke-direct {v0}, Lcom/android/launcher3/FastBitmapDrawable$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/FastBitmapDrawable;->CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 80
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/FastBitmapDrawable;->sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

    .line 81
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/launcher3/FastBitmapDrawable;->sCachedFilter:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 91
    sget-object v0, Lcom/android/launcher3/FastBitmapDrawable$State;->NORMAL:Lcom/android/launcher3/FastBitmapDrawable$State;

    iput-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mState:Lcom/android/launcher3/FastBitmapDrawable$State;

    .line 96
    iput v2, p0, Lcom/android/launcher3/FastBitmapDrawable;->mDesaturation:I

    .line 97
    iput v2, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    .line 98
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPrevUpdateKey:I

    .line 104
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mAlpha:I

    .line 105
    iput-object p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/launcher3/FastBitmapDrawable;->setBounds(IIII)V

    .line 107
    return-void
.end method

.method private cancelAnimator(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 3

    .prologue
    .line 296
    if-eqz p1, :cond_8

    .line 297
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 298
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 300
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateFilter()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v5, 0xff

    .line 245
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mDesaturation:I

    if-lez v0, :cond_18

    .line 246
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mDesaturation:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    or-int/2addr v0, v1

    move v1, v0

    move v3, v4

    .line 257
    :goto_13
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPrevUpdateKey:I

    if-ne v1, v0, :cond_25

    .line 293
    :goto_17
    return-void

    .line 247
    :cond_18
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    if-lez v0, :cond_9a

    .line 249
    const/high16 v0, 0x10000

    iget v1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    or-int/2addr v0, v1

    .line 253
    const/4 v1, 0x1

    move v3, v1

    move v1, v0

    goto :goto_13

    .line 260
    :cond_25
    iput v1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPrevUpdateKey:I

    .line 262
    if-eq v1, v2, :cond_93

    .line 263
    sget-object v0, Lcom/android/launcher3/FastBitmapDrawable;->sCachedFilter:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    .line 264
    if-nez v0, :cond_4d

    .line 265
    invoke-virtual {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getBrightness()F

    move-result v0

    .line 266
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 267
    if-eqz v3, :cond_56

    .line 268
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v2, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 286
    :goto_48
    sget-object v2, Lcom/android/launcher3/FastBitmapDrawable;->sCachedFilter:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 288
    :cond_4d
    iget-object v1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 292
    :goto_52
    invoke-virtual {p0}, Lcom/android/launcher3/FastBitmapDrawable;->invalidateSelf()V

    goto :goto_17

    .line 270
    :cond_56
    invoke-virtual {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getDesaturation()F

    move-result v3

    sub-float v3, v6, v3

    .line 271
    sget-object v5, Lcom/android/launcher3/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v5, v3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 272
    iget v3, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    if-lez v3, :cond_8b

    .line 274
    sub-float v0, v6, v0

    .line 275
    sget-object v3, Lcom/android/launcher3/FastBitmapDrawable;->sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v3}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v3

    .line 276
    aput v0, v3, v4

    .line 277
    const/4 v4, 0x6

    aput v0, v3, v4

    .line 278
    const/16 v4, 0xc

    aput v0, v3, v4

    .line 279
    const/4 v0, 0x4

    int-to-float v4, v2

    aput v4, v3, v0

    .line 280
    const/16 v0, 0x9

    int-to-float v4, v2

    aput v4, v3, v0

    .line 281
    const/16 v0, 0xe

    int-to-float v2, v2

    aput v2, v3, v0

    .line 282
    sget-object v0, Lcom/android/launcher3/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    sget-object v2, Lcom/android/launcher3/FastBitmapDrawable;->sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    .line 284
    :cond_8b
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v2, Lcom/android/launcher3/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    goto :goto_48

    .line 290
    :cond_93
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_52

    :cond_9a
    move v1, v2

    move v3, v4

    goto/16 :goto_13
.end method


# virtual methods
.method public animateState(Lcom/android/launcher3/FastBitmapDrawable$State;)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    iget-object v2, p0, Lcom/android/launcher3/FastBitmapDrawable;->mState:Lcom/android/launcher3/FastBitmapDrawable$State;

    if-eq v2, p1, :cond_48

    .line 169
    iput-object p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mState:Lcom/android/launcher3/FastBitmapDrawable$State;

    .line 171
    iget-object v2, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v2}, Lcom/android/launcher3/FastBitmapDrawable;->cancelAnimator(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    .line 172
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    .line 173
    iget-object v2, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    .line 175
    const-string v4, "desaturation"

    new-array v5, v0, [F

    iget v6, p1, Lcom/android/launcher3/FastBitmapDrawable$State;->desaturation:F

    aput v6, v5, v1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    .line 177
    const-string v4, "brightness"

    new-array v5, v0, [F

    iget v6, p1, Lcom/android/launcher3/FastBitmapDrawable$State;->brightness:F

    aput v6, v5, v1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    .line 173
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 178
    iget-object v1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    iget-object v2, p1, Lcom/android/launcher3/FastBitmapDrawable$State;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 179
    iget-object v1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 182
    :goto_47
    return v0

    :cond_48
    move v0, v1

    goto :goto_47
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 114
    return-void
.end method

.method public getAlpha()I
    .registers 2

    .prologue
    .line 139
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mAlpha:I

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBrightness()F
    .registers 3

    .prologue
    .line 239
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    int-to-float v0, v0

    const/high16 v1, 0x42400000    # 48.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getCurrentState()Lcom/android/launcher3/FastBitmapDrawable$State;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mState:Lcom/android/launcher3/FastBitmapDrawable$State;

    return-object v0
.end method

.method public getDesaturation()F
    .registers 3

    .prologue
    .line 197
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mDesaturation:I

    int-to-float v0, v0

    const/high16 v1, 0x42400000    # 48.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .registers 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .registers 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 123
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .prologue
    .line 128
    iput p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mAlpha:I

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 130
    return-void
.end method

.method public setBrightness(F)V
    .registers 4

    .prologue
    .line 231
    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 232
    iget v1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    if-eq v1, v0, :cond_12

    .line 233
    iput v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    .line 234
    invoke-direct {p0}, Lcom/android/launcher3/FastBitmapDrawable;->updateFilter()V

    .line 236
    :cond_12
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .prologue
    .line 119
    return-void
.end method

.method public setDesaturation(F)V
    .registers 4

    .prologue
    .line 189
    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 190
    iget v1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mDesaturation:I

    if-eq v1, v0, :cond_12

    .line 191
    iput v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mDesaturation:I

    .line 192
    invoke-direct {p0}, Lcom/android/launcher3/FastBitmapDrawable;->updateFilter()V

    .line 194
    :cond_12
    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 136
    return-void
.end method

.method public setState(Lcom/android/launcher3/FastBitmapDrawable$State;)Z
    .registers 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mState:Lcom/android/launcher3/FastBitmapDrawable$State;

    if-eq v0, p1, :cond_1a

    .line 207
    iput-object p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mState:Lcom/android/launcher3/FastBitmapDrawable$State;

    .line 209
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/android/launcher3/FastBitmapDrawable;->cancelAnimator(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    .line 211
    iget v0, p1, Lcom/android/launcher3/FastBitmapDrawable$State;->desaturation:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/FastBitmapDrawable;->setDesaturation(F)V

    .line 212
    iget v0, p1, Lcom/android/launcher3/FastBitmapDrawable$State;->brightness:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/FastBitmapDrawable;->setBrightness(F)V

    .line 213
    const/4 v0, 0x1

    .line 215
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
