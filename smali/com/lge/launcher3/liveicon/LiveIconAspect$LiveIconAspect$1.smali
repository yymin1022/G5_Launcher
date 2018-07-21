.class Lcom/lge/launcher3/liveicon/LiveIconAspect$LiveIconAspect$1;
.super Ljava/lang/Object;
.source "LiveIconAspect.aj"

# interfaces
.implements Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/liveicon/LiveIconAspect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/liveicon/LiveIconAspect;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/liveicon/LiveIconAspect;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/liveicon/LiveIconAspect$LiveIconAspect$1;->this$0:Lcom/lge/launcher3/liveicon/LiveIconAspect;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLiveIconUpdate(Lcom/lge/launcher3/liveicon/LiveIcon;)V
    .registers 4

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconAspect$LiveIconAspect$1;->this$0:Lcom/lge/launcher3/liveicon/LiveIconAspect;

    invoke-static {v0}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->access$0(Lcom/lge/launcher3/liveicon/LiveIconAspect;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/lge/launcher3/liveicon/LiveIconAspect$LiveIconAspect$1$LiveIconAspect$1;

    invoke-direct {v1, p0, p1}, Lcom/lge/launcher3/liveicon/LiveIconAspect$LiveIconAspect$1$LiveIconAspect$1;-><init>(Lcom/lge/launcher3/liveicon/LiveIconAspect$LiveIconAspect$1;Lcom/lge/launcher3/liveicon/LiveIcon;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    return-void
.end method
