.class Lcom/android/launcher3/LauncherStateTransitionAnimation$4;
.super Ljava/lang/Object;
.source "LauncherStateTransitionAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToOverlay(Lcom/android/launcher3/Workspace$State;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZLcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

.field private final synthetic val$animated:Z

.field private final synthetic val$fromView:Landroid/view/View;

.field private final synthetic val$layerViews:Ljava/util/HashMap;

.field private final synthetic val$stateAnimation:Landroid/animation/AnimatorSet;

.field private final synthetic val$toView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Landroid/animation/AnimatorSet;Landroid/view/View;ZLandroid/view/View;Ljava/util/HashMap;)V
    .registers 7

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$4;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iput-object p2, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$4;->val$stateAnimation:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$4;->val$fromView:Landroid/view/View;

    iput-boolean p4, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$4;->val$animated:Z

    iput-object p5, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$4;->val$toView:Landroid/view/View;

    iput-object p6, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$4;->val$layerViews:Ljava/util/HashMap;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 368
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$4;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$4;->val$stateAnimation:Landroid/animation/AnimatorSet;

    if-eq v0, v1, :cond_a

    .line 388
    :goto_9
    return-void

    .line 370
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$4;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$4;->val$fromView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$4;->val$animated:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 371
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$4;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$4;->val$toView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$4;->val$animated:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 374
    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v2

    .line 375
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$4;->val$layerViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2a
    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 385
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$4;->val$toView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 387
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$4;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_9

    .line 375
    :cond_3d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 376
    iget-object v1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$4;->val$layerViews:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_57

    .line 377
    const/4 v1, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 379
    :cond_57
    if-eqz v2, :cond_2a

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isViewAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 380
    invoke-virtual {v0}, Landroid/view/View;->buildLayer()V

    goto :goto_2a
.end method
