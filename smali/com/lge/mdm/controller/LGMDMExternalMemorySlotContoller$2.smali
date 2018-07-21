.class Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$2;
.super Landroid/os/Handler;
.source "LGMDMExternalMemorySlotContoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$2;->this$0:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 94
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_4a

    .line 93
    :goto_5
    :pswitch_5
    return-void

    .line 96
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 97
    .local v1, "path":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$2;->this$0:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    invoke-virtual {v4, v1}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->unmountSDcard(Ljava/lang/String;)V

    goto :goto_5

    .line 101
    .end local v1    # "path":Ljava/lang/String;
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 102
    .local v0, "id":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$2;->this$0:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    invoke-virtual {v4, v0}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->unmountUSBHostStorage(Ljava/lang/String;)V

    goto :goto_5

    .line 106
    .end local v0    # "id":Ljava/lang/String;
    :pswitch_1a
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 107
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$2;->this$0:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    invoke-virtual {v4, v3}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mountVolume(Landroid/os/storage/VolumeInfo;)V

    goto :goto_5

    .line 111
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_24
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 112
    .restart local v1    # "path":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$2;->this$0:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    invoke-virtual {v4, v1}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mountUSBHostStorage(Ljava/lang/String;)V

    goto :goto_5

    .line 116
    .end local v1    # "path":Ljava/lang/String;
    :pswitch_2e
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$2;->this$0:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    iget-object v4, v4, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mContext:Landroid/content/Context;

    .line 117
    const-string/jumbo v5, "storage"

    .line 116
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 118
    .local v2, "storageManager":Landroid/os/storage/StorageManager;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "wipeAdoptableDisks"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->wipeAdoptableDisks()V

    goto :goto_5

    .line 94
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1a
        :pswitch_5
        :pswitch_2e
        :pswitch_10
        :pswitch_24
        :pswitch_5
    .end packed-switch
.end method
