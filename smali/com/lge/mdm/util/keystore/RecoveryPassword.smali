.class public Lcom/lge/mdm/util/keystore/RecoveryPassword;
.super Ljava/lang/Object;
.source "RecoveryPassword.java"


# static fields
.field private static final FILE_READ:Ljava/lang/String; = "r"

.field private static final FILE_READWRITE:Ljava/lang/String; = "rw"

.field private static final TAG:Ljava/lang/String; = "RecoveryPassword"


# instance fields
.field private final recoveryFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/lge/mdm/util/os/LGMDMEnvironment;->getLockRecoveryFileName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/util/keystore/RecoveryPassword;->recoveryFilePath:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private getRecoveryPasswordFile(Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .registers 4
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/lge/mdm/util/keystore/RecoveryPassword;->recoveryFilePath:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public checkPasswordRecovery(Ljava/lang/String;)Z
    .registers 13
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v5, 0x0

    .line 82
    .local v5, "raf":Ljava/io/RandomAccessFile;
    const-string/jumbo v6, ""

    .line 83
    .local v6, "stored":Ljava/lang/String;
    new-instance v7, Lcom/lge/mdm/util/keystore/RPEncrypt;

    invoke-direct {v7}, Lcom/lge/mdm/util/keystore/RPEncrypt;-><init>()V

    .line 84
    .local v7, "wce":Lcom/lge/mdm/util/keystore/RPEncrypt;
    const/4 v0, 0x0

    .line 87
    .local v0, "check":Z
    :try_start_a
    const-string/jumbo v8, "r"

    invoke-direct {p0, v8}, Lcom/lge/mdm/util/keystore/RecoveryPassword;->getRecoveryPasswordFile(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v5

    .line 89
    .local v5, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "cipher":Ljava/lang/String;
    if-eqz v1, :cond_41

    .line 91
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    iget v9, v7, Lcom/lge/mdm/util/keystore/RPEncrypt;->mKey1:I

    invoke-virtual {v7, v8, v9}, Lcom/lge/mdm/util/keystore/RPEncrypt;->Decrypt([BI)Ljava/lang/String;

    move-result-object v6

    .line 92
    if-eqz v6, :cond_41

    .line 93
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 94
    .local v0, "check":Z
    const-string/jumbo v8, "RecoveryPassword"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "checkPasswordRecovery is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_41} :catch_7e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_41} :catch_52
    .catchall {:try_start_a .. :try_end_41} :catchall_aa

    .line 102
    .end local v0    # "check":Z
    :cond_41
    if-eqz v5, :cond_46

    .line 104
    :try_start_43
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    .line 110
    .end local v1    # "cipher":Ljava/lang/String;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    :cond_46
    :goto_46
    return v0

    .line 105
    .restart local v1    # "cipher":Ljava/lang/String;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_47
    move-exception v3

    .line 106
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "RecoveryPassword"

    const-string/jumbo v9, "checkPasswordRecovery, Fail to close RecoveryPasswordFile"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 99
    .end local v1    # "cipher":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_52
    move-exception v4

    .line 100
    .local v4, "ioe":Ljava/io/IOException;
    :try_start_53
    const-string/jumbo v8, "RecoveryPassword"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "checkPasswordRecovery IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_53 .. :try_end_6d} :catchall_aa

    .line 102
    if-eqz v5, :cond_46

    .line 104
    :try_start_6f
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_46

    .line 105
    :catch_73
    move-exception v3

    .line 106
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "RecoveryPassword"

    const-string/jumbo v9, "checkPasswordRecovery, Fail to close RecoveryPasswordFile"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 97
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_7e
    move-exception v2

    .line 98
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_7f
    const-string/jumbo v8, "RecoveryPassword"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "checkPasswordRecovery FileNotFoundException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catchall {:try_start_7f .. :try_end_99} :catchall_aa

    .line 102
    if-eqz v5, :cond_46

    .line 104
    :try_start_9b
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9e} :catch_9f

    goto :goto_46

    .line 105
    :catch_9f
    move-exception v3

    .line 106
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "RecoveryPassword"

    const-string/jumbo v9, "checkPasswordRecovery, Fail to close RecoveryPasswordFile"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 101
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_aa
    move-exception v8

    .line 102
    if-eqz v5, :cond_b0

    .line 104
    :try_start_ad
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b0} :catch_b1

    .line 101
    :cond_b0
    :goto_b0
    throw v8

    .line 105
    :catch_b1
    move-exception v3

    .line 106
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "RecoveryPassword"

    const-string/jumbo v10, "checkPasswordRecovery, Fail to close RecoveryPasswordFile"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0
.end method

.method public getPasswordRecovery(I)Ljava/lang/String;
    .registers 19
    .param p1, "listsize"    # I

    .prologue
    .line 29
    new-instance v10, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-direct {v10, v14, v15}, Ljava/util/Random;-><init>(J)V

    .line 30
    .local v10, "random":Ljava/util/Random;
    const-string/jumbo v11, "0123456789abcdef"

    .line 31
    .local v11, "recovery":Ljava/lang/String;
    const/4 v7, 0x0

    .line 33
    .local v7, "pwRecovery":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_e
    const/16 v13, 0x10

    if-ge v5, v13, :cond_39

    .line 34
    if-nez v5, :cond_21

    .line 35
    const/16 v13, 0x9

    invoke-virtual {v10, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 33
    :goto_1e
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 37
    :cond_21
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x9

    invoke-virtual {v10, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1e

    .line 41
    :cond_39
    const/4 v9, 0x0

    .line 42
    .local v9, "raf":Ljava/io/RandomAccessFile;
    new-instance v12, Lcom/lge/mdm/util/keystore/RPEncrypt;

    invoke-direct {v12}, Lcom/lge/mdm/util/keystore/RPEncrypt;-><init>()V

    .line 46
    .local v12, "wce":Lcom/lge/mdm/util/keystore/RPEncrypt;
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_7b

    .line 47
    :try_start_44
    const-string/jumbo v13, "RecoveryPassword"

    const-string/jumbo v14, "PasswordRecovery is not Existed"

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string/jumbo v13, "rw"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lge/mdm/util/keystore/RecoveryPassword;->getRecoveryPasswordFile(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v9

    .line 49
    .local v9, "raf":Ljava/io/RandomAccessFile;
    const-wide/16 v14, 0x0

    invoke-virtual {v9, v14, v15}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 51
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    iget v14, v12, Lcom/lge/mdm/util/keystore/RPEncrypt;->mKey1:I

    invoke-virtual {v12, v13, v14}, Lcom/lge/mdm/util/keystore/RPEncrypt;->Encrypt([BI)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "cipher":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v9, v13, v15, v14}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 53
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_74
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_74} :catch_9f
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_74} :catch_105
    .catchall {:try_start_44 .. :try_end_74} :catchall_14c

    .line 54
    move-object v7, v11

    .line 69
    .end local v2    # "cipher":Ljava/lang/String;
    .local v7, "pwRecovery":Ljava/lang/String;
    :goto_75
    if-eqz v9, :cond_7a

    .line 71
    :try_start_77
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_e4

    .line 77
    .end local v7    # "pwRecovery":Ljava/lang/String;
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    :cond_7a
    :goto_7a
    return-object v7

    .line 56
    .local v7, "pwRecovery":Ljava/lang/String;
    .local v9, "raf":Ljava/io/RandomAccessFile;
    :cond_7b
    :try_start_7b
    const-string/jumbo v13, "RecoveryPassword"

    const-string/jumbo v14, "PasswordRecovery is Existed"

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string/jumbo v13, "r"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lge/mdm/util/keystore/RecoveryPassword;->getRecoveryPasswordFile(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v9

    .line 58
    .local v9, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 59
    .local v8, "pwd":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    iget v14, v12, Lcom/lge/mdm/util/keystore/RPEncrypt;->mKey1:I

    invoke-virtual {v12, v13, v14}, Lcom/lge/mdm/util/keystore/RPEncrypt;->Decrypt([BI)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, "pwRecovery":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9e
    .catch Ljava/io/FileNotFoundException; {:try_start_7b .. :try_end_9e} :catch_9f
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_9e} :catch_105
    .catchall {:try_start_7b .. :try_end_9e} :catchall_14c

    goto :goto_75

    .line 62
    .end local v7    # "pwRecovery":Ljava/lang/String;
    .end local v8    # "pwd":Ljava/lang/String;
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    :catch_9f
    move-exception v4

    .line 65
    .local v4, "fnfe":Ljava/io/FileNotFoundException;
    :try_start_a0
    const-string/jumbo v13, "RecoveryPassword"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unable to save recovery passoword to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/mdm/util/keystore/RecoveryPassword;->recoveryFilePath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catchall {:try_start_a0 .. :try_end_be} :catchall_14c

    .line 69
    if-eqz v9, :cond_7a

    .line 71
    :try_start_c0
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c3} :catch_c4

    goto :goto_7a

    .line 72
    :catch_c4
    move-exception v3

    .line 73
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "RecoveryPassword"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Fail to close "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/mdm/util/keystore/RecoveryPassword;->recoveryFilePath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 72
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v7    # "pwRecovery":Ljava/lang/String;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :catch_e4
    move-exception v3

    .line 73
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v13, "RecoveryPassword"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Fail to close "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/mdm/util/keystore/RecoveryPassword;->recoveryFilePath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7a

    .line 66
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "pwRecovery":Ljava/lang/String;
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    :catch_105
    move-exception v6

    .line 67
    .local v6, "ioe":Ljava/io/IOException;
    :try_start_106
    const-string/jumbo v13, "RecoveryPassword"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unable to save recovery passoword to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/mdm/util/keystore/RecoveryPassword;->recoveryFilePath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_124
    .catchall {:try_start_106 .. :try_end_124} :catchall_14c

    .line 69
    if-eqz v9, :cond_7a

    .line 71
    :try_start_126
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_129} :catch_12b

    goto/16 :goto_7a

    .line 72
    :catch_12b
    move-exception v3

    .line 73
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v13, "RecoveryPassword"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Fail to close "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/mdm/util/keystore/RecoveryPassword;->recoveryFilePath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7a

    .line 68
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "ioe":Ljava/io/IOException;
    :catchall_14c
    move-exception v13

    .line 69
    if-eqz v9, :cond_152

    .line 71
    :try_start_14f
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_152} :catch_153

    .line 68
    :cond_152
    :goto_152
    throw v13

    .line 72
    :catch_153
    move-exception v3

    .line 73
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v14, "RecoveryPassword"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Fail to close "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mdm/util/keystore/RecoveryPassword;->recoveryFilePath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_152
.end method

.method public setEnforceRecoveryPassword(Ljava/lang/String;)V
    .registers 11
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 114
    if-nez p1, :cond_3

    .line 115
    return-void

    .line 117
    :cond_3
    const/4 v4, 0x0

    .line 118
    .local v4, "raf":Ljava/io/RandomAccessFile;
    new-instance v5, Lcom/lge/mdm/util/keystore/RPEncrypt;

    invoke-direct {v5}, Lcom/lge/mdm/util/keystore/RPEncrypt;-><init>()V

    .line 121
    .local v5, "wce":Lcom/lge/mdm/util/keystore/RPEncrypt;
    :try_start_9
    const-string/jumbo v6, "rw"

    invoke-direct {p0, v6}, Lcom/lge/mdm/util/keystore/RecoveryPassword;->getRecoveryPasswordFile(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v4

    .line 122
    .local v4, "raf":Ljava/io/RandomAccessFile;
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iget v7, v5, Lcom/lge/mdm/util/keystore/RPEncrypt;->mKey1:I

    invoke-virtual {v5, v6, v7}, Lcom/lge/mdm/util/keystore/RPEncrypt;->Encrypt([BI)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "cipher":Ljava/lang/String;
    if-eqz v0, :cond_2d

    .line 126
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8, v7}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_2d} :catch_6a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2d} :catch_3e
    .catchall {:try_start_9 .. :try_end_2d} :catchall_85

    .line 134
    :cond_2d
    if-eqz v4, :cond_32

    .line 136
    :try_start_2f
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    .line 113
    .end local v0    # "cipher":Ljava/lang/String;
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    :cond_32
    :goto_32
    return-void

    .line 137
    .restart local v0    # "cipher":Ljava/lang/String;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :catch_33
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "RecoveryPassword"

    const-string/jumbo v7, "setEnforceRecoveryPassword, Fail to close RecoveryPasswordFile"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 130
    .end local v0    # "cipher":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    :catch_3e
    move-exception v3

    .line 132
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_3f
    const-string/jumbo v6, "RecoveryPassword"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setEnforceRecoveryPassword IOException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_3f .. :try_end_59} :catchall_85

    .line 134
    if-eqz v4, :cond_32

    .line 136
    :try_start_5b
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_32

    .line 137
    :catch_5f
    move-exception v1

    .line 138
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "RecoveryPassword"

    const-string/jumbo v7, "setEnforceRecoveryPassword, Fail to close RecoveryPasswordFile"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 128
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_6a
    move-exception v2

    .line 129
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :try_start_6b
    const-string/jumbo v6, "RecoveryPassword"

    const-string/jumbo v7, "setEnforceRecoveryPassword FileNotFoundException"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_74
    .catchall {:try_start_6b .. :try_end_74} :catchall_85

    .line 134
    if-eqz v4, :cond_32

    .line 136
    :try_start_76
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_32

    .line 137
    :catch_7a
    move-exception v1

    .line 138
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "RecoveryPassword"

    const-string/jumbo v7, "setEnforceRecoveryPassword, Fail to close RecoveryPasswordFile"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 133
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    :catchall_85
    move-exception v6

    .line 134
    if-eqz v4, :cond_8b

    .line 136
    :try_start_88
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8b} :catch_8c

    .line 133
    :cond_8b
    :goto_8b
    throw v6

    .line 137
    :catch_8c
    move-exception v1

    .line 138
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "RecoveryPassword"

    const-string/jumbo v8, "setEnforceRecoveryPassword, Fail to close RecoveryPasswordFile"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b
.end method
