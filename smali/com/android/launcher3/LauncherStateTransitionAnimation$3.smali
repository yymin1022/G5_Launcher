.class Lcom/android/launcher3/LauncherStateTransitionAnimation$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LauncherStateTransitionAnimation.java"


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

.field private final synthetic val$hideSearchBar:Z

.field private final synthetic val$layerViews:Ljava/util/HashMap;

.field private final synthetic val$pCb:Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

.field private final synthetic val$revealView:Landroid/view/View;

.field private final synthetic val$toView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Landroid/view/View;ZLandroid/view/View;Landroid/view/View;Ljava/util/HashMap;ZLcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V
    .registers 9

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iput-object p2, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->val$fromView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->val$animated:Z

    iput-object p4, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->val$toView:Landroid/view/View;

    iput-object p5, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->val$revealView:Landroid/view/View;

    iput-object p6, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->val$layerViews:Ljava/util/HashMap;

    iput-boolean p7, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->val$hideSearchBar:Z

    iput-object p8, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->val$pCb:Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

    .line 326
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 329
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->val$fromView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->val$animated:Z

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 330
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->val$toView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->val$animated:Z

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 333
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->val$revealView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->val$layerViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 342
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->val$hideSearchBar:Z

    if-eqz v0, :cond_35

    .line 343
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCb:Lcom/android/launcher3/LauncherStateTransitionAnimation$Callbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherStateTransitionAnimation$Callbacks;->onStateTransitionHideSearchBar()V

    .line 347
    :cond_35
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iput-object v5, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 348
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->val$pCb:Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->onTransitionComplete()V

    .line 349
    return-void

    .line 336
    :cond_3f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 337
    iget-object v1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->val$layerViews:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_24

    .line 338
    invoke-virtual {v0, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_24
.end method
