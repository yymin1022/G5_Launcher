.class public Lcom/lge/launcher3/smartbulletin/dslv/SBDragSortListView;
.super Lcom/mobeta/android/dslv/DragSortListView;
.source "SBDragSortListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-direct {p0, p2}, Lcom/lge/launcher3/smartbulletin/dslv/SBDragSortListView;->setAttribute(Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method private setAttribute(Landroid/util/AttributeSet;)V
    .registers 15

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 22
    const/16 v2, 0x96

    .line 26
    if-eqz p1, :cond_f1

    .line 27
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/dslv/SBDragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/lge/launcher3/R$styleable;->DragSortListView:[I

    invoke-virtual {v0, p1, v3, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 30
    invoke-virtual {v9, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 29
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/smartbulletin/dslv/SBDragSortListView;->mItemHeightCollapsed:I

    .line 32
    const/4 v0, 0x5

    invoke-virtual {v9, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/dslv/SBDragSortListView;->mTrackDragSort:Z

    .line 34
    iget-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/dslv/SBDragSortListView;->mTrackDragSort:Z

    if-eqz v0, :cond_2f

    .line 35
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    invoke-direct {v0, p0}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/dslv/SBDragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    .line 39
    :cond_2f
    const/4 v0, 0x6

    iget v3, p0, Lcom/lge/launcher3/smartbulletin/dslv/SBDragSortListView;->mFloatAlpha:F

    invoke-virtual {v9, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/smartbulletin/dslv/SBDragSortListView;->mFloatAlpha:F

    .line 40
    iget v0, p0, Lcom/lge/launcher3/smartbulletin/dslv/SBDragSortListView;->mFloatAlpha:F

    iput v0, p0, Lcom/lge/launcher3/smartbulletin/dslv/SBDragSortListView;->mCurrFloatAlpha:F

    .line 42
    const/16 v0, 0xa

    iget-boolean v3, p0, Lcom/lge/launcher3/smartbulletin/dslv/SBDragSortListView;->mDragEnabled:Z

    invoke-virtual {v9, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/dslv/SBDragSortListView;->mDragEnabled:Z

    .line 45
    const/4 v0, 0x7

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-virtual {v9, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    sub-float v0, v6, v0

    .line 44
    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/smartbulletin/dslv/SBDragSortListView;->mSlideRegionFrac:F

    .line 47
    iget v0, p0, Lcom/lge/launcher3/smartbulletin/dslv/SBDragSortListView;->mSlideRegionFrac:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_ee

    move v0, v1

    :goto_60
    iput-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/dslv/SBDragSortListView;->mAnimate:Z

    .line 49
    iget v0, p0, Lcom/lge/launcher3/smartbulletin/dslv/SBDragSortListView;->mDragUpScrollStartFrac:F

    invoke-virtual {v9, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/dslv/SBDragSortListView;->setDragScrollStart(F)V

    .line 53
    const/4 v0, 0x2

    iget v3, p0, Lcom/lge/launcher3/smartbulletin/dslv/SBDragSortListView;->mMaxScrollSpeed:F

    invoke-virtual {v9, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/smartbulletin/dslv/SBDragSortListView;->mMaxScrollSpeed:F

    .line 55
    const/16 v0, 0x8

    invoke-virtual {v9, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 57
    const/16 v0, 0x9

    invoke-virtual {v9, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 59
    const/16 v0, 0x11

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 61
    if-eqz v0, :cond_d4

    .line 62
    const/16 v0, 0xc

    invoke-virtual {v9, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 63
    const/4 v0, 0x4

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 65
    const/16 v0, 0xb

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 66
    const/16 v0, 0xd

    invoke-virtual {v9, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 68
    const/16 v0, 0xe

    invoke-virtual {v9, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 70
    const/16 v0, 0xf

    invoke-virtual {v9, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 72
    const/16 v0, 0x10

    invoke-virtual {v9, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 73
    const/4 v0, 0x3

    .line 74
    const/high16 v1, -0x1000000

    .line 73
    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 76
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/dslv/SBDragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/DDTUtils;->getColorAccentType2FromTheme(Landroid/content/Context;I)I

    move-result v12

    .line 77
    new-instance v0, Lcom/mobeta/android/dslv/DragSortController;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;IIIII)V

    .line 79
    invoke-virtual {v0, v10}, Lcom/mobeta/android/dslv/DragSortController;->setRemoveEnabled(Z)V

    .line 80
    invoke-virtual {v0, v11}, Lcom/mobeta/android/dslv/DragSortController;->setSortEnabled(Z)V

    .line 81
    invoke-virtual {v0, v12}, Lcom/mobeta/android/dslv/DragSortController;->setBackgroundColor(I)V

    .line 82
    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/dslv/SBDragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    .line 83
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/dslv/SBDragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 86
    :cond_d4
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    move v0, v7

    move v2, v8

    .line 88
    :goto_d9
    const/high16 v1, 0x3f000000    # 0.5f

    .line 89
    if-lez v2, :cond_e4

    .line 90
    new-instance v3, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;

    invoke-direct {v3, p0, v1, v2}, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;-><init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V

    iput-object v3, p0, Lcom/lge/launcher3/smartbulletin/dslv/SBDragSortListView;->mRemoveAnimator:Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;

    .line 92
    :cond_e4
    if-lez v0, :cond_ed

    .line 93
    new-instance v2, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

    invoke-direct {v2, p0, v1, v0}, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;-><init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V

    iput-object v2, p0, Lcom/lge/launcher3/smartbulletin/dslv/SBDragSortListView;->mDropAnimator:Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

    .line 95
    :cond_ed
    return-void

    :cond_ee
    move v0, v5

    .line 47
    goto/16 :goto_60

    :cond_f1
    move v0, v2

    goto :goto_d9
.end method
