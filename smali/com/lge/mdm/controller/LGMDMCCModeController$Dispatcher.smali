.class Lcom/lge/mdm/controller/LGMDMCCModeController$Dispatcher;
.super Landroid/os/AsyncTask;
.source "LGMDMCCModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMCCModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final mFileName:Ljava/lang/String;

.field mProcessBuffer:Landroid/os/MemoryFile;

.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMCCModeController;


# direct methods
.method public constructor <init>(Lcom/lge/mdm/controller/LGMDMCCModeController;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMCCModeController;
    .param p2, "inFileName"    # Ljava/lang/String;

    .prologue
    .line 361
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/mdm/controller/LGMDMCCModeController$Dispatcher;-><init>(Lcom/lge/mdm/controller/LGMDMCCModeController;Ljava/lang/String;Landroid/os/MemoryFile;)V

    .line 360
    return-void
.end method

.method public constructor <init>(Lcom/lge/mdm/controller/LGMDMCCModeController;Ljava/lang/String;Landroid/os/MemoryFile;)V
    .registers 4
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMCCModeController;
    .param p2, "inFileName"    # Ljava/lang/String;
    .param p3, "outBuf"    # Landroid/os/MemoryFile;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMCCModeController$Dispatcher;->this$0:Lcom/lge/mdm/controller/LGMDMCCModeController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 356
    iput-object p2, p0, Lcom/lge/mdm/controller/LGMDMCCModeController$Dispatcher;->mFileName:Ljava/lang/String;

    .line 357
    iput-object p3, p0, Lcom/lge/mdm/controller/LGMDMCCModeController$Dispatcher;->mProcessBuffer:Landroid/os/MemoryFile;

    .line 355
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 372
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lge/mdm/controller/LGMDMCCModeController$Dispatcher;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v8, 0x0

    .line 374
    const/16 v6, 0x100

    new-array v5, v6, [B

    .line 376
    .local v5, "tmpBuf":[B
    const/4 v1, 0x0

    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .local v3, "os":Ljava/io/OutputStream;
    :try_start_7
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMCCModeController$Dispatcher;->mFileName:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_e} :catch_9c
    .catchall {:try_start_7 .. :try_end_e} :catchall_95

    .line 377
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_e
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMCCModeController$Dispatcher;->mProcessBuffer:Landroid/os/MemoryFile;

    invoke-virtual {v6}, Landroid/os/MemoryFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 379
    .local v3, "os":Ljava/io/OutputStream;
    :goto_14
    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .local v4, "size":I
    if-lez v4, :cond_49

    .line 380
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1e} :catch_1f
    .catchall {:try_start_e .. :try_end_1e} :catchall_98

    goto :goto_14

    .line 386
    .end local v3    # "os":Ljava/io/OutputStream;
    .end local v4    # "size":I
    :catch_1f
    move-exception v6

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    :goto_21
    :try_start_21
    throw v6
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_26
    if-eqz v3, :cond_2b

    :try_start_28
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2b} :catch_67
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_35
    .catchall {:try_start_28 .. :try_end_2b} :catchall_7c

    :cond_2b
    move-object v9, v7

    :cond_2c
    :goto_2c
    if-eqz v1, :cond_31

    :try_start_2e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_31} :catch_71
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_35
    .catchall {:try_start_2e .. :try_end_31} :catchall_7c

    :cond_31
    move-object v7, v9

    :cond_32
    :goto_32
    if-eqz v7, :cond_7b

    :try_start_34
    throw v7
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_35} :catch_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_7c

    .line 382
    :catch_35
    move-exception v0

    .line 383
    .local v0, "e":Ljava/io/IOException;
    :goto_36
    :try_start_36
    const-string/jumbo v6, "LGMDMCCModeController"

    const-string/jumbo v7, "Fail to dispatch ccauditlog.zip : "

    invoke-static {v6, v7, v0}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_7c

    .line 385
    const-string/jumbo v6, "LGMDMCCModeController"

    const-string/jumbo v7, "I have done that, Dispatcher said "

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .end local v0    # "e":Ljava/io/IOException;
    :goto_48
    return-object v8

    .line 386
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    .restart local v4    # "size":I
    :cond_49
    if-eqz v3, :cond_4e

    :try_start_4b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4e} :catch_5b
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_58
    .catchall {:try_start_4b .. :try_end_4e} :catchall_92

    :cond_4e
    move-object v7, v8

    :goto_4f
    if-eqz v2, :cond_54

    :try_start_51
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_54} :catch_5d
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_58
    .catchall {:try_start_51 .. :try_end_54} :catchall_92

    :cond_54
    move-object v6, v7

    :cond_55
    :goto_55
    if-eqz v6, :cond_87

    :try_start_57
    throw v6

    .line 382
    :catch_58
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v1, "fis":Ljava/io/FileInputStream;
    goto :goto_36

    .line 386
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_5b
    move-exception v7

    goto :goto_4f

    :catch_5d
    move-exception v6

    if-eqz v7, :cond_55

    if-eq v7, v6, :cond_54

    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_65} :catch_58
    .catchall {:try_start_57 .. :try_end_65} :catchall_92

    move-object v6, v7

    goto :goto_55

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "os":Ljava/io/OutputStream;
    .end local v4    # "size":I
    :catch_67
    move-exception v9

    if-eqz v7, :cond_2c

    if-eq v7, v9, :cond_2b

    :try_start_6c
    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v9, v7

    goto :goto_2c

    :catch_71
    move-exception v7

    if-eqz v9, :cond_32

    if-eq v9, v7, :cond_31

    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v7, v9

    goto :goto_32

    :cond_7b
    throw v6
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_7c} :catch_35
    .catchall {:try_start_6c .. :try_end_7c} :catchall_7c

    .line 384
    :catchall_7c
    move-exception v6

    .line 385
    :goto_7d
    const-string/jumbo v7, "LGMDMCCModeController"

    const-string/jumbo v8, "I have done that, Dispatcher said "

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    throw v6

    .line 385
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    .restart local v4    # "size":I
    :cond_87
    const-string/jumbo v6, "LGMDMCCModeController"

    const-string/jumbo v7, "I have done that, Dispatcher said "

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_48

    .line 384
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_92
    move-exception v6

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_7d

    .line 386
    .end local v4    # "size":I
    .local v1, "fis":Ljava/io/FileInputStream;
    .local v3, "os":Ljava/io/OutputStream;
    :catchall_95
    move-exception v6

    move-object v7, v8

    goto :goto_26

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_98
    move-exception v6

    move-object v7, v8

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v1, "fis":Ljava/io/FileInputStream;
    goto :goto_26

    .local v1, "fis":Ljava/io/FileInputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    :catch_9c
    move-exception v6

    goto :goto_21
.end method

.method public length()I
    .registers 3

    .prologue
    .line 365
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMCCModeController$Dispatcher;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public setBuffer(Landroid/os/MemoryFile;)V
    .registers 2
    .param p1, "b"    # Landroid/os/MemoryFile;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMCCModeController$Dispatcher;->mProcessBuffer:Landroid/os/MemoryFile;

    .line 368
    return-void
.end method
