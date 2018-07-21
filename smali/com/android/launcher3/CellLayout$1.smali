.class Lcom/android/launcher3/CellLayout$1;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/CellLayout;

.field private final synthetic val$anim:Lcom/android/launcher3/InterruptibleInOutAnimator;

.field private final synthetic val$thisIndex:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/InterruptibleInOutAnimator;I)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$1;->this$0:Lcom/android/launcher3/CellLayout;

    iput-object p2, p0, Lcom/android/launcher3/CellLayout$1;->val$anim:Lcom/android/launcher3/InterruptibleInOutAnimator;

    iput p3, p0, Lcom/android/launcher3/CellLayout$1;->val$thisIndex:I

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$1;->val$anim:Lcom/android/launcher3/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 249
    if-nez v0, :cond_e

    .line 258
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 263
    :goto_d
    return-void

    .line 260
    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$1;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    iget v2, p0, Lcom/android/launcher3/CellLayout$1;->val$thisIndex:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v1, v2

    .line 261
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$1;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$1;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/launcher3/CellLayout$1;->val$thisIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_d
.end method
