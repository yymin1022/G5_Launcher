.class Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;
.super Landroid/os/Handler;
.source "LGMDMEmailConfigStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;


# direct methods
.method constructor <init>(Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 276
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_be

    .line 275
    :goto_5
    return-void

    .line 278
    :sswitch_6
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    .line 279
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;

    .line 278
    invoke-virtual {v2, v0}, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->onAddPOPIMAPConfig(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->returnVal:Z

    .line 280
    const-string/jumbo v0, "LGMDMEmailConfigStateListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "returnVal : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    iget-boolean v2, v2, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->returnVal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 283
    :sswitch_33
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    .line 284
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;

    .line 283
    invoke-virtual {v2, v0}, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->onModifyPOPIMAPConfig(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->returnVal:Z

    goto :goto_5

    .line 287
    :sswitch_42
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    .line 288
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 287
    invoke-virtual {v2, v0}, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->onDeletePOPIMAPConfig(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->returnVal:Z

    goto :goto_5

    .line 291
    :sswitch_51
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    .line 292
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;

    .line 291
    invoke-virtual {v2, v0}, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->onAddEXCHANGEConfig(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->returnVal:Z

    goto :goto_5

    .line 295
    :sswitch_60
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    .line 296
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;

    .line 295
    invoke-virtual {v2, v0}, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->onModifyEXCHANGEConfig(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->returnVal:Z

    goto :goto_5

    .line 299
    :sswitch_6f
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    .line 300
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 299
    invoke-virtual {v2, v0}, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->onDeleteEXCHANGEConfig(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->returnVal:Z

    goto :goto_5

    .line 303
    :sswitch_7e
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    .line 304
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;

    .line 303
    invoke-virtual {v2, v0}, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->onDeletePOPIMAPConfig(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->returnVal:Z

    goto/16 :goto_5

    .line 307
    :sswitch_8e
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    .line 308
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;

    .line 307
    invoke-virtual {v2, v0}, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->onDeleteEXCHANGEConfig(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->returnVal:Z

    goto/16 :goto_5

    .line 311
    :sswitch_9e
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    .line 312
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/mdm/config/LGMDMEmailCertConfig;

    .line 311
    invoke-virtual {v2, v0}, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->onAddEmailCertConfig(Lcom/lge/mdm/config/LGMDMEmailCertConfig;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->returnVal:Z

    goto/16 :goto_5

    .line 315
    :sswitch_ae
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    .line 316
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 315
    invoke-virtual {v2, v0}, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->onDeleteEmailCertConfig(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->returnVal:Z

    goto/16 :goto_5

    .line 276
    :sswitch_data_be
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_33
        0x4 -> :sswitch_42
        0x8 -> :sswitch_51
        0x10 -> :sswitch_60
        0x20 -> :sswitch_6f
        0x40 -> :sswitch_7e
        0x80 -> :sswitch_8e
        0x100 -> :sswitch_9e
        0x200 -> :sswitch_ae
    .end sparse-switch
.end method
