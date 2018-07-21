.class Lcom/android/launcher3/util/UiThreadCircularReveal$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UiThreadCircularReveal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/UiThreadCircularReveal;->createCircularReveal(Landroid/view/View;IIFFLandroid/view/ViewOutlineProvider;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$elevation:F

.field private final synthetic val$originalProvider:Landroid/view/ViewOutlineProvider;

.field private final synthetic val$outlineProvider:Lcom/android/launcher3/util/RevealOutlineProvider;

.field private final synthetic val$revealView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/android/launcher3/util/RevealOutlineProvider;FLandroid/view/ViewOutlineProvider;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/util/UiThreadCircularReveal$1;->val$revealView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher3/util/UiThreadCircularReveal$1;->val$outlineProvider:Lcom/android/launcher3/util/RevealOutlineProvider;

    iput p3, p0, Lcom/android/launcher3/util/UiThreadCircularReveal$1;->val$elevation:F

    iput-object p4, p0, Lcom/android/launcher3/util/UiThreadCircularReveal$1;->val$originalProvider:Landroid/view/ViewOutlineProvider;

    .line 29
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher3/util/UiThreadCircularReveal$1;->val$revealView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/util/UiThreadCircularReveal$1;->val$originalProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 38
    iget-object v0, p0, Lcom/android/launcher3/util/UiThreadCircularReveal$1;->val$revealView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 39
    iget-object v0, p0, Lcom/android/launcher3/util/UiThreadCircularReveal$1;->val$revealView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 40
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/launcher3/util/UiThreadCircularReveal$1;->val$revealView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/util/UiThreadCircularReveal$1;->val$outlineProvider:Lcom/android/launcher3/util/RevealOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 32
    iget-object v0, p0, Lcom/android/launcher3/util/UiThreadCircularReveal$1;->val$revealView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 33
    iget-object v0, p0, Lcom/android/launcher3/util/UiThreadCircularReveal$1;->val$revealView:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/util/UiThreadCircularReveal$1;->val$elevation:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 34
    return-void
.end method
