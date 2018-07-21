.class final Lcom/lge/mdm/controller/LGMDMWifiController$GlobalMacAddressUpdaterRunnable;
.super Lcom/lge/mdm/controller/LGMDMWifiController$UpdaterRunnable;
.source "LGMDMWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "GlobalMacAddressUpdaterRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMWifiController;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMWifiController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMWifiController;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMWifiController$GlobalMacAddressUpdaterRunnable;->this$0:Lcom/lge/mdm/controller/LGMDMWifiController;

    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMWifiController$UpdaterRunnable;-><init>(Lcom/lge/mdm/controller/LGMDMWifiController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 157
    invoke-super {p0}, Lcom/lge/mdm/controller/LGMDMWifiController$UpdaterRunnable;->run()V

    .line 158
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMWifiController$GlobalMacAddressUpdaterRunnable;->this$0:Lcom/lge/mdm/controller/LGMDMWifiController;

    iget v1, p0, Lcom/lge/mdm/controller/LGMDMWifiController$GlobalMacAddressUpdaterRunnable;->mUserHandle:I

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/LGMDMWifiController;->-wrap1(Lcom/lge/mdm/controller/LGMDMWifiController;I)V

    .line 156
    return-void
.end method
