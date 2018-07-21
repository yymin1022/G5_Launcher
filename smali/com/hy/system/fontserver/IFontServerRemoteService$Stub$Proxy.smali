.class Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFontServerRemoteService.java"

# interfaces
.implements Lcom/hy/system/fontserver/IFontServerRemoteService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p1, p0, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 211
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getAllFallbackNames()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 529
    :try_start_8
    const-string v0, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 531
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 532
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    move-result-object v0

    .line 535
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 538
    return-object v0

    .line 534
    :catchall_23
    move-exception v0

    .line 535
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 537
    throw v0
.end method

.method public getAllFontFullPath()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 357
    :try_start_8
    const-string v0, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 359
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 360
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    move-result-object v0

    .line 363
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 366
    return-object v0

    .line 362
    :catchall_23
    move-exception v0

    .line 363
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 365
    throw v0
.end method

.method public getAllFontNames()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 323
    :try_start_8
    const-string v0, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 325
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 326
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_22

    move-result-object v0

    .line 329
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 332
    return-object v0

    .line 328
    :catchall_22
    move-exception v0

    .line 329
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 331
    throw v0
.end method

.method public getAllFontWebFaceNames()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 340
    :try_start_8
    const-string v0, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 342
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 343
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    move-result-object v0

    .line 346
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 347
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 349
    return-object v0

    .line 345
    :catchall_23
    move-exception v0

    .line 346
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 347
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 348
    throw v0
.end method

.method public getDefaultTypefaceIndex()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 255
    :try_start_8
    const-string v0, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 257
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 258
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_22

    move-result v0

    .line 261
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 264
    return v0

    .line 260
    :catchall_22
    move-exception v0

    .line 261
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 263
    throw v0
.end method

.method public getDownloadFontDstPath()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 409
    :try_start_8
    const-string v0, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 411
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 412
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    move-result-object v0

    .line 415
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 416
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 418
    return-object v0

    .line 414
    :catchall_23
    move-exception v0

    .line 415
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 416
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 417
    throw v0
.end method

.method public getDownloadFontSrcPath()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 392
    :try_start_8
    const-string v0, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 394
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 395
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    move-result-object v0

    .line 398
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 401
    return-object v0

    .line 397
    :catchall_23
    move-exception v0

    .line 398
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 400
    throw v0
.end method

.method public getFallbackFullPath(I)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 511
    :try_start_8
    const-string v0, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    iget-object v0, p0, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 514
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 515
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    move-result-object v0

    .line 518
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 521
    return-object v0

    .line 517
    :catchall_26
    move-exception v0

    .line 518
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 520
    throw v0
.end method

.method public getFallbackIndex()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 494
    :try_start_8
    const-string v0, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 496
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 497
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    move-result v0

    .line 500
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 501
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 503
    return v0

    .line 499
    :catchall_23
    move-exception v0

    .line 500
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 501
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 502
    throw v0
.end method

.method public getFallbackSummary()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 477
    :try_start_8
    const-string v0, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 479
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 480
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    move-result-object v0

    .line 483
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 484
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 486
    return-object v0

    .line 482
    :catchall_23
    move-exception v0

    .line 483
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 484
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 485
    throw v0
.end method

.method public getFontFullPath(I)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 374
    :try_start_8
    const-string v0, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    iget-object v0, p0, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 377
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 378
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    move-result-object v0

    .line 381
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 384
    return-object v0

    .line 380
    :catchall_26
    move-exception v0

    .line 381
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 383
    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 218
    const-string v0, "com.hy.system.fontserver.IFontServerRemoteService"

    return-object v0
.end method

.method public getNumAllFonts()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 272
    :try_start_8
    const-string v0, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 274
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 275
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_22

    move-result v0

    .line 278
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 281
    return v0

    .line 277
    :catchall_22
    move-exception v0

    .line 278
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 280
    throw v0
.end method

.method public getNumEmbeddedFonts()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 289
    :try_start_8
    const-string v0, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 291
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 292
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_22

    move-result v0

    .line 295
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 298
    return v0

    .line 294
    :catchall_22
    move-exception v0

    .line 295
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    throw v0
.end method

.method public getSummary()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 306
    :try_start_8
    const-string v0, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 308
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 309
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_22

    move-result-object v0

    .line 312
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 315
    return-object v0

    .line 311
    :catchall_22
    move-exception v0

    .line 312
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 314
    throw v0
.end method

.method public getSystemDefaultTypefaceIndex()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 426
    :try_start_8
    const-string v0, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 428
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 429
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    move-result v0

    .line 432
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 435
    return v0

    .line 431
    :catchall_23
    move-exception v0

    .line 432
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 434
    throw v0
.end method

.method public selectDefaultTypeface(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 239
    :try_start_8
    const-string v0, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-object v0, p0, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 242
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_21

    .line 245
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 248
    return-void

    .line 244
    :catchall_21
    move-exception v0

    .line 245
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 247
    throw v0
.end method

.method public selectFallback(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 459
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 461
    :try_start_8
    const-string v0, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    iget-object v0, p0, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 464
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 467
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 468
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 470
    return-void

    .line 466
    :catchall_22
    move-exception v0

    .line 467
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 468
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 469
    throw v0
.end method

.method public setDefault()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 443
    :try_start_8
    const-string v0, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 445
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 446
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    move-result v0

    .line 449
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 452
    return v0

    .line 448
    :catchall_23
    move-exception v0

    .line 449
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 451
    throw v0
.end method

.method public updateFontServer()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 225
    :try_start_8
    const-string v0, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 227
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1e

    .line 230
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 233
    return-void

    .line 229
    :catchall_1e
    move-exception v0

    .line 230
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 232
    throw v0
.end method
