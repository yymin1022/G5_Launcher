.class Lcom/lge/launcher3/liveicon/LiveIcon$1;
.super Landroid/os/Handler;
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
    iput-object p1, p0, Lcom/lge/launcher3/liveicon/LiveIcon$1;->this$0:Lcom/lge/launcher3/liveicon/LiveIcon;

    .line 24
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 26
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 34
    :goto_5
    return-void

    .line 28
    :pswitch_6
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIcon$1;->this$0:Lcom/lge/launcher3/liveicon/LiveIcon;

    invoke-virtual {v0}, Lcom/lge/launcher3/liveicon/LiveIcon;->updateIcon()V

    goto :goto_5

    .line 26
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
