.class Lcom/mobeta/android/dslv/DragSortListView$DragScroller;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragScroller"
.end annotation


# static fields
.field public static final DOWN:I = 0x1

.field public static final STOP:I = -0x1

.field public static final UP:I


# instance fields
.field private dt:F

.field private dy:I

.field private mAbort:Z

.field private mCurrTime:J

.field private mFirstFooter:I

.field private mLastHeader:I

.field private mPrevTime:J

.field private mScrollSpeed:F

.field private mScrolling:Z

.field private scrollDir:I

.field private tStart:J

.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;)V
    .registers 3

    .prologue
    .line 2730
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2717
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2731
    return-void
.end method


# virtual methods
.method public getScrollDir()I
    .registers 2

    .prologue
    .line 2727
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->scrollDir:I

    :goto_6
    return v0

    :cond_7
    const/4 v0, -0x1

    goto :goto_6
.end method

.method public isScrolling()Z
    .registers 2

    .prologue
    .line 2723
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return v0
.end method

.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 2758
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mAbort:Z

    if-eqz v0, :cond_8

    .line 2759
    iput-boolean v10, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2844
    :goto_7
    return-void

    .line 2765
    :cond_8
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2766
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v0

    .line 2767
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v3

    .line 2768
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v2

    .line 2769
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v4}, Lcom/mobeta/android/dslv/DragSortListView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v5}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 2771
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v5}, Lcom/mobeta/android/dslv/DragSortListView;->access$6(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v5

    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v6}, Lcom/mobeta/android/dslv/DragSortListView;->access$21(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v6

    iget-object v7, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v7}, Lcom/mobeta/android/dslv/DragSortListView;->access$2(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2772
    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v6}, Lcom/mobeta/android/dslv/DragSortListView;->access$6(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v6

    iget-object v7, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v7}, Lcom/mobeta/android/dslv/DragSortListView;->access$21(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v7

    iget-object v8, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v8}, Lcom/mobeta/android/dslv/DragSortListView;->access$2(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2774
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->scrollDir:I

    if-nez v7, :cond_f8

    .line 2775
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v3, v10}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2777
    if-nez v3, :cond_6b

    .line 2778
    iput-boolean v10, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    goto :goto_7

    .line 2781
    :cond_6b
    if-nez v1, :cond_76

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ne v3, v2, :cond_76

    .line 2782
    iput-boolean v10, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    goto :goto_7

    .line 2786
    :cond_76
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v3}, Lcom/mobeta/android/dslv/DragSortListView;->access$22(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    move-result-object v3

    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v5}, Lcom/mobeta/android/dslv/DragSortListView;->access$23(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v5

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 2787
    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v6}, Lcom/mobeta/android/dslv/DragSortListView;->access$24(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v6

    div-float/2addr v5, v6

    iget-wide v6, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 2786
    invoke-interface {v3, v5, v6, v7}, Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v3

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    .line 2803
    :goto_93
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mCurrTime:J

    .line 2804
    iget-wide v6, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mCurrTime:J

    iget-wide v8, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mPrevTime:J

    sub-long/2addr v6, v8

    long-to-float v3, v6

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->dt:F

    .line 2810
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->dt:F

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    .line 2813
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    if-ltz v3, :cond_136

    .line 2814
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    move v0, v1

    .line 2821
    :goto_b9
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    sub-int v1, v0, v1

    invoke-virtual {v3, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2822
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    add-int/2addr v1, v4

    .line 2824
    if-nez v0, :cond_cd

    if-le v1, v2, :cond_cd

    move v1, v2

    .line 2829
    :cond_cd
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/mobeta/android/dslv/DragSortListView;->access$27(Lcom/mobeta/android/dslv/DragSortListView;Z)V

    .line 2831
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    sub-int/2addr v1, v2

    invoke-virtual {v4, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 2832
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/DragSortListView;->layoutChildren()V

    .line 2833
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/DragSortListView;->invalidate()V

    .line 2835
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v1, v10}, Lcom/mobeta/android/dslv/DragSortListView;->access$27(Lcom/mobeta/android/dslv/DragSortListView;Z)V

    .line 2838
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v1, v0, v3, v10}, Lcom/mobeta/android/dslv/DragSortListView;->access$28(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)V

    .line 2840
    iget-wide v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mCurrTime:J

    iput-wide v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 2843
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/mobeta/android/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_7

    .line 2789
    :cond_f8
    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    sub-int v7, v0, v1

    invoke-virtual {v6, v7}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2790
    if-nez v6, :cond_106

    .line 2791
    iput-boolean v10, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_7

    .line 2794
    :cond_106
    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_116

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int v6, v4, v2

    if-gt v3, v6, :cond_116

    .line 2795
    iput-boolean v10, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_7

    .line 2799
    :cond_116
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v3}, Lcom/mobeta/android/dslv/DragSortListView;->access$22(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    move-result-object v3

    int-to-float v5, v5

    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v6}, Lcom/mobeta/android/dslv/DragSortListView;->access$25(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v6

    sub-float/2addr v5, v6

    .line 2800
    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v6}, Lcom/mobeta/android/dslv/DragSortListView;->access$26(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v6

    div-float/2addr v5, v6

    iget-wide v6, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 2799
    invoke-interface {v3, v5, v6, v7}, Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v3

    neg-float v3, v3

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    goto/16 :goto_93

    .line 2817
    :cond_136
    neg-int v3, v4

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    goto/16 :goto_b9
.end method

.method public startScrolling(I)V
    .registers 4

    .prologue
    .line 2734
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    if-nez v0, :cond_1b

    .line 2736
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mAbort:Z

    .line 2737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2738
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->tStart:J

    .line 2739
    iget-wide v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->tStart:J

    iput-wide v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 2740
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->scrollDir:I

    .line 2741
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/mobeta/android/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 2743
    :cond_1b
    return-void
.end method

.method public stopScrolling(Z)V
    .registers 3

    .prologue
    .line 2746
    if-eqz p1, :cond_b

    .line 2747
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/mobeta/android/dslv/DragSortListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2748
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2754
    :goto_a
    return-void

    .line 2750
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mAbort:Z

    goto :goto_a
.end method
