.class public Lcom/android/launcher3/widget/WidgetsRecyclerView;
.super Lcom/android/launcher3/BaseRecyclerView;
.source "WidgetsRecyclerView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetsRecyclerView"


# instance fields
.field private mScrollPosState:Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;

.field private mWidgets:Lcom/android/launcher3/model/WidgetsModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;

    invoke-direct {v0}, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mScrollPosState:Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/WidgetsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method private getCurScrollState(Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;)V
    .registers 4

    .prologue
    const/4 v0, -0x1

    .line 141
    iput v0, p1, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    .line 142
    iput v0, p1, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;->rowTopOffset:I

    .line 143
    iput v0, p1, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mWidgets:Lcom/android/launcher3/model/WidgetsModel;

    invoke-virtual {v0}, Lcom/android/launcher3/model/WidgetsModel;->getPackageSize()I

    move-result v0

    .line 148
    if-nez v0, :cond_10

    .line 157
    :goto_f
    return-void

    .line 151
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 152
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v1

    .line 154
    iput v1, p1, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    .line 155
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    iput v1, p1, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;->rowTopOffset:I

    .line 156
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    goto :goto_f
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 85
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 86
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 84
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 87
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseRecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 88
    return-void
.end method

.method public getFastScrollerThumbInactiveColor(I)I
    .registers 4

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getFastScrollerTrackColor(I)I
    .registers 3

    .prologue
    .line 64
    const/4 v0, -0x1

    return v0
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/launcher3/BaseRecyclerView;->onFinishInflate()V

    .line 60
    invoke-virtual {p0, p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 61
    return-void
.end method

.method public onUpdateScrollbar()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mWidgets:Lcom/android/launcher3/model/WidgetsModel;

    invoke-virtual {v0}, Lcom/android/launcher3/model/WidgetsModel;->getPackageSize()I

    move-result v0

    .line 122
    if-nez v0, :cond_f

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0, v2, v2}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->setScrollbarThumbOffset(II)V

    .line 135
    :goto_e
    return-void

    .line 128
    :cond_f
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mScrollPosState:Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;

    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getCurScrollState(Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;)V

    .line 129
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mScrollPosState:Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;

    iget v1, v1, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    if-gez v1, :cond_20

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0, v2, v2}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->setScrollbarThumbOffset(II)V

    goto :goto_e

    .line 134
    :cond_20
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mScrollPosState:Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->synchronizeScrollBarThumbOffsetToViewScroll(Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;II)V

    goto :goto_e
.end method

.method public scrollToPositionAtProgress(F)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mWidgets:Lcom/android/launcher3/model/WidgetsModel;

    invoke-virtual {v0}, Lcom/android/launcher3/model/WidgetsModel;->getPackageSize()I

    move-result v0

    .line 96
    if-nez v0, :cond_e

    .line 97
    const-string v0, ""

    .line 111
    :goto_d
    return-object v0

    .line 101
    :cond_e
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->stopScroll()V

    .line 103
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mScrollPosState:Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;

    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getCurScrollState(Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;)V

    .line 104
    int-to-float v1, v0

    mul-float/2addr v1, p1

    .line 105
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mScrollPosState:Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;

    iget v2, v2, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    invoke-virtual {p0, v0, v2, v4}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getAvailableScrollHeight(III)I

    move-result v2

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 107
    int-to-float v2, v2

    mul-float/2addr v2, p1

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {v0, v4, v2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 109
    cmpl-float v0, p1, v3

    if-nez v0, :cond_3d

    sub-float v0, v1, v3

    :goto_33
    float-to-int v0, v0

    .line 110
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mWidgets:Lcom/android/launcher3/model/WidgetsModel;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/model/WidgetsModel;->getPackageItemInfo(I)Lcom/android/launcher3/model/PackageItemInfo;

    move-result-object v0

    .line 111
    iget-object v0, v0, Lcom/android/launcher3/model/PackageItemInfo;->titleSectionName:Ljava/lang/String;

    goto :goto_d

    :cond_3d
    move v0, v1

    .line 109
    goto :goto_33
.end method

.method public setWidgets(Lcom/android/launcher3/model/WidgetsModel;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mWidgets:Lcom/android/launcher3/model/WidgetsModel;

    .line 76
    return-void
.end method
