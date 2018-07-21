.class public Lcom/lge/mdm/util/LGMDMActivityInfo;
.super Ljava/lang/Object;
.source "LGMDMActivityInfo.java"


# static fields
.field private static final FLOATING_WINDOW_SERVICE_NAME:Ljava/lang/String; = "com.lge.app.floating.FloatingWindowService"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string/jumbo v0, "LGMDMActivityInfo"

    sput-object v0, Lcom/lge/mdm/util/LGMDMActivityInfo;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFloatingAppPackageName()[Ljava/lang/String;
    .registers 11

    .prologue
    .line 83
    const/4 v6, 0x0

    .line 84
    .local v6, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 85
    .local v4, "ident":J
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v3, "mQSlideAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    const v8, 0x7fffffff

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/app/IActivityManager;->getServices(II)Ljava/util/List;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_4f
    .catchall {:try_start_a .. :try_end_15} :catchall_5c

    move-result-object v6

    .line 92
    .local v6, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    .end local v6    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :goto_19
    if-eqz v6, :cond_61

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_61

    .line 96
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_61

    .line 97
    const-string/jumbo v8, "com.lge.app.floating.FloatingWindowService"

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 98
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 89
    .end local v2    # "i":I
    .local v6, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :catch_4f
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_50
    sget-object v7, Lcom/lge/mdm/util/LGMDMActivityInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Failed talking with ActivityManagerNative"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_5c

    .line 92
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_19

    .line 91
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_5c
    move-exception v7

    .line 92
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    throw v7

    .line 102
    .end local v6    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_61
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 103
    .local v1, "floatingPackageName":[Ljava/lang/String;
    return-object v1
.end method

.method public getTopActivityPackageName(I)Ljava/lang/String;
    .registers 10
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 38
    const/4 v4, 0x0

    .line 39
    .local v4, "topPackageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 40
    .local v1, "rt":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 42
    .local v2, "ident":J
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;

    move-result-object v1

    .line 43
    .local v1, "rt":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_25

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_25

    .line 44
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_42
    .catchall {:try_start_6 .. :try_end_24} :catchall_4f

    move-result-object v4

    .line 49
    .end local v4    # "topPackageName":Ljava/lang/String;
    :cond_25
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    .end local v1    # "rt":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_28
    sget-object v5, Lcom/lge/mdm/util/LGMDMActivityInfo;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getTopActivityPackageName is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-object v4

    .line 46
    .restart local v4    # "topPackageName":Ljava/lang/String;
    :catch_42
    move-exception v0

    .line 47
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_43
    sget-object v5, Lcom/lge/mdm/util/LGMDMActivityInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Failed talking with ActivityManagerNative"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_4f

    .line 49
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_28

    .line 48
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_4f
    move-exception v5

    .line 49
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    throw v5
.end method

.method public getTopActivityPackageName2(I)[Landroid/content/ComponentName;
    .registers 12
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 56
    new-array v0, v5, [Landroid/content/ComponentName;

    .line 57
    new-instance v5, Landroid/content/ComponentName;

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v0, v8

    .line 58
    new-instance v5, Landroid/content/ComponentName;

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v0, v9

    .line 60
    .local v0, "componentName":[Landroid/content/ComponentName;
    const/4 v4, 0x0

    .line 61
    .local v4, "rt":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 63
    .local v2, "ident":J
    :try_start_24
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2d} :catch_b4
    .catchall {:try_start_24 .. :try_end_2d} :catchall_c2

    move-result-object v4

    .line 67
    .local v4, "rt":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .end local v4    # "rt":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_31
    if-eqz v4, :cond_b3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_b3

    .line 70
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    aput-object v5, v0, v8

    .line 71
    sget-object v5, Lcom/lge/mdm/util/LGMDMActivityInfo;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "front Activity packageName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v8

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 72
    const-string/jumbo v7, ", className:"

    .line 71
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 72
    aget-object v7, v0, v8

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 71
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v9, :cond_b3

    .line 74
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    aput-object v5, v0, v9

    .line 75
    sget-object v5, Lcom/lge/mdm/util/LGMDMActivityInfo;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "second Activity packageName2 :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v9

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 76
    const-string/jumbo v7, ", className2:"

    .line 75
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 76
    aget-object v7, v0, v9

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 75
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_b3
    return-object v0

    .line 64
    .local v4, "rt":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_b4
    move-exception v1

    .line 65
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_b5
    sget-object v5, Lcom/lge/mdm/util/LGMDMActivityInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Failed talking with ActivityManagerNative"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bd
    .catchall {:try_start_b5 .. :try_end_bd} :catchall_c2

    .line 67
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_31

    .line 66
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_c2
    move-exception v5

    .line 67
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    throw v5
.end method
