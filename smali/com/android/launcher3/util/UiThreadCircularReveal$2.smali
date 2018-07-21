.class Lcom/android/launcher3/util/UiThreadCircularReveal$2;
.super Ljava/lang/Object;
.source "UiThreadCircularReveal.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/UiThreadCircularReveal;->createCircularReveal(Landroid/view/View;IIFFLandroid/view/ViewOutlineProvider;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$outlineProvider:Lcom/android/launcher3/util/RevealOutlineProvider;

.field private final synthetic val$revealView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/RevealOutlineProvider;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/util/UiThreadCircularReveal$2;->val$outlineProvider:Lcom/android/launcher3/util/RevealOutlineProvider;

    iput-object p2, p0, Lcom/android/launcher3/util/UiThreadCircularReveal$2;->val$revealView:Landroid/view/View;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 48
    iget-object v1, p0, Lcom/android/launcher3/util/UiThreadCircularReveal$2;->val$outlineProvider:Lcom/android/launcher3/util/RevealOutlineProvider;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/RevealOutlineProvider;->setProgress(F)V

    .line 49
    iget-object v0, p0, Lcom/android/launcher3/util/UiThreadCircularReveal$2;->val$revealView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    .line 50
    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpMR1OrAbove()Z

    move-result v0

    if-nez v0, :cond_19

    .line 51
    iget-object v0, p0, Lcom/android/launcher3/util/UiThreadCircularReveal$2;->val$revealView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 53
    :cond_19
    return-void
.end method
