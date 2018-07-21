.class Lcom/android/launcher3/Folder$12;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Folder;->replaceFolderWithFinalItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Folder;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    .line 1149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 1152
    iget-object v0, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v1, v1, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher3/FolderInfo;->container:J

    iget-object v1, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v1, v1, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v4, v1, Lcom/android/launcher3/FolderInfo;->screenId:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/launcher3/Launcher;->getCellLayout(JJ)Lcom/android/launcher3/CellLayout;

    move-result-object v9

    .line 1153
    if-eqz v9, :cond_2b

    iget-object v0, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget v0, v0, Lcom/android/launcher3/FolderInfo;->cellX:I

    iget-object v1, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v1, v1, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget v1, v1, Lcom/android/launcher3/FolderInfo;->cellY:I

    invoke-virtual {v9, v0, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/FolderIcon;

    if-nez v0, :cond_2c

    .line 1183
    :cond_2b
    :goto_2b
    return-void

    .line 1156
    :cond_2c
    const/4 v1, 0x0

    .line 1158
    iget-object v0, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->getItemCount()I

    move-result v0

    if-ne v0, v10, :cond_6a

    .line 1159
    iget-object v0, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    .line 1160
    iget-object v0, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v9, v1}, Lcom/android/launcher3/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v8

    .line 1161
    iget-object v0, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v2, v2, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher3/FolderInfo;->container:J

    .line 1162
    iget-object v4, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v4, v4, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v4, v4, Lcom/android/launcher3/FolderInfo;->screenId:J

    iget-object v6, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v6, v6, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget v6, v6, Lcom/android/launcher3/FolderInfo;->cellX:I

    iget-object v7, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v7, v7, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget v7, v7, Lcom/android/launcher3/FolderInfo;->cellY:I

    .line 1161
    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V

    move-object v1, v8

    .line 1164
    :cond_6a
    iget-object v0, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->getItemCount()I

    move-result v0

    if-gt v0, v10, :cond_a6

    .line 1166
    iget-object v0, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v2, v2, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-static {v0, v2}, Lcom/android/launcher3/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;)V

    .line 1167
    if-eqz v9, :cond_86

    .line 1169
    iget-object v0, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->mFolderIcon:Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v9, v0}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 1171
    :cond_86
    iget-object v0, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->mFolderIcon:Lcom/android/launcher3/FolderIcon;

    instance-of v0, v0, Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_9b

    .line 1172
    iget-object v0, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v2, v0, Lcom/android/launcher3/Folder;->mDragController:Lcom/android/launcher3/DragController;

    iget-object v0, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->mFolderIcon:Lcom/android/launcher3/FolderIcon;

    check-cast v0, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 1174
    :cond_9b
    iget-object v0, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v2, v2, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->removeFolder(Lcom/android/launcher3/FolderInfo;)V

    .line 1179
    :cond_a6
    if-eqz v1, :cond_2b

    .line 1180
    iget-object v0, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v2, v2, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher3/FolderInfo;->container:J

    iget-object v4, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v4, v4, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v4, v4, Lcom/android/launcher3/FolderInfo;->screenId:J

    .line 1181
    iget-object v6, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v6, v6, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget v6, v6, Lcom/android/launcher3/FolderInfo;->cellX:I

    iget-object v7, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v7, v7, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget v7, v7, Lcom/android/launcher3/FolderInfo;->cellY:I

    iget-object v8, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v8, v8, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget v8, v8, Lcom/android/launcher3/FolderInfo;->spanX:I

    iget-object v9, p0, Lcom/android/launcher3/Folder$12;->this$0:Lcom/android/launcher3/Folder;

    iget-object v9, v9, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget v9, v9, Lcom/android/launcher3/FolderInfo;->spanY:I

    .line 1180
    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/Workspace;->addInScreenFromBind(Landroid/view/View;JJIIII)V

    goto/16 :goto_2b
.end method
