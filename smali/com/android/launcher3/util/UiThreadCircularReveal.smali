.class public Lcom/android/launcher3/util/UiThreadCircularReveal;
.super Ljava/lang/Object;
.source "UiThreadCircularReveal.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/ValueAnimator;
    .registers 11

    .prologue
    .line 18
    sget-object v5, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/util/UiThreadCircularReveal;->createCircularReveal(Landroid/view/View;IIFFLandroid/view/ViewOutlineProvider;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static createCircularReveal(Landroid/view/View;IIFFLandroid/view/ViewOutlineProvider;)Landroid/animation/ValueAnimator;
    .registers 10

    .prologue
    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_24

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/android/launcher3/util/RevealOutlineProvider;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/launcher3/util/RevealOutlineProvider;-><init>(IIFF)V

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v2

    .line 29
    new-instance v3, Lcom/android/launcher3/util/UiThreadCircularReveal$1;

    invoke-direct {v3, p0, v1, v2, p5}, Lcom/android/launcher3/util/UiThreadCircularReveal$1;-><init>(Landroid/view/View;Lcom/android/launcher3/util/RevealOutlineProvider;FLandroid/view/ViewOutlineProvider;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 44
    new-instance v2, Lcom/android/launcher3/util/UiThreadCircularReveal$2;

    invoke-direct {v2, v1, p0}, Lcom/android/launcher3/util/UiThreadCircularReveal$2;-><init>(Lcom/android/launcher3/util/RevealOutlineProvider;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 55
    return-object v0

    .line 23
    :array_24
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
