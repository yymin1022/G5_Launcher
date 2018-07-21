.class Lcom/android/launcher3/WeightWatcher$1;
.super Landroid/os/Handler;
.source "WeightWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/WeightWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/WeightWatcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/WeightWatcher;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/WeightWatcher$1;->this$0:Lcom/android/launcher3/WeightWatcher;

    .line 58
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .prologue
    const/4 v5, 0x3

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5a

    .line 84
    :goto_6
    return-void

    .line 63
    :pswitch_7
    iget-object v0, p0, Lcom/android/launcher3/WeightWatcher$1;->this$0:Lcom/android/launcher3/WeightWatcher;

    iget-object v0, v0, Lcom/android/launcher3/WeightWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6

    .line 66
    :pswitch_f
    iget-object v0, p0, Lcom/android/launcher3/WeightWatcher$1;->this$0:Lcom/android/launcher3/WeightWatcher;

    iget-object v0, v0, Lcom/android/launcher3/WeightWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_6

    .line 69
    :pswitch_17
    iget-object v0, p0, Lcom/android/launcher3/WeightWatcher$1;->this$0:Lcom/android/launcher3/WeightWatcher;

    iget-object v0, v0, Lcom/android/launcher3/WeightWatcher;->mMemoryService:Lcom/android/launcher3/MemoryTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/MemoryTracker;->getTrackedProcesses()[I

    move-result-object v2

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/WeightWatcher$1;->this$0:Lcom/android/launcher3/WeightWatcher;

    invoke-virtual {v0}, Lcom/android/launcher3/WeightWatcher;->getChildCount()I

    move-result v3

    .line 72
    array-length v0, v2

    if-eq v0, v3, :cond_37

    iget-object v0, p0, Lcom/android/launcher3/WeightWatcher$1;->this$0:Lcom/android/launcher3/WeightWatcher;

    invoke-virtual {v0}, Lcom/android/launcher3/WeightWatcher;->initViews()V

    .line 81
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/android/launcher3/WeightWatcher$1;->this$0:Lcom/android/launcher3/WeightWatcher;

    iget-object v0, v0, Lcom/android/launcher3/WeightWatcher;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6

    .line 73
    :cond_37
    const/4 v0, 0x0

    move v1, v0

    :goto_39
    if-ge v1, v3, :cond_2d

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/WeightWatcher$1;->this$0:Lcom/android/launcher3/WeightWatcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/WeightWatcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;

    .line 75
    invoke-virtual {v0}, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->getPid()I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/launcher3/WeightWatcher;->indexOf([II)I

    move-result v4

    if-gez v4, :cond_53

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/WeightWatcher$1;->this$0:Lcom/android/launcher3/WeightWatcher;

    invoke-virtual {v0}, Lcom/android/launcher3/WeightWatcher;->initViews()V

    goto :goto_2d

    .line 79
    :cond_53
    invoke-virtual {v0}, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->update()V

    .line 73
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_39

    .line 61
    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_f
        :pswitch_17
    .end packed-switch
.end method
