.class Lcom/android/launcher3/FolderIcon$FolderRingAnimator$1;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->animateToAcceptState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

.field private final synthetic val$previewSize:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/FolderIcon$FolderRingAnimator;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator$1;->this$1:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    iput p2, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator$1;->val$previewSize:I

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 250
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 251
    iget-object v1, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator$1;->this$1:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    iget v3, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator$1;->val$previewSize:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mOuterRingSize:F

    .line 252
    iget-object v1, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator$1;->this$1:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v0, v2

    add-float/2addr v0, v4

    iget v2, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator$1;->val$previewSize:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iput v0, v1, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mInnerRingSize:F

    .line 253
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator$1;->this$1:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    iget-object v0, v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_33

    .line 254
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator$1;->this$1:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    iget-object v0, v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 256
    :cond_33
    return-void
.end method
