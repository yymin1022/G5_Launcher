.class public Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;
.super Landroid/widget/ImageView;
.source "WidgetBlurView.java"


# static fields
.field public static final DEBUG:Z = false

.field private static final FADE_IN_DURATION:I = 0x64

.field private static final FADE_OUT_DURATION:I = 0x64

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBlurredImage:Landroid/graphics/Bitmap;

.field private mFadeInOutAnimation:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

.field private mIsAnimated:Z

.field private mIsEnableChanged:Z

.field private mIsEnabled:Z

.field private mNeedToUpdateBlurredImage:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object v2, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mBlurredImage:Landroid/graphics/Bitmap;

    .line 25
    iput-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mIsEnabled:Z

    .line 26
    iput-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mIsAnimated:Z

    .line 27
    iput-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mIsEnableChanged:Z

    .line 29
    iput-boolean v1, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mNeedToUpdateBlurredImage:Z

    .line 31
    iput-object v2, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mFadeInOutAnimation:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    .line 40
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->setAlpha(F)V

    .line 43
    iput-boolean v1, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mNeedToUpdateBlurredImage:Z

    .line 45
    new-instance v0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mFadeInOutAnimation:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    .line 46
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mFadeInOutAnimation:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->setFadeInInterpolator(Landroid/view/animation/Interpolator;)V

    .line 47
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mFadeInOutAnimation:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->setFadeOutInterpolator(Landroid/view/animation/Interpolator;)V

    .line 48
    return-void
.end method


# virtual methods
.method public clearBlurredImage()V
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mBlurredImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 136
    :goto_4
    return-void

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mBlurredImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 133
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mBlurredImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 135
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mBlurredImage:Landroid/graphics/Bitmap;

    goto :goto_4
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->clearBlurredImage()V

    .line 143
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mFadeInOutAnimation:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    if-eqz v0, :cond_f

    .line 144
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mFadeInOutAnimation:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->destroy()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mFadeInOutAnimation:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    .line 147
    :cond_f
    return-void
.end method

.method public enable(ZZ)V
    .registers 4

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mIsEnabled:Z

    if-ne v0, p1, :cond_5

    .line 100
    :goto_4
    return-void

    .line 89
    :cond_5
    iput-boolean p1, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mIsEnabled:Z

    .line 90
    iput-boolean p2, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mIsAnimated:Z

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mIsEnableChanged:Z

    .line 94
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->invalidate()V

    goto :goto_4
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .prologue
    const/16 v0, 0x64

    const/4 v1, 0x0

    .line 54
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    iget-boolean v2, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mNeedToUpdateBlurredImage:Z

    if-nez v2, :cond_21

    iget-boolean v2, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mIsEnableChanged:Z

    if-eqz v2, :cond_21

    .line 61
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mFadeInOutAnimation:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    if-eqz v2, :cond_1f

    .line 62
    iget-boolean v2, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mIsEnabled:Z

    if-eqz v2, :cond_24

    .line 63
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mFadeInOutAnimation:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    iget-boolean v3, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mIsAnimated:Z

    if-eqz v3, :cond_22

    :goto_1c
    invoke-virtual {v2, v0}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->startFadeIn(I)V

    .line 69
    :cond_1f
    :goto_1f
    iput-boolean v1, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mIsEnableChanged:Z

    .line 71
    :cond_21
    return-void

    :cond_22
    move v0, v1

    .line 63
    goto :goto_1c

    .line 65
    :cond_24
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mFadeInOutAnimation:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    iget-boolean v3, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mIsAnimated:Z

    if-eqz v3, :cond_2e

    :goto_2a
    invoke-virtual {v2, v0}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->startFadeOut(I)V

    goto :goto_1f

    :cond_2e
    move v0, v1

    goto :goto_2a
.end method

.method public setBlurredImage(Landroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mNeedToUpdateBlurredImage:Z

    if-nez v0, :cond_5

    .line 123
    :goto_4
    return-void

    .line 117
    :cond_5
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->clearBlurredImage()V

    .line 119
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mBlurredImage:Landroid/graphics/Bitmap;

    .line 120
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 122
    if-nez p1, :cond_13

    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mNeedToUpdateBlurredImage:Z

    goto :goto_4

    :cond_13
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public shouldUpdateBlurredImage()Z
    .registers 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mIsEnabled:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mNeedToUpdateBlurredImage:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public updateBlurredImage()V
    .registers 2

    .prologue
    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->mNeedToUpdateBlurredImage:Z

    .line 106
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->invalidate()V

    .line 107
    return-void
.end method
