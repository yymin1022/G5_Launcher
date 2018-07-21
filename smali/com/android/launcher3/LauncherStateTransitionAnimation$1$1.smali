.class Lcom/android/launcher3/LauncherStateTransitionAnimation$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherStateTransitionAnimation$1;->getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherStateTransitionAnimation$1;

.field private final synthetic val$allAppsButtonView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherStateTransitionAnimation$1;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$1$1;->this$1:Lcom/android/launcher3/LauncherStateTransitionAnimation$1;

    iput-object p2, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$1$1;->val$allAppsButtonView:Landroid/view/View;

    .line 146
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$1$1;->val$allAppsButtonView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$1$1;->val$allAppsButtonView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    return-void
.end method
