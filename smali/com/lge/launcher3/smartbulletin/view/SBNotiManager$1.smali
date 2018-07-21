.class Lcom/lge/launcher3/smartbulletin/view/SBNotiManager$1;
.super Landroid/os/Handler;
.source "SBNotiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager$1;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;

    .line 35
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 45
    :goto_5
    return-void

    .line 40
    :pswitch_6
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager$1;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->access$0(Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;)Lcom/lge/launcher3/smartbulletin/view/SBNotiManager$ISBNotiPanel;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager$ISBNotiPanel;->updateNotiCountView()V

    goto :goto_5

    .line 38
    :pswitch_data_10
    .packed-switch 0x3e8
        :pswitch_6
    .end packed-switch
.end method
