.class Lcom/android/launcher3/DragView$3;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/DragView;->animateFilterTo([F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/DragView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/DragView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/DragView$3;->this$0:Lcom/android/launcher3/DragView;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/launcher3/DragView$3;->this$0:Lcom/android/launcher3/DragView;

    iget-object v0, v0, Lcom/android/launcher3/DragView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v2, p0, Lcom/android/launcher3/DragView$3;->this$0:Lcom/android/launcher3/DragView;

    iget-object v2, v2, Lcom/android/launcher3/DragView;->mCurrentFilter:[F

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 288
    iget-object v0, p0, Lcom/android/launcher3/DragView$3;->this$0:Lcom/android/launcher3/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/DragView;->invalidate()V

    .line 289
    return-void
.end method
