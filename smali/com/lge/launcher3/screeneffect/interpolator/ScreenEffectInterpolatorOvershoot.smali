.class public Lcom/lge/launcher3/screeneffect/interpolator/ScreenEffectInterpolatorOvershoot;
.super Ljava/lang/Object;
.source "ScreenEffectInterpolatorOvershoot.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final DEFAULT_TENSION:F = 2.0f


# instance fields
.field private final mDefaultTension:F

.field private mTension:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 23
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/screeneffect/interpolator/ScreenEffectInterpolatorOvershoot;-><init>(Landroid/content/Context;F)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;F)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Lcom/lge/launcher3/screeneffect/interpolator/ScreenEffectInterpolatorOvershoot;->mTension:F

    .line 31
    cmpl-float v0, p2, v0

    if-ltz v0, :cond_d

    :goto_a
    iput p2, p0, Lcom/lge/launcher3/screeneffect/interpolator/ScreenEffectInterpolatorOvershoot;->mDefaultTension:F

    .line 32
    return-void

    .line 31
    :cond_d
    const/high16 p2, 0x40000000    # 2.0f

    goto :goto_a
.end method


# virtual methods
.method public computeTension(F)V
    .registers 3

    .prologue
    .line 38
    iget v0, p0, Lcom/lge/launcher3/screeneffect/interpolator/ScreenEffectInterpolatorOvershoot;->mDefaultTension:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/lge/launcher3/screeneffect/interpolator/ScreenEffectInterpolatorOvershoot;->mTension:F

    .line 39
    return-void
.end method

.method public disableTension()V
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/screeneffect/interpolator/ScreenEffectInterpolatorOvershoot;->mTension:F

    .line 51
    return-void
.end method

.method public getInterpolation(F)F
    .registers 6

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 57
    sub-float v0, p1, v3

    .line 58
    mul-float v1, v0, v0

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/lge/launcher3/screeneffect/interpolator/ScreenEffectInterpolatorOvershoot;->mTension:F

    add-float/2addr v2, v3

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/lge/launcher3/screeneffect/interpolator/ScreenEffectInterpolatorOvershoot;->mTension:F

    add-float/2addr v0, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    return v0
.end method

.method public resetTension()V
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/lge/launcher3/screeneffect/interpolator/ScreenEffectInterpolatorOvershoot;->mDefaultTension:F

    iput v0, p0, Lcom/lge/launcher3/screeneffect/interpolator/ScreenEffectInterpolatorOvershoot;->mTension:F

    .line 45
    return-void
.end method
