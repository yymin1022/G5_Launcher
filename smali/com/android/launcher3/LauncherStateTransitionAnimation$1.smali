.class Lcom/android/launcher3/LauncherStateTransitionAnimation$1;
.super Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToAllApps(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

.field private final synthetic val$startSearchAfterTransition:Z

.field private final synthetic val$toView:Lcom/android/launcher3/allapps/AllAppsContainerView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;ZLcom/android/launcher3/allapps/AllAppsContainerView;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$1;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iput-boolean p2, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$1;->val$startSearchAfterTransition:Z

    iput-object p3, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$1;->val$toView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    .line 133
    invoke-direct {p0}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;
    .registers 4

    .prologue
    .line 146
    new-instance v0, Lcom/android/launcher3/LauncherStateTransitionAnimation$1$1;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/LauncherStateTransitionAnimation$1$1;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation$1;Landroid/view/View;)V

    return-object v0
.end method

.method public getMaterialRevealViewFinalAlpha(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 136
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getMaterialRevealViewStartFinalRadius()F
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$1;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsButtonVisualSize:I

    .line 141
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method onTransitionComplete()V
    .registers 2

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$1;->val$startSearchAfterTransition:Z

    if-eqz v0, :cond_9

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$1;->val$toView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->startAppsSearch()V

    .line 160
    :cond_9
    return-void
.end method
