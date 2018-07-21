.class public Lcom/lge/launcher3/views/CrossHairsGrid;
.super Ljava/lang/Object;
.source "CrossHairsGrid.java"


# static fields
.field public static final CROSS_HAIRS_ANIMATOR:I = 0x0

.field public static final CROSS_HAIRS_ANIMATOR2:I = 0x1

.field private static final DEFAULT_DRAWABLE:Landroid/graphics/drawable/Drawable;

.field private static final TAG:Ljava/lang/String; = "CrossHairsGrid"


# instance fields
.field private final dashPath:Landroid/graphics/DashPathEffect;

.field private mAlpha:F

.field private mAnimDuration:I

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mBackgroundPaintAlpha:F

.field private mCellRecthairDrawableHor:Landroid/graphics/drawable/Drawable;

.field private mCellRecthairDrawableHor_mini:Landroid/graphics/drawable/Drawable;

.field private mCellRecthairDrawableVerMiddle:Landroid/graphics/drawable/Drawable;

.field private mCellRecthairDrawableVerMiddle_mini:Landroid/graphics/drawable/Drawable;

.field private mCountX:I

.field private mCountY:I

.field private mCrossPoint:[[Landroid/graphics/Point;

.field public mCrosshairsAnimator2:Lcom/android/launcher3/InterruptibleInOutAnimator;

.field private mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawRect:Landroid/graphics/Rect;

.field private mHeight:I

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mPaddingBottom:I

.field private mPaddingTop:I

.field private mScaleX:F

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/lge/launcher3/views/CrossHairsGrid;->DEFAULT_DRAWABLE:Landroid/graphics/drawable/Drawable;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v3, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCellRecthairDrawableHor:Landroid/graphics/drawable/Drawable;

    .line 44
    iput-object v3, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCellRecthairDrawableHor_mini:Landroid/graphics/drawable/Drawable;

    .line 45
    iput-object v3, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCellRecthairDrawableVerMiddle:Landroid/graphics/drawable/Drawable;

    .line 46
    iput-object v3, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCellRecthairDrawableVerMiddle_mini:Landroid/graphics/drawable/Drawable;

    .line 47
    iput-object v3, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 49
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_5c

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->dashPath:Landroid/graphics/DashPathEffect;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 53
    iput v4, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mAlpha:F

    .line 54
    iput v4, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mBackgroundPaintAlpha:F

    .line 65
    iput-object v3, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCrosshairsAnimator2:Lcom/android/launcher3/InterruptibleInOutAnimator;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    check-cast p1, Lcom/android/launcher3/Launcher;

    .line 71
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 73
    iget-object v2, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {p0, v2, v1}, Lcom/lge/launcher3/views/CrossHairsGrid;->updateCrossPoint(II)V

    .line 75
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mDrawRect:Landroid/graphics/Rect;

    .line 76
    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mAnimDuration:I

    .line 77
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 78
    return-void

    .line 49
    nop

    :array_5c
    .array-data 4
        0x40a00000    # 5.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$0(Lcom/lge/launcher3/views/CrossHairsGrid;F)V
    .registers 2

    .prologue
    .line 53
    iput p1, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mAlpha:F

    return-void
.end method

.method static synthetic access$1(Lcom/lge/launcher3/views/CrossHairsGrid;F)V
    .registers 2

    .prologue
    .line 54
    iput p1, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mBackgroundPaintAlpha:F

    return-void
.end method

.method private calculateCrossPoints()[[Landroid/graphics/Point;
    .registers 11

    .prologue
    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 159
    iget-object v4, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCrossPoint:[[Landroid/graphics/Point;

    .line 160
    iget v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCountX:I

    int-to-float v2, v2

    div-float v5, v0, v2

    .line 161
    iget v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mHeight:I

    iget v2, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mPaddingTop:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mPaddingBottom:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCountY:I

    int-to-float v2, v2

    div-float v6, v0, v2

    move v0, v1

    .line 162
    :goto_1c
    iget v2, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCountX:I

    if-le v0, v2, :cond_21

    .line 169
    return-object v4

    :cond_21
    move v2, v1

    .line 163
    :goto_22
    iget v3, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCountY:I

    if-le v2, v3, :cond_29

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 164
    :cond_29
    aget-object v3, v4, v0

    aget-object v3, v3, v2

    int-to-float v7, v0

    mul-float/2addr v7, v5

    add-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, v3, Landroid/graphics/Point;->x:I

    .line 165
    aget-object v3, v4, v0

    aget-object v7, v3, v2

    int-to-float v3, v2

    mul-float/2addr v3, v6

    add-float v8, v3, v9

    .line 166
    if-nez v2, :cond_46

    move v3, v1

    :goto_3e
    int-to-float v3, v3

    add-float/2addr v3, v8

    float-to-int v3, v3

    .line 165
    iput v3, v7, Landroid/graphics/Point;->y:I

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 166
    :cond_46
    iget v3, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mPaddingTop:I

    goto :goto_3e
.end method

.method private drawCrossHairs(Landroid/graphics/Canvas;[[Landroid/graphics/Point;)V
    .registers 13

    .prologue
    const/4 v1, 0x1

    .line 173
    iget-object v3, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 174
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v4, v0, 0x2

    .line 175
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    .line 176
    const/high16 v0, 0x437f0000    # 255.0f

    iget v2, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mAlpha:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move v0, v1

    .line 177
    :goto_19
    iget v2, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCountX:I

    if-lt v0, v2, :cond_1e

    .line 184
    return-void

    :cond_1e
    move v2, v1

    .line 178
    :goto_1f
    iget v6, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCountY:I

    if-lt v2, v6, :cond_26

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 179
    :cond_26
    aget-object v6, p2, v0

    aget-object v6, v6, v2

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v4

    aget-object v7, p2, v0

    aget-object v7, v7, v2

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v5

    aget-object v8, p2, v0

    aget-object v8, v8, v2

    iget v8, v8, Landroid/graphics/Point;->x:I

    .line 180
    add-int/2addr v8, v4

    aget-object v9, p2, v0

    aget-object v9, v9, v2

    iget v9, v9, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v5

    .line 179
    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 181
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f
.end method

.method private drawGridBG(Landroid/graphics/Canvas;)V
    .registers 6

    .prologue
    const/4 v3, 0x2

    .line 146
    iget v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mScaleX:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4a

    .line 147
    iget-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mDrawRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mWidth:I

    add-int/lit8 v1, v1, -0x2

    iget v2, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mHeight:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 148
    iget-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->dashPath:Landroid/graphics/DashPathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 149
    iget-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    iget-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mBackgroundPaint:Landroid/graphics/Paint;

    const v1, 0x3fd9999a    # 1.7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 151
    iget-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 152
    iget-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mBackgroundPaintAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 154
    iget-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mDrawRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 156
    :cond_4a
    return-void
.end method

.method private drawHorizontalGrid(Landroid/graphics/Canvas;[[Landroid/graphics/Point;)V
    .registers 13

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 187
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCellRecthairDrawableHor_mini:Landroid/graphics/drawable/Drawable;

    .line 189
    :goto_e
    aget-object v2, p2, v3

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Point;->x:I

    aget-object v4, p2, v1

    aget-object v4, v4, v3

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v4

    div-int/lit8 v4, v2, 0xf

    .line 190
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v5, v2, 0x2

    .line 191
    const/high16 v2, 0x437f0000    # 255.0f

    iget v6, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mAlpha:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 192
    :goto_2c
    iget v2, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCountX:I

    if-lt v1, v2, :cond_34

    .line 207
    return-void

    .line 188
    :cond_31
    iget-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCellRecthairDrawableHor:Landroid/graphics/drawable/Drawable;

    goto :goto_e

    :cond_34
    move v2, v3

    .line 193
    :goto_35
    iget v6, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCountY:I

    if-lt v2, v6, :cond_3c

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 194
    :cond_3c
    if-nez v1, :cond_69

    .line 195
    aget-object v6, p2, v1

    aget-object v6, v6, v2

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v4

    aget-object v7, p2, v1

    aget-object v7, v7, v2

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v5

    .line 196
    add-int/lit8 v8, v1, 0x1

    aget-object v8, p2, v8

    aget-object v8, v8, v2

    iget v8, v8, Landroid/graphics/Point;->x:I

    mul-int/lit8 v9, v4, 0x2

    sub-int/2addr v8, v9

    add-int/lit8 v9, v1, 0x1

    aget-object v9, p2, v9

    aget-object v9, v9, v2

    iget v9, v9, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v5

    .line 195
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 204
    :goto_63
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 197
    :cond_69
    iget v6, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCountX:I

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_95

    .line 198
    aget-object v6, p2, v1

    aget-object v6, v6, v2

    iget v6, v6, Landroid/graphics/Point;->x:I

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    aget-object v7, p2, v1

    aget-object v7, v7, v2

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v5

    .line 199
    add-int/lit8 v8, v1, 0x1

    aget-object v8, p2, v8

    aget-object v8, v8, v2

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v4

    add-int/lit8 v9, v1, 0x1

    aget-object v9, p2, v9

    aget-object v9, v9, v2

    iget v9, v9, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v5

    .line 198
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_63

    .line 201
    :cond_95
    aget-object v6, p2, v1

    aget-object v6, v6, v2

    iget v6, v6, Landroid/graphics/Point;->x:I

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    aget-object v7, p2, v1

    aget-object v7, v7, v2

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v5

    .line 202
    add-int/lit8 v8, v1, 0x1

    aget-object v8, p2, v8

    aget-object v8, v8, v2

    iget v8, v8, Landroid/graphics/Point;->x:I

    mul-int/lit8 v9, v4, 0x2

    sub-int/2addr v8, v9

    add-int/lit8 v9, v1, 0x1

    aget-object v9, p2, v9

    aget-object v9, v9, v2

    iget v9, v9, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v5

    .line 201
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_63
.end method

.method private drawVerticalGrid(Landroid/graphics/Canvas;[[Landroid/graphics/Point;)V
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 210
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCellRecthairDrawableVerMiddle_mini:Landroid/graphics/drawable/Drawable;

    .line 212
    :goto_e
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v4, v2, 0x2

    .line 213
    aget-object v2, p2, v3

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    aget-object v5, p2, v3

    aget-object v5, v5, v1

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v5

    div-int/lit8 v5, v2, 0xf

    .line 214
    const/high16 v2, 0x437f0000    # 255.0f

    iget v6, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mAlpha:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 215
    :goto_2c
    iget v2, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCountY:I

    if-lt v1, v2, :cond_34

    .line 230
    return-void

    .line 211
    :cond_31
    iget-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCellRecthairDrawableVerMiddle:Landroid/graphics/drawable/Drawable;

    goto :goto_e

    :cond_34
    move v2, v3

    .line 216
    :goto_35
    iget v6, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCountX:I

    if-lt v2, v6, :cond_3c

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 217
    :cond_3c
    if-nez v1, :cond_69

    .line 218
    aget-object v6, p2, v2

    aget-object v6, v6, v1

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v4

    aget-object v7, p2, v2

    aget-object v7, v7, v1

    iget v7, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v5

    .line 219
    aget-object v8, p2, v2

    add-int/lit8 v9, v1, 0x1

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v4

    aget-object v9, p2, v2

    add-int/lit8 v10, v1, 0x1

    aget-object v9, v9, v10

    iget v9, v9, Landroid/graphics/Point;->y:I

    mul-int/lit8 v10, v5, 0x2

    sub-int/2addr v9, v10

    .line 218
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 227
    :goto_63
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 220
    :cond_69
    iget v6, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCountY:I

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_95

    .line 221
    aget-object v6, p2, v2

    aget-object v6, v6, v1

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v4

    aget-object v7, p2, v2

    aget-object v7, v7, v1

    iget v7, v7, Landroid/graphics/Point;->y:I

    mul-int/lit8 v8, v5, 0x2

    add-int/2addr v7, v8

    .line 222
    aget-object v8, p2, v2

    add-int/lit8 v9, v1, 0x1

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v4

    aget-object v9, p2, v2

    add-int/lit8 v10, v1, 0x1

    aget-object v9, v9, v10

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v5

    .line 221
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_63

    .line 224
    :cond_95
    aget-object v6, p2, v2

    aget-object v6, v6, v1

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v4

    aget-object v7, p2, v2

    aget-object v7, v7, v1

    iget v7, v7, Landroid/graphics/Point;->y:I

    mul-int/lit8 v8, v5, 0x2

    add-int/2addr v7, v8

    .line 225
    aget-object v8, p2, v2

    add-int/lit8 v9, v1, 0x1

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v4

    aget-object v9, p2, v2

    add-int/lit8 v10, v1, 0x1

    aget-object v9, v9, v10

    iget v9, v9, Landroid/graphics/Point;->y:I

    mul-int/lit8 v10, v5, 0x2

    sub-int/2addr v9, v10

    .line 224
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_63
.end method

.method private getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_f

    .line 96
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 97
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 102
    :goto_e
    return-object v0

    .line 101
    :cond_f
    const-string v0, "CrossHairsGrid"

    const-string v1, "Failed to init"

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    .line 102
    sget-object v0, Lcom/lge/launcher3/views/CrossHairsGrid;->DEFAULT_DRAWABLE:Landroid/graphics/drawable/Drawable;

    goto :goto_e
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 132
    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mScaleX:F

    .line 133
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mWidth:I

    .line 134
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mHeight:I

    .line 135
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mPaddingTop:I

    .line 136
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mPaddingBottom:I

    .line 138
    invoke-direct {p0}, Lcom/lge/launcher3/views/CrossHairsGrid;->calculateCrossPoints()[[Landroid/graphics/Point;

    move-result-object v0

    .line 139
    invoke-direct {p0, p1}, Lcom/lge/launcher3/views/CrossHairsGrid;->drawGridBG(Landroid/graphics/Canvas;)V

    .line 140
    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/views/CrossHairsGrid;->drawCrossHairs(Landroid/graphics/Canvas;[[Landroid/graphics/Point;)V

    .line 141
    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/views/CrossHairsGrid;->drawHorizontalGrid(Landroid/graphics/Canvas;[[Landroid/graphics/Point;)V

    .line 142
    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/views/CrossHairsGrid;->drawVerticalGrid(Landroid/graphics/Canvas;[[Landroid/graphics/Point;)V

    .line 143
    return-void
.end method

.method public initDrawables(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCellRecthairDrawableHor:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_d

    .line 111
    const v0, 0x7f020080

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/views/CrossHairsGrid;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCellRecthairDrawableHor:Landroid/graphics/drawable/Drawable;

    .line 113
    :cond_d
    iget-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCellRecthairDrawableHor_mini:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1a

    .line 114
    const v0, 0x7f020081

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/views/CrossHairsGrid;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCellRecthairDrawableHor_mini:Landroid/graphics/drawable/Drawable;

    .line 116
    :cond_1a
    iget-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCellRecthairDrawableVerMiddle:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_27

    .line 117
    const v0, 0x7f020082

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/views/CrossHairsGrid;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCellRecthairDrawableVerMiddle:Landroid/graphics/drawable/Drawable;

    .line 119
    :cond_27
    iget-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCellRecthairDrawableVerMiddle_mini:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_34

    .line 120
    const v0, 0x7f020083

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/views/CrossHairsGrid;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCellRecthairDrawableVerMiddle_mini:Landroid/graphics/drawable/Drawable;

    .line 122
    :cond_34
    iget-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_41

    .line 123
    const v0, 0x7f020084

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/views/CrossHairsGrid;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 125
    :cond_41
    return-void
.end method

.method public setAlpha(F)V
    .registers 2

    .prologue
    .line 106
    iput p1, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mAlpha:F

    .line 107
    return-void
.end method

.method public setAnimator(Landroid/view/View;I)Lcom/android/launcher3/InterruptibleInOutAnimator;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 236
    packed-switch p2, :pswitch_data_2c

    move v5, v4

    .line 247
    :goto_5
    new-instance v0, Lcom/android/launcher3/InterruptibleInOutAnimator;

    iget v1, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mAnimDuration:I

    int-to-long v2, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/InterruptibleInOutAnimator;-><init>(Landroid/view/View;JFF)V

    .line 248
    invoke-virtual {v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/lge/launcher3/views/CrossHairsGrid$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/lge/launcher3/views/CrossHairsGrid$1;-><init>(Lcom/lge/launcher3/views/CrossHairsGrid;ILandroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 269
    invoke-virtual {v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 270
    return-object v0

    .line 238
    :pswitch_24
    const/high16 v5, 0x3f800000    # 1.0f

    .line 239
    goto :goto_5

    .line 241
    :pswitch_27
    const v5, 0x3ecccccd    # 0.4f

    goto :goto_5

    .line 236
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method

.method public updateCrossPoint(II)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 81
    iput p1, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCountX:I

    .line 82
    iput p2, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCountY:I

    .line 84
    iget v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCountX:I

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCountY:I

    add-int/lit8 v2, v2, 0x1

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const-class v2, Landroid/graphics/Point;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/graphics/Point;

    iput-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCrossPoint:[[Landroid/graphics/Point;

    move v0, v1

    .line 85
    :goto_1c
    iget v2, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCountX:I

    if-le v0, v2, :cond_21

    .line 90
    return-void

    :cond_21
    move v2, v1

    .line 86
    :goto_22
    iget v3, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCountY:I

    if-le v2, v3, :cond_29

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 87
    :cond_29
    iget-object v3, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mCrossPoint:[[Landroid/graphics/Point;

    aget-object v3, v3, v0

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v3, v2

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_22
.end method

.method public visible()Z
    .registers 3

    .prologue
    .line 128
    iget v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
