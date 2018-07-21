.class Lcom/lge/mdm/controller/LGMDMCertificateController$AliasOperation;
.super Landroid/os/AsyncTask;
.source "LGMDMCertificateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMCertificateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasOperation"
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
.field mAlias:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMCertificateController;


# direct methods
.method private constructor <init>(Lcom/lge/mdm/controller/LGMDMCertificateController;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMCertificateController;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$AliasOperation;->this$0:Lcom/lge/mdm/controller/LGMDMCertificateController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 610
    iput-object p2, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$AliasOperation;->mAlias:Ljava/lang/String;

    .line 609
    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/mdm/controller/LGMDMCertificateController;Ljava/lang/String;Lcom/lge/mdm/controller/LGMDMCertificateController$AliasOperation;)V
    .registers 4
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMCertificateController;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/lge/mdm/controller/LGMDMCertificateController$AliasOperation;-><init>(Lcom/lge/mdm/controller/LGMDMCertificateController;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v9, 0x0

    .line 614
    :try_start_1
    sget-object v6, Lcom/lge/mdm/controller/LGMDMCertificateController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v4

    .line 615
    .local v4, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_a} :catch_5e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_71
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_a} :catch_64

    move-result-object v5

    .line 617
    .local v5, "service":Landroid/security/IKeyChainService;
    :try_start_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "user:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$AliasOperation;->mAlias:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z

    move-result v3

    .line 618
    .local v3, "isDeleted":Z
    const-string/jumbo v6, "LGMDMCertificateController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$AliasOperation;->mAlias:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " isDeleted??? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_54
    .catchall {:try_start_b .. :try_end_54} :catchall_59

    move-result-object v6

    .line 621
    :try_start_55
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 619
    return-object v6

    .line 620
    .end local v3    # "isDeleted":Z
    :catchall_59
    move-exception v6

    .line 621
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 620
    throw v6
    :try_end_5e
    .catch Ljava/lang/IllegalStateException; {:try_start_55 .. :try_end_5e} :catch_5e
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5e} :catch_71
    .catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_5e} :catch_64

    .line 623
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v5    # "service":Landroid/security/IKeyChainService;
    :catch_5e
    move-exception v1

    .line 625
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    .line 628
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_64
    move-exception v2

    .line 629
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 630
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    .line 626
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_71
    move-exception v0

    .line 627
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 612
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lge/mdm/controller/LGMDMCertificateController$AliasOperation;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "ok"    # Ljava/lang/Boolean;

    .prologue
    .line 633
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "ok"    # Ljava/lang/Object;

    .prologue
    .line 633
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "ok":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lge/mdm/controller/LGMDMCertificateController$AliasOperation;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
