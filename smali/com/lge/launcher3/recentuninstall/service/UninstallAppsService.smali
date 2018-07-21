.class public Lcom/lge/launcher3/recentuninstall/service/UninstallAppsService;
.super Landroid/app/IntentService;
.source "UninstallAppsService.java"


# static fields
.field static final DEFAULT_UINSTALL_ELAPSED_TIME:J = 0x5265c00L

.field static final DIRECT_UNINSTALL_TIME:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    const-string v0, "SchedulingService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method private getUserProfiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/recentuninstall/service/UninstallAppsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 48
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 49
    if-nez v0, :cond_12

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 52
    :cond_12
    return-object v0
.end method

.method private uninstallDisableApps(JJ)V
    .registers 16

    .prologue
    const-wide/16 v8, 0x0

    .line 58
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 59
    invoke-static {}, Lcom/lge/content/pm/PackageManagerEx;->getDefault()Lcom/lge/content/pm/PackageManagerEx;

    move-result-object v1

    .line 60
    long-to-int v0, p1

    invoke-virtual {v1, v0}, Lcom/lge/content/pm/PackageManagerEx;->getDisabledByLGLauncherPackageList(I)[Ljava/lang/String;

    move-result-object v4

    .line 61
    if-eqz v4, :cond_18

    array-length v0, v4

    if-lez v0, :cond_18

    .line 62
    const/4 v0, 0x0

    :goto_15
    array-length v5, v4

    if-lt v0, v5, :cond_19

    .line 86
    :cond_18
    :goto_18
    return-void

    .line 63
    :cond_19
    aget-object v5, v4, v0

    .line 64
    cmp-long v6, p3, v8

    if-eqz v6, :cond_32

    .line 65
    cmp-long v6, p3, v8

    if-lez v6, :cond_35

    .line 67
    long-to-int v6, p1

    .line 66
    invoke-virtual {v1, v5, v6}, Lcom/lge/content/pm/PackageManagerEx;->getLastDisabledTime(Ljava/lang/String;I)J

    move-result-wide v6

    sub-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 67
    cmp-long v6, v6, p3

    if-lez v6, :cond_35

    .line 68
    :cond_32
    invoke-virtual {p0, v5, p1, p2}, Lcom/lge/launcher3/recentuninstall/service/UninstallAppsService;->uninstallPackage(Ljava/lang/String;J)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_35} :catch_38
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_35} :catch_3d

    .line 62
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 80
    :catch_38
    move-exception v0

    .line 81
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_18

    .line 84
    :catch_3d
    move-exception v0

    const-string v0, "RUService"

    const-string v1, "Not implement PackageManagerEX in framework"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method

.method private uninstallDisableAppsAllUsers(J)V
    .registers 8

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/lge/launcher3/recentuninstall/service/UninstallAppsService;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    .line 44
    return-void

    .line 40
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 41
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    int-to-long v2, v0

    .line 42
    invoke-direct {p0, v2, v3, p1, p2}, Lcom/lge/launcher3/recentuninstall/service/UninstallAppsService;->uninstallDisableApps(JJ)V

    goto :goto_8
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 32
    const-string v0, "RUService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onHandleIntent() intent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v0, "elapsed_time"

    const-wide/32 v2, 0x5265c00

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 34
    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/recentuninstall/service/UninstallAppsService;->uninstallDisableAppsAllUsers(J)V

    .line 35
    invoke-static {p1}, Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 36
    return-void
.end method

.method uninstallPackage(Ljava/lang/String;J)V
    .registers 8

    .prologue
    .line 89
    const-string v0, "RUService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uninstallPackage() Package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 94
    const/4 v1, 0x0

    long-to-int v2, p2

    const/4 v3, 0x0

    :try_start_2b
    invoke-interface {v0, p1, v1, v2, v3}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_2f

    .line 98
    :goto_2e
    return-void

    .line 95
    :catch_2f
    move-exception v0

    .line 96
    const-string v1, "RUService"

    const-string v2, "Failed to uninstall package"

    invoke-static {v1, v2, v0}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2e
.end method
