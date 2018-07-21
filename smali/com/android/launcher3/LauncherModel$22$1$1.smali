.class Lcom/android/launcher3/LauncherModel$22$1$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel$22$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/launcher3/LauncherModel$22$1;

.field private final synthetic val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

.field private final synthetic val$target:Lcom/android/launcher3/FolderInfo;

.field private final synthetic val$workspaceShortcuts:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$22$1;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Lcom/android/launcher3/FolderInfo;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$22$1$1;->this$2:Lcom/android/launcher3/LauncherModel$22$1;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$22$1$1;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$22$1$1;->val$workspaceShortcuts:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/LauncherModel$22$1$1;->val$target:Lcom/android/launcher3/FolderInfo;

    .line 4194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 4196
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$22$1$1;->this$2:Lcom/android/launcher3/LauncherModel$22$1;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$22$1;->access$0(Lcom/android/launcher3/LauncherModel$22$1;)Lcom/android/launcher3/LauncherModel$22;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$22;->access$0(Lcom/android/launcher3/LauncherModel$22;)Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 4197
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$22$1$1;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    if-ne v1, v0, :cond_1d

    if-eqz v0, :cond_1d

    .line 4198
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$22$1$1;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$22$1$1;->val$workspaceShortcuts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$22$1$1;->val$target:Lcom/android/launcher3/FolderInfo;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindAppsMoved(Ljava/util/ArrayList;Lcom/android/launcher3/FolderInfo;)V

    .line 4200
    :cond_1d
    return-void
.end method
