.class Lcom/android/launcher3/AlphaUpdateListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WorkspaceStateTransitionAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final ALPHA_CUTOFF_THRESHOLD:F = 0.01f


# instance fields
.field private mAccessibilityEnabled:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .registers 3

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/launcher3/AlphaUpdateListener;->mView:Landroid/view/View;

    .line 50
    iput-boolean p2, p0, Lcom/android/launcher3/AlphaUpdateListener;->mAccessibilityEnabled:Z

    .line 51
    return-void
.end method

.method public static updateVisibility(Landroid/view/View;Z)V
    .registers 5

    .prologue
    const v2, 0x3c23d70a    # 0.01f

    .line 61
    if-eqz p1, :cond_19

    const/16 v0, 0x8

    .line 62
    :goto_7
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1b

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1b

    .line 63
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :cond_18
    :goto_18
    return-void

    .line 61
    :cond_19
    const/4 v0, 0x4

    goto :goto_7

    .line 64
    :cond_1b
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_18

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_18

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher3/AlphaUpdateListener;->mView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/launcher3/AlphaUpdateListener;->mAccessibilityEnabled:Z

    invoke-static {v0, v1}, Lcom/android/launcher3/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 73
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher3/AlphaUpdateListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/launcher3/AlphaUpdateListener;->mView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/launcher3/AlphaUpdateListener;->mAccessibilityEnabled:Z

    invoke-static {v0, v1}, Lcom/android/launcher3/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 56
    return-void
.end method
