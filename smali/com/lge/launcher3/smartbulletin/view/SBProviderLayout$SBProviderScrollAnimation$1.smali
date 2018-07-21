.class Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation$1;
.super Ljava/lang/Object;
.source "SBProviderLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->initAnimator(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation$1;->this$1:Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 248
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation$1;->this$1:Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->access$0(Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;Landroid/animation/AnimatorSet;)V

    .line 249
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 243
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation$1;->this$1:Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->access$0(Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;Landroid/animation/AnimatorSet;)V

    .line 244
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 239
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 235
    return-void
.end method
