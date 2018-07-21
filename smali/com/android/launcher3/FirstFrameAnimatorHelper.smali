.class public Lcom/android/launcher3/FirstFrameAnimatorHelper;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FirstFrameAnimatorHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final IDEAL_FRAME_DURATION:I = 0x10

.field private static final MAX_DELAY:I = 0x3e8

.field private static sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field static sGlobalFrameCounter:J

.field private static sVisible:Z


# instance fields
.field private mAdjustedSecondFrameTime:Z

.field private mHandlingOnAnimationUpdate:Z

.field private mStartFrame:J

.field private mStartTime:J

.field private mTarget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mStartTime:J

    .line 50
    iput-object p2, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    .line 51
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mStartTime:J

    .line 55
    iput-object p2, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    .line 56
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 57
    return-void
.end method

.method public static initializeDrawListener(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 71
    sget-object v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    if-eqz v0, :cond_d

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 74
    :cond_d
    new-instance v0, Lcom/android/launcher3/FirstFrameAnimatorHelper$1;

    invoke-direct {v0}, Lcom/android/launcher3/FirstFrameAnimatorHelper$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 86
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->sVisible:Z

    .line 87
    return-void
.end method

.method public static setIsVisible(Z)V
    .registers 1

    .prologue
    .line 67
    sput-boolean p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->sVisible:Z

    .line 68
    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 61
    check-cast p1, Landroid/animation/ValueAnimator;

    .line 62
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 64
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 12

    .prologue
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 91
    iget-wide v0, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_12

    .line 92
    sget-wide v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    iput-wide v0, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mStartFrame:J

    .line 93
    iput-wide v2, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mStartTime:J

    .line 96
    :cond_12
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    .line 97
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_64

    const/4 v0, 0x1

    .line 99
    :goto_23
    iget-boolean v1, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    if-nez v1, :cond_63

    .line 100
    sget-boolean v1, Lcom/android/launcher3/FirstFrameAnimatorHelper;->sVisible:Z

    if-eqz v1, :cond_63

    .line 104
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_63

    if-nez v0, :cond_63

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    .line 106
    sget-wide v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    iget-wide v6, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mStartFrame:J

    sub-long/2addr v0, v6

    .line 110
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_66

    iget-wide v6, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v8, 0x3e8

    add-long/2addr v6, v8

    cmp-long v6, v2, v6

    if-gez v6, :cond_66

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_66

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 114
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 134
    :cond_60
    :goto_60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    .line 138
    :cond_63
    return-void

    .line 97
    :cond_64
    const/4 v0, 0x0

    goto :goto_23

    .line 118
    :cond_66
    const-wide/16 v6, 0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_91

    iget-wide v6, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v8, 0x3e8

    add-long/2addr v6, v8

    cmp-long v6, v2, v6

    if-gez v6, :cond_91

    .line 119
    iget-boolean v6, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mAdjustedSecondFrameTime:Z

    if-nez v6, :cond_91

    .line 120
    iget-wide v6, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v8, 0x10

    add-long/2addr v6, v8

    cmp-long v2, v2, v6

    if-lez v2, :cond_91

    .line 121
    const-wide/16 v2, 0x10

    cmp-long v2, v4, v2

    if-lez v2, :cond_91

    .line 122
    const-wide/16 v0, 0x10

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mAdjustedSecondFrameTime:Z

    goto :goto_60

    .line 125
    :cond_91
    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_60

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    new-instance v1, Lcom/android/launcher3/FirstFrameAnimatorHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/FirstFrameAnimatorHelper$2;-><init>(Lcom/android/launcher3/FirstFrameAnimatorHelper;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_60
.end method

.method public print(Landroid/animation/ValueAnimator;)V
    .registers 10

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v1, v2

    div-float/2addr v0, v1

    .line 142
    const-string v1, "FirstFrameAnimatorHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/launcher3/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/android/launcher3/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    iget-wide v6, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mStartFrame:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dirty? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 144
    iget-object v3, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isDirty()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method
