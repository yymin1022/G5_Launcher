.class Lcom/lge/mdm/controller/LGMDMCertificateController$InstallCaCertsToKeyChainTask;
.super Landroid/os/AsyncTask;
.source "LGMDMCertificateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMCertificateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallCaCertsToKeyChainTask"
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
    .line 343
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$InstallCaCertsToKeyChainTask;->this$0:Lcom/lge/mdm/controller/LGMDMCertificateController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/mdm/controller/LGMDMCertificateController;Lcom/lge/mdm/controller/LGMDMCertificateController$InstallCaCertsToKeyChainTask;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMCertificateController;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMCertificateController$InstallCaCertsToKeyChainTask;-><init>(Lcom/lge/mdm/controller/LGMDMCertificateController;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 6
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    .line 347
    :try_start_0
    sget-object v2, Lcom/lge/mdm/controller/LGMDMCertificateController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_1f

    move-result-object v1

    .line 349
    .local v1, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_6
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$InstallCaCertsToKeyChainTask;->this$0:Lcom/lge/mdm/controller/LGMDMCertificateController;

    iget-object v2, v2, Lcom/lge/mdm/controller/LGMDMCertificateController;->mCredentials:Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;

    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->installCaCertsToKeyChain(Landroid/security/IKeyChainService;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_1a

    move-result-object v2

    .line 351
    :try_start_16
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 349
    return-object v2

    .line 350
    :catchall_1a
    move-exception v2

    .line 351
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 350
    throw v2
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1f} :catch_1f

    .line 353
    .end local v1    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_1f
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 355
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "unused"    # [Ljava/lang/Object;

    .prologue
    .line 345
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "unused":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lge/mdm/controller/LGMDMCertificateController$InstallCaCertsToKeyChainTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 359
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "success"    # Ljava/lang/Object;

    .prologue
    .line 359
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "success":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lge/mdm/controller/LGMDMCertificateController$InstallCaCertsToKeyChainTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
