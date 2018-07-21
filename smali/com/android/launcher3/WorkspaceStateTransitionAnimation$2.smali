.class Lcom/android/launcher3/WorkspaceStateTransitionAnimation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WorkspaceStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->animateSearchBar(Lcom/android/launcher3/TransitionStates;ZIZLjava/util/HashMap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

.field private final synthetic val$accessibilityEnabled:Z

.field private final synthetic val$finalSearchBarAlpha:F

.field private final synthetic val$searchBar:Landroid/view/View;

.field private final synthetic val$searchBarWillBeShown:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;ZLandroid/view/View;FZ)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$2;->this$0:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iput-boolean p2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$2;->val$searchBarWillBeShown:Z

    iput-object p3, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$2;->val$searchBar:Landroid/view/View;

    iput p4, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$2;->val$finalSearchBarAlpha:F

    iput-boolean p5, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$2;->val$accessibilityEnabled:Z

    .line 512
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$2;->val$searchBarWillBeShown:Z

    if-nez v0, :cond_12

    .line 528
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$2;->val$searchBar:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$2;->val$finalSearchBarAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 529
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$2;->val$searchBar:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$2;->val$accessibilityEnabled:Z

    invoke-static {v0, v1}, Lcom/android/launcher3/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 531
    :cond_12
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$2;->val$searchBarWillBeShown:Z

    if-eqz v0, :cond_12

    .line 518
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$2;->val$searchBar:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$2;->val$finalSearchBarAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 519
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$2;->val$searchBar:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$2;->val$accessibilityEnabled:Z

    invoke-static {v0, v1}, Lcom/android/launcher3/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 521
    :cond_12
    return-void
.end method
