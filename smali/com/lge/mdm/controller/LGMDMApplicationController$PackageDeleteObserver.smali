.class Lcom/lge/mdm/controller/LGMDMApplicationController$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "LGMDMApplicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMApplicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field failReason:I

.field finished:Z

.field result:Z

.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMApplicationController;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMApplicationController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMApplicationController;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$PackageDeleteObserver;->this$0:Lcom/lge/mdm/controller/LGMDMApplicationController;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    const/4 v0, 0x1

    .line 468
    monitor-enter p0

    .line 469
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$PackageDeleteObserver;->finished:Z

    .line 470
    if-ne p2, v0, :cond_10

    :goto_7
    iput-boolean v0, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$PackageDeleteObserver;->result:Z

    .line 471
    iput p2, p0, Lcom/lge/mdm/controller/LGMDMApplicationController$PackageDeleteObserver;->failReason:I

    .line 472
    invoke-virtual {p0}, Lcom/lge/mdm/controller/LGMDMApplicationController$PackageDeleteObserver;->notifyAll()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    monitor-exit p0

    .line 467
    return-void

    .line 470
    :cond_10
    const/4 v0, 0x0

    goto :goto_7

    .line 468
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method
