.class public Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;
.super Ljava/lang/Object;
.source "SBProviderLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SBProviderScrollAnimation"
.end annotation


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mObjAnimator:Landroid/animation/ObjectAnimator;

.field private mScrollDuration:I

.field private mScrollTransY:I

.field final synthetic this$0:Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x12c

    .line 219
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->mScrollDuration:I

    .line 221
    iput v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->mScrollTransY:I

    .line 222
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 223
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->mObjAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;Landroid/animation/AnimatorSet;)V
    .registers 2

    .prologue
    .line 222
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public initAnimator(I)V
    .registers 7

    .prologue
    .line 226
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_42

    .line 227
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 228
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    .line 229
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->mScrollTransY:I

    mul-int/2addr v4, p1

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 228
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 230
    iget v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->mScrollDuration:I

    int-to-long v2, v1

    .line 229
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 228
    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->mObjAnimator:Landroid/animation/ObjectAnimator;

    .line 231
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->mObjAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 232
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation$1;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation$1;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 252
    :cond_42
    return-void
.end method

.method public resetAniamtion()V
    .registers 2

    .prologue
    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 262
    return-void
.end method

.method public startAniamtion()V
    .registers 5

    .prologue
    .line 255
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 256
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->mObjAnimator:Landroid/animation/ObjectAnimator;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 257
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 259
    :cond_1e
    return-void
.end method
