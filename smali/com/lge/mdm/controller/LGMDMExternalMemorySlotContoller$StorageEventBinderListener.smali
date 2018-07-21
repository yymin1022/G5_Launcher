.class Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$StorageEventBinderListener;
.super Landroid/os/storage/StorageEventListener;
.source "LGMDMExternalMemorySlotContoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageEventBinderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;


# direct methods
.method private constructor <init>(Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$StorageEventBinderListener;->this$0:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$StorageEventBinderListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$StorageEventBinderListener;-><init>(Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;)V

    return-void
.end method


# virtual methods
.method public onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .registers 4
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    .prologue
    .line 261
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onDiskScanned"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public onDiskScanned(Landroid/os/storage/DiskInfo;I)V
    .registers 6
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .param p2, "volumeCount"    # I

    .prologue
    .line 257
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDiskScanned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 265
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getExternalStorageState"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v3

    .line 268
    .local v3, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWipeDataMaster()Z

    move-result v1

    .line 270
    .local v1, "isSetAllowWipeDataMaster":Z
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowExternalMemorySlot(Landroid/content/ComponentName;)Z

    move-result v7

    if-nez v7, :cond_d7

    if-nez v1, :cond_d7

    .line 271
    const/4 v6, 0x0

    .line 273
    .local v6, "storageVolumes":[Landroid/os/storage/StorageVolume;
    :try_start_2d
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$StorageEventBinderListener;->this$0:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    iget-object v7, v7, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mContext:Landroid/content/Context;

    .line 274
    const-string/jumbo v8, "storage"

    .line 273
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 275
    .local v4, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3d} :catch_15f

    move-result-object v6

    .line 278
    .end local v4    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v6    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :goto_3e
    if-nez v6, :cond_41

    .line 279
    return-void

    .line 281
    :cond_41
    array-length v2, v6

    .line 282
    .local v2, "length":I
    const/4 v7, 0x1

    if-ne v2, v7, :cond_82

    .line 283
    const/4 v7, 0x0

    aget-object v5, v6, v7

    .line 284
    .local v5, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5e

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 285
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v7

    if-eqz v7, :cond_7c

    .line 311
    .end local v2    # "length":I
    .end local v5    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_5e
    :goto_5e
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUSBHostStorage(Landroid/content/ComponentName;)Z

    move-result v7

    if-nez v7, :cond_158

    if-nez v1, :cond_158

    .line 312
    const/4 v6, 0x0

    .line 314
    .restart local v6    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :try_start_68
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$StorageEventBinderListener;->this$0:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    iget-object v7, v7, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mContext:Landroid/content/Context;

    .line 315
    const-string/jumbo v8, "storage"

    .line 314
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 316
    .restart local v4    # "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_78} :catch_15c

    move-result-object v6

    .line 319
    .end local v4    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v6    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :goto_79
    if-nez v6, :cond_fc

    .line 320
    return-void

    .line 286
    .restart local v2    # "length":I
    .restart local v5    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_7c
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$StorageEventBinderListener;->this$0:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    invoke-static {v7, p1, p2, p3}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->-wrap2(Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    .line 288
    .end local v5    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_82
    const/4 v7, 0x2

    if-lt v2, v7, :cond_5e

    .line 289
    const/4 v7, 0x1

    aget-object v5, v6, v7

    .line 290
    .restart local v5    # "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "check path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " | storageVolume.getPath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 291
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 290
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string/jumbo v7, "USBstorage"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5e

    .line 293
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5e

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 294
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v7

    if-nez v7, :cond_5e

    .line 295
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$StorageEventBinderListener;->this$0:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    invoke-static {v7, p1, p2, p3}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->-wrap2(Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    .line 299
    .end local v2    # "length":I
    .end local v5    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_d7
    const-string/jumbo v7, "unmounted"

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e9

    .line 300
    const-string/jumbo v7, "removed"

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 299
    if-eqz v7, :cond_5e

    .line 306
    :cond_e9
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$StorageEventBinderListener;->this$0:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    invoke-static {v7}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->-get1(Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;)Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 307
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$StorageEventBinderListener;->this$0:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->factoryReset(I)V

    goto/16 :goto_5e

    .line 322
    :cond_fc
    array-length v2, v6

    .line 323
    .restart local v2    # "length":I
    const/4 v7, 0x2

    if-lt v2, v7, :cond_158

    .line 324
    const/4 v7, 0x0

    array-length v8, v6

    :goto_102
    if-ge v7, v8, :cond_158

    aget-object v5, v6, v7

    .line 325
    .restart local v5    # "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 326
    const-string/jumbo v9, "USBstorage"

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_159

    .line 327
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "check path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 328
    const-string/jumbo v9, " | storageVolume.getPath = "

    .line 327
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 328
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 327
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_158

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-eqz v7, :cond_158

    .line 330
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v7

    if-nez v7, :cond_158

    .line 331
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$StorageEventBinderListener;->this$0:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    invoke-static {v7, p1, p2, p3}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->-wrap2(Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .end local v2    # "length":I
    .end local v5    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_158
    return-void

    .line 324
    .restart local v2    # "length":I
    .restart local v5    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_159
    add-int/lit8 v7, v7, 0x1

    goto :goto_102

    .line 317
    .end local v2    # "length":I
    .end local v5    # "storageVolume":Landroid/os/storage/StorageVolume;
    .restart local v6    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :catch_15c
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto/16 :goto_79

    .line 276
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_15f
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_3e
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .registers 5
    .param p1, "connected"    # Z

    .prologue
    .line 241
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUsbMassStorageConnectionChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .registers 5
    .param p1, "fsUuid"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVolumeForgotten "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .registers 4
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;

    .prologue
    .line 249
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onVolumeRecordChanged"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .registers 7
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    .line 245
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVolumeStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method
