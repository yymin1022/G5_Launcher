.class Lcom/lge/mdm/controller/LGMDMCertificateController$ResetKeyStoreAndKeyChain;
.super Landroid/os/AsyncTask;
.source "LGMDMCertificateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMCertificateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetKeyStoreAndKeyChain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMCertificateController;


# direct methods
.method private constructor <init>(Lcom/lge/mdm/controller/LGMDMCertificateController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMCertificateController;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$ResetKeyStoreAndKeyChain;->this$0:Lcom/lge/mdm/controller/LGMDMCertificateController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/mdm/controller/LGMDMCertificateController;Lcom/lge/mdm/controller/LGMDMCertificateController$ResetKeyStoreAndKeyChain;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMCertificateController;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMCertificateController$ResetKeyStoreAndKeyChain;-><init>(Lcom/lge/mdm/controller/LGMDMCertificateController;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 15
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    .line 644
    sget-object v8, Lcom/lge/mdm/controller/LGMDMCertificateController;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 645
    .local v7, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "pi$iterator":Ljava/util/Iterator;
    :cond_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 646
    .local v3, "pi":Landroid/content/pm/UserInfo;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMCertificateController;->-get0()[I

    move-result-object v9

    const/4 v8, 0x0

    array-length v10, v9

    :goto_2d
    if-ge v8, v10, :cond_1b

    aget v6, v9, v8

    .line 647
    .local v6, "uid":I
    iget-object v11, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$ResetKeyStoreAndKeyChain;->this$0:Lcom/lge/mdm/controller/LGMDMCertificateController;

    iget-object v11, v11, Lcom/lge/mdm/controller/LGMDMCertificateController;->mKeyStore:Landroid/security/KeyStore;

    iget v12, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v12, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/security/KeyStore;->clearUid(I)Z

    .line 646
    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    .line 650
    .end local v3    # "pi":Landroid/content/pm/UserInfo;
    .end local v6    # "uid":I
    :cond_41
    const/4 v5, 0x0

    .line 653
    .local v5, "ret":Z
    :try_start_42
    sget-object v8, Lcom/lge/mdm/controller/LGMDMCertificateController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_47} :catch_77

    move-result-object v2

    .line 655
    .local v2, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_48
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v8

    invoke-interface {v8}, Landroid/security/IKeyChainService;->reset()Z

    move-result v5

    .line 656
    .local v5, "ret":Z
    const-string/jumbo v8, "MDM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "keyChainConnection reset : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_6a} :catch_72
    .catchall {:try_start_48 .. :try_end_6a} :catchall_80

    .line 659
    :try_start_6a
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_6d
    .catch Ljava/lang/InterruptedException; {:try_start_6a .. :try_end_6d} :catch_77

    .line 664
    .end local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v5    # "ret":Z
    :goto_6d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8

    .line 657
    .restart local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_72
    move-exception v0

    .line 659
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_73
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_76
    .catch Ljava/lang/InterruptedException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_6d

    .line 661
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_77
    move-exception v1

    .line 662
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    goto :goto_6d

    .line 658
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_80
    move-exception v8

    .line 659
    :try_start_81
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 658
    throw v8
    :try_end_85
    .catch Ljava/lang/InterruptedException; {:try_start_81 .. :try_end_85} :catch_77
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "unused"    # [Ljava/lang/Object;

    .prologue
    .line 643
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "unused":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lge/mdm/controller/LGMDMCertificateController$ResetKeyStoreAndKeyChain;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
