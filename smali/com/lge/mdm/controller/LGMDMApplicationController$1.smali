.class Lcom/lge/mdm/controller/LGMDMApplicationController$1;
.super Ljava/lang/Object;
.source "LGMDMApplicationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/controller/LGMDMApplicationController;->installApplication(Landroid/content/ComponentName;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMApplicationController;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$who:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMApplicationController;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMApplicationController;
    .param p2, "val$who"    # Landroid/content/ComponentName;
    .param p3, "val$path"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$1;->this$0:Lcom/lge/mdm/controller/LGMDMApplicationController;

    iput-object p2, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$1;->val$who:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v1, 0x0

    .line 261
    const-string/jumbo v2, "ApplicationCotroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[installApplication][who:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$1;->val$who:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "[path:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$1;->val$path:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v12

    .line 265
    .local v12, "mPm":Landroid/content/pm/IPackageManager;
    if-nez v12, :cond_4f

    .line 266
    const-string/jumbo v1, "ApplicationCotroller"

    const-string/jumbo v2, "[installApplication] error:Error: Could not access the Package Manager.  Is the system running?"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :goto_4e
    return-void

    .line 268
    :cond_4f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 269
    .local v10, "identity":J
    new-instance v13, Lcom/lge/mdm/controller/LGMDMApplicationController$MDMPackageInstallObserver;

    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$1;->this$0:Lcom/lge/mdm/controller/LGMDMApplicationController;

    invoke-direct {v13, v2, v1}, Lcom/lge/mdm/controller/LGMDMApplicationController$MDMPackageInstallObserver;-><init>(Lcom/lge/mdm/controller/LGMDMApplicationController;Lcom/lge/mdm/controller/LGMDMApplicationController$MDMPackageInstallObserver;)V

    .line 270
    .local v13, "obs":Lcom/lge/mdm/controller/LGMDMApplicationController$MDMPackageInstallObserver;
    new-instance v0, Landroid/content/pm/VerificationParams;

    .line 271
    const/4 v4, -0x1

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    .line 270
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/VerificationParams;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ILandroid/content/pm/ManifestDigest;)V

    .line 274
    .local v0, "verificationParams":Landroid/content/pm/VerificationParams;
    const v4, -0x7ffffffe

    .line 275
    .local v4, "installFlag":I
    :try_start_66
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$1;->val$path:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/lge/mdm/controller/LGMDMApplicationController$MDMPackageInstallObserver;->getBinder()Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v3

    sget-object v1, Lcom/lge/mdm/util/SpecificPackageName;->ALLOWED_INSTALLER:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v5, v1, v5

    const/4 v7, 0x0

    move-object v1, v12

    move-object v6, v0

    invoke-interface/range {v1 .. v7}, Landroid/content/pm/IPackageManager;->installPackage(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;)V

    .line 277
    const-string/jumbo v1, "ApplicationCotroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[installApplication][path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$1;->val$path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] start install"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    monitor-enter v13
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_9b} :catch_b1
    .catchall {:try_start_66 .. :try_end_9b} :catchall_131

    .line 279
    :goto_9b
    :try_start_9b
    iget-boolean v1, v13, Lcom/lge/mdm/controller/LGMDMApplicationController$MDMPackageInstallObserver;->finished:Z
    :try_end_9d
    .catchall {:try_start_9b .. :try_end_9d} :catchall_ae

    if-nez v1, :cond_bf

    .line 281
    :try_start_9f
    invoke-virtual {v13}, Lcom/lge/mdm/controller/LGMDMApplicationController$MDMPackageInstallObserver;->wait()V
    :try_end_a2
    .catch Ljava/lang/InterruptedException; {:try_start_9f .. :try_end_a2} :catch_a3
    .catchall {:try_start_9f .. :try_end_a2} :catchall_ae

    goto :goto_9b

    .line 282
    :catch_a3
    move-exception v9

    .line 283
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_a4
    const-string/jumbo v1, "ApplicationCotroller"

    const-string/jumbo v2, "Failed talking with LGMDM controller"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ad
    .catchall {:try_start_a4 .. :try_end_ad} :catchall_ae

    goto :goto_9b

    .line 278
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :catchall_ae
    move-exception v1

    :try_start_af
    monitor-exit v13

    throw v1
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_b1} :catch_b1
    .catchall {:try_start_af .. :try_end_b1} :catchall_131

    .line 294
    :catch_b1
    move-exception v8

    .line 295
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_b2
    const-string/jumbo v1, "ApplicationCotroller"

    const-string/jumbo v2, "Failed talking with LGMDM controller"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bb
    .catchall {:try_start_b2 .. :try_end_bb} :catchall_131

    .line 297
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4e

    .line 286
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_bf
    :try_start_bf
    iget v1, v13, Lcom/lge/mdm/controller/LGMDMApplicationController$MDMPackageInstallObserver;->result:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_fa

    .line 287
    const-string/jumbo v1, "ApplicationCotroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[installApplication][path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$1;->val$path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 288
    const-string/jumbo v3, "] install succeeded ("

    .line 287
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 288
    iget v3, v13, Lcom/lge/mdm/controller/LGMDMApplicationController$MDMPackageInstallObserver;->result:I

    .line 287
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 288
    const-string/jumbo v3, ")"

    .line 287
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f4
    .catchall {:try_start_bf .. :try_end_f4} :catchall_ae

    :goto_f4
    :try_start_f4
    monitor-exit v13
    :try_end_f5
    .catch Landroid/os/RemoteException; {:try_start_f4 .. :try_end_f5} :catch_b1
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_131

    .line 297
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_4e

    .line 290
    :cond_fa
    :try_start_fa
    const-string/jumbo v1, "ApplicationCotroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[installApplication][path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$1;->val$path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] Failure ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 291
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$1;->this$0:Lcom/lge/mdm/controller/LGMDMApplicationController;

    iget v5, v13, Lcom/lge/mdm/controller/LGMDMApplicationController$MDMPackageInstallObserver;->result:I

    invoke-static {v3, v5}, Lcom/lge/mdm/controller/LGMDMApplicationController;->-wrap0(Lcom/lge/mdm/controller/LGMDMApplicationController;I)Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 291
    const-string/jumbo v3, "]"

    .line 290
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_130
    .catchall {:try_start_fa .. :try_end_130} :catchall_ae

    goto :goto_f4

    .line 296
    :catchall_131
    move-exception v1

    .line 297
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 296
    throw v1
.end method
