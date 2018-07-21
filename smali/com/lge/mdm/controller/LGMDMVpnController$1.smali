.class Lcom/lge/mdm/controller/LGMDMVpnController$1;
.super Ljava/lang/Object;
.source "LGMDMVpnController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMVpnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMVpnController;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMVpnController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMVpnController;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMVpnController$1;->this$0:Lcom/lge/mdm/controller/LGMDMVpnController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMVpnController$1;->this$0:Lcom/lge/mdm/controller/LGMDMVpnController;

    invoke-static {p2}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/mdm/controller/LGMDMVpnController;->mService:Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;

    .line 492
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMVpnController$1;->this$0:Lcom/lge/mdm/controller/LGMDMVpnController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/lge/mdm/controller/LGMDMVpnController;->mService:Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;

    .line 497
    return-void
.end method
