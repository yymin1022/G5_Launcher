.class Lcom/android/launcher3/MemoryTracker$1;
.super Landroid/os/Handler;
.source "MemoryTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/MemoryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/MemoryTracker;


# direct methods
.method constructor <init>(Lcom/android/launcher3/MemoryTracker;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/MemoryTracker$1;->this$0:Lcom/android/launcher3/MemoryTracker;

    .line 64
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    const/4 v1, 0x3

    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_34

    .line 81
    :goto_6
    return-void

    .line 69
    :pswitch_7
    iget-object v0, p0, Lcom/android/launcher3/MemoryTracker$1;->this$0:Lcom/android/launcher3/MemoryTracker;

    iget-object v0, v0, Lcom/android/launcher3/MemoryTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/MemoryTracker$1;->this$0:Lcom/android/launcher3/MemoryTracker;

    iget-object v0, v0, Lcom/android/launcher3/MemoryTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6

    .line 73
    :pswitch_16
    iget-object v0, p0, Lcom/android/launcher3/MemoryTracker$1;->this$0:Lcom/android/launcher3/MemoryTracker;

    iget-object v0, v0, Lcom/android/launcher3/MemoryTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_6

    .line 76
    :pswitch_1e
    iget-object v0, p0, Lcom/android/launcher3/MemoryTracker$1;->this$0:Lcom/android/launcher3/MemoryTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/MemoryTracker;->update()V

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/MemoryTracker$1;->this$0:Lcom/android/launcher3/MemoryTracker;

    iget-object v0, v0, Lcom/android/launcher3/MemoryTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/MemoryTracker$1;->this$0:Lcom/android/launcher3/MemoryTracker;

    iget-object v0, v0, Lcom/android/launcher3/MemoryTracker;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6

    .line 67
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_7
        :pswitch_16
        :pswitch_1e
    .end packed-switch
.end method
