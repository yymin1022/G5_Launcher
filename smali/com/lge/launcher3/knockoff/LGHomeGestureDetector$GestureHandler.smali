.class Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$GestureHandler;
.super Landroid/os/Handler;
.source "LGHomeGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;)V
    .registers 2

    .prologue
    .line 245
    iput-object p1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$GestureHandler;->this$0:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;

    .line 246
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 247
    return-void
.end method

.method constructor <init>(Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;Landroid/os/Handler;)V
    .registers 4

    .prologue
    .line 249
    iput-object p1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$GestureHandler;->this$0:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;

    .line 250
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 251
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 255
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_50

    .line 272
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :pswitch_1a
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$GestureHandler;->this$0:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;

    invoke-static {v0}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->access$0(Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;)Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$GestureHandler;->this$0:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;

    invoke-static {v1}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->access$1(Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 274
    :cond_29
    :goto_29
    return-void

    .line 261
    :pswitch_2a
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$GestureHandler;->this$0:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;

    invoke-static {v0}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->access$2(Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;)V

    goto :goto_29

    .line 266
    :pswitch_30
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$GestureHandler;->this$0:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;

    invoke-static {v0}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->access$3(Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;)Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$GestureHandler;->this$0:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;

    invoke-static {v0}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->access$4(Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 267
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$GestureHandler;->this$0:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;

    invoke-static {v0}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->access$3(Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;)Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnDoubleTapListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$GestureHandler;->this$0:Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;

    invoke-static {v1}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;->access$1(Lcom/lge/launcher3/knockoff/LGHomeGestureDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_29

    .line 255
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_2a
        :pswitch_30
    .end packed-switch
.end method
