.class Lcom/android/launcher3/LauncherStateTransitionAnimation$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromOverlay(Lcom/android/launcher3/Workspace$State;ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLjava/lang/Runnable;Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

.field private final synthetic val$animated:Z

.field private final synthetic val$contentView:Landroid/view/View;

.field private final synthetic val$fromView:Landroid/view/View;

.field private final synthetic val$layerViews:Ljava/util/HashMap;

.field private final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;

.field private final synthetic val$overlaySearchBarView:Landroid/view/View;

.field private final synthetic val$pCb:Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

.field private final synthetic val$toView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Landroid/view/View;ZLandroid/view/View;Ljava/lang/Runnable;Ljava/util/HashMap;Landroid/view/View;Landroid/view/View;Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V
    .registers 10

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iput-object p2, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$fromView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$animated:Z

    iput-object p4, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$toView:Landroid/view/View;

    iput-object p5, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$onCompleteRunnable:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$layerViews:Ljava/util/HashMap;

    iput-object p7, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$contentView:Landroid/view/View;

    iput-object p8, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$overlaySearchBarView:Landroid/view/View;

    iput-object p9, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$pCb:Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

    .line 634
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 637
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$fromView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$fromView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$animated:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 639
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$toView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$animated:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 642
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_27

    .line 643
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 647
    :cond_27
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$layerViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_31
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 654
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$contentView:Landroid/view/View;

    if-eqz v0, :cond_4a

    .line 655
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$contentView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 656
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$contentView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 657
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$contentView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 659
    :cond_4a
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$overlaySearchBarView:Landroid/view/View;

    if-eqz v0, :cond_53

    .line 660
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$overlaySearchBarView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 664
    :cond_53
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iput-object v6, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 665
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$pCb:Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->onTransitionComplete()V

    .line 666
    return-void

    .line 647
    :cond_5d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 648
    iget-object v1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$layerViews:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_31

    .line 649
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_31
.end method
