.class Lcom/lge/mdm/controller/LGMDMApplicationController$3;
.super Ljava/lang/Object;
.source "LGMDMApplicationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/controller/LGMDMApplicationController;->uninstallSignatureApp(Landroid/content/ComponentName;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMApplicationController;

.field final synthetic val$packagelist:Ljava/util/List;

.field final synthetic val$userHandle:I

.field final synthetic val$who:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMApplicationController;Ljava/util/List;ILandroid/content/ComponentName;)V
    .registers 5
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMApplicationController;
    .param p3, "val$userHandle"    # I
    .param p4, "val$who"    # Landroid/content/ComponentName;

    .prologue
    .line 388
    .local p2, "val$packagelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$3;->this$0:Lcom/lge/mdm/controller/LGMDMApplicationController;

    iput-object p2, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$3;->val$packagelist:Ljava/util/List;

    iput p3, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$3;->val$userHandle:I

    iput-object p4, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$3;->val$who:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 393
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v7, "mUninstallFailpkglist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v6, "mUninstallFailReason":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v11, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$3;->val$packagelist:Ljava/util/List;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "packageName$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 397
    .local v9, "packageName":Ljava/lang/String;
    new-instance v8, Lcom/lge/mdm/controller/LGMDMApplicationController$PackageDeleteObserver;

    iget-object v11, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$3;->this$0:Lcom/lge/mdm/controller/LGMDMApplicationController;

    invoke-direct {v8, v11}, Lcom/lge/mdm/controller/LGMDMApplicationController$PackageDeleteObserver;-><init>(Lcom/lge/mdm/controller/LGMDMApplicationController;)V

    .line 399
    .local v8, "obs":Lcom/lge/mdm/controller/LGMDMApplicationController$PackageDeleteObserver;
    const-string/jumbo v11, "package"

    .line 398
    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 400
    .local v3, "mPm":Landroid/content/pm/IPackageManager;
    if-nez v3, :cond_3a

    .line 401
    const-string/jumbo v11, "ApplicationCotroller"

    const-string/jumbo v12, "[uninstallSignatureApp] error:Error: Could not access the Package Manager.  Is the system running?"

    invoke-static {v11, v12}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 403
    :cond_3a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 405
    .local v4, "identity":J
    :try_start_3e
    iget v11, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$3;->val$userHandle:I

    const/high16 v12, -0x80000000

    invoke-interface {v3, v9, v8, v11, v12}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    .line 406
    const-string/jumbo v11, "ApplicationCotroller"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[uninstallSignatureApp][packageName:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 407
    const-string/jumbo v13, "] start uninstall"

    .line 406
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    monitor-enter v8
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_67} :catch_7d
    .catchall {:try_start_3e .. :try_end_67} :catchall_ce

    .line 409
    :goto_67
    :try_start_67
    iget-boolean v11, v8, Lcom/lge/mdm/controller/LGMDMApplicationController$PackageDeleteObserver;->finished:Z
    :try_end_69
    .catchall {:try_start_67 .. :try_end_69} :catchall_7a

    if-nez v11, :cond_8b

    .line 411
    :try_start_6b
    invoke-virtual {v8}, Lcom/lge/mdm/controller/LGMDMApplicationController$PackageDeleteObserver;->wait()V
    :try_end_6e
    .catch Ljava/lang/InterruptedException; {:try_start_6b .. :try_end_6e} :catch_6f
    .catchall {:try_start_6b .. :try_end_6e} :catchall_7a

    goto :goto_67

    .line 412
    :catch_6f
    move-exception v2

    .line 413
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_70
    const-string/jumbo v11, "ApplicationCotroller"

    const-string/jumbo v12, "Failed talking with LGMDM controller"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_79
    .catchall {:try_start_70 .. :try_end_79} :catchall_7a

    goto :goto_67

    .line 408
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_7a
    move-exception v11

    :try_start_7b
    monitor-exit v8

    throw v11
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_7d} :catch_7d
    .catchall {:try_start_7b .. :try_end_7d} :catchall_ce

    .line 425
    :catch_7d
    move-exception v1

    .line 426
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_7e
    const-string/jumbo v11, "ApplicationCotroller"

    const-string/jumbo v12, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_7e .. :try_end_87} :catchall_ce

    .line 428
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_10

    .line 416
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_8b
    :try_start_8b
    const-string/jumbo v11, "ApplicationCotroller"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[uninstallSignatureApp][packageName:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 417
    const-string/jumbo v13, "] uninstall is succeeded:"

    .line 416
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 417
    iget-boolean v13, v8, Lcom/lge/mdm/controller/LGMDMApplicationController$PackageDeleteObserver;->result:Z

    .line 416
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-boolean v11, v8, Lcom/lge/mdm/controller/LGMDMApplicationController$PackageDeleteObserver;->result:Z

    if-nez v11, :cond_c8

    .line 419
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c8

    .line 420
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    iget v11, v8, Lcom/lge/mdm/controller/LGMDMApplicationController$PackageDeleteObserver;->failReason:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c8
    .catchall {:try_start_8b .. :try_end_c8} :catchall_7a

    :cond_c8
    :try_start_c8
    monitor-exit v8
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_c8 .. :try_end_c9} :catch_7d
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_ce

    .line 428
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_10

    .line 427
    :catchall_ce
    move-exception v11

    .line 428
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 427
    throw v11

    .line 432
    .end local v3    # "mPm":Landroid/content/pm/IPackageManager;
    .end local v4    # "identity":J
    .end local v8    # "obs":Lcom/lge/mdm/controller/LGMDMApplicationController$PackageDeleteObserver;
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_d3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_fa

    .line 433
    new-instance v0, Landroid/content/Intent;

    .line 434
    const-string/jumbo v11, "com.lge.mdm.intent.SIGNETURE_STATE_DELETE_SUCCEEDED"

    .line 433
    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string/jumbo v11, "COMPONENT_NAME"

    iget-object v12, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$3;->val$who:Landroid/content/ComponentName;

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 436
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 437
    const-string/jumbo v11, "ApplicationCotroller"

    const-string/jumbo v12, "[uninstallSignatureApp] Signature app delete succeeded"

    invoke-static {v11, v12}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :goto_f9
    return-void

    .line 439
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    :cond_fa
    const-string/jumbo v11, "ApplicationCotroller"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[uninstallSignatureApp] pkglist = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    new-instance v0, Landroid/content/Intent;

    .line 441
    const-string/jumbo v11, "com.lge.mdm.intent.SIGNETURE_STATE_DELETE_FAILED"

    .line 440
    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .restart local v0    # "broadcastIntent":Landroid/content/Intent;
    const-string/jumbo v11, "COMPONENT_NAME"

    iget-object v12, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$3;->val$who:Landroid/content/ComponentName;

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 443
    const-string/jumbo v11, "PACKAGE_NAME"

    invoke-virtual {v0, v11, v7}, Landroid/content/Intent;->putCharSequenceArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 445
    const-string/jumbo v11, "FAIL_REASON"

    invoke-virtual {v0, v11, v6}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 446
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 447
    const-string/jumbo v11, "ApplicationCotroller"

    const-string/jumbo v12, "[uninstallSignatureApp] Signature app delete failed"

    invoke-static {v11, v12}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string/jumbo v11, "ApplicationCotroller"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[uninstallSignatureApp] package list = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f9
.end method
