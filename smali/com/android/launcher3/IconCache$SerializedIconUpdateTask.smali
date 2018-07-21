.class Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;
.super Ljava/lang/Object;
.source "IconCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/IconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SerializedIconUpdateTask"
.end annotation


# instance fields
.field private final mAppsToAdd:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher3/compat/LauncherActivityInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppsToUpdate:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher3/compat/LauncherActivityInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkgInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdatedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSerial:J

.field final synthetic this$0:Lcom/android/launcher3/IconCache;


# direct methods
.method constructor <init>(Lcom/android/launcher3/IconCache;JLjava/util/HashMap;Ljava/util/Stack;Ljava/util/Stack;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher3/compat/LauncherActivityInfoCompat;",
            ">;",
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher3/compat/LauncherActivityInfoCompat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 786
    iput-object p1, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/IconCache;

    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    .line 787
    iput-wide p2, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    .line 788
    iput-object p4, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mPkgInfoMap:Ljava/util/HashMap;

    .line 789
    iput-object p5, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    .line 790
    iput-object p6, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    .line 791
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 795
    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_74

    .line 796
    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    .line 797
    invoke-virtual {v0}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 798
    iget-object v2, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/IconCache;

    invoke-virtual {v2, v0, v10}, Lcom/android/launcher3/IconCache;->updateCacheAndGetContentValues(Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Z)Landroid/content/ContentValues;

    move-result-object v2

    .line 799
    iget-object v3, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/IconCache;

    iget-object v3, v3, Lcom/android/launcher3/IconCache;->mIconDb:Lcom/android/launcher3/IconCache$IconDB;

    invoke-virtual {v3}, Lcom/android/launcher3/IconCache$IconDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "icons"

    .line 800
    const-string v5, "componentName = ? AND profileId = ?"

    .line 801
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    iget-wide v8, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v10

    .line 799
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 802
    iget-object v1, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 804
    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_70

    .line 806
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    .line 807
    iget-object v1, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/IconCache;

    iget-object v2, v2, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-wide v4, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v2

    .line 806
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherModel;->onPackageIconsUpdated(Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 811
    :cond_70
    invoke-virtual {p0}, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->scheduleNext()V

    .line 825
    :cond_73
    :goto_73
    return-void

    .line 812
    :cond_74
    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_73

    .line 813
    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    .line 814
    iget-object v1, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mPkgInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 815
    if-eqz v1, :cond_a1

    .line 816
    iget-object v2, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/IconCache;

    monitor-enter v2

    .line 817
    :try_start_99
    iget-object v3, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/IconCache;

    iget-wide v4, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/android/launcher3/IconCache;->addIconToDBAndMemCache(Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Landroid/content/pm/PackageInfo;J)V

    .line 816
    monitor-exit v2
    :try_end_a1
    .catchall {:try_start_99 .. :try_end_a1} :catchall_ad

    .line 821
    :cond_a1
    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_73

    .line 822
    invoke-virtual {p0}, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->scheduleNext()V

    goto :goto_73

    .line 816
    :catchall_ad
    move-exception v0

    :try_start_ae
    monitor-exit v2
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw v0
.end method

.method public scheduleNext()V
    .registers 7

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/IconCache;

    iget-object v0, v0, Lcom/android/launcher3/IconCache;->mWorkerHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher3/IconCache;->ICON_UPDATE_TOKEN:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 829
    return-void
.end method
