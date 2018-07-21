.class Lcom/lge/mdm/controller/LGMDMApplicationController$MDMPackageInstallObserver;
.super Landroid/app/PackageInstallObserver;
.source "LGMDMApplicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMApplicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MDMPackageInstallObserver"
.end annotation


# instance fields
.field finished:Z

.field result:I

.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMApplicationController;


# direct methods
.method private constructor <init>(Lcom/lge/mdm/controller/LGMDMApplicationController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMApplicationController;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$MDMPackageInstallObserver;->this$0:Lcom/lge/mdm/controller/LGMDMApplicationController;

    invoke-direct {p0}, Landroid/app/PackageInstallObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/mdm/controller/LGMDMApplicationController;Lcom/lge/mdm/controller/LGMDMApplicationController$MDMPackageInstallObserver;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMApplicationController;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMApplicationController$MDMPackageInstallObserver;-><init>(Lcom/lge/mdm/controller/LGMDMApplicationController;)V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "returnMsg"    # Ljava/lang/String;
    .param p4, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 310
    monitor-enter p0

    .line 311
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$MDMPackageInstallObserver;->finished:Z

    .line 312
    iput p2, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$MDMPackageInstallObserver;->result:I

    .line 313
    invoke-virtual {p0}, Lcom/lge/mdm/controller/LGMDMApplicationController$MDMPackageInstallObserver;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    .line 309
    return-void

    .line 310
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
