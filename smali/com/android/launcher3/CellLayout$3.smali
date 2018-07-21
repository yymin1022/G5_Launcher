.class Lcom/android/launcher3/CellLayout$3;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/CellLayout;

.field private final synthetic val$child:Landroid/view/View;

.field private final synthetic val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

.field private final synthetic val$newHeight:I

.field private final synthetic val$newScaleX:F

.field private final synthetic val$newScaleY:F

.field private final synthetic val$newWidth:I

.field private final synthetic val$newX:I

.field private final synthetic val$newY:I

.field private final synthetic val$oldHeight:I

.field private final synthetic val$oldScaleX:F

.field private final synthetic val$oldScaleY:F

.field private final synthetic val$oldWidth:I

.field private final synthetic val$oldX:I

.field private final synthetic val$oldY:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;IIIIIIIILandroid/view/View;FFFF)V
    .registers 16

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$3;->this$0:Lcom/android/launcher3/CellLayout;

    iput-object p2, p0, Lcom/android/launcher3/CellLayout$3;->val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    iput p3, p0, Lcom/android/launcher3/CellLayout$3;->val$oldX:I

    iput p4, p0, Lcom/android/launcher3/CellLayout$3;->val$newX:I

    iput p5, p0, Lcom/android/launcher3/CellLayout$3;->val$oldY:I

    iput p6, p0, Lcom/android/launcher3/CellLayout$3;->val$newY:I

    iput p7, p0, Lcom/android/launcher3/CellLayout$3;->val$oldWidth:I

    iput p8, p0, Lcom/android/launcher3/CellLayout$3;->val$newWidth:I

    iput p9, p0, Lcom/android/launcher3/CellLayout$3;->val$oldHeight:I

    iput p10, p0, Lcom/android/launcher3/CellLayout$3;->val$newHeight:I

    iput-object p11, p0, Lcom/android/launcher3/CellLayout$3;->val$child:Landroid/view/View;

    iput p12, p0, Lcom/android/launcher3/CellLayout$3;->val$oldScaleX:F

    iput p13, p0, Lcom/android/launcher3/CellLayout$3;->val$newScaleX:F

    iput p14, p0, Lcom/android/launcher3/CellLayout$3;->val$oldScaleY:F

    iput p15, p0, Lcom/android/launcher3/CellLayout$3;->val$newScaleY:F

    .line 1002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1005
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1006
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$3;->val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    sub-float v2, v4, v0

    iget v3, p0, Lcom/android/launcher3/CellLayout$3;->val$oldX:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/CellLayout$3;->val$newX:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 1007
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$3;->val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    sub-float v2, v4, v0

    iget v3, p0, Lcom/android/launcher3/CellLayout$3;->val$oldY:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/CellLayout$3;->val$newY:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 1008
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$3;->val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    sub-float v2, v4, v0

    iget v3, p0, Lcom/android/launcher3/CellLayout$3;->val$oldWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/CellLayout$3;->val$newWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    .line 1009
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$3;->val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    sub-float v2, v4, v0

    iget v3, p0, Lcom/android/launcher3/CellLayout$3;->val$oldHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/CellLayout$3;->val$newHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    .line 1010
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$3;->val$child:Landroid/view/View;

    sub-float v2, v4, v0

    iget v3, p0, Lcom/android/launcher3/CellLayout$3;->val$oldScaleX:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/CellLayout$3;->val$newScaleX:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1011
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$3;->val$child:Landroid/view/View;

    sub-float v2, v4, v0

    iget v3, p0, Lcom/android/launcher3/CellLayout$3;->val$oldScaleY:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/CellLayout$3;->val$newScaleY:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1012
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$3;->val$child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1013
    return-void
.end method
