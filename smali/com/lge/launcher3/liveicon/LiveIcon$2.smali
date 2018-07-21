.class Lcom/lge/launcher3/liveicon/LiveIcon$2;
.super Landroid/content/BroadcastReceiver;
.source "LiveIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/liveicon/LiveIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/liveicon/LiveIcon;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/liveicon/LiveIcon;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/liveicon/LiveIcon$2;->this$0:Lcom/lge/launcher3/liveicon/LiveIcon;

    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 40
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v0, "LiveIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Receive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIcon$2;->this$0:Lcom/lge/launcher3/liveicon/LiveIcon;

    invoke-static {v0}, Lcom/lge/launcher3/liveicon/LiveIcon;->access$0(Lcom/lge/launcher3/liveicon/LiveIcon;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 42
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIcon$2;->this$0:Lcom/lge/launcher3/liveicon/LiveIcon;

    invoke-static {v0}, Lcom/lge/launcher3/liveicon/LiveIcon;->access$0(Lcom/lge/launcher3/liveicon/LiveIcon;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 43
    return-void
.end method
