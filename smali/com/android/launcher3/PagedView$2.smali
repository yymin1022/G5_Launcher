.class Lcom/android/launcher3/PagedView$2;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/PagedView;

.field private final synthetic val$dragViewIndex:I

.field private final synthetic val$pageUnderPointIndex:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/PagedView;II)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iput p2, p0, Lcom/android/launcher3/PagedView$2;->val$pageUnderPointIndex:I

    iput p3, p0, Lcom/android/launcher3/PagedView$2;->val$dragViewIndex:I

    .line 1787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v11, 0x0

    .line 1790
    iget-object v0, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    invoke-virtual {v0, v11}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView$LayoutParams;

    .line 1791
    iget v1, p0, Lcom/android/launcher3/PagedView$2;->val$pageUnderPointIndex:I

    if-nez v1, :cond_18

    iget-boolean v0, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v0, :cond_18

    .line 1835
    :cond_17
    :goto_17
    return-void

    .line 1795
    :cond_18
    iget-object v0, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iget v1, p0, Lcom/android/launcher3/PagedView$2;->val$pageUnderPointIndex:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 1800
    iget v0, p0, Lcom/android/launcher3/PagedView$2;->val$dragViewIndex:I

    iget v1, p0, Lcom/android/launcher3/PagedView$2;->val$pageUnderPointIndex:I

    if-ge v0, v1, :cond_69

    move v1, v2

    .line 1801
    :goto_26
    iget v0, p0, Lcom/android/launcher3/PagedView$2;->val$dragViewIndex:I

    iget v4, p0, Lcom/android/launcher3/PagedView$2;->val$pageUnderPointIndex:I

    if-ge v0, v4, :cond_6b

    .line 1802
    iget v0, p0, Lcom/android/launcher3/PagedView$2;->val$dragViewIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 1803
    :goto_30
    iget v4, p0, Lcom/android/launcher3/PagedView$2;->val$dragViewIndex:I

    iget v5, p0, Lcom/android/launcher3/PagedView$2;->val$pageUnderPointIndex:I

    if-le v4, v5, :cond_6e

    .line 1804
    iget v4, p0, Lcom/android/launcher3/PagedView$2;->val$dragViewIndex:I

    add-int/lit8 v4, v4, -0x1

    :goto_3a
    move v5, v0

    .line 1805
    :goto_3b
    if-le v5, v4, :cond_71

    .line 1829
    iget-object v0, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iget-object v1, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iget-object v1, v1, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->removeView(Landroid/view/View;)V

    .line 1830
    iget-object v0, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iget-object v1, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iget-object v1, v1, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    iget v3, p0, Lcom/android/launcher3/PagedView$2;->val$pageUnderPointIndex:I

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/PagedView;->addView(Landroid/view/View;I)V

    .line 1831
    iget-object v0, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iput v2, v0, Lcom/android/launcher3/PagedView;->mSidePageHoverIndex:I

    .line 1832
    iget-object v0, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iget-object v0, v0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    if-eqz v0, :cond_17

    .line 1833
    iget-object v0, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iget-object v0, v0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/PageIndicator;

    iget-object v1, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PageIndicator;->setActiveMarker(I)V

    goto :goto_17

    :cond_69
    move v1, v3

    .line 1800
    goto :goto_26

    .line 1802
    :cond_6b
    iget v0, p0, Lcom/android/launcher3/PagedView$2;->val$pageUnderPointIndex:I

    goto :goto_30

    .line 1804
    :cond_6e
    iget v4, p0, Lcom/android/launcher3/PagedView$2;->val$pageUnderPointIndex:I

    goto :goto_3a

    .line 1806
    :cond_71
    iget-object v0, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1810
    iget-object v0, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v0

    iget-object v7, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    invoke-virtual {v7, v5}, Lcom/android/launcher3/PagedView;->getChildOffset(I)I

    move-result v7

    add-int/2addr v7, v0

    .line 1811
    iget-object v0, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v0

    iget-object v8, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    add-int v9, v5, v1

    invoke-virtual {v8, v9}, Lcom/android/launcher3/PagedView;->getChildOffset(I)I

    move-result v8

    add-int/2addr v8, v0

    .line 1815
    const/16 v0, 0x64

    invoke-virtual {v6, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 1816
    if-eqz v0, :cond_a0

    .line 1817
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1820
    :cond_a0
    sub-int v0, v7, v8

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1821
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1822
    sget v7, Lcom/android/launcher3/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v8, v7

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1823
    new-array v7, v3, [Landroid/animation/Animator;

    .line 1824
    const-string v8, "translationX"

    new-array v9, v3, [F

    const/4 v10, 0x0

    aput v10, v9, v11

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v11

    .line 1823
    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1825
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1826
    invoke-virtual {v6, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1805
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_3b
.end method
