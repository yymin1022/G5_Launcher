.class public Lcom/android/launcher3/DeleteDropTarget;
.super Lcom/android/launcher3/ButtonDropTarget;
.source "DeleteDropTarget.java"


# static fields
.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/android/launcher3/DeleteDropTarget;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/DeleteDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "DeleteDropTarget.java"

    const-class v2, Lcom/android/launcher3/DeleteDropTarget;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "onFinishInflate"

    const-string v3, "com.android.launcher3.DeleteDropTarget"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/DeleteDropTarget;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "supportsDrop"

    const-string v3, "com.android.launcher3.DeleteDropTarget"

    const-string v4, "com.android.launcher3.DragSource:java.lang.Object"

    const-string v5, "source:info"

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x3b

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/DeleteDropTarget;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static removeWorkspaceOrFolderItem(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .registers 11

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/droptarget/DeleteDropTargetAspect;->aspectOf()Lcom/lge/launcher3/droptarget/DeleteDropTargetAspect;

    move-result-object v3

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/DeleteDropTarget;->removeWorkspaceOrFolderItem_aroundBody5$advice(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/view/View;Lcom/lge/launcher3/droptarget/DeleteDropTargetAspect;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    return v0
.end method

.method private static final removeWorkspaceOrFolderItem_aroundBody4(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 92
    instance-of v1, p1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_1a

    .line 93
    invoke-static {p0, p1}, Lcom/android/launcher3/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;)V

    .line 122
    :cond_8
    :goto_8
    if-eqz p2, :cond_18

    .line 123
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 126
    :cond_18
    const/4 v0, 0x1

    :cond_19
    return v0

    .line 94
    :cond_1a
    instance-of v1, p1, Lcom/android/launcher3/FolderInfo;

    if-eqz v1, :cond_27

    .line 95
    check-cast p1, Lcom/android/launcher3/FolderInfo;

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->removeFolder(Lcom/android/launcher3/FolderInfo;)V

    .line 97
    invoke-static {p0, p1}, Lcom/android/launcher3/LauncherModel;->deleteFolderContentsFromDatabase(Landroid/content/Context;Lcom/android/launcher3/FolderInfo;)V

    goto :goto_8

    .line 98
    :cond_27
    instance-of v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v1, :cond_19

    .line 99
    check-cast p1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->removeAppWidget(Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 103
    invoke-static {p0, p1}, Lcom/android/launcher3/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/LauncherAppWidgetHost;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppWidgetInfo;->isCustomWidget()Z

    move-result v2

    if-nez v2, :cond_8

    .line 108
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppWidgetInfo;->isWidgetIdValid()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 111
    new-instance v2, Lcom/android/launcher3/DeleteDropTarget$1;

    invoke-direct {v2, v1, p1}, Lcom/android/launcher3/DeleteDropTarget$1;-><init>(Lcom/android/launcher3/LauncherAppWidgetHost;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 116
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/DeleteDropTarget$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_8
.end method

.method private static final removeWorkspaceOrFolderItem_aroundBody5$advice(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/view/View;Lcom/lge/launcher3/droptarget/DeleteDropTargetAspect;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 11

    .prologue
    .line 24
    invoke-static {p4, p5, p6}, Lcom/android/launcher3/DeleteDropTarget;->removeWorkspaceOrFolderItem_aroundBody4(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z

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
    invoke-static {p4}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v1

    invoke-virtual {p4}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    invoke-virtual {v1, v2, p5, p6}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->removeFolderItem(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/ItemInfo;Landroid/view/View;)V

    goto :goto_7
.end method

.method public static supportsDrop(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->aspectOf()Lcom/lge/launcher3/allappsless/AllAppsLessAspect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p0, v1}, Lcom/android/launcher3/DeleteDropTarget;->supportsDrop_aroundBody1$advice(Ljava/lang/Object;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    return v0
.end method

.method private static final supportsDrop_aroundBody0(Ljava/lang/Object;)Z
    .registers 2

    .prologue
    .line 53
    instance-of v0, p0, Lcom/android/launcher3/ShortcutInfo;

    if-nez v0, :cond_e

    .line 54
    instance-of v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-nez v0, :cond_e

    .line 55
    instance-of v0, p0, Lcom/android/launcher3/FolderInfo;

    if-nez v0, :cond_e

    .line 53
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private static final supportsDrop_aroundBody1$advice(Ljava/lang/Object;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 76
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 77
    instance-of v1, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-nez v1, :cond_16

    .line 78
    instance-of v1, p2, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_15

    check-cast p2, Lcom/android/launcher3/ShortcutInfo;

    iget v1, p2, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-eq v1, v0, :cond_16

    .line 77
    :cond_15
    const/4 v0, 0x0

    .line 80
    :cond_16
    :goto_16
    return v0

    :cond_17
    invoke-static {p2}, Lcom/android/launcher3/DeleteDropTarget;->supportsDrop_aroundBody0(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_16
.end method

.method private static final supportsDrop_aroundBody2(Lcom/android/launcher3/DeleteDropTarget;Lcom/android/launcher3/DragSource;Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 5

    .prologue
    .line 60
    invoke-interface {p1}, Lcom/android/launcher3/DragSource;->supportsDeleteDropTarget()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p2}, Lcom/android/launcher3/DeleteDropTarget;->supportsDrop(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static final supportsDrop_aroundBody3$advice(Lcom/android/launcher3/DeleteDropTarget;Lcom/android/launcher3/DragSource;Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lcom/android/launcher3/DragSource;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 11

    .prologue
    .line 129
    invoke-static {p0, p5, p6, p3}, Lcom/android/launcher3/DeleteDropTarget;->supportsDrop_aroundBody2(Lcom/android/launcher3/DeleteDropTarget;Lcom/android/launcher3/DragSource;Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v1

    .line 131
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 132
    invoke-interface {p8}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DeleteDropTarget;

    .line 134
    invoke-virtual {v0}, Lcom/android/launcher3/DeleteDropTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 133
    invoke-static {v0, p6}, Lcom/lge/launcher3/droptarget/ButtonDropTargetUtils;->isShortcutWithApplicationType(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v0

    .line 135
    if-nez v1, :cond_1e

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    .line 138
    :goto_1d
    return v0

    .line 135
    :cond_1e
    const/4 v0, 0x1

    goto :goto_1d

    :cond_20
    move v0, v1

    goto :goto_1d
.end method


# virtual methods
.method protected completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 5

    .prologue
    .line 65
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 72
    const/4 v1, 0x0

    .line 73
    iget-object v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v2, v2, Lcom/android/launcher3/Workspace;

    if-eqz v2, :cond_17

    .line 74
    iget-object v1, p0, Lcom/android/launcher3/DeleteDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getDragInfo()Lcom/android/launcher3/CellLayout$CellInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 76
    :cond_17
    iget-object v2, p0, Lcom/android/launcher3/DeleteDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v0, v1, p1}, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog;->showDialogFragment(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 77
    return-void
.end method

.method protected getAccessibilityDropConfirmation()Ljava/lang/String;
    .registers 3

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/launcher3/DeleteDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 3

    .prologue
    .line 81
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v0, v0, Lcom/android/launcher3/UninstallDropTarget$UninstallSource;

    if-eqz v0, :cond_d

    .line 82
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    check-cast v0, Lcom/android/launcher3/UninstallDropTarget$UninstallSource;

    invoke-interface {v0}, Lcom/android/launcher3/UninstallDropTarget$UninstallSource;->deferCompleteDropAfterUninstallActivity()V

    .line 84
    :cond_d
    invoke-super {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 85
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    sget-object v0, Lcom/android/launcher3/DeleteDropTarget;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 45
    :try_start_6
    invoke-super {p0}, Lcom/android/launcher3/ButtonDropTarget;->onFinishInflate()V

    .line 47
    invoke-virtual {p0}, Lcom/android/launcher3/DeleteDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f0b0000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeleteDropTarget;->mHoverColor:I

    .line 49
    const v0, 0x7f020060

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DeleteDropTarget;->setDrawable(I)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1b} :catch_23

    .line 50
    invoke-static {}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->aspectOf()Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$after$com_lge_launcher3_droptarget_ButtonDropTargetAspect$1$97a46da5(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_23
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->aspectOf()Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$after$com_lge_launcher3_droptarget_ButtonDropTargetAspect$1$97a46da5(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public onFlingToDelete(Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/PointF;)V
    .registers 13

    .prologue
    const/4 v6, 0x0

    .line 132
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/DragView;->setColor(I)V

    .line 133
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/DragView;->updateInitialScaleToCurrentScale()V

    .line 135
    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    .line 136
    new-instance v2, Lcom/android/launcher3/util/FlingAnimation;

    .line 137
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/DragView;->getMeasuredWidth()I

    move-result v1

    iget-object v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v3}, Lcom/android/launcher3/DragView;->getMeasuredHeight()I

    move-result v3

    .line 138
    iget-object v4, p0, Lcom/android/launcher3/DeleteDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/DeleteDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 137
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/launcher3/DeleteDropTarget;->getIconRect(IIII)Landroid/graphics/Rect;

    move-result-object v1

    .line 136
    invoke-direct {v2, p1, p2, v1, v0}, Lcom/android/launcher3/util/FlingAnimation;-><init>(Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/PointF;Landroid/graphics/Rect;Lcom/android/launcher3/DragLayer;)V

    .line 141
    invoke-virtual {v2}, Lcom/android/launcher3/util/FlingAnimation;->getDuration()I

    move-result v3

    .line 142
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    .line 149
    new-instance v4, Lcom/android/launcher3/DeleteDropTarget$2;

    invoke-direct {v4, p0, v8, v9, v3}, Lcom/android/launcher3/DeleteDropTarget$2;-><init>(Lcom/android/launcher3/DeleteDropTarget;JI)V

    .line 166
    new-instance v5, Lcom/android/launcher3/DeleteDropTarget$3;

    invoke-direct {v5, p0, p1}, Lcom/android/launcher3/DeleteDropTarget$3;-><init>(Lcom/android/launcher3/DeleteDropTarget;Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 175
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    .line 176
    const/4 v7, 0x0

    .line 175
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/DragLayer;->animateView(Lcom/android/launcher3/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 177
    return-void
.end method

.method protected supportsDrop(Lcom/android/launcher3/DragSource;Ljava/lang/Object;)Z
    .registers 12

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/DeleteDropTarget;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->aspectOf()Lcom/lge/launcher3/allappsless/AllAppsLessAspect;

    move-result-object v4

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p1

    move-object v6, p2

    move-object v8, v3

    invoke-static/range {v0 .. v8}, Lcom/android/launcher3/DeleteDropTarget;->supportsDrop_aroundBody3$advice(Lcom/android/launcher3/DeleteDropTarget;Lcom/android/launcher3/DragSource;Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lcom/android/launcher3/DragSource;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    return v0
.end method
