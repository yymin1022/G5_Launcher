.class public Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;
.super Ljava/lang/Object;
.source "HomescreenBlurAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_wallpaperblur_HomescreenBlurAspect"

    sget-object v2, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_wallpaperblur_HomescreenBlurAspect$1$b65b1a93(Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(protected void Launcher.setupViews())"
    .end annotation

    .prologue
    .line 31
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 33
    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->setLauncher(Lcom/android/launcher3/Launcher;)V

    .line 34
    return-void
.end method

.method public ajc$after$com_lge_launcher3_wallpaperblur_HomescreenBlurAspect$2$37780436(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(public void Launcher.onDestroy())"
    .end annotation

    .prologue
    .line 39
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 41
    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->destroy()V

    .line 42
    return-void
.end method

.method public ajc$after$com_lge_launcher3_wallpaperblur_HomescreenBlurAspect$3$15e41f19(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(protected void Workspace.onResume())"
    .end annotation

    .prologue
    .line 53
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 54
    invoke-static {v0}, Lcom/android/launcher3/Workspace;->ajc$get$mLauncher(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->updateBackgroundViewContents()V

    .line 57
    return-void
.end method

.method public ajc$after$com_lge_launcher3_wallpaperblur_HomescreenBlurAspect$4$734fe9b(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;Lorg/aspectj/lang/JoinPoint;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Workspace$State;",
            "Lcom/android/launcher3/Workspace$State;",
            "IZZ",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/aspectj/lang/JoinPoint;",
            ")V"
        }
    .end annotation

    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "fromState,toState,toPage,animated,hasOverlaySearchBar,layerViews"
        value = "(execution(public AnimatorSet WorkspaceStateTransitionAnimation.getAnimationToState(Workspace.State, Workspace.State, int, boolean, boolean, HashMap<(View, Integer)>)) && args(fromState, toState, toPage, animated, hasOverlaySearchBar, layerViews))"
    .end annotation

    .prologue
    .line 80
    invoke-interface {p7}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    .line 81
    invoke-static {v0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->ajc$get$mLauncher(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    .line 82
    invoke-static {v1}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    move-result-object v1

    .line 84
    invoke-static {v0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->ajc$get$mStateAnimator(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;)Landroid/animation/AnimatorSet;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 86
    invoke-static {v0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->ajc$get$mOverlayTransitionTime(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;)I

    move-result v2

    .line 85
    invoke-virtual {v1, p1, p2, v2}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->getWorkspaceStateAnimationListener(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;I)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    .line 88
    invoke-static {v0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->ajc$get$mStateAnimator(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 92
    :cond_23
    :goto_23
    return-void

    .line 89
    :cond_24
    sget-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne p2, v0, :cond_23

    .line 90
    invoke-virtual {v1}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->clearBackground()V

    goto :goto_23
.end method

.method public ajc$after$com_lge_launcher3_wallpaperblur_HomescreenBlurAspect$5$ef40765c(Lcom/android/launcher3/FolderIcon;Lorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "folderIcon"
        value = "(execution(public void Launcher.openFolder(FolderIcon)) && args(folderIcon))"
    .end annotation

    .prologue
    .line 106
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 107
    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    move-result-object v0

    .line 109
    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->getFolder()Lcom/android/launcher3/Folder;

    move-result-object v1

    .line 110
    sget-object v2, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;->TOP_DRAGLAYER:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

    invoke-static {v1}, Lcom/lge/launcher3/folder/FolderAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderAspect$com_android_launcher3_Folder$getExpandDuration(Lcom/android/launcher3/Folder;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->showBackground(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;I)V

    .line 111
    return-void
.end method

.method public ajc$after$com_lge_launcher3_wallpaperblur_HomescreenBlurAspect$6$9b79f988(Lcom/android/launcher3/Folder;Lorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "folder"
        value = "(execution(public void Launcher.closeFolder(Folder, ..)) && args(folder, ..))"
    .end annotation

    .prologue
    .line 119
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 120
    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    move-result-object v0

    .line 122
    sget-object v1, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;->TOP_DRAGLAYER:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

    invoke-static {p1}, Lcom/lge/launcher3/folder/FolderAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderAspect$com_android_launcher3_Folder$getExpandDuration(Lcom/android/launcher3/Folder;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->hideBackground(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;I)V

    .line 123
    return-void
.end method
