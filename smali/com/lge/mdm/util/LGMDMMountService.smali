.class public Lcom/lge/mdm/util/LGMDMMountService;
.super Ljava/lang/Object;
.source "LGMDMMountService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LGMDMMountService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMountService()Landroid/os/storage/IMountService;
    .registers 3

    .prologue
    .line 12
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 13
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_e

    .line 14
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    return-object v1

    .line 16
    :cond_e
    const-string/jumbo v1, "LGMDMMountService"

    const-string/jumbo v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "LGMDMMountService is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
