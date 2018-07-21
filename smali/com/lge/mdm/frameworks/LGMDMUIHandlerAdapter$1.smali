.class Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$1;
.super Landroid/os/Handler;
.source "LGMDMUIHandlerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;


# direct methods
.method constructor <init>(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$1;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x7d3

    .line 74
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_9e

    .line 121
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 73
    :cond_a
    :goto_a
    return-void

    .line 76
    :sswitch_b
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$1;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->-wrap2(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;I)V

    goto :goto_a

    .line 79
    :sswitch_13
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->getInstance()Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$1;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    invoke-static {v3}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->-get0(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;)Landroid/content/Context;

    move-result-object v3

    .line 80
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 79
    invoke-virtual {v2, v3, v4}, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->showResetPasswordDialog(Landroid/content/Context;I)V

    goto :goto_a

    .line 86
    :sswitch_23
    const-string/jumbo v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 85
    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 87
    .local v1, "service":Landroid/app/INotificationManager;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 88
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_33

    .line 89
    return-void

    .line 91
    :cond_33
    if-eqz v1, :cond_a

    .line 93
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$1;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    invoke-static {v2}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->-get0(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast v0, Ljava/lang/String;

    .end local v0    # "obj":Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 97
    .end local v1    # "service":Landroid/app/INotificationManager;
    :sswitch_46
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$1;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    invoke-static {v2}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->-get2(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;)Lcom/lge/mdm/util/LGMDMNotifyHelper;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 99
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$1;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    invoke-static {v2}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->-get2(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;)Lcom/lge/mdm/util/LGMDMNotifyHelper;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/lge/mdm/util/LGMDMNotifyHelper;->handleShowWindowToast(Ljava/lang/String;)I

    move-result v2

    .line 98
    const/4 v3, 0x2

    if-ne v3, v2, :cond_a

    .line 100
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$1;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    iget-object v2, v2, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 101
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$1;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    iget-object v2, v2, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mHandler:Landroid/os/Handler;

    .line 102
    const-wide/16 v4, 0x7d0

    .line 101
    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_a

    .line 107
    :sswitch_70
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$1;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    invoke-static {v2}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->-get2(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;)Lcom/lge/mdm/util/LGMDMNotifyHelper;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 108
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$1;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    invoke-static {v2}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->-get2(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;)Lcom/lge/mdm/util/LGMDMNotifyHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/mdm/util/LGMDMNotifyHelper;->handleHideWindowToast()V

    goto :goto_a

    .line 112
    :sswitch_82
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$1;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->-wrap1(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;I)V

    goto :goto_a

    .line 115
    :sswitch_8a
    iget-object v3, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$1;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    invoke-static {v3, v4, v2}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->-wrap0(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;ILandroid/content/ComponentName;)V

    goto/16 :goto_a

    .line 118
    :sswitch_97
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$1;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    invoke-static {v2}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->-wrap3(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;)V

    goto/16 :goto_a

    .line 74
    :sswitch_data_9e
    .sparse-switch
        0x4b1 -> :sswitch_b
        0x4b2 -> :sswitch_13
        0x7d1 -> :sswitch_23
        0x7d2 -> :sswitch_46
        0x7d3 -> :sswitch_70
        0xbbe -> :sswitch_82
        0xbbf -> :sswitch_8a
        0xbc0 -> :sswitch_97
    .end sparse-switch
.end method
