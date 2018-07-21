.class Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->animate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    .line 2159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2162
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 2163
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget v0, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->mode:I

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget-boolean v0, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->repeating:Z

    if-eqz v0, :cond_5c

    move v0, v1

    .line 2164
    :goto_19
    iget-object v3, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget v3, v3, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    mul-float/2addr v3, v0

    sub-float v4, v1, v0

    iget-object v5, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget v5, v5, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 2165
    iget-object v4, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget v4, v4, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    mul-float/2addr v4, v0

    sub-float v0, v1, v0

    iget-object v5, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget v5, v5, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    .line 2166
    iget-object v4, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget-object v4, v4, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 2167
    iget-object v3, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget-object v3, v3, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 2168
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget v0, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalScale:F

    mul-float/2addr v0, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget v2, v2, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initScale:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 2169
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 2170
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 2171
    return-void

    :cond_5c
    move v0, v2

    .line 2163
    goto :goto_19
.end method
