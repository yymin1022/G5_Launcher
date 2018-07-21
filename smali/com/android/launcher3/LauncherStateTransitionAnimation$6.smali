.class Lcom/android/launcher3/LauncherStateTransitionAnimation$6;
.super Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromWidgets(Lcom/android/launcher3/Workspace$State;IZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$6;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    .line 470
    invoke-direct {p0}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;
    .registers 4

    .prologue
    .line 478
    new-instance v0, Lcom/android/launcher3/LauncherStateTransitionAnimation$6$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherStateTransitionAnimation$6$1;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation$6;Landroid/view/View;)V

    return-object v0
.end method

.method getMaterialRevealViewFinalAlpha(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 473
    const v0, 0x3e99999a    # 0.3f

    return v0
.end method
