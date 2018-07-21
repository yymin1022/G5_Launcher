.class public Lcom/android/launcher3/LauncherViewPropertyAnimator;
.super Landroid/animation/Animator;
.source "LauncherViewPropertyAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;
    }
.end annotation


# instance fields
.field mAlpha:F

.field mDuration:J

.field mFirstFrameHelper:Lcom/android/launcher3/FirstFrameAnimatorHelper;

.field mInterpolator:Landroid/animation/TimeInterpolator;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field mPropertiesToSet:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;",
            ">;"
        }
    .end annotation
.end field

.field mRotationY:F

.field mRunning:Z

.field mScaleX:F

.field mScaleY:F

.field mStartDelay:J

.field mTarget:Landroid/view/View;

.field mTranslationX:F

.field mTranslationY:F

.field mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 41
    const-class v0, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mRunning:Z

    .line 59
    iput-object p1, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mTarget:Landroid/view/View;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    .line 61
    return-void
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public alpha(F)Lcom/android/launcher3/LauncherViewPropertyAnimator;
    .registers 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->ALPHA:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 267
    iput p1, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mAlpha:F

    .line 268
    return-object p0
.end method

.method public cancel()V
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_9

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 73
    :cond_9
    return-void
.end method

.method public clone()Landroid/animation/Animator;
    .registers 3

    .prologue
    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .registers 3

    .prologue
    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mDuration:J

    return-wide v0
.end method

.method public getListeners()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStartDelay()J
    .registers 3

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mRunning:Z

    return v0
.end method

.method public isStarted()Z
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    move v1, v2

    .line 102
    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_d

    .line 106
    iput-boolean v2, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mRunning:Z

    .line 107
    return-void

    .line 103
    :cond_d
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 104
    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 102
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    move v1, v2

    .line 111
    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_d

    .line 115
    iput-boolean v2, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mRunning:Z

    .line 116
    return-void

    .line 112
    :cond_d
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 113
    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 111
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 120
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_b

    .line 124
    return-void

    .line 121
    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 122
    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 120
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mFirstFrameHelper:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->onAnimationStart(Landroid/animation/Animator;)V

    .line 132
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_13

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mRunning:Z

    .line 137
    return-void

    .line 133
    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 134
    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 132
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7
.end method

.method public removeAllListeners()V
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 152
    return-void
.end method

.method public removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method public rotationY(F)Lcom/android/launcher3/LauncherViewPropertyAnimator;
    .registers 4

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->ROTATION_Y:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 261
    iput p1, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mRotationY:F

    .line 262
    return-object p0
.end method

.method public scaleX(F)Lcom/android/launcher3/LauncherViewPropertyAnimator;
    .registers 4

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->SCALE_X:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 249
    iput p1, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mScaleX:F

    .line 250
    return-object p0
.end method

.method public scaleY(F)Lcom/android/launcher3/LauncherViewPropertyAnimator;
    .registers 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->SCALE_Y:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 255
    iput p1, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mScaleY:F

    .line 256
    return-object p0
.end method

.method public setDuration(J)Landroid/animation/Animator;
    .registers 6

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->DURATION:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 162
    iput-wide p1, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mDuration:J

    .line 163
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->INTERPOLATOR:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 169
    iput-object p1, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 170
    return-void
.end method

.method public setStartDelay(J)V
    .registers 6

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->START_DELAY:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 175
    iput-wide p1, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mStartDelay:J

    .line 176
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 180
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setupEndValues()V
    .registers 1

    .prologue
    .line 186
    return-void
.end method

.method public setupStartValues()V
    .registers 1

    .prologue
    .line 190
    return-void
.end method

.method public start()V
    .registers 5

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    .line 198
    new-instance v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;

    iget-object v1, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mTarget:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/FirstFrameAnimatorHelper;-><init>(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mFirstFrameHelper:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    .line 200
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->TRANSLATION_X:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mTranslationX:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 203
    :cond_24
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->TRANSLATION_Y:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 204
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 206
    :cond_35
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->SCALE_X:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 207
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mScaleX:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 209
    :cond_46
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->ROTATION_Y:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 210
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mRotationY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    .line 212
    :cond_57
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->SCALE_Y:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mScaleY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 215
    :cond_68
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->ALPHA:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 216
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 218
    :cond_79
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->START_DELAY:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 219
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget-wide v2, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mStartDelay:J

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 221
    :cond_8a
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->DURATION:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 222
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget-wide v2, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 224
    :cond_9b
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->INTERPOLATOR:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 225
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 227
    :cond_ac
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->WITH_LAYER:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 228
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 230
    :cond_bb
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 231
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 232
    invoke-static {p0}, Lcom/android/launcher3/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 233
    return-void
.end method

.method public translationX(F)Lcom/android/launcher3/LauncherViewPropertyAnimator;
    .registers 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->TRANSLATION_X:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 237
    iput p1, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mTranslationX:F

    .line 238
    return-object p0
.end method

.method public translationY(F)Lcom/android/launcher3/LauncherViewPropertyAnimator;
    .registers 4

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->TRANSLATION_Y:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 243
    iput p1, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mTranslationY:F

    .line 244
    return-object p0
.end method

.method public withLayer()Lcom/android/launcher3/LauncherViewPropertyAnimator;
    .registers 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;->WITH_LAYER:Lcom/android/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 273
    return-object p0
.end method
