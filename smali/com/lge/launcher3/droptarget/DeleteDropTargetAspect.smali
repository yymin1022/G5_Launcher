.class public Lcom/lge/launcher3/droptarget/DeleteDropTargetAspect;
.super Ljava/lang/Object;
.source "DeleteDropTargetAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/droptarget/DeleteDropTargetAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/droptarget/DeleteDropTargetAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/droptarget/DeleteDropTargetAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_droptarget_DeleteDropTargetAspect$1$b72b5a2cproceed(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-virtual {p3, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/droptarget/DeleteDropTargetAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/droptarget/DeleteDropTargetAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/droptarget/DeleteDropTargetAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/droptarget/DeleteDropTargetAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/droptarget/DeleteDropTargetAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/droptarget/DeleteDropTargetAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/droptarget/DeleteDropTargetAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_droptarget_DeleteDropTargetAspect"

    sget-object v2, Lcom/lge/launcher3/droptarget/DeleteDropTargetAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/droptarget/DeleteDropTargetAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/droptarget/DeleteDropTargetAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/droptarget/DeleteDropTargetAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/droptarget/DeleteDropTargetAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_launcher3_droptarget_DeleteDropTargetAspect$1$b72b5a2c(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 8
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "launcher,item,view,ajc$aroundClosure"
        value = "(execution(public boolean DeleteDropTarget.removeWorkspaceOrFolderItem(..)) && args(launcher, item, view))"
    .end annotation

    .prologue
    .line 24
    invoke-static {p1, p2, p3, p4}, Lcom/lge/launcher3/droptarget/DeleteDropTargetAspect;->ajc$around$com_lge_launcher3_droptarget_DeleteDropTargetAspect$1$b72b5a2cproceed(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    .line 25
    if-nez v0, :cond_8

    .line 26
    const/4 v0, 0x0

    .line 30
    :goto_7
    return v0

    .line 29
    :cond_8
    invoke-static {p1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->removeFolderItem(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/ItemInfo;Landroid/view/View;)V

    goto :goto_7
.end method
