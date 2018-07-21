.class public Lcom/lge/launcher3/folder/FolderAspect;
.super Ljava/lang/Object;
.source "FolderAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/folder/FolderAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    :try_start_0
    const-class v0, Lcom/lge/launcher3/folder/FolderAspect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/folder/FolderAspect;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/lge/launcher3/folder/FolderAspect;->ajc$postClinit()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/folder/FolderAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_folder_FolderAspect$2$87c1b84fproceed(Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_launcher3_folder_FolderAspect$com_lge_launcher3_folder_FolderAspect$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/folder/FolderAspect;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_launcher3_folder_FolderAspect$com_lge_launcher3_folder_FolderAspect$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/lge/launcher3/folder/FolderAspect;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_folder_FolderAspect$com_android_launcher3_Folder$exitSpringLoadedDragModeOnDrop(Lcom/android/launcher3/Folder;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/DropTarget;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;)Ljava/lang/Runnable;
    .registers 11

    .prologue
    .line 49
    new-instance v0, Lcom/android/launcher3/Folder$FolderAspect$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/Folder$FolderAspect$1;-><init>(Lcom/android/launcher3/Folder;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/DropTarget;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;)V

    .line 69
    return-object v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_folder_FolderAspect$com_android_launcher3_Folder$getExpandDuration(Lcom/android/launcher3/Folder;)I
    .registers 2

    .prologue
    .line 76
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mExpandDuration(Lcom/android/launcher3/Folder;)I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderAspect$com_android_launcher3_Folder$exitSpringLoadedDragModeOnDrop(Lcom/android/launcher3/Folder;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/DropTarget;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;)Ljava/lang/Runnable;
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/Folder;->exitSpringLoadedDragModeOnDrop(Lcom/android/launcher3/DragSource;Lcom/android/launcher3/DropTarget;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderAspect$com_android_launcher3_Folder$getExpandDuration(Lcom/android/launcher3/Folder;)I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getExpandDuration()I

    move-result v0

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/folder/FolderAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/folder/FolderAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/folder/FolderAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/folder/FolderAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/folder/FolderAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/folder/FolderAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/folder/FolderAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_folder_FolderAspect"

    sget-object v2, Lcom/lge/launcher3/folder/FolderAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/folder/FolderAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/folder/FolderAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/folder/FolderAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/folder/FolderAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_folder_FolderAspect$3$37780436()V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(public void Launcher.onDestroy())"
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->getInstance()Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->destroy()V

    .line 98
    return-void
.end method

.method public ajc$around$com_lge_launcher3_folder_FolderAspect$2$87c1b84f(Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "v,ajc$aroundClosure"
        value = "(execution(public boolean Folder.onLongClick(..)) && args(v))"
    .end annotation

    .prologue
    .line 83
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Folder;

    .line 84
    invoke-static {v0}, Lcom/android/launcher3/Folder;->ajc$get$mLauncher(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 86
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/launcher3/memory/MemoryUtils;->hasAvailableFileSystemMemory(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 87
    invoke-static {}, Lcom/lge/launcher3/folder/FolderAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_folder_FolderAspect$com_lge_launcher3_folder_FolderAspect$TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Memory is full. so onLongClick() is canceled."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    .line 91
    :goto_1b
    return v0

    :cond_1c
    invoke-static {p1, p2}, Lcom/lge/launcher3/folder/FolderAspect;->ajc$around$com_lge_launcher3_folder_FolderAspect$2$87c1b84fproceed(Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    goto :goto_1b
.end method

.method public ajc$before$com_lge_launcher3_folder_FolderAspect$1$4c5eadfd(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZLorg/aspectj/lang/JoinPoint;)V
    .registers 10
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = "target,d,isFlingToDelete,success"
        value = "(execution(public void Folder.onDropCompleted(..)) && args(target, d, isFlingToDelete, success))"
    .end annotation

    .prologue
    .line 32
    invoke-interface {p5}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Folder;

    .line 34
    if-nez p3, :cond_a

    if-nez p4, :cond_15

    .line 35
    :cond_a
    invoke-static {v0}, Lcom/android/launcher3/Folder;->ajc$get$mLauncher(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    .line 36
    const/16 v2, 0x12c

    const/4 v3, 0x0

    .line 35
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 38
    :cond_15
    return-void
.end method
