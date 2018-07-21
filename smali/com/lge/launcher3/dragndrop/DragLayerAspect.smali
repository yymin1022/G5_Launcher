.class public Lcom/lge/launcher3/dragndrop/DragLayerAspect;
.super Ljava/lang/Object;
.source "DragLayerAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/dragndrop/DragLayerAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    :try_start_0
    const-class v0, Lcom/lge/launcher3/dragndrop/DragLayerAspect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/dragndrop/DragLayerAspect;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/lge/launcher3/dragndrop/DragLayerAspect;->ajc$postClinit()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/dragndrop/DragLayerAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_dragndrop_DragLayerAspect$com_android_launcher3_DragLayer$dropFileManagerShortcut(Lcom/android/launcher3/DragLayer;Landroid/content/ClipData;)V
    .registers 6

    .prologue
    .line 63
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_9

    .line 87
    :cond_8
    :goto_8
    return-void

    .line 67
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 69
    const-string v1, "DragLayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DragEvent.ACTION_DROP, Intent = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    if-eqz v0, :cond_8

    invoke-static {p0}, Lcom/android/launcher3/DragLayer;->ajc$get$mLauncher(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 75
    invoke-static {p0}, Lcom/android/launcher3/DragLayer;->ajc$get$mLauncher(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isWorkspaceState(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    .line 76
    invoke-static {p0}, Lcom/android/launcher3/DragLayer;->ajc$get$mLauncher(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v2

    .line 77
    if-nez v1, :cond_46

    if-eqz v2, :cond_8

    .line 81
    :cond_46
    invoke-static {p0}, Lcom/android/launcher3/DragLayer;->ajc$get$mLauncher(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_8

    .line 86
    invoke-static {p0}, Lcom/android/launcher3/DragLayer;->ajc$get$mLauncher(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    invoke-static {v2, v0, v1}, Lcom/lge/launcher3/dragndrop/FileMannagerIconDropAspect;->fileDropShortCutCreate(Lcom/android/launcher3/Launcher;Landroid/content/Intent;I)V

    goto :goto_8
.end method

.method public static ajc$interMethod$com_lge_launcher3_dragndrop_DragLayerAspect$com_android_launcher3_DragLayer$floatingFileManagerDragEvent(Lcom/android/launcher3/DragLayer;Landroid/view/DragEvent;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_1a

    .line 55
    :goto_8
    :pswitch_8
    return v0

    .line 43
    :pswitch_9
    const-string v0, "DragLayer"

    const-string v1, "DragEvent.ACTION_DRAG_STARTED"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x1

    goto :goto_8

    .line 48
    :pswitch_12
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    .line 50
    invoke-static {p0, v1}, Lcom/lge/launcher3/dragndrop/DragLayerAspect;->ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragLayerAspect$com_android_launcher3_DragLayer$dropFileManagerShortcut(Lcom/android/launcher3/DragLayer;Landroid/content/ClipData;)V

    goto :goto_8

    .line 41
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_12
    .end packed-switch
.end method

.method public static ajc$interMethod$com_lge_launcher3_dragndrop_DragLayerAspect$com_android_launcher3_DragLayer$onDragEvent(Lcom/android/launcher3/DragLayer;Landroid/view/DragEvent;)Z
    .registers 5

    .prologue
    .line 22
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_73

    .line 23
    const-string v0, "DragNDrop"

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 25
    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getResult()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_73
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_8a

    const-string v1, "FloatingActivity"

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 30
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/DragLayerAspect;->ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragLayerAspect$com_android_launcher3_DragLayer$floatingFileManagerDragEvent(Lcom/android/launcher3/DragLayer;Landroid/view/DragEvent;)Z

    move-result v0

    .line 32
    :goto_89
    return v0

    :cond_8a
    invoke-static {p0}, Lcom/android/launcher3/DragLayer;->ajc$get$mDragController(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/DragController;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$onDragEvent(Lcom/android/launcher3/DragController;Landroid/view/DragEvent;)Z

    move-result v0

    goto :goto_89
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragLayerAspect$com_android_launcher3_DragLayer$dropFileManagerShortcut(Lcom/android/launcher3/DragLayer;Landroid/content/ClipData;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/DragLayer;->ajc$interMethodDispatch2$com_lge_launcher3_dragndrop_DragLayerAspect$dropFileManagerShortcut(Landroid/content/ClipData;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragLayerAspect$com_android_launcher3_DragLayer$floatingFileManagerDragEvent(Lcom/android/launcher3/DragLayer;Landroid/view/DragEvent;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/DragLayer;->ajc$interMethodDispatch2$com_lge_launcher3_dragndrop_DragLayerAspect$floatingFileManagerDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragLayerAspect$com_android_launcher3_DragLayer$onDragEvent(Lcom/android/launcher3/DragLayer;Landroid/view/DragEvent;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/DragLayer;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/dragndrop/DragLayerAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/dragndrop/DragLayerAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/dragndrop/DragLayerAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/dragndrop/DragLayerAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/dragndrop/DragLayerAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/dragndrop/DragLayerAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/dragndrop/DragLayerAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_dragndrop_DragLayerAspect"

    sget-object v2, Lcom/lge/launcher3/dragndrop/DragLayerAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/dragndrop/DragLayerAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/dragndrop/DragLayerAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/dragndrop/DragLayerAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/dragndrop/DragLayerAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
