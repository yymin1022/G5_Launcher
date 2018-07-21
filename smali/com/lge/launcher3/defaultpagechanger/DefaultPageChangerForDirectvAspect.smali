.class public Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;
.super Ljava/lang/Object;
.source "DefaultPageChangerForDirectvAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect"

    sget-object v2, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/defaultpagechanger/DefaultPageChangerForDirectvAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$1$c2bb5bcf(Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "(execution(* CellLayout.removeView*(..)) || execution(* CellLayout.removeAll*(..)))"
    .end annotation

    .prologue
    .line 16
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 17
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 18
    instance-of v1, v0, Lcom/android/launcher3/Workspace;

    if-nez v1, :cond_f

    .line 24
    :goto_e
    return-void

    .line 22
    :cond_f
    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 23
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$changeDefaultPageForDirectv(Lcom/android/launcher3/Workspace;Z)V

    goto :goto_e
.end method

.method public ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$2$267eecb1(Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "(execution(public void Workspace.createCustomContentContainer(..)) || (execution(public void Workspace.removeCustomContentPage(..)) || execution(public void Workspace.onEndReordering(..))))"
    .end annotation

    .prologue
    .line 29
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 30
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$changeDefaultPageForDirectv(Lcom/android/launcher3/Workspace;Z)V

    .line 31
    return-void
.end method

.method public ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$3$8845a2dc(Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(public void Workspace.onDrop(..))"
    .end annotation

    .prologue
    .line 34
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 35
    invoke-static {v0}, Lcom/android/launcher3/Workspace;->ajc$get$mDragInfo(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/CellLayout$CellInfo;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 36
    invoke-static {v0}, Lcom/android/launcher3/Workspace;->ajc$get$mDragInfo(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/CellLayout$CellInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/CellLayout$CellInfo;->ajc$get$cell(Lcom/android/launcher3/CellLayout$CellInfo;)Landroid/view/View;

    move-result-object v1

    .line 37
    instance-of v1, v1, Landroid/appwidget/AppWidgetHostView;

    if-eqz v1, :cond_1c

    .line 38
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$changeDefaultPageForDirectv(Lcom/android/launcher3/Workspace;Z)V

    .line 41
    :cond_1c
    return-void
.end method

.method public ajc$after$com_lge_launcher3_defaultpagechanger_DefaultPageChangerForDirectvAspect$4$398993e2(Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(public void Launcher.completeAddAppWidget(..))"
    .end annotation

    .prologue
    .line 44
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 45
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_10

    .line 47
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$changeDefaultPageForDirectv(Lcom/android/launcher3/Workspace;Z)V

    .line 49
    :cond_10
    return-void
.end method
