.class Lcom/android/launcher3/FolderIcon$3;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/FolderIcon;

.field private final synthetic val$finalParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

.field private final synthetic val$reverse:Z

.field private final synthetic val$scale0:F

.field private final synthetic val$transX0:F

.field private final synthetic val$transY0:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/FolderIcon;ZFLcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;FF)V
    .registers 7

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/FolderIcon$3;->this$0:Lcom/android/launcher3/FolderIcon;

    iput-boolean p2, p0, Lcom/android/launcher3/FolderIcon$3;->val$reverse:Z

    iput p3, p0, Lcom/android/launcher3/FolderIcon$3;->val$transX0:F

    iput-object p4, p0, Lcom/android/launcher3/FolderIcon$3;->val$finalParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    iput p5, p0, Lcom/android/launcher3/FolderIcon$3;->val$transY0:F

    iput p6, p0, Lcom/android/launcher3/FolderIcon$3;->val$scale0:F

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    .prologue
    .line 665
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 666
    iget-boolean v1, p0, Lcom/android/launcher3/FolderIcon$3;->val$reverse:Z

    if-eqz v1, :cond_19

    .line 667
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 668
    iget-object v1, p0, Lcom/android/launcher3/FolderIcon$3;->this$0:Lcom/android/launcher3/FolderIcon;

    iget-object v1, v1, Lcom/android/launcher3/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 671
    :cond_19
    iget-object v1, p0, Lcom/android/launcher3/FolderIcon$3;->this$0:Lcom/android/launcher3/FolderIcon;

    iget-object v1, v1, Lcom/android/launcher3/FolderIcon;->mAnimParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget v2, p0, Lcom/android/launcher3/FolderIcon$3;->val$transX0:F

    iget-object v3, p0, Lcom/android/launcher3/FolderIcon$3;->val$finalParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget v4, p0, Lcom/android/launcher3/FolderIcon$3;->val$transX0:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 672
    iget-object v1, p0, Lcom/android/launcher3/FolderIcon$3;->this$0:Lcom/android/launcher3/FolderIcon;

    iget-object v1, v1, Lcom/android/launcher3/FolderIcon;->mAnimParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget v2, p0, Lcom/android/launcher3/FolderIcon$3;->val$transY0:F

    iget-object v3, p0, Lcom/android/launcher3/FolderIcon$3;->val$finalParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget v4, p0, Lcom/android/launcher3/FolderIcon$3;->val$transY0:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 673
    iget-object v1, p0, Lcom/android/launcher3/FolderIcon$3;->this$0:Lcom/android/launcher3/FolderIcon;

    iget-object v1, v1, Lcom/android/launcher3/FolderIcon;->mAnimParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget v2, p0, Lcom/android/launcher3/FolderIcon$3;->val$scale0:F

    iget-object v3, p0, Lcom/android/launcher3/FolderIcon$3;->val$finalParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v4, p0, Lcom/android/launcher3/FolderIcon$3;->val$scale0:F

    sub-float/2addr v3, v4

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    iput v0, v1, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->scale:F

    .line 674
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon$3;->this$0:Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->invalidate()V

    .line 675
    return-void
.end method
