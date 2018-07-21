.class public Lcom/lge/launcher3/hotword/HotwordServiceAspect;
.super Ljava/lang/Object;
.source "HotwordServiceAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/hotword/HotwordServiceAspect;


# instance fields
.field public mEnableHotwordService:Z

.field public mFolderOpened:Z

.field private mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

.field public mLauncherState:Lcom/android/launcher3/Launcher$State;

.field public mWorkspaceState:Lcom/android/launcher3/Workspace$State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    :try_start_0
    const-class v0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$postClinit()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_hotword_HotwordServiceAspect"

    sget-object v2, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private requestHotwordDetectionIfNeeded()V
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    if-nez v0, :cond_5

    .line 128
    :goto_4
    return-void

    .line 123
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->mLauncherState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_20

    .line 124
    iget-object v0, p0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->mWorkspaceState:Lcom/android/launcher3/Workspace$State;

    sget-object v1, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v1, :cond_20

    .line 125
    iget-boolean v0, p0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->mEnableHotwordService:Z

    if-eqz v0, :cond_20

    .line 126
    iget-boolean v0, p0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->mFolderOpened:Z

    if-nez v0, :cond_20

    .line 123
    const/4 v0, 0x1

    .line 127
    :goto_1a
    iget-object v1, p0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-virtual {v1, v0}, Lcom/google/android/hotword/client/HotwordServiceClient;->requestHotwordDetection(Z)V

    goto :goto_4

    .line 123
    :cond_20
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$1$5fa1dc82(Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "(set(LauncherModel Launcher.mModel) && withincode(* *Launcher.onCreate(..)))"
    .end annotation

    .prologue
    .line 24
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 25
    sget-object v1, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_GOOGLE_HOTWORD:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v1}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 26
    new-instance v1, Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-direct {v1, v0}, Lcom/google/android/hotword/client/HotwordServiceClient;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    .line 28
    :cond_15
    return-void
.end method

.method public ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$10$d5a90007(Lorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "(execution(boolean CellLayout.addViewToCellLayout(..)) || (execution(* CellLayout.removeView*(..)) || execution(* CellLayout.removeAll*(..))))"
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    if-nez v0, :cond_5

    .line 101
    :cond_4
    :goto_4
    return-void

    .line 84
    :cond_5
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 85
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 86
    instance-of v2, v1, Lcom/android/launcher3/Workspace;

    if-eqz v2, :cond_4

    .line 90
    check-cast v1, Lcom/android/launcher3/Workspace;

    .line 91
    invoke-static {v0}, Lcom/lge/launcher3/hotword/HotwordServiceItds;->ajc$interMethodDispatch1$com_lge_launcher3_hotword_HotwordServiceItds$com_android_launcher3_CellLayout$enableHotwordServiceIfNeeded(Lcom/android/launcher3/CellLayout;)V

    .line 94
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v2

    .line 95
    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 96
    if-nez v0, :cond_39

    .line 97
    sget-object v0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CellLayout is NULL current page = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 100
    :cond_39
    iget-boolean v0, v1, Lcom/android/launcher3/CellLayout;->mEnableHotwordService:Z

    :try_start_3b
    iput-boolean v0, p0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->mEnableHotwordService:Z
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3d} :catch_47

    nop

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$13$b4d36875()V

    nop

    .line 101
    goto :goto_4

    .line 100
    :catch_47
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$13$b4d36875()V

    throw v0
.end method

.method public ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$11$39a4f627()V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(public void Launcher.openFolder(..))"
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->mFolderOpened:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3} :catch_d

    nop

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$13$b4d36875()V

    nop

    .line 105
    return-void

    .line 104
    :catch_d
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$13$b4d36875()V

    throw v0
.end method

.method public ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$12$7730e5ab()V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(public void Launcher.closeFolder(..))"
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->mFolderOpened:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3} :catch_d

    nop

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$13$b4d36875()V

    nop

    .line 109
    return-void

    .line 108
    :catch_d
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$13$b4d36875()V

    throw v0
.end method

.method public ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$13$b4d36875()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "(set(Launcher.State HotwordServiceAspect.mLauncherState) || (set(Workspace.State HotwordServiceAspect.mWorkspaceState) || (set(boolean HotwordServiceAspect.mEnableHotwordService) || set(boolean HotwordServiceAspect.mFolderOpened))))"
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$privMethod$com_lge_launcher3_hotword_HotwordServiceAspect$com_lge_launcher3_hotword_HotwordServiceAspect$requestHotwordDetectionIfNeeded()V

    .line 116
    return-void
.end method

.method public ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$2$398a2c76()V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(public void Launcher.onDestroy(..))"
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    .line 32
    return-void
.end method

.method public ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$3$57cefcc9()V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(protected void Launcher.onStart(..))"
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    if-eqz v0, :cond_9

    .line 36
    iget-object v0, p0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-virtual {v0}, Lcom/google/android/hotword/client/HotwordServiceClient;->onStart()V

    .line 38
    :cond_9
    return-void
.end method

.method public ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$4$c7103b03()V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(protected void Launcher.onStop(..))"
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    if-eqz v0, :cond_9

    .line 42
    iget-object v0, p0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-virtual {v0}, Lcom/google/android/hotword/client/HotwordServiceClient;->onStop()V

    .line 44
    :cond_9
    return-void
.end method

.method public ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$5$f9fbe031()V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(public void Launcher.onAttachedToWindow(..))"
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    if-eqz v0, :cond_9

    .line 48
    iget-object v0, p0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-virtual {v0}, Lcom/google/android/hotword/client/HotwordServiceClient;->onAttachedToWindow()V

    .line 50
    :cond_9
    return-void
.end method

.method public ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$6$e0ee9b14()V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(public void Launcher.onDetachedFromWindow(..))"
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    if-eqz v0, :cond_9

    .line 54
    iget-object v0, p0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-virtual {v0}, Lcom/google/android/hotword/client/HotwordServiceClient;->onDetachedFromWindow()V

    .line 56
    :cond_9
    return-void
.end method

.method public ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$7$144f138c(Lcom/android/launcher3/Launcher$State;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "state"
        value = "(set(Launcher.State Launcher.mState) && args(state))"
    .end annotation

    .prologue
    .line 59
    :try_start_0
    iput-object p1, p0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->mLauncherState:Lcom/android/launcher3/Launcher$State;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_c

    nop

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$13$b4d36875()V

    nop

    .line 60
    return-void

    .line 59
    :catch_c
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$13$b4d36875()V

    throw v0
.end method

.method public ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$8$3b7ed89c(Lcom/android/launcher3/Workspace$State;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "state"
        value = "(set(Workspace.State Workspace.mState) && args(state))"
    .end annotation

    .prologue
    .line 63
    :try_start_0
    iput-object p1, p0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->mWorkspaceState:Lcom/android/launcher3/Workspace$State;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_c

    nop

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$13$b4d36875()V

    nop

    .line 64
    return-void

    .line 63
    :catch_c
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$13$b4d36875()V

    throw v0
.end method

.method public ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$9$85665533(Lorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(void Workspace.notifyPageSwitchListener(..))"
    .end annotation

    .prologue
    .line 67
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 68
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 70
    if-nez v0, :cond_27

    .line 71
    sget-object v0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CellLayout is NULL current page = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_26
    return-void

    .line 74
    :cond_27
    iget-boolean v0, v0, Lcom/android/launcher3/CellLayout;->mEnableHotwordService:Z

    :try_start_29
    iput-boolean v0, p0, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->mEnableHotwordService:Z
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2b} :catch_35

    nop

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$13$b4d36875()V

    nop

    .line 75
    goto :goto_26

    .line 74
    :catch_35
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$13$b4d36875()V

    throw v0
.end method

.method public ajc$privMethod$com_lge_launcher3_hotword_HotwordServiceAspect$com_lge_launcher3_hotword_HotwordServiceAspect$requestHotwordDetectionIfNeeded()V
    .registers 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->requestHotwordDetectionIfNeeded()V

    return-void
.end method
