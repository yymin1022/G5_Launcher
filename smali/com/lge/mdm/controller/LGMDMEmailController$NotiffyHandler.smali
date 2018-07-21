.class Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;
.super Landroid/os/Handler;
.source "LGMDMEmailController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMEmailController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotiffyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMEmailController;


# direct methods
.method private constructor <init>(Lcom/lge/mdm/controller/LGMDMEmailController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMEmailController;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/mdm/controller/LGMDMEmailController;Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMEmailController;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;-><init>(Lcom/lge/mdm/controller/LGMDMEmailController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 603
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 604
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_42a

    .line 602
    :goto_8
    return-void

    .line 606
    :sswitch_9
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v4, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 607
    :try_start_e
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v3, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_18
    if-ltz v1, :cond_5e

    .line 608
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v3, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;

    .line 609
    .local v2, "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    iget v3, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->events:I
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_5b

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4f

    .line 611
    :try_start_2a
    iget-object v5, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->callback:Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;

    invoke-interface {v5, v3}, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;->onAddPOPIMAPConfig(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;)V

    .line 612
    const-string/jumbo v3, "EmailController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ADD_POPIMAP_CONFIG to package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_4f} :catch_52
    .catchall {:try_start_2a .. :try_end_4f} :catchall_5b

    .line 607
    :cond_4f
    :goto_4f
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 613
    :catch_52
    move-exception v0

    .line 614
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_53
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v5, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Lcom/lge/mdm/controller/LGMDMEmailController;->remove(Landroid/os/IBinder;)V
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_5b

    goto :goto_4f

    .line 606
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    :catchall_5b
    move-exception v3

    monitor-exit v4

    throw v3

    .line 618
    .restart local v1    # "i":I
    :cond_5e
    :try_start_5e
    const-string/jumbo v5, "EmailController"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;

    invoke-virtual {v3}, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_5e .. :try_end_6c} :catchall_5b

    :goto_6c
    monitor-exit v4

    goto :goto_8

    .line 622
    .end local v1    # "i":I
    :sswitch_6e
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v4, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 623
    :try_start_73
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v3, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "i":I
    :goto_7d
    if-ltz v1, :cond_c3

    .line 624
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v3, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;

    .line 625
    .restart local v2    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    iget v3, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->events:I
    :try_end_8b
    .catchall {:try_start_73 .. :try_end_8b} :catchall_c0

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_b4

    .line 627
    :try_start_8f
    iget-object v5, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->callback:Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;

    invoke-interface {v5, v3}, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;->onModifyPOPIMAPConfig(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;)V

    .line 628
    const-string/jumbo v3, "EmailController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MODIFY_POPIMAP_CONFIG to package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b4
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_b4} :catch_b7
    .catchall {:try_start_8f .. :try_end_b4} :catchall_c0

    .line 623
    :cond_b4
    :goto_b4
    add-int/lit8 v1, v1, -0x1

    goto :goto_7d

    .line 629
    :catch_b7
    move-exception v0

    .line 630
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_b8
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v5, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Lcom/lge/mdm/controller/LGMDMEmailController;->remove(Landroid/os/IBinder;)V
    :try_end_bf
    .catchall {:try_start_b8 .. :try_end_bf} :catchall_c0

    goto :goto_b4

    .line 622
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    :catchall_c0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 634
    .restart local v1    # "i":I
    :cond_c3
    :try_start_c3
    const-string/jumbo v5, "EmailController"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;

    invoke-virtual {v3}, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d1
    .catchall {:try_start_c3 .. :try_end_d1} :catchall_c0

    goto :goto_6c

    .line 638
    .end local v1    # "i":I
    :sswitch_d2
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v4, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 639
    :try_start_d7
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v3, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "i":I
    :goto_e1
    if-ltz v1, :cond_127

    .line 640
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v3, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;

    .line 641
    .restart local v2    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    iget v3, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->events:I
    :try_end_ef
    .catchall {:try_start_d7 .. :try_end_ef} :catchall_124

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_118

    .line 643
    :try_start_f3
    iget-object v5, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->callback:Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v5, v3}, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;->onDeletePOPIMAPConfig(Ljava/lang/String;)V

    .line 644
    const-string/jumbo v3, "EmailController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DELETE_POPIMAP_CONFIG to package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_118
    .catch Landroid/os/RemoteException; {:try_start_f3 .. :try_end_118} :catch_11b
    .catchall {:try_start_f3 .. :try_end_118} :catchall_124

    .line 639
    :cond_118
    :goto_118
    add-int/lit8 v1, v1, -0x1

    goto :goto_e1

    .line 645
    :catch_11b
    move-exception v0

    .line 646
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_11c
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v5, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Lcom/lge/mdm/controller/LGMDMEmailController;->remove(Landroid/os/IBinder;)V
    :try_end_123
    .catchall {:try_start_11c .. :try_end_123} :catchall_124

    goto :goto_118

    .line 638
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    :catchall_124
    move-exception v3

    monitor-exit v4

    throw v3

    .line 650
    .restart local v1    # "i":I
    :cond_127
    :try_start_127
    const-string/jumbo v5, "EmailController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete account:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_145
    .catchall {:try_start_127 .. :try_end_145} :catchall_124

    goto/16 :goto_6c

    .line 654
    .end local v1    # "i":I
    :sswitch_147
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v4, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 655
    :try_start_14c
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v3, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "i":I
    :goto_156
    if-ltz v1, :cond_19c

    .line 656
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v3, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;

    .line 657
    .restart local v2    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    iget v3, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->events:I
    :try_end_164
    .catchall {:try_start_14c .. :try_end_164} :catchall_199

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_18d

    .line 659
    :try_start_168
    iget-object v5, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->callback:Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;

    invoke-interface {v5, v3}, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;->onDeletePOPIMAPConfigInternal(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;)V

    .line 660
    const-string/jumbo v3, "EmailController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DELETE_POPIMAP_CONFIG to package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18d
    .catch Landroid/os/RemoteException; {:try_start_168 .. :try_end_18d} :catch_190
    .catchall {:try_start_168 .. :try_end_18d} :catchall_199

    .line 655
    :cond_18d
    :goto_18d
    add-int/lit8 v1, v1, -0x1

    goto :goto_156

    .line 661
    :catch_190
    move-exception v0

    .line 662
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_191
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v5, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Lcom/lge/mdm/controller/LGMDMEmailController;->remove(Landroid/os/IBinder;)V
    :try_end_198
    .catchall {:try_start_191 .. :try_end_198} :catchall_199

    goto :goto_18d

    .line 654
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    :catchall_199
    move-exception v3

    monitor-exit v4

    throw v3

    .line 666
    .restart local v1    # "i":I
    :cond_19c
    :try_start_19c
    const-string/jumbo v5, "EmailController"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;

    invoke-virtual {v3}, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1aa
    .catchall {:try_start_19c .. :try_end_1aa} :catchall_199

    goto/16 :goto_6c

    .line 670
    .end local v1    # "i":I
    :sswitch_1ac
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v4, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 671
    :try_start_1b1
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v3, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "i":I
    :goto_1bb
    if-ltz v1, :cond_201

    .line 672
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v3, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;

    .line 673
    .restart local v2    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    iget v3, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->events:I
    :try_end_1c9
    .catchall {:try_start_1b1 .. :try_end_1c9} :catchall_1fe

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1f2

    .line 675
    :try_start_1cd
    iget-object v5, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->callback:Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;

    invoke-interface {v5, v3}, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;->onAddEXCHANGEConfig(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;)V

    .line 676
    const-string/jumbo v3, "EmailController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ADD_EXCHANGE_CONFIG to package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f2
    .catch Landroid/os/RemoteException; {:try_start_1cd .. :try_end_1f2} :catch_1f5
    .catchall {:try_start_1cd .. :try_end_1f2} :catchall_1fe

    .line 671
    :cond_1f2
    :goto_1f2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1bb

    .line 677
    :catch_1f5
    move-exception v0

    .line 678
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_1f6
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v5, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Lcom/lge/mdm/controller/LGMDMEmailController;->remove(Landroid/os/IBinder;)V
    :try_end_1fd
    .catchall {:try_start_1f6 .. :try_end_1fd} :catchall_1fe

    goto :goto_1f2

    .line 670
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    :catchall_1fe
    move-exception v3

    monitor-exit v4

    throw v3

    .line 682
    .restart local v1    # "i":I
    :cond_201
    :try_start_201
    const-string/jumbo v5, "EmailController"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;

    invoke-virtual {v3}, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20f
    .catchall {:try_start_201 .. :try_end_20f} :catchall_1fe

    goto/16 :goto_6c

    .line 686
    .end local v1    # "i":I
    :sswitch_211
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v4, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 687
    :try_start_216
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v3, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "i":I
    :goto_220
    if-ltz v1, :cond_266

    .line 688
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v3, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;

    .line 689
    .restart local v2    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    iget v3, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->events:I
    :try_end_22e
    .catchall {:try_start_216 .. :try_end_22e} :catchall_263

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_257

    .line 691
    :try_start_232
    iget-object v5, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->callback:Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;

    invoke-interface {v5, v3}, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;->onModifyEXCHANGEConfig(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;)V

    .line 692
    const-string/jumbo v3, "EmailController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MODIFY_EXCHANGE_CONFIG to package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 693
    iget-object v6, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->pkgForDebug:Ljava/lang/String;

    .line 692
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_257
    .catch Landroid/os/RemoteException; {:try_start_232 .. :try_end_257} :catch_25a
    .catchall {:try_start_232 .. :try_end_257} :catchall_263

    .line 687
    :cond_257
    :goto_257
    add-int/lit8 v1, v1, -0x1

    goto :goto_220

    .line 694
    :catch_25a
    move-exception v0

    .line 695
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_25b
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v5, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Lcom/lge/mdm/controller/LGMDMEmailController;->remove(Landroid/os/IBinder;)V
    :try_end_262
    .catchall {:try_start_25b .. :try_end_262} :catchall_263

    goto :goto_257

    .line 686
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    :catchall_263
    move-exception v3

    monitor-exit v4

    throw v3

    .line 699
    .restart local v1    # "i":I
    :cond_266
    :try_start_266
    const-string/jumbo v5, "EmailController"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;

    invoke-virtual {v3}, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_274
    .catchall {:try_start_266 .. :try_end_274} :catchall_263

    goto/16 :goto_6c

    .line 703
    .end local v1    # "i":I
    :sswitch_276
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v4, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 704
    :try_start_27b
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v3, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "i":I
    :goto_285
    if-ltz v1, :cond_2cb

    .line 705
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v3, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;

    .line 706
    .restart local v2    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    iget v3, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->events:I
    :try_end_293
    .catchall {:try_start_27b .. :try_end_293} :catchall_2c8

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_2bc

    .line 708
    :try_start_297
    iget-object v5, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->callback:Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v5, v3}, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;->onDeleteEXCHANGEConfig(Ljava/lang/String;)V

    .line 709
    const-string/jumbo v3, "EmailController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DELETE_EXCHANGE_CONFIG to package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 710
    iget-object v6, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->pkgForDebug:Ljava/lang/String;

    .line 709
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2bc
    .catch Landroid/os/RemoteException; {:try_start_297 .. :try_end_2bc} :catch_2bf
    .catchall {:try_start_297 .. :try_end_2bc} :catchall_2c8

    .line 704
    :cond_2bc
    :goto_2bc
    add-int/lit8 v1, v1, -0x1

    goto :goto_285

    .line 711
    :catch_2bf
    move-exception v0

    .line 712
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_2c0
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v5, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Lcom/lge/mdm/controller/LGMDMEmailController;->remove(Landroid/os/IBinder;)V
    :try_end_2c7
    .catchall {:try_start_2c0 .. :try_end_2c7} :catchall_2c8

    goto :goto_2bc

    .line 703
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    :catchall_2c8
    move-exception v3

    monitor-exit v4

    throw v3

    .line 716
    .restart local v1    # "i":I
    :cond_2cb
    :try_start_2cb
    const-string/jumbo v5, "EmailController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete account:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e9
    .catchall {:try_start_2cb .. :try_end_2e9} :catchall_2c8

    goto/16 :goto_6c

    .line 720
    .end local v1    # "i":I
    :sswitch_2eb
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v4, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 721
    :try_start_2f0
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v3, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "i":I
    :goto_2fa
    if-ltz v1, :cond_340

    .line 722
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v3, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;

    .line 723
    .restart local v2    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    iget v3, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->events:I
    :try_end_308
    .catchall {:try_start_2f0 .. :try_end_308} :catchall_33d

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_331

    .line 725
    :try_start_30c
    iget-object v5, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->callback:Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/lge/mdm/config/LGMDMEmailCertConfig;

    invoke-interface {v5, v3}, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;->onAddEmailCertConfig(Lcom/lge/mdm/config/LGMDMEmailCertConfig;)V

    .line 726
    const-string/jumbo v3, "EmailController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ADD_EMAIL_CERT_CONFIG to package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_331
    .catch Landroid/os/RemoteException; {:try_start_30c .. :try_end_331} :catch_334
    .catchall {:try_start_30c .. :try_end_331} :catchall_33d

    .line 721
    :cond_331
    :goto_331
    add-int/lit8 v1, v1, -0x1

    goto :goto_2fa

    .line 727
    :catch_334
    move-exception v0

    .line 728
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_335
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v5, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Lcom/lge/mdm/controller/LGMDMEmailController;->remove(Landroid/os/IBinder;)V
    :try_end_33c
    .catchall {:try_start_335 .. :try_end_33c} :catchall_33d

    goto :goto_331

    .line 720
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    :catchall_33d
    move-exception v3

    monitor-exit v4

    throw v3

    .line 732
    .restart local v1    # "i":I
    :cond_340
    :try_start_340
    const-string/jumbo v5, "EmailController"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/lge/mdm/config/LGMDMEmailCertConfig;

    invoke-virtual {v3}, Lcom/lge/mdm/config/LGMDMEmailCertConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34e
    .catchall {:try_start_340 .. :try_end_34e} :catchall_33d

    goto/16 :goto_6c

    .line 736
    .end local v1    # "i":I
    :sswitch_350
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v4, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 737
    :try_start_355
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v3, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "i":I
    :goto_35f
    if-ltz v1, :cond_3a5

    .line 738
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v3, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;

    .line 739
    .restart local v2    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    iget v3, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->events:I
    :try_end_36d
    .catchall {:try_start_355 .. :try_end_36d} :catchall_3a2

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_396

    .line 741
    :try_start_371
    iget-object v5, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->callback:Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v5, v3}, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;->onDeleteEmailCertConfig(Ljava/lang/String;)V

    .line 742
    const-string/jumbo v3, "EmailController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DELETE_EMAIL_CERT_CONFIG to package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 743
    iget-object v6, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->pkgForDebug:Ljava/lang/String;

    .line 742
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_396
    .catch Landroid/os/RemoteException; {:try_start_371 .. :try_end_396} :catch_399
    .catchall {:try_start_371 .. :try_end_396} :catchall_3a2

    .line 737
    :cond_396
    :goto_396
    add-int/lit8 v1, v1, -0x1

    goto :goto_35f

    .line 744
    :catch_399
    move-exception v0

    .line 745
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_39a
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v5, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Lcom/lge/mdm/controller/LGMDMEmailController;->remove(Landroid/os/IBinder;)V
    :try_end_3a1
    .catchall {:try_start_39a .. :try_end_3a1} :catchall_3a2

    goto :goto_396

    .line 736
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    :catchall_3a2
    move-exception v3

    monitor-exit v4

    throw v3

    .line 749
    .restart local v1    # "i":I
    :cond_3a5
    :try_start_3a5
    const-string/jumbo v5, "EmailController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete email certification:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c3
    .catchall {:try_start_3a5 .. :try_end_3c3} :catchall_3a2

    goto/16 :goto_6c

    .line 753
    .end local v1    # "i":I
    :sswitch_3c5
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v4, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 754
    :try_start_3ca
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v3, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "i":I
    :goto_3d4
    if-ltz v1, :cond_41a

    .line 755
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v3, v3, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;

    .line 756
    .restart local v2    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    iget v3, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->events:I
    :try_end_3e2
    .catchall {:try_start_3ca .. :try_end_3e2} :catchall_417

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_40b

    .line 758
    :try_start_3e6
    iget-object v5, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->callback:Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;

    invoke-interface {v5, v3}, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;->onDeleteEXCHANGEConfigInternal(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;)V

    .line 759
    const-string/jumbo v3, "EmailController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DELETE_EXCHANGE_CONFIG to package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 760
    iget-object v6, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->pkgForDebug:Ljava/lang/String;

    .line 759
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40b
    .catch Landroid/os/RemoteException; {:try_start_3e6 .. :try_end_40b} :catch_40e
    .catchall {:try_start_3e6 .. :try_end_40b} :catchall_417

    .line 754
    :cond_40b
    :goto_40b
    add-int/lit8 v1, v1, -0x1

    goto :goto_3d4

    .line 761
    :catch_40e
    move-exception v0

    .line 762
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_40f
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->this$0:Lcom/lge/mdm/controller/LGMDMEmailController;

    iget-object v5, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Lcom/lge/mdm/controller/LGMDMEmailController;->remove(Landroid/os/IBinder;)V
    :try_end_416
    .catchall {:try_start_40f .. :try_end_416} :catchall_417

    goto :goto_40b

    .line 753
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    :catchall_417
    move-exception v3

    monitor-exit v4

    throw v3

    .line 766
    .restart local v1    # "i":I
    :cond_41a
    :try_start_41a
    const-string/jumbo v5, "EmailController"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;

    invoke-virtual {v3}, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_428
    .catchall {:try_start_41a .. :try_end_428} :catchall_417

    goto/16 :goto_6c

    .line 604
    :sswitch_data_42a
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_6e
        0x4 -> :sswitch_d2
        0x8 -> :sswitch_1ac
        0x10 -> :sswitch_211
        0x20 -> :sswitch_276
        0x40 -> :sswitch_147
        0x80 -> :sswitch_3c5
        0x100 -> :sswitch_2eb
        0x200 -> :sswitch_350
    .end sparse-switch
.end method
