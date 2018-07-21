.class Lcom/android/launcher3/LauncherModel$21;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->moveFolderItemsToWorkspace(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field private final synthetic val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$workspaceApps:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Ljava/util/ArrayList;Landroid/content/Context;Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$21;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$21;->val$workspaceApps:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$21;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/launcher3/LauncherModel$21;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 4103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher3/LauncherModel$21;)Lcom/android/launcher3/LauncherModel;
    .registers 2

    .prologue
    .line 4103
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$21;->this$0:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 4105
    sget-object v1, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4106
    :try_start_3
    sget-object v2, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$21;->val$workspaceApps:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    iget-wide v4, v0, Lcom/android/launcher3/ShortcutInfo;->container:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 4107
    instance-of v2, v0, Lcom/android/launcher3/FolderInfo;

    if-eqz v2, :cond_31

    .line 4108
    check-cast v0, Lcom/android/launcher3/FolderInfo;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$21;->val$workspaceApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/FolderInfo;->remove(Ljava/util/List;)V

    .line 4105
    :goto_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_46

    .line 4114
    new-instance v0, Lcom/android/launcher3/LauncherModel$21$1;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$21;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$21;->val$workspaceApps:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$21;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/launcher3/LauncherModel$21$1;-><init>(Lcom/android/launcher3/LauncherModel$21;Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/LauncherModel$Callbacks;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->access$1(Ljava/lang/Runnable;)V

    .line 4157
    return-void

    .line 4110
    :cond_31
    :try_start_31
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to move folder items: Invalid parent: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 4105
    :catchall_46
    move-exception v0

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_31 .. :try_end_48} :catchall_46

    throw v0
.end method
