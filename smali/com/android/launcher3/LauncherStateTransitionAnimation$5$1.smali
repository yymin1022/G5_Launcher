.class Lcom/android/launcher3/LauncherStateTransitionAnimation$5$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherStateTransitionAnimation$5;->getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherStateTransitionAnimation$5;

.field private final synthetic val$allAppsButtonView:Landroid/view/View;

.field private final synthetic val$revealView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherStateTransitionAnimation$5;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$5$1;->this$1:Lcom/android/launcher3/LauncherStateTransitionAnimation$5;

    iput-object p2, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$5$1;->val$allAppsButtonView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$5$1;->val$revealView:Landroid/view/View;

    .line 440
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$5$1;->val$revealView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$5$1;->val$allAppsButtonView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 453
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$5$1;->val$allAppsButtonView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$5$1;->val$allAppsButtonView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 446
    return-void
.end method
