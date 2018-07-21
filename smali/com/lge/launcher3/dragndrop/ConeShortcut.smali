.class public Lcom/lge/launcher3/dragndrop/ConeShortcut;
.super Ljava/lang/Object;
.source "ConeShortcut.java"

# interfaces
.implements Lcom/android/launcher3/DragSource;


# instance fields
.field private mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/lge/launcher3/dragndrop/ConeShortcut;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 16
    return-void
.end method

.method private static final supportsAppInfoDropTarget_aroundBody0(Lcom/lge/launcher3/dragndrop/ConeShortcut;)Z
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method private static final supportsAppInfoDropTarget_aroundBody1$advice(Lcom/lge/launcher3/dragndrop/ConeShortcut;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4

    .prologue
    .line 67
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 68
    const/4 v0, 0x0

    .line 70
    :goto_7
    return v0

    :cond_8
    invoke-static {p0}, Lcom/lge/launcher3/dragndrop/ConeShortcut;->supportsAppInfoDropTarget_aroundBody0(Lcom/lge/launcher3/dragndrop/ConeShortcut;)Z

    move-result v0

    goto :goto_7
.end method


# virtual methods
.method public getIntrinsicIconScaleFactor()F
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V
    .registers 9

    .prologue
    .line 45
    instance-of v0, p1, Lcom/android/launcher3/ButtonDropTarget;

    if-nez v0, :cond_d

    .line 46
    const/16 v0, 0xdc

    .line 47
    iget-object v1, p0, Lcom/lge/launcher3/dragndrop/ConeShortcut;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 49
    :cond_d
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .registers 1

    .prologue
    .line 41
    return-void
.end method

.method public supportsAppInfoDropTarget()Z
    .registers 3

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->aspectOf()Lcom/lge/launcher3/allappsless/AllAppsLessAspect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/lge/launcher3/dragndrop/ConeShortcut;->supportsAppInfoDropTarget_aroundBody1$advice(Lcom/lge/launcher3/dragndrop/ConeShortcut;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    return v0
.end method

.method public supportsDeleteDropTarget()Z
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public supportsFlingToDelete()Z
    .registers 2

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method
