.class public Lcom/android/launcher3/Folder$FolderAspect$1;
.super Ljava/lang/Object;
.source "FolderAspect.aj"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Folder;->ajc$interMethod$com_lge_launcher3_folder_FolderAspect$com_android_launcher3_Folder$exitSpringLoadedDragModeOnDrop(Lcom/android/launcher3/Folder;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/DropTarget;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Folder;

.field private final synthetic val$dragSource:Lcom/android/launcher3/DragSource;

.field private final synthetic val$dropTarget:Lcom/android/launcher3/DropTarget;

.field private final synthetic val$newItemInfo:Lcom/android/launcher3/ItemInfo;

.field private final synthetic val$oldItemInfo:Lcom/android/launcher3/ItemInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Folder;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/DropTarget;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Folder$FolderAspect$1;->this$0:Lcom/android/launcher3/Folder;

    iput-object p2, p0, Lcom/android/launcher3/Folder$FolderAspect$1;->val$dragSource:Lcom/android/launcher3/DragSource;

    iput-object p3, p0, Lcom/android/launcher3/Folder$FolderAspect$1;->val$dropTarget:Lcom/android/launcher3/DropTarget;

    iput-object p4, p0, Lcom/android/launcher3/Folder$FolderAspect$1;->val$oldItemInfo:Lcom/android/launcher3/ItemInfo;

    iput-object p5, p0, Lcom/android/launcher3/Folder$FolderAspect$1;->val$newItemInfo:Lcom/android/launcher3/ItemInfo;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/launcher3/Folder$FolderAspect$1;->this$0:Lcom/android/launcher3/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v6

    .line 57
    iget-object v1, p0, Lcom/android/launcher3/Folder$FolderAspect$1;->this$0:Lcom/android/launcher3/Folder;

    invoke-static {v1}, Lcom/android/launcher3/Folder;->ajc$get$mLauncher(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Folder$FolderAspect$1;->val$dragSource:Lcom/android/launcher3/DragSource;

    iget-object v3, p0, Lcom/android/launcher3/Folder$FolderAspect$1;->val$dropTarget:Lcom/android/launcher3/DropTarget;

    iget-object v4, p0, Lcom/android/launcher3/Folder$FolderAspect$1;->val$oldItemInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v5, p0, Lcom/android/launcher3/Folder$FolderAspect$1;->val$newItemInfo:Lcom/android/launcher3/ItemInfo;

    .line 56
    invoke-virtual/range {v0 .. v5}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->checkToEnterUninstallMode(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/DropTarget;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;)Z

    move-result v1

    .line 59
    if-eqz v1, :cond_2e

    .line 60
    if-nez v6, :cond_2d

    .line 61
    iget-object v1, p0, Lcom/android/launcher3/Folder$FolderAspect$1;->this$0:Lcom/android/launcher3/Folder;

    invoke-static {v1}, Lcom/android/launcher3/Folder;->ajc$get$mLauncher(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->enterUninstallMode(Lcom/android/launcher3/Launcher;)V

    .line 67
    :cond_2d
    :goto_2d
    return-void

    .line 64
    :cond_2e
    iget-object v0, p0, Lcom/android/launcher3/Folder$FolderAspect$1;->this$0:Lcom/android/launcher3/Folder;

    invoke-static {v0}, Lcom/android/launcher3/Folder;->ajc$get$mLauncher(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    .line 65
    const/16 v2, 0x12c

    const/4 v3, 0x0

    .line 64
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    goto :goto_2d
.end method
