.class public Lcom/lge/mdm/controller/LGMDMCCModeController;
.super Ljava/lang/Object;
.source "LGMDMCCModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;,
        Lcom/lge/mdm/controller/LGMDMCCModeController$Dispatcher;
    }
.end annotation


# static fields
.field private static final ASHMEM_SIZE:I = 0x100

.field private static final MAX_FILE_NUM:I = 0x6

.field private static final TAG:Ljava/lang/String; = "LGMDMCCModeController"

.field private static final ccauditFileName:[Ljava/lang/String;

.field private static final ccauditZipPath:Ljava/lang/String; = "/data/logger/ccauditlog.zip"

.field private static final inputCcauditPaths:[Ljava/lang/String;

.field private static sInstance:Lcom/lge/mdm/controller/LGMDMCCModeController;


# instance fields
.field private mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static synthetic -wrap0(Lcom/lge/mdm/controller/LGMDMCCModeController;Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;)V
    .registers 2
    .param p1, "buffer"    # Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMCCModeController;->processDied(Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMCCModeController;->sInstance:Lcom/lge/mdm/controller/LGMDMCCModeController;

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "/data/logger/ccaudit.log"

    aput-object v1, v0, v3

    .line 46
    const-string/jumbo v1, "/data/logger/ccaudit.log.1"

    aput-object v1, v0, v4

    const-string/jumbo v1, "/data/logger/ccaudit.log.2"

    aput-object v1, v0, v5

    .line 47
    const-string/jumbo v1, "/data/logger/ccaudit.log.3"

    aput-object v1, v0, v6

    const-string/jumbo v1, "/data/logger/ccaudit.log.4"

    aput-object v1, v0, v7

    .line 48
    const-string/jumbo v1, "/data/logger/ccaudit.log.5"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 45
    sput-object v0, Lcom/lge/mdm/controller/LGMDMCCModeController;->inputCcauditPaths:[Ljava/lang/String;

    .line 49
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "ccaudit.log"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ccaudit.log.1"

    aput-object v1, v0, v4

    .line 50
    const-string/jumbo v1, "ccaudit.log.2"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ccaudit.log.3"

    aput-object v1, v0, v6

    const-string/jumbo v1, "ccaudit.log.4"

    aput-object v1, v0, v7

    const-string/jumbo v1, "ccaudit.log.5"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 49
    sput-object v0, Lcom/lge/mdm/controller/LGMDMCCModeController;->ccauditFileName:[Ljava/lang/String;

    .line 39
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMCCModeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMCCModeController;->mLock:Ljava/lang/Object;

    .line 56
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMCCModeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 55
    return-void
.end method

.method private ccauditZipCreate()Z
    .registers 18

    .prologue
    .line 397
    const/4 v6, 0x0

    .local v6, "i":I
    const/4 v3, 0x0

    .local v3, "fileCount":I
    :goto_2
    const/4 v13, 0x6

    if-ge v6, v13, :cond_19

    .line 398
    new-instance v13, Ljava/io/File;

    sget-object v14, Lcom/lge/mdm/controller/LGMDMCCModeController;->inputCcauditPaths:[Ljava/lang/String;

    aget-object v14, v14, v6

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_16

    .line 399
    add-int/lit8 v3, v3, 0x1

    .line 397
    :cond_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 403
    :cond_19
    new-array v5, v3, [Ljava/lang/String;

    .line 405
    .local v5, "files":[Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v3, 0x0

    :goto_1d
    const/4 v13, 0x6

    if-ge v6, v13, :cond_3a

    .line 406
    new-instance v13, Ljava/io/File;

    sget-object v14, Lcom/lge/mdm/controller/LGMDMCCModeController;->inputCcauditPaths:[Ljava/lang/String;

    aget-object v14, v14, v6

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_37

    .line 407
    sget-object v13, Lcom/lge/mdm/controller/LGMDMCCModeController;->inputCcauditPaths:[Ljava/lang/String;

    aget-object v13, v13, v6

    aput-object v13, v5, v3

    .line 408
    add-int/lit8 v3, v3, 0x1

    .line 405
    :cond_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 412
    :cond_3a
    const/16 v13, 0x1000

    new-array v0, v13, [B

    .line 413
    .local v0, "buf":[B
    const/4 v10, 0x0

    .line 414
    .local v10, "out":Ljava/util/zip/ZipOutputStream;
    const/4 v7, 0x0

    .line 416
    .local v7, "in":Ljava/io/FileInputStream;
    :try_start_40
    new-instance v11, Ljava/util/zip/ZipOutputStream;

    new-instance v13, Ljava/io/FileOutputStream;

    const-string/jumbo v14, "/data/logger/ccauditlog.zip"

    invoke-direct {v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v13}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4d} :catch_131
    .catchall {:try_start_40 .. :try_end_4d} :catchall_12b

    .line 418
    .end local v10    # "out":Ljava/util/zip/ZipOutputStream;
    .local v11, "out":Ljava/util/zip/ZipOutputStream;
    const/4 v6, 0x0

    move-object v8, v7

    .end local v7    # "in":Ljava/io/FileInputStream;
    .local v8, "in":Ljava/io/FileInputStream;
    :goto_4f
    :try_start_4f
    array-length v13, v5
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_50} :catch_134
    .catchall {:try_start_4f .. :try_end_50} :catchall_12d

    if-ge v6, v13, :cond_d0

    .line 420
    :try_start_52
    new-instance v7, Ljava/io/FileInputStream;

    aget-object v13, v5, v6

    invoke-direct {v7, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_59} :catch_13b
    .catchall {:try_start_52 .. :try_end_59} :catchall_c0

    .line 421
    .end local v8    # "in":Ljava/io/FileInputStream;
    .local v7, "in":Ljava/io/FileInputStream;
    :try_start_59
    sget-object v13, Lcom/lge/mdm/controller/LGMDMCCModeController;->ccauditFileName:[Ljava/lang/String;

    aget-object v4, v13, v6

    .line 423
    .local v4, "fileName":Ljava/lang/String;
    new-instance v12, Ljava/util/zip/ZipEntry;

    invoke-direct {v12, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 424
    .local v12, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v11, v12}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 427
    :goto_65
    invoke-virtual {v7, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    .local v9, "len":I
    if-lez v9, :cond_94

    .line 428
    const/4 v13, 0x0

    invoke-virtual {v11, v0, v13, v9}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_6f} :catch_70
    .catchall {:try_start_59 .. :try_end_6f} :catchall_139

    goto :goto_65

    .line 432
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v9    # "len":I
    .end local v12    # "ze":Ljava/util/zip/ZipEntry;
    :catch_70
    move-exception v1

    .line 433
    .local v1, "e":Ljava/io/IOException;
    :goto_71
    :try_start_71
    const-string/jumbo v13, "LGMDMCCModeController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "FileInputStream Error : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_71 .. :try_end_8b} :catchall_139

    .line 435
    if-eqz v7, :cond_90

    .line 436
    :try_start_8d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_9d
    .catchall {:try_start_8d .. :try_end_90} :catchall_c8

    .line 418
    .end local v1    # "e":Ljava/io/IOException;
    :cond_90
    :goto_90
    add-int/lit8 v6, v6, 0x1

    move-object v8, v7

    .end local v7    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    goto :goto_4f

    .line 431
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "len":I
    .restart local v12    # "ze":Ljava/util/zip/ZipEntry;
    :cond_94
    :try_start_94
    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_70
    .catchall {:try_start_94 .. :try_end_97} :catchall_139

    .line 435
    if-eqz v7, :cond_90

    .line 436
    :try_start_99
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_9d
    .catchall {:try_start_99 .. :try_end_9c} :catchall_c8

    goto :goto_90

    .line 440
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v9    # "len":I
    .end local v12    # "ze":Ljava/util/zip/ZipEntry;
    :catch_9d
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v10, v11

    .line 441
    .end local v7    # "in":Ljava/io/FileInputStream;
    .end local v11    # "out":Ljava/util/zip/ZipOutputStream;
    :goto_9f
    :try_start_9f
    const-string/jumbo v13, "LGMDMCCModeController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Fail to make ccauditlog.zip : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catchall {:try_start_9f .. :try_end_b9} :catchall_12b

    .line 442
    const/4 v13, 0x0

    .line 444
    if-eqz v10, :cond_bf

    .line 446
    :try_start_bc
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_f3

    .line 442
    :cond_bf
    :goto_bf
    return v13

    .line 434
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    .restart local v11    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_c0
    move-exception v13

    move-object v7, v8

    .line 435
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    :goto_c2
    if-eqz v7, :cond_c7

    .line 436
    :try_start_c4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 434
    :cond_c7
    throw v13
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c8} :catch_9d
    .catchall {:try_start_c4 .. :try_end_c8} :catchall_c8

    .line 443
    :catchall_c8
    move-exception v13

    move-object v10, v11

    .line 444
    .end local v7    # "in":Ljava/io/FileInputStream;
    .end local v11    # "out":Ljava/util/zip/ZipOutputStream;
    :goto_ca
    if-eqz v10, :cond_cf

    .line 446
    :try_start_cc
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_10f

    .line 443
    :cond_cf
    :goto_cf
    throw v13

    .line 444
    .restart local v8    # "in":Ljava/io/FileInputStream;
    .restart local v11    # "out":Ljava/util/zip/ZipOutputStream;
    :cond_d0
    if-eqz v11, :cond_d5

    .line 446
    :try_start_d2
    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_d7

    .line 452
    :cond_d5
    :goto_d5
    const/4 v13, 0x1

    return v13

    .line 447
    :catch_d7
    move-exception v1

    .line 448
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v13, "LGMDMCCModeController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "ZipOutputStream Error : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d5

    .line 447
    .end local v1    # "e":Ljava/io/IOException;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .end local v11    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_f3
    move-exception v1

    .line 448
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v14, "LGMDMCCModeController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "ZipOutputStream Error : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bf

    .line 447
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_10f
    move-exception v1

    .line 448
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v14, "LGMDMCCModeController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "ZipOutputStream Error : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cf

    .line 443
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_12b
    move-exception v13

    goto :goto_ca

    .restart local v8    # "in":Ljava/io/FileInputStream;
    .restart local v11    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_12d
    move-exception v13

    move-object v7, v8

    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    move-object v10, v11

    .end local v11    # "out":Ljava/util/zip/ZipOutputStream;
    .local v10, "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_ca

    .line 440
    .local v7, "in":Ljava/io/FileInputStream;
    .local v10, "out":Ljava/util/zip/ZipOutputStream;
    :catch_131
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto/16 :goto_9f

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "in":Ljava/io/FileInputStream;
    .end local v10    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    .restart local v11    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_134
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v7, v8

    .end local v8    # "in":Ljava/io/FileInputStream;
    .local v7, "in":Ljava/io/FileInputStream;
    move-object v10, v11

    .end local v11    # "out":Ljava/util/zip/ZipOutputStream;
    .local v10, "out":Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_9f

    .line 434
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v10    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v11    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_139
    move-exception v13

    goto :goto_c2

    .line 432
    .end local v7    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    :catch_13b
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v7, v8

    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_71
.end method

.method private fetchActiveBuffersLocked(Landroid/os/IBinder;I)Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 306
    const/16 v0, 0x100

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/mdm/controller/LGMDMCCModeController;->fetchActiveBuffersLocked(Landroid/os/IBinder;II)Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;

    move-result-object v0

    return-object v0
.end method

.method private fetchActiveBuffersLocked(Landroid/os/IBinder;II)Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "uid"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 311
    :try_start_0
    new-instance v1, Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;-><init>(Lcom/lge/mdm/controller/LGMDMCCModeController;Landroid/os/IBinder;II)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v1

    .line 312
    :catch_6
    move-exception v0

    .line 313
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "Failed to allocate space"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMCCModeController;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/lge/mdm/controller/LGMDMCCModeController;->sInstance:Lcom/lge/mdm/controller/LGMDMCCModeController;

    if-nez v0, :cond_b

    .line 61
    new-instance v0, Lcom/lge/mdm/controller/LGMDMCCModeController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMCCModeController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMCCModeController;->sInstance:Lcom/lge/mdm/controller/LGMDMCCModeController;

    .line 63
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMCCModeController;->sInstance:Lcom/lge/mdm/controller/LGMDMCCModeController;

    return-object v0
.end method

.method private getPfd(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "file"    # Landroid/os/MemoryFile;

    .prologue
    .line 299
    :try_start_0
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v1

    .line 300
    :catch_a
    move-exception v0

    .line 301
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Failed to get ParcelFileDescriptor from memory file"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private processDied(Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;)V
    .registers 4
    .param p1, "buffer"    # Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;

    .prologue
    .line 317
    invoke-virtual {p1}, Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;->closeAllBuffers()V

    .line 318
    const-string/jumbo v0, "LGMDMCCModeController"

    const-string/jumbo v1, "processDied()"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method private reboot()V
    .registers 3

    .prologue
    .line 253
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/mdm/controller/LGMDMCCModeController$1;

    invoke-direct {v1, p0}, Lcom/lge/mdm/controller/LGMDMCCModeController$1;-><init>(Lcom/lge/mdm/controller/LGMDMCCModeController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 252
    return-void
.end method


# virtual methods
.method public ExportCCauditLogFile(Landroid/content/Context;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMCCModeController;->ccauditZipCreate()Z

    move-result v4

    if-nez v4, :cond_11

    .line 275
    const-string/jumbo v4, "LGMDMCCModeController"

    const-string/jumbo v5, "Fail to create ccauditlog.zip"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const/4 v4, 0x0

    return-object v4

    .line 279
    :cond_11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 281
    .local v3, "uid":I
    const/4 v2, 0x0

    .line 282
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v0, 0x0

    .line 284
    .local v0, "buffer":Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;
    new-instance v1, Lcom/lge/mdm/controller/LGMDMCCModeController$Dispatcher;

    const-string/jumbo v4, "/data/logger/ccauditlog.zip"

    invoke-direct {v1, p0, v4}, Lcom/lge/mdm/controller/LGMDMCCModeController$Dispatcher;-><init>(Lcom/lge/mdm/controller/LGMDMCCModeController;Ljava/lang/String;)V

    .line 286
    .local v1, "dispatcher":Lcom/lge/mdm/controller/LGMDMCCModeController$Dispatcher;
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMCCModeController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 287
    :try_start_22
    invoke-virtual {v1}, Lcom/lge/mdm/controller/LGMDMCCModeController$Dispatcher;->length()I

    move-result v4

    invoke-direct {p0, p2, v3, v4}, Lcom/lge/mdm/controller/LGMDMCCModeController;->fetchActiveBuffersLocked(Landroid/os/IBinder;II)Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;

    move-result-object v0

    .line 288
    .local v0, "buffer":Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;
    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    invoke-direct {p0, v4}, Lcom/lge/mdm/controller/LGMDMCCModeController;->getPfd(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_3f

    move-result-object v2

    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    monitor-exit v5

    .line 291
    iget-object v4, v0, Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    invoke-virtual {v1, v4}, Lcom/lge/mdm/controller/LGMDMCCModeController$Dispatcher;->setBuffer(Landroid/os/MemoryFile;)V

    .line 292
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v4, v5}, Lcom/lge/mdm/controller/LGMDMCCModeController$Dispatcher;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 294
    return-object v2

    .line 286
    .end local v0    # "buffer":Lcom/lge/mdm/controller/LGMDMCCModeController$ActiveBuffer;
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_3f
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method protected getCommonCriteriaMode(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_10

    .line 72
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMCCModeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 73
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->commonCriteriaMode:I

    :goto_d
    return v5

    :cond_e
    const/4 v5, 0x0

    goto :goto_d

    .line 76
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_10
    const/4 v4, 0x0

    .line 77
    .local v4, "policy":I
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMCCModeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 78
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 79
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->commonCriteriaMode:I

    if-le v5, v4, :cond_1b

    .line 80
    iget v4, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->commonCriteriaMode:I

    goto :goto_1b

    .line 83
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2e
    return v4
.end method

.method protected getCountCommonCriteriaModeEnable(I)I
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    .line 87
    const/4 v2, 0x0

    .line 88
    .local v2, "counts":I
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMCCModeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 89
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admins$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 90
    .local v0, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->commonCriteriaMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 94
    .end local v0    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_1f
    return v2
.end method

.method protected getGranularControlOnCCMode()I
    .registers 7

    .prologue
    .line 236
    const/4 v3, -0x1

    .line 237
    .local v3, "ret":I
    new-instance v2, Lcom/lge/systemservice/core/security/CCModeManager;

    invoke-direct {v2}, Lcom/lge/systemservice/core/security/CCModeManager;-><init>()V

    .line 238
    .local v2, "mCCModeManager":Lcom/lge/systemservice/core/security/CCModeManager;
    if-nez v2, :cond_12

    .line 239
    const-string/jumbo v4, "LGMDMCCModeController"

    const-string/jumbo v5, "CCModeService : getService == null"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return v3

    .line 242
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 243
    .local v0, "identity":J
    invoke-virtual {v2}, Lcom/lge/systemservice/core/security/CCModeManager;->isCCModeSupported()I

    move-result v4

    const/16 v5, -0xa

    if-ne v4, v5, :cond_28

    .line 244
    const-string/jumbo v4, "LGMDMCCModeController"

    const-string/jumbo v5, "CC mode is not Supported!"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return v3

    .line 247
    :cond_28
    invoke-virtual {v2}, Lcom/lge/systemservice/core/security/CCModeManager;->getCCRestrictionStatus()I

    move-result v3

    .line 248
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 249
    return v3
.end method

.method protected removeCCmode(Landroid/content/ComponentName;I)V
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v9, 0x1

    .line 175
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMCCModeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v7, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 176
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    new-instance v4, Lcom/lge/systemservice/core/security/CCModeManager;

    invoke-direct {v4}, Lcom/lge/systemservice/core/security/CCModeManager;-><init>()V

    .line 177
    .local v4, "mCCModeManager":Lcom/lge/systemservice/core/security/CCModeManager;
    if-nez v4, :cond_18

    .line 178
    const-string/jumbo v7, "LGMDMCCModeController"

    const-string/jumbo v8, "CCModeService : getService == null"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void

    .line 182
    :cond_18
    const/4 v5, -0x1

    .line 183
    .local v5, "result":I
    const/4 v6, 0x0

    .line 184
    .local v6, "retry":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 185
    .local v2, "identity":J
    invoke-virtual {v4}, Lcom/lge/systemservice/core/security/CCModeManager;->isCCModeSupported()I

    move-result v7

    const/16 v8, -0xa

    if-ne v7, v8, :cond_32

    .line 186
    const-string/jumbo v7, "LGMDMCCModeController"

    const-string/jumbo v8, "CC mode is not Supported!"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void

    .line 194
    :cond_30
    add-int/lit8 v6, v6, 0x1

    .line 189
    :cond_32
    const/4 v7, -0x1

    if-gt v7, v6, :cond_3f

    const/16 v7, 0xa

    if-ge v6, v7, :cond_3f

    .line 190
    invoke-virtual {v4}, Lcom/lge/systemservice/core/security/CCModeManager;->disableCCMode()I

    move-result v5

    .line 191
    if-ne v5, v9, :cond_30

    .line 196
    :cond_3f
    if-eq v5, v9, :cond_44

    .line 197
    const/4 v7, -0x3

    if-ne v5, v7, :cond_56

    .line 200
    :cond_44
    const/4 v7, 0x0

    iput v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->commonCriteriaMode:I

    .line 201
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMCCModeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    const-string/jumbo v8, "lgmdm_general_policies.xml"

    invoke-virtual {v7, v8, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->saveSettingsLocked(Ljava/lang/String;I)V

    .line 203
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMCCModeController;->reboot()V

    .line 210
    :goto_52
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 174
    return-void

    .line 205
    :cond_56
    new-instance v1, Landroid/content/Intent;

    .line 206
    const-string/jumbo v7, "com.lge.security.cc_mode_disabled"

    .line 205
    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "ccmode_result"

    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_52
.end method

.method protected setCommonCriteriaMode(Landroid/content/ComponentName;II)V
    .registers 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 98
    iget-object v10, p0, Lcom/lge/mdm/controller/LGMDMCCModeController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v10, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 100
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-nez p2, :cond_14

    .line 101
    iput p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->commonCriteriaMode:I

    .line 102
    const-string/jumbo v10, "LGMDMCCModeController"

    const-string/jumbo v11, "setCommonCriteriaMode : defalut policy is called : COMMONCRITERIA_NONE"

    invoke-static {v10, v11}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void

    .line 106
    :cond_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 107
    .local v4, "identity":J
    const/4 v2, 0x0

    .line 108
    .local v2, "ccmodeEnable":Z
    const/4 v1, 0x0

    .line 109
    .local v1, "ccmodeDisable":Z
    const/4 v7, -0x1

    .line 110
    .local v7, "result":I
    new-instance v6, Lcom/lge/systemservice/core/security/CCModeManager;

    invoke-direct {v6}, Lcom/lge/systemservice/core/security/CCModeManager;-><init>()V

    .line 111
    .local v6, "mCCModeManager":Lcom/lge/systemservice/core/security/CCModeManager;
    if-nez v6, :cond_2c

    .line 112
    const-string/jumbo v10, "LGMDMCCModeController"

    const-string/jumbo v11, "CCModeService : getService == null"

    invoke-static {v10, v11}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void

    .line 116
    :cond_2c
    invoke-virtual {v6}, Lcom/lge/systemservice/core/security/CCModeManager;->isCCModeSupported()I

    move-result v10

    const/16 v11, -0xa

    if-ne v10, v11, :cond_3e

    .line 117
    const-string/jumbo v10, "LGMDMCCModeController"

    const-string/jumbo v11, "CC mode is not Supported!"

    invoke-static {v10, v11}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void

    .line 121
    :cond_3e
    packed-switch p2, :pswitch_data_be

    .line 155
    :cond_41
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 157
    const/4 v10, 0x1

    if-eq v7, v10, :cond_4a

    .line 158
    const/4 v10, -0x2

    if-ne v7, v10, :cond_a2

    .line 160
    :cond_4a
    :goto_4a
    iput p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->commonCriteriaMode:I

    .line 163
    :cond_4c
    if-eqz v2, :cond_a6

    .line 164
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v10, "com.lge.security.cc_mode_enabled"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v10, "ccmode_result"

    invoke-virtual {v3, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 97
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_63
    :goto_63
    return-void

    .line 123
    :pswitch_64
    const-string/jumbo v10, "LGMDMCCModeController"

    const-string/jumbo v11, "Call cc_mode_enable()"

    invoke-static {v10, v11}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v2, 0x1

    .line 125
    const/4 v8, 0x0

    .line 126
    .local v8, "retry":I
    :goto_6f
    const/4 v10, -0x1

    if-gt v10, v8, :cond_41

    const/16 v10, 0xa

    if-ge v8, v10, :cond_41

    .line 127
    invoke-virtual {v6}, Lcom/lge/systemservice/core/security/CCModeManager;->enableCCMode()I

    move-result v7

    .line 128
    const/4 v10, 0x1

    if-eq v7, v10, :cond_41

    .line 131
    const/4 v10, -0x2

    if-eq v7, v10, :cond_41

    .line 134
    add-int/lit8 v8, v8, 0x1

    goto :goto_6f

    .line 138
    .end local v8    # "retry":I
    :pswitch_83
    const-string/jumbo v10, "LGMDMCCModeController"

    const-string/jumbo v11, "Call cc_mode_disable()"

    invoke-static {v10, v11}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v1, 0x1

    .line 140
    const/4 v9, 0x0

    .line 141
    .local v9, "retry2":I
    :goto_8e
    const/4 v10, -0x1

    if-gt v10, v9, :cond_41

    const/16 v10, 0xa

    if-ge v9, v10, :cond_41

    .line 142
    invoke-virtual {v6}, Lcom/lge/systemservice/core/security/CCModeManager;->disableCCMode()I

    move-result v7

    .line 143
    const/4 v10, 0x1

    if-eq v7, v10, :cond_41

    .line 146
    const/4 v10, -0x3

    if-eq v7, v10, :cond_41

    .line 149
    add-int/lit8 v9, v9, 0x1

    goto :goto_8e

    .line 159
    .end local v9    # "retry2":I
    :cond_a2
    const/4 v10, -0x3

    if-ne v7, v10, :cond_4c

    goto :goto_4a

    .line 167
    :cond_a6
    if-eqz v1, :cond_63

    .line 168
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v10, "com.lge.security.cc_mode_disabled"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v10, "ccmode_result"

    invoke-virtual {v3, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_63

    .line 121
    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_83
        :pswitch_64
    .end packed-switch
.end method

.method protected setGranularControlOnCCMode(Landroid/content/ComponentName;II)Z
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "function"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 216
    const/4 v3, 0x0

    .line 217
    .local v3, "ret":Z
    new-instance v2, Lcom/lge/systemservice/core/security/CCModeManager;

    invoke-direct {v2}, Lcom/lge/systemservice/core/security/CCModeManager;-><init>()V

    .line 218
    .local v2, "mCCModeManager":Lcom/lge/systemservice/core/security/CCModeManager;
    if-nez v2, :cond_12

    .line 219
    const-string/jumbo v4, "LGMDMCCModeController"

    const-string/jumbo v5, "CCModeService : getService == null"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return v3

    .line 222
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 224
    .local v0, "identity":J
    invoke-virtual {v2}, Lcom/lge/systemservice/core/security/CCModeManager;->isCCModeSupported()I

    move-result v4

    const/16 v5, -0xa

    if-ne v4, v5, :cond_28

    .line 225
    const-string/jumbo v4, "LGMDMCCModeController"

    const-string/jumbo v5, "CC mode is not Supported!"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return v3

    .line 228
    :cond_28
    invoke-virtual {v2, p2}, Lcom/lge/systemservice/core/security/CCModeManager;->setCCRestriction(I)I

    .line 229
    const/4 v3, 0x1

    .line 231
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 232
    return v3
.end method
