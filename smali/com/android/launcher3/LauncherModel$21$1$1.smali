.class Lcom/android/launcher3/LauncherModel$21$1$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel$21$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/launcher3/LauncherModel$21$1;

.field private final synthetic val$addedWorkspaceScreensFinal:Ljava/util/ArrayList;

.field private final synthetic val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

.field private final synthetic val$movedShortcutsFinal:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$21$1;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$21$1$1;->this$2:Lcom/android/launcher3/LauncherModel$21$1;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$21$1$1;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$21$1$1;->val$addedWorkspaceScreensFinal:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/LauncherModel$21$1$1;->val$movedShortcutsFinal:Ljava/util/ArrayList;

    .line 4145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 4147
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$21$1$1;->this$2:Lcom/android/launcher3/LauncherModel$21$1;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$21$1;->access$0(Lcom/android/launcher3/LauncherModel$21$1;)Lcom/android/launcher3/LauncherModel$21;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$21;->access$0(Lcom/android/launcher3/LauncherModel$21;)Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 4148
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$21$1$1;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    if-ne v1, v0, :cond_1e

    if-eqz v0, :cond_1e

    .line 4149
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$21$1$1;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$21$1$1;->val$addedWorkspaceScreensFinal:Ljava/util/ArrayList;

    .line 4150
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$21$1$1;->val$movedShortcutsFinal:Ljava/util/ArrayList;

    .line 4149
    invoke-interface {v0, v1, v2, v3, v3}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4152
    :cond_1e
    return-void
.end method
