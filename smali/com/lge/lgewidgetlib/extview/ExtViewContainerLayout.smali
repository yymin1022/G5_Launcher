.class Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;
.super Landroid/widget/FrameLayout;
.source "ExtViewContainerLayout.java"


# static fields
.field private static final DIMMING_DURATION:I = 0x12c


# instance fields
.field mAniListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field mAnimator:Landroid/animation/ValueAnimator;

.field mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnTouchListener;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 6

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p2, p0, Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 19
    iput-object p3, p0, Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;->mAniListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 21
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;->mAnimator:Landroid/animation/ValueAnimator;

    .line 22
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout$1;

    invoke-direct {v1, p0}, Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout$1;-><init>(Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 34
    return-void
.end method

.method private runDimming(ZI)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 59
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 61
    :cond_e
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v2, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 62
    if-eqz p1, :cond_23

    .line 63
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 67
    :goto_22
    return-void

    .line 65
    :cond_23
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_22
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 38
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;->mTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_13

    .line 41
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 43
    :cond_13
    return v1
.end method

.method public setDimming(ZI)V
    .registers 7

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;->runDimming(ZI)V

    .line 49
    return-void
.end method

.method public setDimming(ZII)V
    .registers 8

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;->mAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;->runDimming(ZI)V

    .line 54
    return-void
.end method
