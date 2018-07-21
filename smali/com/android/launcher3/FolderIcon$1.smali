.class Lcom/android/launcher3/FolderIcon$1;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/FolderIcon;


# direct methods
.method constructor <init>(Lcom/android/launcher3/FolderIcon;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/FolderIcon$1;->this$0:Lcom/android/launcher3/FolderIcon;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 376
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon$1;->this$0:Lcom/android/launcher3/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/FolderIcon;->mDragInfo:Lcom/android/launcher3/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/AppInfo;

    if-eqz v0, :cond_28

    .line 378
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon$1;->this$0:Lcom/android/launcher3/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/FolderIcon;->mDragInfo:Lcom/android/launcher3/ItemInfo;

    check-cast v0, Lcom/android/launcher3/AppInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/AppInfo;->makeShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v0

    .line 379
    iput v1, v0, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    .line 380
    iput v1, v0, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    .line 385
    :goto_17
    iget-object v1, p0, Lcom/android/launcher3/FolderIcon$1;->this$0:Lcom/android/launcher3/FolderIcon;

    iget-object v1, v1, Lcom/android/launcher3/FolderIcon;->mFolder:Lcom/android/launcher3/Folder;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Folder;->beginExternalDrag(Lcom/android/launcher3/ShortcutInfo;)V

    .line 386
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon$1;->this$0:Lcom/android/launcher3/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/FolderIcon$1;->this$0:Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->openFolder(Lcom/android/launcher3/FolderIcon;)V

    .line 387
    return-void

    .line 383
    :cond_28
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon$1;->this$0:Lcom/android/launcher3/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/FolderIcon;->mDragInfo:Lcom/android/launcher3/ItemInfo;

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    goto :goto_17
.end method
