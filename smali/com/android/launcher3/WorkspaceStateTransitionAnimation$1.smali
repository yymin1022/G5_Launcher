.class Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WorkspaceStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->animateWorkspace(Lcom/android/launcher3/TransitionStates;IZILjava/util/HashMap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

.field private final synthetic val$accessibilityEnabled:Z

.field private final synthetic val$overviewPanel:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;ZLandroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;->this$0:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iput-boolean p2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;->val$accessibilityEnabled:Z

    iput-object p3, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;->val$overviewPanel:Landroid/view/ViewGroup;

    .line 455
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 458
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;->this$0:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iput-object v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 460
    iget-boolean v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;->val$accessibilityEnabled:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;->val$overviewPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1d

    .line 461
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;->val$overviewPanel:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 462
    const/16 v1, 0x40

    .line 461
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 464
    :cond_1d
    return-void
.end method
