.class abstract Lcom/lge/mdm/util/handler/LGMDMHandlerThread;
.super Ljava/lang/Object;
.source "LGMDMHandlerThread.java"


# instance fields
.field private looper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 13
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 14
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/util/handler/LGMDMHandlerThread;->looper:Landroid/os/Looper;

    .line 15
    iget-object v1, p0, Lcom/lge/mdm/util/handler/LGMDMHandlerThread;->looper:Landroid/os/Looper;

    if-nez v1, :cond_16

    .line 16
    return-void

    .line 11
    :cond_16
    return-void
.end method


# virtual methods
.method protected getLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lge/mdm/util/handler/LGMDMHandlerThread;->looper:Landroid/os/Looper;

    return-object v0
.end method
