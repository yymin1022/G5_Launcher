.class Lcom/lge/mdm/controller/LGMDMGpsController$LocationContentObserver;
.super Landroid/database/ContentObserver;
.source "LGMDMGpsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMGpsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationContentObserver"
.end annotation


# instance fields
.field private final mUriLocation:Landroid/net/Uri;

.field private final mUserManager:Landroid/os/UserManager;

.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMGpsController;


# direct methods
.method public constructor <init>(Lcom/lge/mdm/controller/LGMDMGpsController;Landroid/os/Handler;)V
    .registers 4
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMGpsController;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMGpsController$LocationContentObserver;->this$0:Lcom/lge/mdm/controller/LGMDMGpsController;

    .line 94
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 90
    const-string/jumbo v0, "location_providers_allowed"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMGpsController$LocationContentObserver;->mUriLocation:Landroid/net/Uri;

    .line 95
    invoke-static {p1}, Lcom/lge/mdm/controller/LGMDMGpsController;->-get0(Lcom/lge/mdm/controller/LGMDMGpsController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMGpsController$LocationContentObserver;->mUserManager:Landroid/os/UserManager;

    .line 93
    return-void
.end method

.method private updateLocationStatus()V
    .registers 4

    .prologue
    .line 110
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 111
    .local v0, "userHandle":I
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGpsController$LocationContentObserver;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_share_location"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 112
    return-void

    .line 115
    :cond_10
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMGpsController$LocationContentObserver;->this$0:Lcom/lge/mdm/controller/LGMDMGpsController;

    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMGpsController$LocationContentObserver;->this$0:Lcom/lge/mdm/controller/LGMDMGpsController;

    invoke-static {v2, v0}, Lcom/lge/mdm/controller/LGMDMGpsController;->-wrap0(Lcom/lge/mdm/controller/LGMDMGpsController;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/lge/mdm/controller/LGMDMGpsController;->settingGPSLocation(II)V

    .line 109
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMGpsController$LocationContentObserver;->mUriLocation:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 105
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMGpsController$LocationContentObserver;->updateLocationStatus()V

    .line 103
    :cond_b
    return-void
.end method

.method register(Landroid/content/ContentResolver;)V
    .registers 5
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMGpsController$LocationContentObserver;->mUriLocation:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 98
    return-void
.end method
