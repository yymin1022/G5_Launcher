.class Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$3;
.super Ljava/lang/Object;
.source "LGMDMDevicePolicyManagerService.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;->setGoogleAccountObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    .prologue
    .line 8379
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService$3;->this$0:Lcom/lge/mdm/controller/LGMDMDevicePolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 15
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 8382
    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 8383
    .local v2, "googleAccount":Ljava/lang/String;
    array-length v9, p1

    :goto_7
    if-ge v7, v9, :cond_1b

    aget-object v0, p1, v7

    .line 8384
    .local v0, "account":Landroid/accounts/Account;
    const-string/jumbo v10, "com.google"

    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6d

    .line 8385
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 8389
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_1b
    const-string/jumbo v4, "/persist-lg/lgmdm"

    .line 8390
    .local v4, "persistLGKillswitchTrunkPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8391
    .local v3, "persistLGKillswitchTrunk":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2c

    .line 8392
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 8395
    :cond_2c
    const/4 v5, 0x0

    .local v5, "writer":Ljava/io/Writer;
    :try_start_2d
    new-instance v6, Ljava/io/OutputStreamWriter;

    .line 8396
    new-instance v7, Ljava/io/FileOutputStream;

    const-string/jumbo v9, "/persist-lg/lgmdm/lgmdm_google_logged_in"

    invoke-direct {v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 8397
    const-string/jumbo v9, "UTF-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    .line 8395
    invoke-direct {v6, v7, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_41} :catch_74
    .catchall {:try_start_2d .. :try_end_41} :catchall_90

    .line 8399
    .end local v5    # "writer":Ljava/io/Writer;
    .local v6, "writer":Ljava/io/Writer;
    :try_start_41
    invoke-virtual {v6, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_44} :catch_95
    .catchall {:try_start_41 .. :try_end_44} :catchall_92

    .line 8402
    if-eqz v6, :cond_49

    :try_start_46
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_49} :catch_70
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4c

    :cond_49
    :goto_49
    if-eqz v8, :cond_72

    :try_start_4b
    throw v8
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4c} :catch_4c

    .line 8400
    :catch_4c
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v5, v6

    .line 8401
    .end local v6    # "writer":Ljava/io/Writer;
    :goto_4e
    const-string/jumbo v7, "LGMDMDevicePolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setGoogleAccountObserver : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8381
    .end local v1    # "e":Ljava/io/IOException;
    :goto_6c
    return-void

    .line 8383
    .end local v3    # "persistLGKillswitchTrunk":Ljava/io/File;
    .end local v4    # "persistLGKillswitchTrunkPath":Ljava/lang/String;
    .restart local v0    # "account":Landroid/accounts/Account;
    :cond_6d
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 8402
    .end local v0    # "account":Landroid/accounts/Account;
    .restart local v3    # "persistLGKillswitchTrunk":Ljava/io/File;
    .restart local v4    # "persistLGKillswitchTrunkPath":Ljava/lang/String;
    .restart local v6    # "writer":Ljava/io/Writer;
    :catch_70
    move-exception v8

    goto :goto_49

    :cond_72
    move-object v5, v6

    .end local v6    # "writer":Ljava/io/Writer;
    .local v5, "writer":Ljava/io/Writer;
    goto :goto_6c

    .local v5, "writer":Ljava/io/Writer;
    :catch_74
    move-exception v7

    .end local v5    # "writer":Ljava/io/Writer;
    :goto_75
    :try_start_75
    throw v7
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_76

    :catchall_76
    move-exception v8

    move-object v12, v8

    move-object v8, v7

    move-object v7, v12

    :goto_7a
    if-eqz v5, :cond_7f

    :try_start_7c
    invoke-virtual {v5}, Ljava/io/Writer;->close()V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7f} :catch_84
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_82

    :cond_7f
    :goto_7f
    if-eqz v8, :cond_8f

    :try_start_81
    throw v8

    .line 8400
    :catch_82
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_4e

    .line 8402
    .end local v1    # "e":Ljava/io/IOException;
    :catch_84
    move-exception v9

    if-nez v8, :cond_89

    move-object v8, v9

    goto :goto_7f

    :cond_89
    if-eq v8, v9, :cond_7f

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7f

    :cond_8f
    throw v7
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_90} :catch_82

    .restart local v5    # "writer":Ljava/io/Writer;
    :catchall_90
    move-exception v7

    goto :goto_7a

    .end local v5    # "writer":Ljava/io/Writer;
    .restart local v6    # "writer":Ljava/io/Writer;
    :catchall_92
    move-exception v7

    move-object v5, v6

    .end local v6    # "writer":Ljava/io/Writer;
    .local v5, "writer":Ljava/io/Writer;
    goto :goto_7a

    .end local v5    # "writer":Ljava/io/Writer;
    .restart local v6    # "writer":Ljava/io/Writer;
    :catch_95
    move-exception v7

    move-object v5, v6

    .end local v6    # "writer":Ljava/io/Writer;
    .restart local v5    # "writer":Ljava/io/Writer;
    goto :goto_75
.end method
