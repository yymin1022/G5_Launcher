.class Lcom/android/launcher3/DragView$1;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/DragView;-><init>(Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;IIIIIIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/DragView;

.field private final synthetic val$initialScale:F

.field private final synthetic val$scale:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/DragView;FF)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/DragView$1;->this$0:Lcom/android/launcher3/DragView;

    iput p2, p0, Lcom/android/launcher3/DragView$1;->val$initialScale:F

    iput p3, p0, Lcom/android/launcher3/DragView$1;->val$scale:F

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 10

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 101
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/android/launcher3/DragView$1;->this$0:Lcom/android/launcher3/DragView;

    iget v1, v1, Lcom/android/launcher3/DragView;->mOffsetX:F

    neg-float v1, v1

    float-to-int v1, v1

    .line 104
    iget-object v2, p0, Lcom/android/launcher3/DragView$1;->this$0:Lcom/android/launcher3/DragView;

    iget v2, v2, Lcom/android/launcher3/DragView;->mOffsetY:F

    neg-float v2, v2

    float-to-int v2, v2

    .line 106
    iget-object v3, p0, Lcom/android/launcher3/DragView$1;->this$0:Lcom/android/launcher3/DragView;

    iget v4, v3, Lcom/android/launcher3/DragView;->mOffsetX:F

    int-to-float v5, v1

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/launcher3/DragView;->mOffsetX:F

    .line 107
    iget-object v3, p0, Lcom/android/launcher3/DragView$1;->this$0:Lcom/android/launcher3/DragView;

    iget v4, v3, Lcom/android/launcher3/DragView;->mOffsetY:F

    int-to-float v5, v2

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/launcher3/DragView;->mOffsetY:F

    .line 108
    iget-object v3, p0, Lcom/android/launcher3/DragView$1;->this$0:Lcom/android/launcher3/DragView;

    iget v4, p0, Lcom/android/launcher3/DragView$1;->val$initialScale:F

    iget v5, p0, Lcom/android/launcher3/DragView$1;->val$scale:F

    iget v6, p0, Lcom/android/launcher3/DragView$1;->val$initialScale:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/launcher3/DragView;->setScaleX(F)V

    .line 109
    iget-object v3, p0, Lcom/android/launcher3/DragView$1;->this$0:Lcom/android/launcher3/DragView;

    iget v4, p0, Lcom/android/launcher3/DragView$1;->val$initialScale:F

    iget v5, p0, Lcom/android/launcher3/DragView$1;->val$scale:F

    iget v6, p0, Lcom/android/launcher3/DragView$1;->val$initialScale:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/launcher3/DragView;->setScaleY(F)V

    .line 110
    sget v3, Lcom/android/launcher3/DragView;->sDragAlpha:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_55

    .line 111
    iget-object v3, p0, Lcom/android/launcher3/DragView$1;->this$0:Lcom/android/launcher3/DragView;

    sget v4, Lcom/android/launcher3/DragView;->sDragAlpha:F

    mul-float/2addr v4, v0

    sub-float v0, v7, v0

    add-float/2addr v0, v4

    invoke-virtual {v3, v0}, Lcom/android/launcher3/DragView;->setAlpha(F)V

    .line 114
    :cond_55
    iget-object v0, p0, Lcom/android/launcher3/DragView$1;->this$0:Lcom/android/launcher3/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_61

    .line 115
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 120
    :goto_60
    return-void

    .line 117
    :cond_61
    iget-object v0, p0, Lcom/android/launcher3/DragView$1;->this$0:Lcom/android/launcher3/DragView;

    iget-object v3, p0, Lcom/android/launcher3/DragView$1;->this$0:Lcom/android/launcher3/DragView;

    invoke-virtual {v3}, Lcom/android/launcher3/DragView;->getTranslationX()F

    move-result v3

    int-to-float v1, v1

    add-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DragView;->setTranslationX(F)V

    .line 118
    iget-object v0, p0, Lcom/android/launcher3/DragView$1;->this$0:Lcom/android/launcher3/DragView;

    iget-object v1, p0, Lcom/android/launcher3/DragView$1;->this$0:Lcom/android/launcher3/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/DragView;->getTranslationY()F

    move-result v1

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DragView;->setTranslationY(F)V

    goto :goto_60
.end method
