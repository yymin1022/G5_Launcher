.class public Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;
.super Landroid/widget/TextView;
.source "IconChangeSelectSizeView.java"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mCrosshairsColor:I

.field private mCrosshairsPaint:Landroid/graphics/Paint;

.field private mCrosshairsThickness:I

.field private mCurrentSpanX:I

.field private mCurrentSpanY:I

.field private final mDragHandleRect:Landroid/graphics/Rect;

.field private final mIconSizeFormat:Ljava/lang/String;

.field private mIsDragging:Z

.field private final mMaxSpanX:I

.field private final mMaxSpanY:I

.field private mMeasured:Z

.field private mPortrait:Z

.field private final mSelectedAreaImage:Landroid/graphics/drawable/Drawable;

.field private final mSelectedAreaRect:Landroid/graphics/Rect;

.field private final mSelectedLineImage:Landroid/graphics/drawable/Drawable;

.field private mSelectedLineMaxX:I

.field private mSelectedLineMaxY:I

.field private mSelectedLineMinX:I

.field private mSelectedLineMinY:I

.field private final mSelectedLineRect:Landroid/graphics/Rect;

.field private mStartX:I

.field private mStartY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput v2, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellWidth:I

    .line 22
    iput v2, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellHeight:I

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedAreaRect:Landroid/graphics/Rect;

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedLineRect:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mDragHandleRect:Landroid/graphics/Rect;

    .line 40
    iput v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCurrentSpanX:I

    .line 41
    iput v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCurrentSpanY:I

    .line 43
    iput-boolean v2, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mIsDragging:Z

    .line 48
    iput-boolean v2, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mMeasured:Z

    .line 49
    iput-boolean v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mPortrait:Z

    .line 54
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    const v3, 0x7f0c0031

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mMaxSpanX:I

    .line 56
    const v3, 0x7f0c0032

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mMaxSpanY:I

    .line 57
    const v3, 0x7f0f00ee

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mIconSizeFormat:Ljava/lang/String;

    .line 58
    const v3, 0x7f020097

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedAreaImage:Landroid/graphics/drawable/Drawable;

    .line 59
    const v3, 0x7f02004f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedLineImage:Landroid/graphics/drawable/Drawable;

    .line 61
    const v3, 0x7f0900cc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 60
    iput v3, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCrosshairsThickness:I

    .line 62
    const v3, 0x7f0b003e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCrosshairsColor:I

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCrosshairsPaint:Landroid/graphics/Paint;

    .line 65
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCrosshairsPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCrosshairsColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCrosshairsPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCrosshairsThickness:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCrosshairsPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCrosshairsPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    check-cast v0, Landroid/view/WindowManager;

    .line 72
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 73
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 74
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v3, :cond_ae

    move v0, v1

    :goto_a8
    iput-boolean v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mPortrait:Z

    .line 76
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->updateSelectedLineMinMax()V

    .line 77
    return-void

    :cond_ae
    move v0, v2

    .line 74
    goto :goto_a8
.end method

.method private changeSelectedArea(II)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 197
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mStartX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCurrentSpanX:I

    .line 198
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mStartY:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCurrentSpanY:I

    .line 199
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCurrentSpanX:I

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mMaxSpanX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCurrentSpanX:I

    .line 200
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCurrentSpanY:I

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mMaxSpanY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCurrentSpanY:I

    .line 202
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedAreaRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mStartX:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 203
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedAreaRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mStartY:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 204
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedAreaRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mStartX:I

    iget v2, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCurrentSpanX:I

    iget v3, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellWidth:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 205
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedAreaRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mStartY:I

    iget v2, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCurrentSpanY:I

    iget v3, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellHeight:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 207
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedLineRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mStartX:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 208
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedLineRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mStartY:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 209
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedLineRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedLineMinX:I

    iget v2, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedLineMaxX:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 210
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedLineRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedLineMinY:I

    iget v2, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedLineMaxY:I

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 212
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mDragHandleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedAreaRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellWidth:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedAreaRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellHeight:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 214
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mIconSizeFormat:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCurrentSpanX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCurrentSpanY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->invalidate()V

    .line 217
    return-void
.end method

.method private drawCrosshairs(Landroid/graphics/Canvas;)V
    .registers 10

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    .line 106
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mMaxSpanY:I

    int-to-float v0, v0

    rem-float v0, v4, v0

    .line 108
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_13

    .line 109
    sub-float/2addr v4, v0

    :cond_13
    move v6, v7

    .line 112
    :goto_14
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mMaxSpanX:I

    if-le v6, v0, :cond_2e

    .line 120
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    .line 121
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mMaxSpanX:I

    int-to-float v0, v0

    rem-float v0, v4, v0

    .line 123
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_29

    .line 124
    sub-float/2addr v4, v0

    .line 128
    :cond_29
    :goto_29
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mMaxSpanY:I

    if-le v7, v0, :cond_3d

    .line 134
    return-void

    .line 113
    :cond_2e
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellWidth:I

    mul-int/2addr v0, v6

    int-to-float v1, v0

    .line 115
    iget-object v5, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCrosshairsPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 112
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_14

    .line 129
    :cond_3d
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellHeight:I

    mul-int/2addr v0, v7

    int-to-float v3, v0

    .line 131
    iget-object v6, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCrosshairsPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 128
    add-int/lit8 v7, v7, 0x1

    goto :goto_29
.end method

.method private drawSelectedArea(Landroid/graphics/Canvas;)V
    .registers 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedAreaImage:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedAreaRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 97
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedAreaImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 98
    return-void
.end method

.method private drawSelectedCue(Landroid/graphics/Canvas;)V
    .registers 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedLineImage:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedLineRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 138
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedLineImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 139
    return-void
.end method

.method private updateSelectedLineMinMax()V
    .registers 4

    .prologue
    .line 80
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mStartX:I

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedLineMinX:I

    .line 81
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mStartX:I

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellWidth:I

    iget v2, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mMaxSpanX:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedLineMaxX:I

    .line 82
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mStartY:I

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedLineMinY:I

    .line 83
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mStartY:I

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellHeight:I

    iget v2, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mMaxSpanY:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedLineMaxY:I

    .line 84
    return-void
.end method


# virtual methods
.method public getSpanX()I
    .registers 2

    .prologue
    .line 173
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCurrentSpanX:I

    return v0
.end method

.method public getSpanY()I
    .registers 2

    .prologue
    .line 177
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCurrentSpanY:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->drawSelectedArea(Landroid/graphics/Canvas;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->drawCrosshairs(Landroid/graphics/Canvas;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->drawSelectedCue(Landroid/graphics/Canvas;)V

    .line 92
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 93
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 238
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 242
    const v1, 0x3f36db6e

    .line 245
    iget-boolean v2, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mPortrait:Z

    if-eqz v2, :cond_30

    .line 246
    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 247
    mul-float/2addr v1, v0

    .line 253
    :goto_f
    iget v2, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mMaxSpanY:I

    int-to-float v2, v2

    rem-float v2, v1, v2

    .line 254
    iget v3, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mMaxSpanY:I

    int-to-float v3, v3

    rem-float v3, v0, v3

    .line 255
    invoke-static {v2, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_20

    .line 256
    sub-float/2addr v1, v2

    .line 258
    :cond_20
    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_27

    .line 259
    sub-float/2addr v0, v3

    .line 261
    :cond_27
    float-to-int v1, v1

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->setMeasuredDimension(II)V

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mMeasured:Z

    .line 264
    return-void

    .line 249
    :cond_30
    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 250
    div-float v1, v0, v1

    goto :goto_f
.end method

.method protected onSizeChanged(IIII)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 221
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 223
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mMaxSpanX:I

    div-int v0, p1, v0

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellWidth:I

    .line 224
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mMaxSpanY:I

    div-int v0, p2, v0

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellHeight:I

    .line 225
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellWidth:I

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mMaxSpanX:I

    mul-int/2addr v0, v1

    .line 226
    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellHeight:I

    iget v2, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mMaxSpanY:I

    mul-int/2addr v1, v2

    .line 227
    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mStartX:I

    .line 228
    sub-int v0, p2, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mStartY:I

    .line 230
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mDragHandleRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellWidth:I

    iget v2, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellHeight:I

    iget v3, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 232
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->updateSelectedLineMinMax()V

    .line 233
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCurrentSpanX:I

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCurrentSpanY:I

    invoke-virtual {p0, v0, v1}, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->setSpanXY(II)V

    .line 234
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 148
    packed-switch v0, :pswitch_data_34

    .line 169
    :cond_12
    :goto_12
    return v3

    .line 150
    :pswitch_13
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mDragHandleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 151
    iput-boolean v3, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mIsDragging:Z

    goto :goto_12

    .line 155
    :pswitch_1e
    iget-boolean v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mIsDragging:Z

    if-eqz v0, :cond_12

    .line 156
    invoke-direct {p0, v1, v2}, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->changeSelectedArea(II)V

    goto :goto_12

    .line 161
    :pswitch_26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mIsDragging:Z

    .line 162
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedLineRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mSelectedAreaRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 163
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->invalidate()V

    goto :goto_12

    .line 148
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_13
        :pswitch_26
        :pswitch_1e
        :pswitch_26
    .end packed-switch
.end method

.method public setSpanXY(II)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 181
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mMaxSpanX:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 182
    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mMaxSpanY:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 184
    iget-boolean v2, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mMeasured:Z

    if-eqz v2, :cond_29

    .line 185
    iget v2, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mStartX:I

    iget v3, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellWidth:I

    mul-int/2addr v0, v3

    add-int/2addr v0, v2

    .line 186
    iget v2, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mStartY:I

    iget v3, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCellHeight:I

    mul-int/2addr v1, v3

    add-int/2addr v1, v2

    .line 188
    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->changeSelectedArea(II)V

    .line 193
    :goto_28
    return-void

    .line 190
    :cond_29
    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCurrentSpanX:I

    .line 191
    iput v1, p0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->mCurrentSpanY:I

    goto :goto_28
.end method
