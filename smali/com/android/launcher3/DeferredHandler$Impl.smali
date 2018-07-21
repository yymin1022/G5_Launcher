.class Lcom/android/launcher3/DeferredHandler$Impl;
.super Landroid/os/Handler;
.source "DeferredHandler.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Impl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/DeferredHandler;


# direct methods
.method constructor <init>(Lcom/android/launcher3/DeferredHandler;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/launcher3/DeferredHandler$Impl;->this$0:Lcom/android/launcher3/DeferredHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher3/DeferredHandler$Impl;->this$0:Lcom/android/launcher3/DeferredHandler;

    iget-object v1, v0, Lcom/android/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 44
    :try_start_5
    iget-object v0, p0, Lcom/android/launcher3/DeferredHandler$Impl;->this$0:Lcom/android/launcher3/DeferredHandler;

    iget-object v0, v0, Lcom/android/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_11

    .line 45
    monitor-exit v1

    .line 53
    :goto_10
    return-void

    .line 47
    :cond_11
    iget-object v0, p0, Lcom/android/launcher3/DeferredHandler$Impl;->this$0:Lcom/android/launcher3/DeferredHandler;

    iget-object v0, v0, Lcom/android/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 43
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_2e

    .line 49
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 50
    iget-object v0, p0, Lcom/android/launcher3/DeferredHandler$Impl;->this$0:Lcom/android/launcher3/DeferredHandler;

    iget-object v1, v0, Lcom/android/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 51
    :try_start_24
    iget-object v0, p0, Lcom/android/launcher3/DeferredHandler$Impl;->this$0:Lcom/android/launcher3/DeferredHandler;

    invoke-virtual {v0}, Lcom/android/launcher3/DeferredHandler;->scheduleNextLocked()V

    .line 50
    monitor-exit v1

    goto :goto_10

    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2b

    throw v0

    .line 43
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public queueIdle()Z
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DeferredHandler$Impl;->handleMessage(Landroid/os/Message;)V

    .line 57
    const/4 v0, 0x0

    return v0
.end method
