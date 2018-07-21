.class Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$1;
.super Ljava/lang/Object;
.source "BaseRecyclerViewFastScrollBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->animateScrollbar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;


# direct methods
.method constructor <init>(Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$1;->this$0:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$1;->this$0:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    iget-object v1, v0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$1;->this$0:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    iget-object v0, v0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$1;->this$0:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    iget-object v1, v1, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$1;->this$0:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    iget-object v2, v2, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$1;->this$0:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    iget-object v3, v3, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$1;->this$0:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    iget v4, v4, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v3, v4

    .line 218
    iget-object v4, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$1;->this$0:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    iget-object v4, v4, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$1;->this$0:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    iget v5, v5, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v4, v5

    .line 217
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/BaseRecyclerView;->invalidate(IIII)V

    .line 219
    return-void
.end method
