.class Lcom/lge/mdm/controller/LGMDMApplicationController$2;
.super Ljava/lang/Object;
.source "LGMDMApplicationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/controller/LGMDMApplicationController;->uninstallApplication(Landroid/content/ComponentName;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMApplicationController;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userHandle:I

.field final synthetic val$who:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMApplicationController;Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMApplicationController;
    .param p2, "val$who"    # Landroid/content/ComponentName;
    .param p3, "val$packageName"    # Ljava/lang/String;
    .param p4, "val$userHandle"    # I

    .prologue
    .line 346
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$2;->this$0:Lcom/lge/mdm/controller/LGMDMApplicationController;

    iput-object p2, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$2;->val$who:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$2;->val$packageName:Ljava/lang/String;

    iput p4, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$2;->val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 348
    const-string/jumbo v6, "ApplicationCotroller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[uninstallApplication][who:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$2;->val$who:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "[packageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 349
    iget-object v8, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$2;->val$packageName:Ljava/lang/String;

    .line 348
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 349
    const-string/jumbo v8, "]"

    .line 348
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    new-instance v5, Lcom/lge/mdm/controller/LGMDMApplicationController$PackageDeleteObserver;

    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$2;->this$0:Lcom/lge/mdm/controller/LGMDMApplicationController;

    invoke-direct {v5, v6}, Lcom/lge/mdm/controller/LGMDMApplicationController$PackageDeleteObserver;-><init>(Lcom/lge/mdm/controller/LGMDMApplicationController;)V

    .line 352
    .local v5, "obs":Lcom/lge/mdm/controller/LGMDMApplicationController$PackageDeleteObserver;
    const-string/jumbo v6, "package"

    .line 351
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 353
    .local v4, "mPm":Landroid/content/pm/IPackageManager;
    if-nez v4, :cond_55

    .line 354
    const-string/jumbo v6, "ApplicationCotroller"

    const-string/jumbo v7, "[uninstallApplication] error:Error: Could not access the Package Manager.  Is the system running?"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :goto_54
    return-void

    .line 356
    :cond_55
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 358
    .local v2, "identity":J
    :try_start_59
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$2;->val$packageName:Ljava/lang/String;

    iget v7, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$2;->val$userHandle:I

    const/high16 v8, -0x80000000

    invoke-interface {v4, v6, v5, v7, v8}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    .line 359
    const-string/jumbo v6, "ApplicationCotroller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[uninstallApplication][packageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 360
    const-string/jumbo v8, "] start uninstall"

    .line 359
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    monitor-enter v5
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_86} :catch_9c
    .catchall {:try_start_59 .. :try_end_86} :catchall_d9

    .line 362
    :goto_86
    :try_start_86
    iget-boolean v6, v5, Lcom/lge/mdm/controller/LGMDMApplicationController$PackageDeleteObserver;->finished:Z
    :try_end_88
    .catchall {:try_start_86 .. :try_end_88} :catchall_99

    if-nez v6, :cond_aa

    .line 364
    :try_start_8a
    invoke-virtual {v5}, Lcom/lge/mdm/controller/LGMDMApplicationController$PackageDeleteObserver;->wait()V
    :try_end_8d
    .catch Ljava/lang/InterruptedException; {:try_start_8a .. :try_end_8d} :catch_8e
    .catchall {:try_start_8a .. :try_end_8d} :catchall_99

    goto :goto_86

    .line 365
    :catch_8e
    move-exception v1

    .line 366
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_8f
    const-string/jumbo v6, "ApplicationCotroller"

    const-string/jumbo v7, "Failed talking with LGMDM controller"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_98
    .catchall {:try_start_8f .. :try_end_98} :catchall_99

    goto :goto_86

    .line 361
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_99
    move-exception v6

    :try_start_9a
    monitor-exit v5

    throw v6
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_9c} :catch_9c
    .catchall {:try_start_9a .. :try_end_9c} :catchall_d9

    .line 372
    :catch_9c
    move-exception v0

    .line 373
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_9d
    const-string/jumbo v6, "ApplicationCotroller"

    const-string/jumbo v7, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_9d .. :try_end_a6} :catchall_d9

    .line 375
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_54

    .line 369
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_aa
    :try_start_aa
    const-string/jumbo v6, "ApplicationCotroller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[uninstallApplication][packageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 370
    const-string/jumbo v8, "] uninstall is succeeded:"

    .line 369
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 370
    iget-boolean v8, v5, Lcom/lge/mdm/controller/LGMDMApplicationController$PackageDeleteObserver;->result:Z

    .line 369
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d3
    .catchall {:try_start_aa .. :try_end_d3} :catchall_99

    :try_start_d3
    monitor-exit v5
    :try_end_d4
    .catch Landroid/os/RemoteException; {:try_start_d3 .. :try_end_d4} :catch_9c
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d9

    .line 375
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_54

    .line 374
    :catchall_d9
    move-exception v6

    .line 375
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 374
    throw v6
.end method
