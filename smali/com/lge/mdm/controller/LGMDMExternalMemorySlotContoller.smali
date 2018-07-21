.class public Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;
.super Ljava/lang/Object;
.source "LGMDMExternalMemorySlotContoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$StorageEventBinderListener;,
        Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$1;
    }
.end annotation


# static fields
.field private static final CHECK_CID_LIST:I = 0x1

.field public static final SDCARD_DO_NOTHING:I = -0x1

.field private static TAG:Ljava/lang/String;

.field private static instance:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

.field private static mMountService:Landroid/os/storage/IMountService;


# instance fields
.field private final SDCARD_FORMAT:I

.field private final SDCARD_MOUNT:I

.field private final SDCARD_UNMOUNT:I

.field private final SDCARD_UNMOUNT_SAVE_PRESTATE:I

.field private final USBHOSTSTORAGE_MOUNT:I

.field private final USBHOSTSTORAGE_UNMOUNT:I

.field private final USBHOSTSTORAGE_UNMOUNT_SAVE_PRESTATE:I

.field private bNeedFactoryReset:Z

.field mContext:Landroid/content/Context;

.field private mExternalMemoryHandler:Landroid/os/Handler;

.field private final mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

.field mSdcardReceiver:Landroid/content/BroadcastReceiver;

.field public preStateWhitelist:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->bNeedFactoryReset:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;)V
    .registers 1

    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->checkMountServiceForBootComplete()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;)V
    .registers 1

    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->checkMountServiceUSBHostStorageForBootComplete()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->setMountStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 52
    const-string/jumbo v0, "ExternalMemorySlotContoller"

    sput-object v0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    .line 53
    sput-object v1, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->instance:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    .line 54
    sput-object v1, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mMountService:Landroid/os/storage/IMountService;

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v3, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->bNeedFactoryReset:Z

    .line 59
    iput-boolean v4, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->preStateWhitelist:Z

    .line 63
    iput v3, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->SDCARD_UNMOUNT:I

    .line 64
    iput v4, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->SDCARD_MOUNT:I

    .line 65
    const/4 v3, 0x2

    iput v3, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->SDCARD_UNMOUNT_SAVE_PRESTATE:I

    .line 66
    const/4 v3, 0x3

    iput v3, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->SDCARD_FORMAT:I

    .line 67
    const/4 v3, 0x4

    iput v3, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->USBHOSTSTORAGE_UNMOUNT:I

    .line 68
    const/4 v3, 0x5

    iput v3, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->USBHOSTSTORAGE_MOUNT:I

    .line 69
    const/4 v3, 0x6

    iput v3, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->USBHOSTSTORAGE_UNMOUNT_SAVE_PRESTATE:I

    .line 134
    new-instance v3, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$1;

    invoke-direct {v3, p0}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$1;-><init>(Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;)V

    iput-object v3, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mSdcardReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 81
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mContext:Landroid/content/Context;

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mSdcardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "LGMDMExternalMemorySlotContoller"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 87
    .local v2, "t":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 88
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 89
    .local v1, "looper":Landroid/os/Looper;
    if-nez v1, :cond_55

    .line 90
    return-void

    .line 92
    :cond_55
    new-instance v3, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$2;

    invoke-direct {v3, p0, v1}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller$2;-><init>(Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mExternalMemoryHandler:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method private checkMountServiceForBootComplete()V
    .registers 13

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 161
    const/4 v5, 0x0

    .line 163
    .local v5, "storageVolumes":[Landroid/os/storage/StorageVolume;
    :try_start_4
    iget-object v8, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mContext:Landroid/content/Context;

    .line 164
    const-string/jumbo v9, "storage"

    .line 163
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 165
    .local v4, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_93

    move-result-object v5

    .line 169
    .end local v4    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v5    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :goto_13
    if-nez v5, :cond_16

    .line 170
    return-void

    .line 173
    :cond_16
    const-string/jumbo v2, ""

    .line 174
    .local v2, "path":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 176
    .local v3, "status":Ljava/lang/String;
    array-length v1, v5

    .line 177
    .local v1, "length":I
    if-ne v1, v10, :cond_3d

    .line 178
    aget-object v6, v5, v7

    .line 179
    .local v6, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {p0, v2}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getSDcardStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-eqz v7, :cond_35

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v7

    if-eqz v7, :cond_36

    .line 160
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    :cond_35
    :goto_35
    return-void

    .line 182
    .restart local v6    # "volume":Landroid/os/storage/StorageVolume;
    :cond_36
    const-string/jumbo v7, "start"

    invoke-direct {p0, v2, v7, v3}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->setMountStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 184
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    :cond_3d
    if-ne v1, v11, :cond_5c

    .line 185
    aget-object v6, v5, v10

    .line 186
    .restart local v6    # "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {p0, v2}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getSDcardStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-eqz v7, :cond_35

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v7

    if-nez v7, :cond_35

    .line 189
    const-string/jumbo v7, "start"

    invoke-direct {p0, v2, v7, v3}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->setMountStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 191
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    :cond_5c
    if-le v1, v11, :cond_35

    .line 192
    array-length v8, v5

    :goto_5f
    if-ge v7, v8, :cond_35

    aget-object v6, v5, v7

    .line 193
    .restart local v6    # "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 194
    if-eqz v2, :cond_35

    const-string/jumbo v9, "USBstorage"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_35

    .line 196
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v9

    if-eqz v9, :cond_90

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v9

    if-nez v9, :cond_90

    .line 197
    sget-object v9, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Support external memory slot"

    invoke-static {v9, v10}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0, v2}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getSDcardStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 199
    const-string/jumbo v9, "start"

    invoke-direct {p0, v2, v9, v3}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->setMountStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_90
    add-int/lit8 v7, v7, 0x1

    goto :goto_5f

    .line 166
    .end local v1    # "length":I
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "status":Ljava/lang/String;
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    .restart local v5    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :catch_93
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto/16 :goto_13
.end method

.method private checkMountServiceUSBHostStorageForBootComplete()V
    .registers 14

    .prologue
    .line 206
    const/4 v6, 0x0

    .line 208
    .local v6, "storageVolumes":[Landroid/os/storage/StorageVolume;
    :try_start_1
    iget-object v8, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mContext:Landroid/content/Context;

    .line 209
    const-string/jumbo v9, "storage"

    .line 208
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 210
    .local v5, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_65

    move-result-object v6

    .line 214
    .end local v5    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v6    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :goto_10
    if-nez v6, :cond_13

    .line 215
    return-void

    .line 218
    :cond_13
    const-string/jumbo v3, ""

    .line 219
    .local v3, "path":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 221
    .local v4, "status":Ljava/lang/String;
    array-length v2, v6

    .line 222
    .local v2, "length":I
    const/4 v8, 0x2

    if-le v2, v8, :cond_64

    .line 223
    const/4 v8, 0x0

    array-length v9, v6

    :goto_1f
    if-ge v8, v9, :cond_64

    aget-object v7, v6, v8

    .line 224
    .local v7, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 225
    const-string/jumbo v10, "USBstorage"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_46

    .line 226
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v10

    if-eqz v10, :cond_46

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v10

    if-nez v10, :cond_46

    .line 228
    :try_start_3c
    invoke-virtual {p0, v3}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getSDcardStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 229
    const-string/jumbo v10, "start"

    invoke-direct {p0, v3, v10, v4}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->setMountStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_46} :catch_49

    .line 223
    :cond_46
    :goto_46
    add-int/lit8 v8, v8, 0x1

    goto :goto_1f

    .line 230
    :catch_49
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v10, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "PATH name = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 205
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "volume":Landroid/os/storage/StorageVolume;
    :cond_64
    return-void

    .line 211
    .end local v2    # "length":I
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "status":Ljava/lang/String;
    .restart local v6    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :catch_65
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_10
.end method

.method private getGlobalCIDWhitelist(I)Ljava/util/List;
    .registers 13
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 658
    const/4 v0, 0x0

    .line 659
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    const/4 v6, 0x0

    .line 660
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 661
    .local v7, "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 662
    .local v1, "compareSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 664
    .local v4, "firstSet":Z
    iget-object v8, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    if-nez v8, :cond_13

    .line 665
    sget-object v8, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "getGlobalCIDWhitelist : mLGMDMadministrator is null"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    return-object v10

    .line 668
    :cond_13
    new-instance v7, Ljava/util/HashSet;

    .end local v7    # "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 669
    .local v7, "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "compareSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 670
    .local v1, "compareSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .local v5, "i":I
    :goto_1e
    iget-object v8, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v8, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v8

    if-ge v5, v8, :cond_79

    .line 671
    iget-object v8, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v8, v5, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminList(II)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 672
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-nez v0, :cond_37

    .line 673
    sget-object v8, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "getGlobalCIDWhitelist : admin is null"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    return-object v10

    .line 676
    :cond_37
    iget-boolean v8, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowCIDWhitelist:Z

    if-nez v8, :cond_3e

    .line 670
    :cond_3b
    :goto_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 679
    :cond_3e
    iget-object v8, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mCIDWhitelist:Ljava/util/List;

    if-eqz v8, :cond_3b

    .line 680
    if-eqz v4, :cond_5c

    .line 681
    iget-object v8, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mCIDWhitelist:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "externalmemoryCID$iterator":Ljava/util/Iterator;
    :goto_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 682
    .local v2, "externalmemoryCID":Ljava/lang/String;
    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 684
    .end local v2    # "externalmemoryCID":Ljava/lang/String;
    :cond_5a
    const/4 v4, 0x0

    goto :goto_3b

    .line 687
    .end local v3    # "externalmemoryCID$iterator":Ljava/util/Iterator;
    :cond_5c
    iget-object v8, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mCIDWhitelist:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "externalmemoryCID$iterator":Ljava/util/Iterator;
    :goto_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 688
    .restart local v2    # "externalmemoryCID":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 690
    .end local v2    # "externalmemoryCID":Ljava/lang/String;
    :cond_72
    invoke-interface {v7, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 691
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    goto :goto_3b

    .line 695
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .end local v3    # "externalmemoryCID$iterator":Ljava/util/Iterator;
    :cond_79
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v8

    if-lez v8, :cond_84

    .line 696
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 698
    :cond_84
    return-object v6
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;
    .registers 2

    .prologue
    .line 72
    sget-object v0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start LGMDMExternalMemorySlotContoller"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->instance:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    if-nez v0, :cond_13

    .line 74
    new-instance v0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->instance:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    .line 76
    :cond_13
    sget-object v0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->instance:Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;

    return-object v0
.end method

.method private getPreStatus(Ljava/lang/String;)Z
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 703
    invoke-virtual {p0, p1}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getSDcardStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "status":Ljava/lang/String;
    if-eqz v0, :cond_11

    const-string/jumbo v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 705
    const/4 v1, 0x0

    return v1

    .line 707
    :cond_11
    const/4 v1, 0x1

    return v1
.end method

.method private getSDCARDiD()Ljava/lang/String;
    .registers 11

    .prologue
    .line 798
    const-string/jumbo v5, "-1"

    .line 799
    .local v5, "sd_cid":Ljava/lang/String;
    const/4 v2, 0x0

    .line 800
    .local v2, "cmd":Ljava/lang/Process;
    const/4 v0, 0x0

    .line 802
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_5
    new-instance v4, Ljava/io/File;

    const-string/jumbo v7, "/sys/block/mmcblk1"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 803
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_50

    .line 804
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string/jumbo v8, "cat /sys/block/mmcblk1/device/cid"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 805
    .local v2, "cmd":Ljava/lang/Process;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_32} :catch_7f
    .catchall {:try_start_5 .. :try_end_32} :catchall_9f

    .line 806
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_32
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_b9
    .catchall {:try_start_32 .. :try_end_35} :catchall_b6

    .end local v0    # "br":Ljava/io/BufferedReader;
    move-result-object v6

    .line 807
    .local v6, "temp":Ljava/lang/String;
    if-eqz v6, :cond_4f

    .line 808
    move-object v5, v6

    .line 815
    if-eqz v1, :cond_3e

    .line 817
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_44

    .line 823
    :cond_3e
    :goto_3e
    if-eqz v2, :cond_43

    .line 824
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 809
    :cond_43
    return-object v5

    .line 818
    :catch_44
    move-exception v3

    .line 819
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v7, "MDM"

    .line 820
    const-string/jumbo v8, "LGMDMExternalMemorySlotContoller : br.close() : IOException is "

    .line 819
    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e

    .end local v3    # "e":Ljava/io/IOException;
    :cond_4f
    move-object v0, v1

    .line 815
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "cmd":Ljava/lang/Process;
    .end local v6    # "temp":Ljava/lang/String;
    :cond_50
    if-eqz v0, :cond_55

    .line 817
    :try_start_52
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_74

    .line 823
    :cond_55
    :goto_55
    if-eqz v2, :cond_5a

    .line 824
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 827
    .end local v4    # "file":Ljava/io/File;
    :cond_5a
    :goto_5a
    sget-object v7, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getSDCARDiD(): sd_cid is .."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    return-object v5

    .line 818
    .restart local v4    # "file":Ljava/io/File;
    :catch_74
    move-exception v3

    .line 819
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "MDM"

    .line 820
    const-string/jumbo v8, "LGMDMExternalMemorySlotContoller : br.close() : IOException is "

    .line 819
    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 812
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_7f
    move-exception v3

    .line 813
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_80
    :try_start_80
    const-string/jumbo v7, "MDM"

    const-string/jumbo v8, "LGMDMExternalMemorySlotContoller : IOException is "

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_9f

    .line 815
    if-eqz v0, :cond_8e

    .line 817
    :try_start_8b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_94

    .line 823
    :cond_8e
    :goto_8e
    if-eqz v2, :cond_5a

    .line 824
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto :goto_5a

    .line 818
    :catch_94
    move-exception v3

    .line 819
    const-string/jumbo v7, "MDM"

    .line 820
    const-string/jumbo v8, "LGMDMExternalMemorySlotContoller : br.close() : IOException is "

    .line 819
    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8e

    .line 814
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_9f
    move-exception v7

    .line 815
    :goto_a0
    if-eqz v0, :cond_a5

    .line 817
    :try_start_a2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_ab

    .line 823
    :cond_a5
    :goto_a5
    if-eqz v2, :cond_aa

    .line 824
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 814
    :cond_aa
    throw v7

    .line 818
    :catch_ab
    move-exception v3

    .line 819
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "MDM"

    .line 820
    const-string/jumbo v9, "LGMDMExternalMemorySlotContoller : br.close() : IOException is "

    .line 819
    invoke-static {v8, v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a5

    .line 814
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "cmd":Ljava/lang/Process;
    .restart local v4    # "file":Ljava/io/File;
    :catchall_b6
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto :goto_a0

    .line 812
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_b9
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_80
.end method

.method private getStorageVolumeForSD()Landroid/os/storage/StorageVolume;
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 712
    :try_start_1
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mContext:Landroid/content/Context;

    .line 713
    const-string/jumbo v6, "storage"

    .line 712
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 714
    .local v2, "storageManager":Landroid/os/storage/StorageManager;
    const-string/jumbo v1, ""

    .line 716
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 717
    .local v4, "storageVolumes":[Landroid/os/storage/StorageVolume;
    if-nez v4, :cond_1e

    .line 718
    sget-object v5, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "storageVolumes is null"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    return-object v8

    .line 721
    :cond_1e
    const/4 v5, 0x0

    array-length v6, v4

    :goto_20
    if-ge v5, v6, :cond_54

    aget-object v3, v4, v5

    .line 722
    .local v3, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 723
    if-eqz v1, :cond_33

    const-string/jumbo v7, "USBstorage"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 724
    :cond_33
    sget-object v5, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Not Support external memory slot"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    return-object v8

    .line 726
    :cond_3c
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-eqz v7, :cond_51

    .line 727
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v7

    if-nez v7, :cond_51

    .line 728
    sget-object v5, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Support external memory slot, isRemovable and isEmulated"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    return-object v3

    .line 721
    :cond_51
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 732
    .end local v3    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_54
    sget-object v5, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Not Support external memory slot"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5c} :catch_5d

    .line 736
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v4    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :goto_5c
    return-object v8

    .line 733
    :catch_5d
    move-exception v0

    .line 734
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Failed talking with mount service"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c
.end method

.method private getVolumeInfoForSD()Landroid/os/storage/VolumeInfo;
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 523
    :try_start_2
    invoke-static {}, Lcom/lge/mdm/util/LGMDMMountService;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    sput-object v4, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mMountService:Landroid/os/storage/IMountService;

    .line 524
    sget-object v4, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mMountService:Landroid/os/storage/IMountService;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/os/storage/IMountService;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 525
    .local v2, "volumeinfos":[Landroid/os/storage/VolumeInfo;
    if-nez v2, :cond_1a

    .line 526
    sget-object v3, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "volumeinfos is null"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    return-object v6

    .line 530
    :cond_1a
    array-length v4, v2

    :goto_1b
    if-ge v3, v4, :cond_51

    aget-object v1, v2, v3

    .line 531
    .local v1, "volumeinfo":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v5

    if-eqz v5, :cond_4e

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 532
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v5

    .line 531
    if-eqz v5, :cond_4e

    .line 533
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    move-result v3

    if-nez v3, :cond_45

    .line 534
    iget v3, v1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 536
    :cond_45
    sget-object v3, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Support external memory slot, isSd and isAdoptable"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    return-object v1

    .line 530
    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 540
    .end local v1    # "volumeinfo":Landroid/os/storage/VolumeInfo;
    :cond_51
    sget-object v3, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Not Support external memory slot"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_59} :catch_5a

    .line 544
    .end local v2    # "volumeinfos":[Landroid/os/storage/VolumeInfo;
    :goto_59
    return-object v6

    .line 541
    :catch_5a
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Failed talking with mount service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_59
.end method

.method private setMountStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 342
    monitor-enter p0

    .line 343
    :try_start_1
    sget-object v2, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MDM onStorageStateChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 345
    const-string/jumbo v2, "mounted_ro"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 344
    if-eqz v2, :cond_4f

    .line 346
    :cond_42
    invoke-static {}, Lcom/lge/mdm/util/LGMDMMountService;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    sput-object v2, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mMountService:Landroid/os/storage/IMountService;
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_5b

    .line 348
    :try_start_48
    sget-object v2, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mMountService:Landroid/os/storage/IMountService;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, p1, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_4f
    .catch Ljava/lang/NullPointerException; {:try_start_48 .. :try_end_4f} :catch_5e
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4f} :catch_51
    .catchall {:try_start_48 .. :try_end_4f} :catchall_5b

    :cond_4f
    :goto_4f
    monitor-exit p0

    .line 341
    return-void

    .line 351
    :catch_51
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_52
    sget-object v2, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setMountStatus : RemoteException "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_5b

    goto :goto_4f

    .line 342
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_5b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 349
    :catch_5e
    move-exception v1

    .line 350
    .local v1, "e":Ljava/lang/NullPointerException;
    :try_start_5f
    sget-object v2, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setMountStatus : NullPointerException "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_5b

    goto :goto_4f
.end method


# virtual methods
.method protected checkCID(II)V
    .registers 9
    .param p1, "value"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 832
    const/4 v4, 0x1

    if-ne p1, v4, :cond_40

    .line 833
    const/4 v1, 0x0

    .line 834
    .local v1, "mCIDlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getGlobalCIDWhitelist(I)Ljava/util/List;

    move-result-object v1

    .line 835
    .local v1, "mCIDlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getSDCARDiD()Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, "currentCID":Ljava/lang/String;
    if-nez v0, :cond_17

    .line 837
    sget-object v4, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "checkCID : currentCID is null"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    return-void

    .line 840
    :cond_17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_27

    .line 841
    sget-object v4, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "checkCID : currentCID.length() is not reasonable"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    return-void

    .line 845
    :cond_27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 846
    .local v2, "reasonableCID":Ljava/lang/String;
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getVolumeInfoForSD()Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 847
    .local v3, "volumeinfo":Landroid/os/storage/VolumeInfo;
    if-eqz v3, :cond_3c

    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mExternalMemoryHandler:Landroid/os/Handler;

    if-nez v4, :cond_3d

    .line 848
    :cond_3c
    return-void

    .line 851
    :cond_3d
    invoke-virtual {p0, v1, v3, v2}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->checkCIDList(Ljava/util/List;Landroid/os/storage/VolumeInfo;Ljava/lang/String;)V

    .line 831
    .end local v0    # "currentCID":Ljava/lang/String;
    .end local v1    # "mCIDlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "reasonableCID":Ljava/lang/String;
    .end local v3    # "volumeinfo":Landroid/os/storage/VolumeInfo;
    :cond_40
    return-void
.end method

.method protected checkCIDList(Ljava/util/List;Landroid/os/storage/VolumeInfo;Ljava/lang/String;)V
    .registers 12
    .param p2, "volumeinfo"    # Landroid/os/storage/VolumeInfo;
    .param p3, "reasonableCID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/storage/VolumeInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "cidlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 857
    if-eqz p1, :cond_50

    .line 858
    const/4 v2, 0x0

    .line 859
    .local v2, "iswhitelist":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "iswhitelist":Z
    .local v1, "externalmemoryCID$iterator":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 860
    .local v0, "externalmemoryCID":Ljava/lang/String;
    invoke-virtual {v0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 861
    .local v2, "iswhitelist":Z
    if-eqz v2, :cond_9

    .line 865
    .end local v0    # "externalmemoryCID":Ljava/lang/String;
    .end local v2    # "iswhitelist":Z
    :cond_1b
    if-eqz v2, :cond_2f

    .line 866
    iget-boolean v5, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->preStateWhitelist:Z

    if-eqz v5, :cond_2c

    .line 867
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mExternalMemoryHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 869
    .local v3, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mExternalMemoryHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 871
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2c
    iput-boolean v6, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->preStateWhitelist:Z

    .line 856
    .end local v1    # "externalmemoryCID$iterator":Ljava/util/Iterator;
    :goto_2e
    return-void

    .line 873
    .restart local v1    # "externalmemoryCID$iterator":Ljava/util/Iterator;
    :cond_2f
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getStorageVolumeForSD()Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 874
    .local v4, "storageVolume":Landroid/os/storage/StorageVolume;
    if-nez v4, :cond_36

    .line 875
    return-void

    .line 877
    :cond_36
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getPreStatus(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->preStateWhitelist:Z

    .line 878
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mExternalMemoryHandler:Landroid/os/Handler;

    .line 879
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 878
    invoke-virtual {v5, v7, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 880
    .restart local v3    # "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mExternalMemoryHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2e

    .line 883
    .end local v1    # "externalmemoryCID$iterator":Ljava/util/Iterator;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_50
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getStorageVolumeForSD()Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 884
    .restart local v4    # "storageVolume":Landroid/os/storage/StorageVolume;
    if-nez v4, :cond_57

    .line 885
    return-void

    .line 887
    :cond_57
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getPreStatus(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->preStateWhitelist:Z

    .line 888
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mExternalMemoryHandler:Landroid/os/Handler;

    .line 889
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 888
    invoke-virtual {v5, v7, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 890
    .restart local v3    # "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mExternalMemoryHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2e
.end method

.method protected eraseStorage(IZ)V
    .registers 11
    .param p1, "userHandle"    # I
    .param p2, "bWillFactoryReset"    # Z

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getHasExternalMemory()Z

    move-result v5

    if-nez v5, :cond_f

    .line 749
    sget-object v5, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "the device does not have real external storage"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    return-void

    .line 753
    :cond_f
    iput-boolean p2, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->bNeedFactoryReset:Z

    .line 756
    sget-object v5, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "wipeAdoptableDisks"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "usb"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbManager;

    .line 759
    .local v4, "um":Landroid/hardware/usb/UsbManager;
    if-nez v4, :cond_2f

    .line 760
    sget-object v5, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "UsbManager is null"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    return-void

    .line 763
    :cond_2f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 764
    .local v0, "identity":J
    const-string/jumbo v5, "mtp"

    invoke-virtual {v4, v5}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_45

    .line 765
    const-string/jumbo v5, "ptp"

    invoke-virtual {v4, v5}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v5

    .line 764
    if-eqz v5, :cond_4b

    .line 766
    :cond_45
    const-string/jumbo v5, "charge_only"

    invoke-virtual {v4, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 768
    :cond_4b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 769
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mExternalMemoryHandler:Landroid/os/Handler;

    if-eqz v5, :cond_69

    .line 770
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getStorageVolumeForSD()Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 771
    .local v3, "storageVolume":Landroid/os/storage/StorageVolume;
    if-nez v3, :cond_59

    .line 772
    return-void

    .line 774
    :cond_59
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mExternalMemoryHandler:Landroid/os/Handler;

    .line 775
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 774
    const/4 v7, 0x3

    invoke-virtual {v5, v7, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 776
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mExternalMemoryHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 779
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_69
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v5

    .line 780
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_eraging_sdcard_NORMAL:I

    .line 779
    invoke-virtual {v5, v6, p1}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    .line 747
    return-void
.end method

.method protected factoryReset(I)V
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    .line 784
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v1

    .line 785
    sget v2, Lcom/lge/internal/R$string;->sp_lgmdm_factory_reset_NORMAL:I

    .line 784
    invoke-virtual {v1, v2, p1}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    .line 787
    sget-object v1, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bNeedFactoryReset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->bNeedFactoryReset:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 789
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 790
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->bNeedFactoryReset:Z

    .line 783
    return-void
.end method

.method protected getAllowCIDWithWhitelist(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 626
    const/4 v0, 0x0

    .line 627
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 628
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 629
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowCIDWhitelist:Z

    :cond_e
    return v4

    .line 632
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 633
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 634
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowCIDWhitelist:Z

    if-eqz v5, :cond_19

    .line 635
    sget-object v4, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getAllowCIDWithWhitelist : return true"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const/4 v4, 0x1

    return v4

    .line 639
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_33
    return v4
.end method

.method protected getAllowExternalMemorySlotStatus(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 471
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 472
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowExternalMemorySlot:Z

    :cond_e
    return v4

    .line 475
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 476
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 477
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowExternalMemorySlot:Z

    if-nez v5, :cond_19

    .line 478
    const/4 v4, 0x0

    return v4

    .line 481
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowUSBHostStorageStatus(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 550
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 551
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUSBHostStorage:Z

    :cond_e
    return v4

    .line 554
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 555
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 556
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUSBHostStorage:Z

    if-nez v5, :cond_19

    .line 557
    const/4 v4, 0x0

    return v4

    .line 560
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getCIDWithWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 643
    const/4 v0, 0x0

    .line 644
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 645
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 646
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-object v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mCIDWhitelist:Ljava/util/List;

    :cond_e
    return-object v2

    .line 648
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(I)I

    move-result v1

    .line 649
    .local v1, "listSize":I
    if-nez v1, :cond_20

    .line 650
    sget-object v3, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getCIDWithWhitelist : admin list size is zero  "

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    return-object v2

    .line 653
    :cond_20
    invoke-direct {p0, p2}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getGlobalCIDWhitelist(I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method protected getExternalMemoryCID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getSDCARDiD()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHasExternalMemory()Z
    .registers 3

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getStorageVolumeForSD()Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 741
    .local v0, "storageVolume":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_8

    .line 742
    const/4 v1, 0x1

    return v1

    .line 744
    :cond_8
    const/4 v1, 0x0

    return v1
.end method

.method protected getSDcardStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 458
    const/4 v1, 0x0

    .line 460
    .local v1, "status":Ljava/lang/String;
    :try_start_1
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mContext:Landroid/content/Context;

    .line 461
    const-string/jumbo v4, "storage"

    .line 460
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 462
    .local v2, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v2, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    move-result-object v1

    .line 465
    .end local v1    # "status":Ljava/lang/String;
    .end local v2    # "storageManager":Landroid/os/storage/StorageManager;
    :goto_10
    return-object v1

    .line 463
    .restart local v1    # "status":Ljava/lang/String;
    :catch_11
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_10
.end method

.method protected mountUSBHostStorage(Ljava/lang/String;)V
    .registers 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, "count":I
    invoke-static {}, Lcom/lge/mdm/util/LGMDMMountService;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v6

    sput-object v6, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mMountService:Landroid/os/storage/IMountService;

    .line 431
    invoke-virtual {p0, p1}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getSDcardStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 432
    .local v5, "status":Ljava/lang/String;
    if-eqz v5, :cond_45

    const-string/jumbo v6, "unmounted"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 434
    :try_start_16
    sget-object v6, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v6, p1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_1b} :catch_62
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_58
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_4e

    move v1, v0

    .line 435
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_1c
    :try_start_1c
    const-string/jumbo v6, "mounted"

    invoke-virtual {p0, p1}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getSDcardStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_32

    const-string/jumbo v6, "mounted_ro"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 437
    :cond_32
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_37
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_37} :catch_6c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_37} :catch_6f
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_37} :catch_72

    .line 438
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    const/16 v6, 0xa

    if-ne v1, v6, :cond_46

    .line 439
    :try_start_3d
    sget-object v6, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Time out"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_45
    :goto_45
    return-void

    .line 442
    :cond_46
    invoke-virtual {p0, p1}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getSDcardStatus(Ljava/lang/String;)Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/NullPointerException; {:try_start_3d .. :try_end_49} :catch_62
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_49} :catch_58
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_49} :catch_4e

    move-result-object v5

    .line 443
    if-eqz v5, :cond_45

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_1c

    .line 451
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :catch_4e
    move-exception v3

    .line 452
    .local v3, "e":Ljava/lang/InterruptedException;
    :goto_4f
    sget-object v6, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "mountSDcard : InterruptedException"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45

    .line 449
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catch_58
    move-exception v2

    .line 450
    .local v2, "e":Landroid/os/RemoteException;
    :goto_59
    sget-object v6, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "mountSDcard : RemoteException"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45

    .line 447
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_62
    move-exception v4

    .line 448
    .local v4, "e":Ljava/lang/NullPointerException;
    :goto_63
    sget-object v6, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "mountSDcard : NullPointerException"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45

    .line 447
    .end local v0    # "count":I
    .end local v4    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "count":I
    :catch_6c
    move-exception v4

    .restart local v4    # "e":Ljava/lang/NullPointerException;
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_63

    .line 449
    .end local v0    # "count":I
    .end local v4    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "count":I
    :catch_6f
    move-exception v2

    .restart local v2    # "e":Landroid/os/RemoteException;
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_59

    .line 451
    .end local v0    # "count":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "count":I
    :catch_72
    move-exception v3

    .restart local v3    # "e":Ljava/lang/InterruptedException;
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_4f

    .end local v0    # "count":I
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "count":I
    :cond_75
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_45
.end method

.method protected mountVolume(Landroid/os/storage/VolumeInfo;)V
    .registers 5
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 370
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v1

    if-nez v1, :cond_15

    .line 372
    :try_start_6
    invoke-static {}, Lcom/lge/mdm/util/LGMDMMountService;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mMountService:Landroid/os/storage/IMountService;

    .line 373
    sget-object v1, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mMountService:Landroid/os/storage/IMountService;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->mount(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_16

    .line 369
    :cond_15
    :goto_15
    return-void

    .line 375
    :catch_16
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SD card mount exception : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method protected setAllowCIDWithWhitelist(Landroid/content/ComponentName;ZLjava/util/List;I)I
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p3, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 597
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 599
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowCIDWhitelist:Z

    if-ne v3, p2, :cond_22

    iget-object v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mCIDWhitelist:Ljava/util/List;

    if-eqz v3, :cond_22

    .line 600
    iget-object v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mCIDWhitelist:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 599
    if-eqz v3, :cond_22

    .line 601
    sget-object v3, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setAllowCIDWithWhitelist : same policy is called"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return v5

    .line 605
    :cond_22
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowCIDWhitelist:Z

    .line 606
    if-eqz p2, :cond_29

    .line 607
    iput-object p3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mCIDWhitelist:Ljava/util/List;

    .line 608
    return v6

    .line 610
    :cond_29
    iput-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mCIDWhitelist:Ljava/util/List;

    .line 611
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getVolumeInfoForSD()Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 612
    .local v2, "volumeinfo":Landroid/os/storage/VolumeInfo;
    if-eqz v2, :cond_35

    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mExternalMemoryHandler:Landroid/os/Handler;

    if-nez v3, :cond_36

    .line 613
    :cond_35
    return v5

    .line 615
    :cond_36
    iget-boolean v3, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->preStateWhitelist:Z

    if-eqz v3, :cond_45

    .line 616
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mExternalMemoryHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 618
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mExternalMemoryHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 620
    .end local v1    # "msg":Landroid/os/Message;
    :cond_45
    iput-boolean v6, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->preStateWhitelist:Z

    .line 621
    return v5
.end method

.method protected setAllowExternalMemorySlot(Landroid/content/ComponentName;ZI)V
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 485
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 487
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowExternalMemorySlot:Z

    if-ne v4, p2, :cond_15

    .line 488
    sget-object v4, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setAllowExternalMemorySlot : same policy is called"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    return-void

    .line 491
    :cond_15
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowExternalMemorySlot:Z

    .line 493
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getVolumeInfoForSD()Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 494
    .local v3, "volumeinfo":Landroid/os/storage/VolumeInfo;
    if-nez v3, :cond_1e

    .line 495
    return-void

    .line 497
    :cond_1e
    invoke-virtual {p0, v5, p3}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getAllowExternalMemorySlotStatus(Landroid/content/ComponentName;I)Z

    move-result v4

    if-nez v4, :cond_4b

    .line 498
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getStorageVolumeForSD()Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 499
    .local v2, "storageVolume":Landroid/os/storage/StorageVolume;
    if-nez v2, :cond_2b

    .line 500
    return-void

    .line 502
    :cond_2b
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getPreStatus(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateExternalMemorySlot:Z

    .line 503
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mExternalMemoryHandler:Landroid/os/Handler;

    if-nez v4, :cond_3a

    .line 504
    return-void

    .line 506
    :cond_3a
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mExternalMemoryHandler:Landroid/os/Handler;

    .line 507
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 506
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 508
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mExternalMemoryHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 484
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "storageVolume":Landroid/os/storage/StorageVolume;
    :goto_4a
    return-void

    .line 510
    :cond_4b
    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateExternalMemorySlot:Z

    if-eqz v4, :cond_5e

    .line 511
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mExternalMemoryHandler:Landroid/os/Handler;

    if-eqz v4, :cond_5e

    .line 512
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mExternalMemoryHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 514
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mExternalMemoryHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 517
    .end local v1    # "msg":Landroid/os/Message;
    :cond_5e
    iput-boolean v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateExternalMemorySlot:Z

    goto :goto_4a
.end method

.method protected setAllowUSBHostStorage(Landroid/content/ComponentName;ZI)V
    .registers 14
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 564
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v6, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 566
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUSBHostStorage:Z

    if-ne v6, p2, :cond_15

    .line 567
    sget-object v5, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setAllowUSBHostStorage : same policy is called"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    return-void

    .line 570
    :cond_15
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUSBHostStorage:Z

    .line 572
    invoke-virtual {p0, v7, p3}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getAllowUSBHostStorageStatus(Landroid/content/ComponentName;I)Z

    move-result v6

    if-nez v6, :cond_6d

    .line 574
    :try_start_1d
    invoke-static {}, Lcom/lge/mdm/util/LGMDMMountService;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v6

    sput-object v6, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mMountService:Landroid/os/storage/IMountService;

    .line 575
    sget-object v6, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mMountService:Landroid/os/storage/IMountService;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/os/storage/IMountService;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v4

    .line 576
    .local v4, "volumeinfos":[Landroid/os/storage/VolumeInfo;
    if-nez v4, :cond_35

    .line 577
    sget-object v5, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "volumeinfos is null"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    return-void

    .line 581
    :cond_35
    array-length v6, v4

    :goto_36
    if-ge v5, v6, :cond_6d

    aget-object v3, v4, v5

    .line 582
    .local v3, "volumeinfo":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v7

    if-eqz v7, :cond_61

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v7

    if-eqz v7, :cond_61

    .line 583
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_61

    .line 584
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mExternalMemoryHandler:Landroid/os/Handler;

    .line 585
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v8

    .line 584
    const/4 v9, 0x4

    invoke-virtual {v7, v9, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 586
    .local v2, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mExternalMemoryHandler:Landroid/os/Handler;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_61} :catch_64

    .line 581
    .end local v2    # "msg":Landroid/os/Message;
    :cond_61
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 589
    .end local v3    # "volumeinfo":Landroid/os/storage/VolumeInfo;
    .end local v4    # "volumeinfos":[Landroid/os/storage/VolumeInfo;
    :catch_64
    move-exception v1

    .line 590
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Failed talking with mount service"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6d
    return-void
.end method

.method protected unmountSDcard(Ljava/lang/String;)V
    .registers 14
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 382
    const/4 v0, 0x0

    .line 383
    .local v0, "count":I
    invoke-static {}, Lcom/lge/mdm/util/LGMDMMountService;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v8

    sput-object v8, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mMountService:Landroid/os/storage/IMountService;

    .line 384
    invoke-virtual {p0, p1}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getSDcardStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 385
    .local v6, "status":Ljava/lang/String;
    if-eqz v6, :cond_8c

    .line 386
    const-string/jumbo v8, "mounted"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_20

    const-string/jumbo v8, "mounted_ro"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 385
    if-eqz v8, :cond_8c

    .line 389
    :cond_20
    iget-object v8, p0, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "usb"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/UsbManager;

    .line 390
    .local v7, "um":Landroid/hardware/usb/UsbManager;
    if-nez v7, :cond_36

    .line 391
    sget-object v8, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "UsbManager is null"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void

    .line 394
    :cond_36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 395
    .local v4, "identity":J
    const-string/jumbo v8, "mtp"

    invoke-virtual {v7, v8}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4c

    .line 396
    const-string/jumbo v8, "ptp"

    invoke-virtual {v7, v8}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v8

    .line 395
    if-eqz v8, :cond_52

    .line 397
    :cond_4c
    const-string/jumbo v8, "charge_only"

    invoke-virtual {v7, v8}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 399
    :cond_52
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 402
    :try_start_55
    sget-object v8, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mMountService:Landroid/os/storage/IMountService;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v8, p1, v9, v10}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5c} :catch_9f
    .catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_5c} :catch_95

    move v1, v0

    .line 403
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_5d
    :try_start_5d
    const-string/jumbo v8, "unmounted"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_af

    .line 404
    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_6b} :catch_a9
    .catch Ljava/lang/InterruptedException; {:try_start_5d .. :try_end_6b} :catch_ac

    .line 405
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    const/16 v8, 0xa

    if-ne v1, v8, :cond_8d

    .line 406
    :try_start_71
    sget-object v8, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Time out"

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_79} :catch_9f
    .catch Ljava/lang/InterruptedException; {:try_start_71 .. :try_end_79} :catch_95

    .line 420
    :cond_79
    :goto_79
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 421
    const-string/jumbo v8, "charge_only"

    invoke-virtual {v7, v8}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_89

    .line 422
    invoke-virtual {v7, v11}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 424
    :cond_89
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 381
    .end local v4    # "identity":J
    .end local v7    # "um":Landroid/hardware/usb/UsbManager;
    :cond_8c
    return-void

    .line 409
    .restart local v4    # "identity":J
    .restart local v7    # "um":Landroid/hardware/usb/UsbManager;
    :cond_8d
    :try_start_8d
    invoke-virtual {p0, p1}, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->getSDcardStatus(Ljava/lang/String;)Ljava/lang/String;
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_90} :catch_9f
    .catch Ljava/lang/InterruptedException; {:try_start_8d .. :try_end_90} :catch_95

    move-result-object v6

    .line 410
    if-eqz v6, :cond_79

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_5d

    .line 416
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :catch_95
    move-exception v3

    .line 417
    .local v3, "e":Ljava/lang/InterruptedException;
    :goto_96
    sget-object v8, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "unmountSDcard : InterruptedException"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_79

    .line 414
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catch_9f
    move-exception v2

    .line 415
    .local v2, "e":Landroid/os/RemoteException;
    :goto_a0
    sget-object v8, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "unmountSDcard : RemoteException"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_79

    .line 414
    .end local v0    # "count":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "count":I
    :catch_a9
    move-exception v2

    .restart local v2    # "e":Landroid/os/RemoteException;
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_a0

    .line 416
    .end local v0    # "count":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "count":I
    :catch_ac
    move-exception v3

    .restart local v3    # "e":Ljava/lang/InterruptedException;
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_96

    .end local v0    # "count":I
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "count":I
    :cond_af
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_79
.end method

.method protected unmountUSBHostStorage(Ljava/lang/String;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 359
    invoke-static {}, Lcom/lge/mdm/util/LGMDMMountService;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    sput-object v2, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mMountService:Landroid/os/storage/IMountService;

    .line 361
    :try_start_6
    sget-object v2, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->unmount(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_b} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 358
    :goto_b
    return-void

    .line 364
    :catch_c
    move-exception v0

    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unmountUSBHostStorage : RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 362
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_16
    move-exception v1

    .line 363
    .local v1, "e":Ljava/lang/NullPointerException;
    sget-object v2, Lcom/lge/mdm/controller/LGMDMExternalMemorySlotContoller;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unmountUSBHostStorage : NullPointerException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method
