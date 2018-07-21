.class Lcom/android/launcher3/FolderIcon$2;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/FolderIcon;->onDrop(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher3/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/FolderIcon;

.field private final synthetic val$item:Lcom/android/launcher3/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/FolderIcon;Lcom/android/launcher3/ShortcutInfo;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/FolderIcon$2;->this$0:Lcom/android/launcher3/FolderIcon;

    iput-object p2, p0, Lcom/android/launcher3/FolderIcon$2;->val$item:Lcom/android/launcher3/ShortcutInfo;

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon$2;->this$0:Lcom/android/launcher3/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/FolderIcon$2;->val$item:Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 479
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon$2;->this$0:Lcom/android/launcher3/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/FolderIcon;->mFolder:Lcom/android/launcher3/Folder;

    iget-object v1, p0, Lcom/android/launcher3/FolderIcon$2;->val$item:Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Folder;->showItem(Lcom/android/launcher3/ShortcutInfo;)V

    .line 480
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon$2;->this$0:Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->invalidate()V

    .line 481
    return-void
.end method
