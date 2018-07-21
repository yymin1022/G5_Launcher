.class Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;
.super Ljava/lang/Object;
.source "ScreenEffectPreviewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewAnimationController"
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0x2bc


# instance fields
.field private final mAnimStartDelay:I

.field private mIsStarted:Z

.field private mPreviewAnim:Landroid/animation/AnimatorSet;

.field private mPreviewAnimType:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 187
    iput-object p1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->this$0:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mPreviewAnim:Landroid/animation/AnimatorSet;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mIsStarted:Z

    .line 181
    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mPreviewAnimType:Ljava/lang/String;

    .line 188
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 189
    const v1, 0x7f0c001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 188
    iput v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mAnimStartDelay:I

    .line 190
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;)V
    .registers 1

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->onStartPreviewAnimation()V

    return-void
.end method

.method static synthetic access$1(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;)V
    .registers 1

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->onEndPreviewAnimation()V

    return-void
.end method

.method static synthetic access$2(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;)V
    .registers 1

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->startPreviewAnimation()V

    return-void
.end method

.method static synthetic access$3(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;)Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->this$0:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    return-object v0
.end method

.method private getInvalidateAnimation()Landroid/animation/ValueAnimator;
    .registers 3

    .prologue
    .line 285
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_1c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 286
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 287
    new-instance v1, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController$3;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController$3;-><init>(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 299
    return-object v0

    .line 285
    nop

    :array_1c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getVirtualScrollAnimation()Landroid/animation/ValueAnimator;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 259
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v1, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->this$0:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    invoke-static {v2}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->access$1(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;)Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;->getChildWidth()I

    move-result v2

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 260
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 261
    new-instance v1, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController$2;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController$2;-><init>(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 278
    return-object v0
.end method

.method private onEndPreviewAnimation()V
    .registers 6

    .prologue
    .line 250
    sget-object v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->TAG:Ljava/lang/String;

    const-string v1, "onEndPreviewAnimation() : %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mPreviewAnimType:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->clearAnimation()V

    .line 253
    return-void
.end method

.method private onStartPreviewAnimation()V
    .registers 6

    .prologue
    .line 236
    sget-object v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->TAG:Ljava/lang/String;

    const-string v1, "onStartPreviewAnimation() : %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mPreviewAnimType:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->this$0:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->access$1(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;)Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->this$0:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->access$1(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;)Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;->mChild:Landroid/view/View;

    if-nez v0, :cond_26

    .line 245
    :cond_25
    :goto_25
    return-void

    .line 242
    :cond_26
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->this$0:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->access$1(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;)Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 243
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->this$0:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->access$1(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;)Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->buildLayer()V

    goto :goto_25
.end method

.method private startPreviewAnimation()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 195
    iget-boolean v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mIsStarted:Z

    if-eqz v0, :cond_7

    .line 231
    :goto_6
    return-void

    .line 199
    :cond_7
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->this$0:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->access$0(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;)Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 200
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->this$0:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->access$0(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;)Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    :goto_19
    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mPreviewAnimType:Ljava/lang/String;

    .line 202
    sget-object v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->TAG:Ljava/lang/String;

    const-string v1, "startPreviewAnimation() : %s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mPreviewAnimType:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iput-boolean v4, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mIsStarted:Z

    .line 206
    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->clearAnimation()V

    .line 208
    invoke-direct {p0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->getVirtualScrollAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 209
    invoke-direct {p0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->getInvalidateAnimation()Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 211
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mPreviewAnim:Landroid/animation/AnimatorSet;

    .line 212
    iget-object v2, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mPreviewAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v5

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 213
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mPreviewAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController$1;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController$1;-><init>(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 228
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mPreviewAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 229
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mPreviewAnim:Landroid/animation/AnimatorSet;

    iget v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mAnimStartDelay:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 230
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mPreviewAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_6

    .line 200
    :cond_6b
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public clearAnimation()V
    .registers 4

    .prologue
    .line 322
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mPreviewAnim:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_5

    .line 349
    :goto_4
    return-void

    .line 330
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mIsStarted:Z

    .line 332
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mPreviewAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 344
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mPreviewAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 345
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mPreviewAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 346
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mPreviewAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 348
    :cond_2a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mPreviewAnim:Landroid/animation/AnimatorSet;

    goto :goto_4

    .line 333
    :cond_2e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 334
    if-eqz v0, :cond_12

    .line 338
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 339
    instance-of v2, v0, Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_12

    .line 340
    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    goto :goto_12
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mPreviewAnim:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_6

    .line 314
    const/4 v0, 0x0

    .line 316
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mPreviewAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    goto :goto_5
.end method

.method public isStarted()Z
    .registers 2

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->mIsStarted:Z

    return v0
.end method
