.class Lcom/android/launcher3/LauncherModel$LoaderTask$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel$LoaderTask;->waitForIdle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$LoaderTask;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    .line 1653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1655
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    monitor-enter v1

    .line 1656
    :try_start_3
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    .line 1657
    sget-boolean v0, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v0, :cond_13

    .line 1658
    const-string v0, "Launcher.Model"

    const-string v2, "done with previous binding step"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1655
    monitor-exit v1

    .line 1662
    return-void

    .line 1655
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method
