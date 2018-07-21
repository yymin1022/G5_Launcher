.class Lcom/android/launcher3/Workspace$8;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field private final synthetic val$cellLayout:Lcom/android/launcher3/CellLayout;

.field private final synthetic val$hostView:Lcom/android/launcher3/LauncherAppWidgetHostView;

.field private final synthetic val$info:Lcom/android/launcher3/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$8;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$8;->val$info:Lcom/android/launcher3/ItemInfo;

    iput-object p3, p0, Lcom/android/launcher3/Workspace$8;->val$hostView:Lcom/android/launcher3/LauncherAppWidgetHostView;

    iput-object p4, p0, Lcom/android/launcher3/Workspace$8;->val$cellLayout:Lcom/android/launcher3/CellLayout;

    .line 2950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2952
    iget-object v0, p0, Lcom/android/launcher3/Workspace$8;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    .line 2953
    iget-object v1, p0, Lcom/android/launcher3/Workspace$8;->val$info:Lcom/android/launcher3/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/Workspace$8;->val$hostView:Lcom/android/launcher3/LauncherAppWidgetHostView;

    iget-object v3, p0, Lcom/android/launcher3/Workspace$8;->val$cellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/DragLayer;->addResizeFrame(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    .line 2954
    return-void
.end method
