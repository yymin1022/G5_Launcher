.class public Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;
.super Ljava/lang/Object;
.source "FadeInOutAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeInOutAnimatorListener;,
        Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$wallpaperblur$FadeInOutAnimator$FadeType:[I

.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mFadeInInterpolator:Landroid/view/animation/Interpolator;

.field private mFadeOutInterpolator:Landroid/view/animation/Interpolator;

.field private mListener:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeInOutAnimatorListener;

.field private mTargetView:Landroid/view/View;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$launcher3$wallpaperblur$FadeInOutAnimator$FadeType()[I
    .registers 3

    .prologue
    .line 17
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->$SWITCH_TABLE$com$lge$launcher3$wallpaperblur$FadeInOutAnimator$FadeType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;->values()[Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;->FADE_IN:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

    invoke-virtual {v1}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_23

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;->FADE_OUT:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

    invoke-virtual {v1}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_21

    :goto_1e
    sput-object v0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->$SWITCH_TABLE$com$lge$launcher3$wallpaperblur$FadeInOutAnimator$FadeType:[I

    goto :goto_4

    :catch_21
    move-exception v1

    goto :goto_1e

    :catch_23
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;-><init>(Landroid/view/View;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mTargetView:Landroid/view/View;

    .line 26
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 28
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 29
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 31
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mListener:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeInOutAnimatorListener;

    .line 44
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->setTargetView(Landroid/view/View;)V

    .line 45
    return-void
.end method

.method static synthetic access$1(Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;)Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeInOutAnimatorListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mListener:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeInOutAnimatorListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;)Landroid/view/View;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mTargetView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeInOutAnimatorListener;)V
    .registers 2

    .prologue
    .line 212
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mListener:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeInOutAnimatorListener;

    .line 213
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_5

    .line 205
    :goto_4
    return-void

    .line 198
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 199
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 201
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 202
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 204
    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    goto :goto_4
.end method

.method public destroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mListener:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeInOutAnimatorListener;

    .line 246
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->clear()V

    .line 248
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mTargetView:Landroid/view/View;

    .line 249
    return-void
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_6

    .line 182
    const/4 v0, 0x0

    .line 184
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    goto :goto_5
.end method

.method public isStarted()Z
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_6

    .line 172
    const/4 v0, 0x0

    .line 174
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    goto :goto_5
.end method

.method public setFadeInInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 59
    return-void
.end method

.method public setFadeOutInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 66
    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mTargetView:Landroid/view/View;

    .line 52
    return-void
.end method

.method public start(Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;I)V
    .registers 10

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 87
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->clear()V

    .line 90
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 91
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->$SWITCH_TABLE$com$lge$launcher3$wallpaperblur$FadeInOutAnimator$FadeType()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_6c

    .line 165
    :goto_1b
    return-void

    .line 93
    :pswitch_1c
    new-array v1, v6, [F

    aput v0, v1, v4

    aput v3, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 94
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 96
    int-to-float v1, p2

    sub-float v0, v3, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 110
    :goto_34
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$1;

    invoke-direct {v1, p0, p1}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$1;-><init>(Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 137
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$2;

    invoke-direct {v1, p0, p1}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$2;-><init>(Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 159
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 160
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1b

    .line 100
    :pswitch_54
    new-array v1, v6, [F

    aput v0, v1, v4

    const/4 v2, 0x0

    aput v2, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 101
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->mFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 103
    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 104
    goto :goto_34

    .line 91
    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_54
    .end packed-switch
.end method

.method public startFadeIn(I)V
    .registers 3

    .prologue
    .line 72
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;->FADE_IN:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

    invoke-virtual {p0, v0, p1}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->start(Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;I)V

    .line 73
    return-void
.end method

.method public startFadeOut(I)V
    .registers 3

    .prologue
    .line 79
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;->FADE_OUT:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

    invoke-virtual {p0, v0, p1}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->start(Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;I)V

    .line 80
    return-void
.end method
