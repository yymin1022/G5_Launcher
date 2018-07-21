.class abstract Lcom/lge/mdm/controller/LGMDMWifiController$UpdaterRunnable;
.super Ljava/lang/Object;
.source "LGMDMWifiController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "UpdaterRunnable"
.end annotation


# instance fields
.field protected mUserHandle:I

.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMWifiController;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMWifiController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMWifiController;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMWifiController$UpdaterRunnable;->this$0:Lcom/lge/mdm/controller/LGMDMWifiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 142
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 141
    return-void
.end method

.method public setUserHandle(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/lge/mdm/controller/LGMDMWifiController$UpdaterRunnable;->mUserHandle:I

    .line 138
    return-void
.end method
