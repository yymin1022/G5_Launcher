.class Lcom/android/launcher3/LauncherStateTransitionAnimation$5;
.super Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromAllApps(Lcom/android/launcher3/Workspace$State;IZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mAllAppsToPanelDelta:[I

.field final synthetic this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$5;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    .line 424
    invoke-direct {p0}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;
    .registers 4

    .prologue
    .line 440
    new-instance v0, Lcom/android/launcher3/LauncherStateTransitionAnimation$5$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/LauncherStateTransitionAnimation$5$1;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation$5;Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method

.method getMaterialRevealViewFinalAlpha(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 430
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method getMaterialRevealViewStartFinalRadius()F
    .registers 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$5;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsButtonVisualSize:I

    .line 435
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method
