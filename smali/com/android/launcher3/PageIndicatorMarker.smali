.class public Lcom/android/launcher3/PageIndicatorMarker;
.super Landroid/widget/FrameLayout;
.source "PageIndicatorMarker.java"


# static fields
.field private static final MARKER_FADE_DURATION:I = 0xaf

.field private static final TAG:Ljava/lang/String; = "PageIndicator"


# instance fields
.field protected mActiveMarker:Landroid/widget/ImageView;

.field protected mInactiveMarker:Landroid/widget/ImageView;

.field private mIsActive:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/PageIndicatorMarker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/PageIndicatorMarker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PageIndicatorMarker;->mIsActive:Z

    .line 46
    return-void
.end method


# virtual methods
.method activate(Z)V
    .registers 8

    .prologue
    const-wide/16 v4, 0xaf

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 60
    if-eqz p1, :cond_31

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 62
    iget-object v0, p0, Lcom/android/launcher3/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/PageIndicatorMarker;->mInactiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/PageIndicatorMarker;->mInactiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 77
    :goto_2d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PageIndicatorMarker;->mIsActive:Z

    .line 78
    return-void

    .line 68
    :cond_31
    iget-object v0, p0, Lcom/android/launcher3/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/PageIndicatorMarker;->mInactiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2d
.end method

.method inactivate(Z)V
    .registers 8

    .prologue
    const-wide/16 v4, 0xaf

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 81
    if-eqz p1, :cond_33

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/PageIndicatorMarker;->mInactiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/PageIndicatorMarker;->mInactiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 97
    :goto_2f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PageIndicatorMarker;->mIsActive:Z

    .line 98
    return-void

    .line 89
    :cond_33
    iget-object v0, p0, Lcom/android/launcher3/PageIndicatorMarker;->mInactiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2f
.end method

.method isActive()Z
    .registers 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/launcher3/PageIndicatorMarker;->mIsActive:Z

    return v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 49
    const v0, 0x7f0e00ba

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PageIndicatorMarker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    .line 50
    const v0, 0x7f0e00b9

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PageIndicatorMarker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/PageIndicatorMarker;->mInactiveMarker:Landroid/widget/ImageView;

    .line 51
    return-void
.end method

.method public setMarkerDrawables(II)V
    .registers 6

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/launcher3/PageIndicatorMarker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/android/launcher3/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iget-object v1, p0, Lcom/android/launcher3/PageIndicatorMarker;->mInactiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    return-void
.end method
