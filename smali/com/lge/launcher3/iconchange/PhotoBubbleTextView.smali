.class public Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;
.super Lcom/android/launcher3/BubbleTextView;
.source "PhotoBubbleTextView.java"


# instance fields
.field private final NOT_INITIALIZED:I

.field private mIconHeight:I

.field private mIconWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 20
    invoke-direct {p0, p1}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;)V

    .line 15
    iput v0, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->NOT_INITIALIZED:I

    .line 16
    iput v0, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->mIconWidth:I

    .line 17
    iput v0, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->mIconHeight:I

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    const/4 v0, -0x1

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput v0, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->NOT_INITIALIZED:I

    .line 16
    iput v0, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->mIconWidth:I

    .line 17
    iput v0, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->mIconHeight:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    iput v0, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->NOT_INITIALIZED:I

    .line 16
    iput v0, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->mIconWidth:I

    .line 17
    iput v0, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->mIconHeight:I

    .line 29
    return-void
.end method

.method private fit(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 53
    if-nez p1, :cond_7

    move-object p1, v2

    .line 96
    :cond_6
    :goto_6
    return-object p1

    .line 57
    :cond_7
    iget v0, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->mIconWidth:I

    if-ne v0, v3, :cond_f

    iget v0, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->mIconHeight:I

    if-eq v0, v3, :cond_6

    .line 61
    :cond_f
    iget v0, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->mIconWidth:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v0, v3, :cond_1f

    iget v0, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->mIconHeight:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v0, v3, :cond_6

    :cond_1f
    move-object v0, p1

    .line 65
    check-cast v0, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-virtual {v0}, Lcom/android/launcher3/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    if-nez v0, :cond_2a

    move-object p1, v2

    .line 67
    goto :goto_6

    .line 70
    :cond_2a
    iget v2, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->mIconWidth:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 71
    iget v3, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->mIconHeight:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 73
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 74
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 75
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 77
    const/4 v4, 0x1

    invoke-static {v0, v3, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 81
    iget v0, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->mIconWidth:I

    if-ge v3, v0, :cond_71

    .line 82
    iput v3, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->mIconWidth:I

    move v0, v1

    .line 87
    :goto_5a
    iget v3, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->mIconHeight:I

    if-ge v2, v3, :cond_78

    .line 88
    iput v2, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->mIconHeight:I

    .line 93
    :goto_60
    iget v2, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->mIconWidth:I

    iget v3, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->mIconHeight:I

    invoke-static {v4, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 94
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 96
    new-instance p1, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-direct {p1, v0}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 85
    :cond_71
    iget v0, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->mIconWidth:I

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_5a

    .line 91
    :cond_78
    iget v1, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->mIconHeight:I

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    goto :goto_60
.end method

.method private initIconDimensions(II)V
    .registers 5

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 42
    if-nez v0, :cond_a

    .line 50
    :goto_9
    return-void

    .line 46
    :cond_a
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    const v1, 0x7f0900c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 48
    mul-int/lit8 v1, v0, 0x2

    sub-int v1, p1, v1

    iput v1, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->mIconWidth:I

    .line 49
    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iput v0, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->mIconHeight:I

    goto :goto_9
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .registers 8

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 33
    iget v0, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->mIconWidth:I

    if-ne v0, v1, :cond_17

    iget v0, p0, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->mIconHeight:I

    if-ne v0, v1, :cond_17

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->initIconDimensions(II)V

    .line 36
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 35
    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 38
    :cond_17
    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .registers 4

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 127
    const v1, 0x7f0900cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 128
    invoke-super {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 129
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    .prologue
    .line 102
    invoke-direct {p0, p2}, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->fit(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 103
    invoke-super {p0, p1, v0, p3, p4}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 104
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    .prologue
    .line 109
    invoke-direct {p0, p2}, Lcom/lge/launcher3/iconchange/PhotoBubbleTextView;->fit(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 110
    invoke-super {p0, p1, v0, p3, p4}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 111
    return-void
.end method

.method public setPhotoIconTextColor(I)V
    .registers 2

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setTextColor(I)V

    .line 120
    return-void
.end method

.method public setTextColor(I)V
    .registers 2

    .prologue
    .line 115
    return-void
.end method
