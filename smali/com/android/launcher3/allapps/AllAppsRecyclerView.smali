.class public Lcom/android/launcher3/allapps/AllAppsRecyclerView;
.super Lcom/android/launcher3/BaseRecyclerView;
.source "AllAppsRecyclerView.java"

# interfaces
.implements Lcom/android/launcher3/Stats$LaunchSourceProvider;


# static fields
.field private static final FAST_SCROLL_BAR_MODE_DISTRIBUTE_BY_ROW:I = 0x0

.field private static final FAST_SCROLL_BAR_MODE_DISTRIBUTE_BY_SECTIONS:I = 0x1

.field private static final FAST_SCROLL_MODE_FREE_SCROLL:I = 0x1

.field private static final FAST_SCROLL_MODE_JUMP_TO_FIRST_ICON:I


# instance fields
.field private mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

.field mFastScrollFrameIndex:I

.field final mFastScrollFrames:[I

.field private final mFastScrollMode:I

.field mLastFastScrollFocusedView:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;

.field private mNumAppsPerRow:I

.field mPrevFastScrollFocusedPosition:I

.field private final mScrollBarMode:I

.field private mScrollPosState:Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;

.field mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollFrames:[I

    .line 55
    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollMode:I

    .line 56
    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollBarMode:I

    .line 58
    new-instance v0, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;

    invoke-direct {v0}, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollPosState:Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;

    .line 241
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;-><init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    .line 75
    return-void
.end method

.method private getCurScrollState(Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 288
    iput v6, p1, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    .line 289
    iput v6, p1, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;->rowTopOffset:I

    .line 290
    iput v6, p1, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    .line 293
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    if-nez v0, :cond_12

    .line 312
    :cond_11
    :goto_11
    return-void

    .line 297
    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildCount()I

    move-result v2

    .line 298
    const/4 v0, 0x0

    move v1, v0

    :goto_18
    if-ge v1, v2, :cond_11

    .line 299
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 300
    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    .line 301
    if-eq v0, v6, :cond_49

    .line 302
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 303
    iget v4, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_34

    .line 304
    iget v4, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_49

    .line 305
    :cond_34
    iget v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    iput v0, p1, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    .line 306
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;->rowTopOffset:I

    .line 307
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    goto :goto_11

    .line 298
    :cond_49
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_18
.end method

.method private getScrollAtPosition(II)I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 319
    iget v2, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_17

    .line 320
    iget v2, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 321
    :cond_17
    iget v2, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    if-lez v2, :cond_1f

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingTop()I

    move-result v1

    .line 322
    :cond_1f
    iget v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    mul-int/2addr v0, p2

    add-int/2addr v1, v0

    .line 324
    :cond_23
    return v1
.end method

.method private smoothSnapToPosition(ILcom/android/launcher3/BaseRecyclerView$ScrollPositionState;)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 267
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 271
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingTop()I

    move-result v0

    .line 272
    iget v2, p2, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    iget v3, p2, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    mul-int/2addr v2, v3

    .line 271
    add-int/2addr v0, v2

    .line 272
    iget v2, p2, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;->rowTopOffset:I

    .line 271
    sub-int v2, v0, v2

    .line 273
    iget v0, p2, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollAtPosition(II)I

    move-result v3

    .line 274
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollFrames:[I

    array-length v4, v0

    move v0, v1

    .line 275
    :goto_1e
    if-lt v0, v4, :cond_28

    .line 279
    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollFrameIndex:I

    .line 280
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 281
    return-void

    .line 277
    :cond_28
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollFrames:[I

    sub-int v6, v3, v2

    div-int/2addr v6, v4

    aput v6, v5, v0

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 112
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 113
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 111
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 114
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseRecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 115
    return-void
.end method

.method public fillInLaunchSourceData(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 127
    const-string v0, "container"

    const-string v1, "all_apps"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 129
    const-string v0, "sub_container"

    .line 130
    const-string v1, "search"

    .line 129
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_16
    return-void

    .line 132
    :cond_17
    const-string v0, "sub_container"

    .line 133
    const-string v1, "a-z"

    .line 132
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method public onFastScrollCompleted()V
    .registers 4

    .prologue
    .line 204
    invoke-super {p0}, Lcom/android/launcher3/BaseRecyclerView;->onFastScrollCompleted()V

    .line 206
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mLastFastScrollFocusedView:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;

    if-eqz v0, :cond_11

    .line 207
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mLastFastScrollFocusedView:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;->setFastScrollFocused(ZZ)V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mLastFastScrollFocusedView:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;

    .line 210
    :cond_11
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mPrevFastScrollFocusedPosition:I

    .line 211
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 119
    invoke-super {p0}, Lcom/android/launcher3/BaseRecyclerView;->onFinishInflate()V

    .line 122
    invoke-virtual {p0, p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 123
    return-void
.end method

.method public onUpdateScrollbar()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 218
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    .line 221
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    if-nez v1, :cond_17

    .line 222
    :cond_11
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0, v3, v3}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->setScrollbarThumbOffset(II)V

    .line 235
    :goto_16
    return-void

    .line 227
    :cond_17
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getNumAppRows()I

    move-result v1

    .line 228
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollPosState:Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;

    invoke-direct {p0, v2, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurScrollState(Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;Ljava/util/List;)V

    .line 229
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollPosState:Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;

    iget v0, v0, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    if-gez v0, :cond_2e

    .line 230
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0, v3, v3}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->setScrollbarThumbOffset(II)V

    goto :goto_16

    .line 234
    :cond_2e
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollPosState:Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->synchronizeScrollBarThumbOffsetToViewScroll(Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;II)V

    goto :goto_16
.end method

.method public scrollToPositionAtProgress(F)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 142
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getNumAppRows()I

    move-result v4

    .line 143
    if-nez v4, :cond_d

    .line 144
    const-string v0, ""

    .line 199
    :goto_c
    return-object v0

    .line 148
    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->stopScroll()V

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v5

    .line 153
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    move v1, v2

    move-object v3, v0

    .line 155
    :goto_1e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_60

    .line 169
    :cond_24
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollPosState:Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurScrollState(Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;Ljava/util/List;)V

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollPosState:Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;

    iget v0, v0, Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    invoke-virtual {p0, v4, v0, v7}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAvailableScrollHeight(III)I

    .line 171
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 176
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mPrevFastScrollFocusedPosition:I

    iget-object v1, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v1, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    if-eq v0, v1, :cond_5d

    .line 177
    iget-object v0, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mPrevFastScrollFocusedPosition:I

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mLastFastScrollFocusedView:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;

    if-eqz v0, :cond_56

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mLastFastScrollFocusedView:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;

    invoke-interface {v0, v7, v2}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;->setFastScrollFocused(ZZ)V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mLastFastScrollFocusedView:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;

    .line 186
    :cond_56
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mPrevFastScrollFocusedPosition:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollPosState:Lcom/android/launcher3/BaseRecyclerView$ScrollPositionState;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->smoothSnapToPosition(ILcom/android/launcher3/BaseRecyclerView$ScrollPositionState;)V

    .line 199
    :cond_5d
    iget-object v0, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    goto :goto_c

    .line 156
    :cond_60
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .line 157
    iget v6, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    cmpl-float v6, v6, p1

    if-gtz v6, :cond_24

    .line 155
    add-int/lit8 v1, v1, 0x1

    move-object v3, v0

    goto :goto_1e
.end method

.method public scrollToTop()V
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->scrollToPosition(I)V

    .line 103
    return-void
.end method

.method public setApps(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 82
    return-void
.end method

.method public setNumAppsPerRow(Lcom/android/launcher3/DeviceProfile;I)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 88
    iput p2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    .line 90
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    .line 91
    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v2, p1, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    div-int/2addr v1, v2

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 92
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 93
    iget v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    mul-int/2addr v2, v1

    invoke-virtual {v0, v4, v2}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 94
    const/4 v2, 0x2

    iget v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 95
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 96
    return-void
.end method
