.class Lcom/android/launcher3/DragView$2;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/DragView;->crossFade(I)V
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
    iput-object p1, p0, Lcom/android/launcher3/DragView$2;->this$0:Lcom/android/launcher3/DragView;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/launcher3/DragView$2;->this$0:Lcom/android/launcher3/DragView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    iput v1, v0, Lcom/android/launcher3/DragView;->mCrossFadeProgress:F

    .line 239
    return-void
.end method
