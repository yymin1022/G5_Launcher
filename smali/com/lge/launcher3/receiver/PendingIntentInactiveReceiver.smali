.class public Lcom/lge/launcher3/receiver/PendingIntentInactiveReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PendingIntentInactiveReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 12
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->isUseQueue()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 13
    const-string v0, "PendingIntentInactiveReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {p1, p2}, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->queuePendingIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 16
    :cond_24
    return-void
.end method
