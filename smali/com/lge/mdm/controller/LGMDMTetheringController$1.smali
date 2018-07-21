.class Lcom/lge/mdm/controller/LGMDMTetheringController$1;
.super Ljava/lang/Object;
.source "LGMDMTetheringController.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMTetheringController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMTetheringController;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMTetheringController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMTetheringController;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMTetheringController$1;->this$0:Lcom/lge/mdm/controller/LGMDMTetheringController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 7
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    const/4 v3, 0x0

    .line 339
    const-string/jumbo v1, "TetheringController"

    const-string/jumbo v2, "mProfileServiceListener : connect "

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMTetheringController$1;->this$0:Lcom/lge/mdm/controller/LGMDMTetheringController;

    invoke-static {v1}, Lcom/lge/mdm/controller/LGMDMTetheringController;->-get0(Lcom/lge/mdm/controller/LGMDMTetheringController;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 341
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMTetheringController$1;->this$0:Lcom/lge/mdm/controller/LGMDMTetheringController;

    invoke-static {v1}, Lcom/lge/mdm/controller/LGMDMTetheringController;->-get1(Lcom/lge/mdm/controller/LGMDMTetheringController;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 342
    const-string/jumbo v1, "TetheringController"

    const-string/jumbo v2, "mBluetoothPendingStats is set!!!"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMTetheringController$1;->this$0:Lcom/lge/mdm/controller/LGMDMTetheringController;

    invoke-static {v1}, Lcom/lge/mdm/controller/LGMDMTetheringController;->-get0(Lcom/lge/mdm/controller/LGMDMTetheringController;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 344
    .local v0, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 345
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 347
    :cond_3d
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMTetheringController$1;->this$0:Lcom/lge/mdm/controller/LGMDMTetheringController;

    invoke-static {v1, v3}, Lcom/lge/mdm/controller/LGMDMTetheringController;->-set0(Lcom/lge/mdm/controller/LGMDMTetheringController;Z)Z

    .line 338
    .end local v0    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :cond_42
    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 4
    .param p1, "profile"    # I

    .prologue
    .line 352
    const-string/jumbo v0, "TetheringController"

    const-string/jumbo v1, "mProfileServiceListener : disconnect "

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMTetheringController$1;->this$0:Lcom/lge/mdm/controller/LGMDMTetheringController;

    invoke-static {v0}, Lcom/lge/mdm/controller/LGMDMTetheringController;->-get0(Lcom/lge/mdm/controller/LGMDMTetheringController;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 351
    return-void
.end method
