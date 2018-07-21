.class public Lcom/lge/launcher3/util/TouchPrediction;
.super Ljava/lang/Object;
.source "TouchPrediction.java"


# static fields
.field private static final MAXIMUM_VELOCITY:I = 0xa

.field private static final PREDICTION_RATIO:F = 0.3f

.field private static final VSYNCTIMING:F = 16.6f


# instance fields
.field private mAlphaValue:F

.field private mLastVelocity:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {p0}, Lcom/lge/launcher3/util/TouchPrediction;->predictionInit()V

    .line 35
    return-void
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/launcher3/util/TouchPrediction;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 52
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/util/TouchPrediction;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 54
    :cond_a
    iget-object v0, p0, Lcom/lge/launcher3/util/TouchPrediction;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 55
    return-void
.end method

.method private predictionInit()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/lge/launcher3/util/TouchPrediction;->recycleVelocityTracker()V

    .line 39
    iput v0, p0, Lcom/lge/launcher3/util/TouchPrediction;->mAlphaValue:F

    .line 40
    iput v0, p0, Lcom/lge/launcher3/util/TouchPrediction;->mLastVelocity:F

    .line 41
    return-void
.end method

.method private recycleVelocityTracker()V
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/launcher3/util/TouchPrediction;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 45
    iget-object v0, p0, Lcom/lge/launcher3/util/TouchPrediction;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/util/TouchPrediction;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 48
    :cond_c
    return-void
.end method


# virtual methods
.method public computePredictionLocation(Landroid/view/MotionEvent;)F
    .registers 7

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/launcher3/util/TouchPrediction;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v1, 0x1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/lge/launcher3/util/TouchPrediction;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    .line 61
    iget v2, p0, Lcom/lge/launcher3/util/TouchPrediction;->mLastVelocity:F

    sub-float v2, v1, v2

    .line 62
    iput v1, p0, Lcom/lge/launcher3/util/TouchPrediction;->mLastVelocity:F

    .line 63
    const v3, 0x4184cccd    # 16.6f

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    mul-float/2addr v1, v3

    .line 64
    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    .line 65
    iget v2, p0, Lcom/lge/launcher3/util/TouchPrediction;->mAlphaValue:F

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 64
    iput v1, p0, Lcom/lge/launcher3/util/TouchPrediction;->mAlphaValue:F

    .line 66
    iget v1, p0, Lcom/lge/launcher3/util/TouchPrediction;->mAlphaValue:F

    add-float/2addr v0, v1

    .line 67
    return v0
.end method

.method public observedEvent(Landroid/view/MotionEvent;)V
    .registers 3

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/lge/launcher3/util/TouchPrediction;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 73
    packed-switch v0, :pswitch_data_16

    .line 84
    :goto_a
    :pswitch_a
    return-void

    .line 75
    :pswitch_b
    iget-object v0, p0, Lcom/lge/launcher3/util/TouchPrediction;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_a

    .line 79
    :pswitch_11
    invoke-direct {p0}, Lcom/lge/launcher3/util/TouchPrediction;->predictionInit()V

    goto :goto_a

    .line 73
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_b
        :pswitch_11
        :pswitch_a
        :pswitch_11
    .end packed-switch
.end method
