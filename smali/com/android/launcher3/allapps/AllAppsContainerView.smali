.class public Lcom/android/launcher3/allapps/AllAppsContainerView;
.super Lcom/android/launcher3/BaseContainerView;
.source "AllAppsContainerView.java"

# interfaces
.implements Lcom/android/launcher3/DragSource;
.implements Lcom/android/launcher3/LauncherTransitionable;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;


# static fields
.field private static final MAX_NUM_MERGES_PHONE:I = 0x2

.field private static final MIN_ROWS_IN_MERGED_SECTION_PHONE:I = 0x3


# instance fields
.field private mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

.field mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

.field mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

.field private final mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

.field mContainerView:Landroid/view/View;

.field mContent:Landroid/view/View;

.field private final mIconLastTouchPos:Landroid/graphics/Point;

.field private mItemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

.field mLauncher:Lcom/android/launcher3/Launcher;

.field private mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mNumAppsPerRow:I

.field private mNumPredictedAppsPerRow:I

.field private mRecyclerViewTopBottomPadding:I

.field mRevealView:Landroid/view/View;

.field private mSearchBarContainerView:Landroid/view/ViewGroup;

.field mSearchBarController:Lcom/android/launcher3/allapps/AllAppsSearchBarController;

.field private mSearchBarView:Landroid/view/View;

.field private mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

.field private mSectionNamesMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    .prologue
    const/4 v1, -0x1

    .line 179
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/BaseContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 164
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    .line 166
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mIconLastTouchPos:Landroid/graphics/Point;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v0, p1

    .line 182
    check-cast v0, Lcom/android/launcher3/Launcher;

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 183
    const v0, 0x7f09004a

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSectionNamesMargin:I

    .line 184
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-direct {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 185
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object v1, p1

    move-object v3, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 186
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    const v1, 0x7f0f0026

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->setEmptySearchText(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 188
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->getLayoutManager()Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 189
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->getItemDecoration()Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mItemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 191
    const v0, 0x7f090055

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 190
    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mRecyclerViewTopBottomPadding:I

    .line 193
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 195
    return-void
.end method

.method private static final addApps_aroundBody2(Lcom/android/launcher3/allapps/AllAppsContainerView;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->addApps(Ljava/util/List;)V

    .line 216
    return-void
.end method

.method private static final addApps_aroundBody3$advice(Lcom/android/launcher3/allapps/AllAppsContainerView;Ljava/util/List;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5

    .prologue
    .line 91
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-nez v0, :cond_9

    .line 92
    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->addApps_aroundBody2(Lcom/android/launcher3/allapps/AllAppsContainerView;Ljava/util/List;)V

    .line 94
    :cond_9
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    .prologue
    const/4 v0, 0x0

    const/4 v8, -0x1

    const/4 v1, 0x1

    .line 572
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 573
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 574
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 576
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_ba

    .line 613
    :cond_1a
    :goto_1a
    :pswitch_1a
    return v0

    .line 578
    :pswitch_1b
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4f

    .line 580
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mContentBounds:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 581
    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v5, v2, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 582
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_48

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1a

    .line 583
    :cond_48
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    move v0, v1

    .line 584
    goto :goto_1a

    .line 588
    :cond_4f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_6e

    .line 589
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1a

    .line 590
    :cond_6e
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    move v0, v1

    .line 591
    goto :goto_1a

    .line 596
    :pswitch_75
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-le v2, v8, :cond_b3

    .line 597
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 598
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 599
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 600
    float-to-double v6, v3

    float-to-double v4, v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v3, v4

    .line 601
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_b3

    .line 603
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 604
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)V

    move v0, v1

    .line 605
    goto/16 :goto_1a

    .line 610
    :cond_b3
    :pswitch_b3
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    invoke-virtual {v1, v8, v8}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_1a

    .line 576
    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_75
        :pswitch_1a
        :pswitch_b3
    .end packed-switch
.end method

.method private static final removeApps_aroundBody6(Lcom/android/launcher3/allapps/AllAppsContainerView;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->removeApps(Ljava/util/List;)V

    .line 230
    return-void
.end method

.method private static final removeApps_aroundBody7$advice(Lcom/android/launcher3/allapps/AllAppsContainerView;Ljava/util/List;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5

    .prologue
    .line 103
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-nez v0, :cond_9

    .line 104
    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->removeApps_aroundBody6(Lcom/android/launcher3/allapps/AllAppsContainerView;Ljava/util/List;)V

    .line 106
    :cond_9
    return-void
.end method

.method private static final setApps_aroundBody0(Lcom/android/launcher3/allapps/AllAppsContainerView;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setApps(Ljava/util/List;)V

    .line 209
    return-void
.end method

.method private static final setApps_aroundBody1$advice(Lcom/android/launcher3/allapps/AllAppsContainerView;Ljava/util/List;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5

    .prologue
    .line 85
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-nez v0, :cond_9

    .line 86
    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setApps_aroundBody0(Lcom/android/launcher3/allapps/AllAppsContainerView;Ljava/util/List;)V

    .line 88
    :cond_9
    return-void
.end method

.method private static final supportsAppInfoDropTarget_aroundBody8(Lcom/android/launcher3/allapps/AllAppsContainerView;)Z
    .registers 2

    .prologue
    .line 487
    const/4 v0, 0x1

    return v0
.end method

.method private static final supportsAppInfoDropTarget_aroundBody9$advice(Lcom/android/launcher3/allapps/AllAppsContainerView;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4

    .prologue
    .line 67
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 68
    const/4 v0, 0x0

    .line 70
    :goto_7
    return v0

    :cond_8
    invoke-static {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->supportsAppInfoDropTarget_aroundBody8(Lcom/android/launcher3/allapps/AllAppsContainerView;)Z

    move-result v0

    goto :goto_7
.end method

.method private static final updateApps_aroundBody4(Lcom/android/launcher3/allapps/AllAppsContainerView;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateApps(Ljava/util/List;)V

    .line 223
    return-void
.end method

.method private static final updateApps_aroundBody5$advice(Lcom/android/launcher3/allapps/AllAppsContainerView;Ljava/util/List;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5

    .prologue
    .line 97
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-nez v0, :cond_9

    .line 98
    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->updateApps_aroundBody4(Lcom/android/launcher3/allapps/AllAppsContainerView;Ljava/util/List;)V

    .line 100
    :cond_9
    return-void
.end method


# virtual methods
.method public addApps(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->aspectOf()Lcom/lge/launcher3/allappsless/AllAppsLessAspect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->addApps_aroundBody3$advice(Lcom/android/launcher3/allapps/AllAppsContainerView;Ljava/util/List;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method

.method public clearSearchResult()V
    .registers 3

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)V

    .line 634
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 635
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 636
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 637
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->isSearchFieldFocused()Z

    move-result v0

    if-nez v0, :cond_40

    .line 423
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_40

    .line 424
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    .line 425
    if-lez v0, :cond_45

    .line 426
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1

    if-nez v1, :cond_45

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v0

    if-nez v0, :cond_45

    .line 425
    const/4 v0, 0x1

    .line 427
    :goto_21
    if-eqz v0, :cond_40

    .line 428
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    .line 429
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 428
    invoke-virtual {v0, p0, v1, v2, p1}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 430
    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_40

    .line 431
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->focusSearchField()V

    .line 436
    :cond_40
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseContainerView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 425
    :cond_45
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mContainerView:Landroid/view/View;

    return-object v0
.end method

.method public getIntrinsicIconScaleFactor()F
    .registers 3

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 498
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    int-to-float v1, v1

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    div-float v0, v1, v0

    return v0
.end method

.method public getRevealView()Landroid/view/View;
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mRevealView:Landroid/view/View;

    return-object v0
.end method

.method public getSearchBarView()Landroid/view/View;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarView:Landroid/view/View;

    return-object v0
.end method

.method public newDefaultAppSearchController()Lcom/android/launcher3/allapps/AllAppsSearchBarController;
    .registers 4

    .prologue
    .line 284
    new-instance v0, Lcom/android/launcher3/allapps/DefaultAppSearchController;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/launcher3/allapps/DefaultAppSearchController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    return-object v0
.end method

.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .registers 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->updateOverlayBounds(Landroid/graphics/Rect;)V

    .line 335
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V
    .registers 11

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 512
    if-nez p3, :cond_17

    if-eqz p4, :cond_17

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    if-eq p1, v0, :cond_1e

    .line 513
    instance-of v0, p1, Lcom/android/launcher3/DeleteDropTarget;

    if-nez v0, :cond_1e

    instance-of v0, p1, Lcom/android/launcher3/Folder;

    if-nez v0, :cond_1e

    .line 516
    :cond_17
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 517
    const/16 v1, 0x12c

    .line 516
    invoke-virtual {v0, v3, v1, v5}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 519
    :cond_1e
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->unlockScreenOrientation(Z)V

    .line 523
    if-nez p4, :cond_54

    .line 525
    instance-of v0, p1, Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_57

    .line 526
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getCurrentWorkspaceScreen()I

    move-result v0

    .line 527
    check-cast p1, Lcom/android/launcher3/Workspace;

    .line 528
    invoke-virtual {p1, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 529
    iget-object v1, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 530
    if-eqz v0, :cond_57

    .line 531
    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->calculateSpans(Lcom/android/launcher3/ItemInfo;)V

    .line 533
    iget v4, v1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v1, v1, Lcom/android/launcher3/ItemInfo;->spanY:I

    invoke-virtual {v0, v5, v4, v1}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v0

    if-eqz v0, :cond_55

    move v0, v2

    .line 536
    :goto_4b
    if-eqz v0, :cond_52

    .line 537
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->showOutOfSpaceMessage(Z)V

    .line 540
    :cond_52
    iput-boolean v2, p2, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 542
    :cond_54
    return-void

    :cond_55
    move v0, v3

    .line 533
    goto :goto_4b

    :cond_57
    move v0, v2

    goto :goto_4b
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 298
    invoke-super {p0}, Lcom/android/launcher3/BaseContainerView;->onFinishInflate()V

    .line 299
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    .line 300
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->setRtl(Z)V

    .line 301
    const v0, 0x7f0e001a

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mContent:Landroid/view/View;

    .line 305
    new-instance v1, Lcom/android/launcher3/allapps/AllAppsContainerView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/AllAppsContainerView$1;-><init>(Lcom/android/launcher3/allapps/AllAppsContainerView;)V

    .line 313
    const v0, 0x7f0e0019

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    .line 314
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 315
    const v0, 0x7f0e001c

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mContainerView:Landroid/view/View;

    .line 316
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 317
    const v0, 0x7f0e001b

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mRevealView:Landroid/view/View;

    .line 320
    const v0, 0x7f0e001d

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 321
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setApps(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    .line 322
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 323
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 324
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setHasFixedSize(Z)V

    .line 325
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mItemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    if-eqz v0, :cond_76

    .line 326
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mItemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 329
    :cond_76
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->updateBackgroundAndPaddings()V

    .line 330
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .registers 5

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    .line 505
    const/16 v2, 0x12c

    const/4 v3, 0x0

    .line 504
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 506
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->unlockScreenOrientation(Z)V

    .line 507
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLauncherTransitionEnd(Lcom/android/launcher3/Launcher;ZZ)V
    .registers 5

    .prologue
    .line 561
    if-eqz p3, :cond_7

    .line 563
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->reset()V

    .line 565
    :cond_7
    return-void
.end method

.method public onLauncherTransitionPrepare(Lcom/android/launcher3/Launcher;ZZ)V
    .registers 4

    .prologue
    .line 547
    return-void
.end method

.method public onLauncherTransitionStart(Lcom/android/launcher3/Launcher;ZZ)V
    .registers 4

    .prologue
    .line 552
    return-void
.end method

.method public onLauncherTransitionStep(Lcom/android/launcher3/Launcher;F)V
    .registers 3

    .prologue
    .line 557
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 465
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_8

    .line 477
    :cond_7
    :goto_7
    return v2

    .line 467
    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsViewVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 468
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-nez v0, :cond_7

    .line 470
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 473
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mIconLastTouchPos:Landroid/graphics/Point;

    invoke-virtual {v0, p1, v1, p0, v2}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Landroid/graphics/Point;Lcom/android/launcher3/DragSource;Z)V

    .line 475
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->enterSpringLoadedDragMode()V

    goto :goto_7
.end method

.method protected onMeasure(II)V
    .registers 8

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 342
    :goto_e
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 343
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/DeviceProfile;->updateAppsViewNumCols(Landroid/content/res/Resources;I)V

    .line 344
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mNumAppsPerRow:I

    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->allAppsNumCols:I

    if-ne v0, v2, :cond_27

    .line 345
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mNumPredictedAppsPerRow:I

    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->allAppsNumPredictiveCols:I

    if-eq v0, v2, :cond_56

    .line 346
    :cond_27
    iget v0, v1, Lcom/android/launcher3/DeviceProfile;->allAppsNumCols:I

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mNumAppsPerRow:I

    .line 347
    iget v0, v1, Lcom/android/launcher3/DeviceProfile;->allAppsNumPredictiveCols:I

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mNumPredictedAppsPerRow:I

    .line 351
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSectionNamesMargin:I

    if-eqz v0, :cond_5f

    iget-boolean v0, v1, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    if-eqz v0, :cond_5f

    const/4 v0, 0x0

    .line 352
    :goto_38
    if-eqz v0, :cond_61

    .line 353
    new-instance v0, Lcom/android/launcher3/allapps/FullMergeAlgorithm;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/FullMergeAlgorithm;-><init>()V

    .line 357
    :goto_3f
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget v3, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mNumAppsPerRow:I

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setNumAppsPerRow(Lcom/android/launcher3/DeviceProfile;I)V

    .line 358
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mNumAppsPerRow:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->setNumAppsPerRow(I)V

    .line 359
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mNumAppsPerRow:I

    iget v3, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mNumPredictedAppsPerRow:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setNumAppsPerRow(IILcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;)V

    .line 362
    :cond_56
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BaseContainerView;->onMeasure(II)V

    .line 363
    return-void

    .line 341
    :cond_5a
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_e

    .line 351
    :cond_5f
    const/4 v0, 0x1

    goto :goto_38

    .line 354
    :cond_61
    new-instance v0, Lcom/android/launcher3/allapps/SimpleSectionMergeAlgorithm;

    iget v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mNumAppsPerRow:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 355
    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 354
    invoke-direct {v0, v2, v3, v4}, Lcom/android/launcher3/allapps/SimpleSectionMergeAlgorithm;-><init>(III)V

    goto :goto_3f
.end method

.method public onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 618
    if-eqz p2, :cond_27

    .line 619
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 620
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 621
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->setEmptySearchText(Ljava/lang/String;)V

    .line 625
    :goto_22
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)V

    .line 627
    :cond_27
    return-void

    .line 623
    :cond_28
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->scrollToTop()V

    goto :goto_22
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 453
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 459
    :goto_7
    :pswitch_7
    const/4 v0, 0x0

    return v0

    .line 456
    :pswitch_9
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mIconLastTouchPos:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_7

    .line 453
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onUpdateBackgroundAndPaddings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 372
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v6

    .line 375
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    .line 376
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p2, Landroid/graphics/Rect;->left:I

    .line 377
    iget v4, p2, Landroid/graphics/Rect;->right:I

    move v5, v3

    .line 375
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 378
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 379
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 380
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mContainerView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 381
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mRevealView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 382
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->updateBackgroundPadding(Landroid/graphics/Rect;)V

    .line 383
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->updateBackgroundPadding(Landroid/graphics/Rect;)V

    .line 388
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mContent:Landroid/view/View;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 389
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mContainerView:Landroid/view/View;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 393
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSectionNamesMargin:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getMaxScrollbarWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 394
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mRecyclerViewTopBottomPadding:I

    .line 395
    if-eqz v6, :cond_b4

    .line 396
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getMaxScrollbarWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 397
    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v4

    .line 396
    invoke-virtual {v2, v3, v1, v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setPadding(IIII)V

    .line 404
    :goto_71
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarView:Landroid/view/View;

    if-eqz v0, :cond_b3

    .line 405
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 406
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_8b

    .line 407
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 410
    :cond_8b
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 409
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 411
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 412
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 413
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getMeasuredWidth()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 414
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 416
    :cond_b3
    return-void

    .line 399
    :cond_b4
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget v3, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    .line 400
    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getMaxScrollbarWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 399
    invoke-virtual {v2, v0, v1, v3, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setPadding(IIII)V

    goto :goto_71
.end method

.method public removeApps(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->aspectOf()Lcom/lge/launcher3/allappsless/AllAppsLessAspect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->removeApps_aroundBody7$advice(Lcom/android/launcher3/allapps/AllAppsContainerView;Ljava/util/List;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method

.method public scrollToTop()V
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->scrollToTop()V

    .line 257
    return-void
.end method

.method public setApps(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->aspectOf()Lcom/lge/launcher3/allappsless/AllAppsLessAspect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setApps_aroundBody1$advice(Lcom/android/launcher3/allapps/AllAppsContainerView;Ljava/util/List;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method

.method public setPredictedApps(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setPredictedApps(Ljava/util/List;)V

    .line 202
    return-void
.end method

.method public setSearchBarController(Lcom/android/launcher3/allapps/AllAppsSearchBarController;)V
    .registers 5

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    if-eqz v0, :cond_c

    .line 237
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected search bar controller to only be set once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_c
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    .line 240
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->initialize(Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;)V

    .line 243
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->getView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 245
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 246
    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarView:Landroid/view/View;

    .line 247
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setHasSearchBar()V

    .line 249
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->updateBackgroundAndPaddings()V

    .line 250
    return-void
.end method

.method public startAppsSearch()V
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    if-eqz v0, :cond_9

    .line 292
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->focusSearchField()V

    .line 294
    :cond_9
    return-void
.end method

.method public supportsAppInfoDropTarget()Z
    .registers 3

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->aspectOf()Lcom/lge/launcher3/allappsless/AllAppsLessAspect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->supportsAppInfoDropTarget_aroundBody9$advice(Lcom/android/launcher3/allapps/AllAppsContainerView;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    return v0
.end method

.method public supportsDeleteDropTarget()Z
    .registers 2

    .prologue
    .line 492
    const/4 v0, 0x0

    return v0
.end method

.method public supportsFlingToDelete()Z
    .registers 2

    .prologue
    .line 482
    const/4 v0, 0x1

    return v0
.end method

.method public updateApps(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->aspectOf()Lcom/lge/launcher3/allappsless/AllAppsLessAspect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->updateApps_aroundBody5$advice(Lcom/android/launcher3/allapps/AllAppsContainerView;Ljava/util/List;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method
