.class Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$1;
.super Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener$Stub;
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
    .line 221
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$1;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    invoke-direct {p0}, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddEXCHANGEConfig(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;)V
    .registers 5
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$1;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    iget-object v0, v0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 239
    return-void
.end method

.method public onAddEmailCertConfig(Lcom/lge/mdm/config/LGMDMEmailCertConfig;)V
    .registers 5
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMEmailCertConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 256
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$1;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    iget-object v0, v0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x100

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 255
    return-void
.end method

.method public onAddPOPIMAPConfig(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;)V
    .registers 5
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;

    .prologue
    const/4 v2, 0x0

    .line 224
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$1;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    iget-object v0, v0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 223
    return-void
.end method

.method public onDeleteEXCHANGEConfig(Ljava/lang/String;)V
    .registers 5
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 248
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$1;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    iget-object v0, v0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 247
    return-void
.end method

.method public onDeleteEXCHANGEConfigInternal(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;)V
    .registers 5
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 252
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$1;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    iget-object v0, v0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x80

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 251
    return-void
.end method

.method public onDeleteEmailCertConfig(Ljava/lang/String;)V
    .registers 5
    .param p1, "sEmailCertID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 260
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$1;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    iget-object v0, v0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x200

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 259
    return-void
.end method

.method public onDeletePOPIMAPConfig(Ljava/lang/String;)V
    .registers 5
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 232
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$1;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    iget-object v0, v0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 231
    return-void
.end method

.method public onDeletePOPIMAPConfigInternal(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;)V
    .registers 5
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 236
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$1;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    iget-object v0, v0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x40

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 235
    return-void
.end method

.method public onModifyEXCHANGEConfig(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;)V
    .registers 5
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 244
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$1;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    iget-object v0, v0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 243
    return-void
.end method

.method public onModifyPOPIMAPConfig(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;)V
    .registers 5
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 228
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$1;->this$0:Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;

    iget-object v0, v0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 227
    return-void
.end method
