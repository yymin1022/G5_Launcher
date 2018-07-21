.class Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;
.super Ljava/lang/Object;
.source "AllAppsRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AllAppsRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 244
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget v0, v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollFrameIndex:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollFrames:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2e

    .line 245
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v2, v2, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollFrames:[I

    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget v3, v3, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollFrameIndex:I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->scrollBy(II)V

    .line 246
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget v1, v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollFrameIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollFrameIndex:I

    .line 247
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 259
    :cond_2d
    :goto_2d
    return-void

    .line 250
    :cond_2e
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget v1, v1, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mPrevFastScrollFocusedPosition:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_2d

    .line 252
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;

    if-eqz v1, :cond_2d

    .line 253
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mLastFastScrollFocusedView:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eq v1, v2, :cond_2d

    .line 254
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 255
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;

    .line 254
    iput-object v0, v1, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mLastFastScrollFocusedView:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;

    .line 256
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mLastFastScrollFocusedView:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;

    invoke-interface {v0, v3, v3}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;->setFastScrollFocused(ZZ)V

    goto :goto_2d
.end method
