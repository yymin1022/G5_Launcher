.class Lcom/android/launcher3/LauncherModel$AppsAvailabilityCheck;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppsAvailabilityCheck"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;)V
    .registers 2

    .prologue
    .line 3229
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    .prologue
    .line 3233
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    sget-object v2, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3235
    :try_start_a
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v3

    .line 3236
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 3237
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3238
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3239
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2e
    :goto_2e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 3265
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3233
    monitor-exit v2

    .line 3267
    return-void

    .line 3239
    :cond_3b
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3240
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/compat/UserHandleCompat;

    .line 3241
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3242
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 3243
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_57
    :goto_57
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9f

    .line 3256
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 3257
    iget-object v8, p0, Lcom/android/launcher3/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/android/launcher3/LauncherModel;

    new-instance v9, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    iget-object v10, p0, Lcom/android/launcher3/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v11, 0x3

    .line 3258
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v9, v10, v11, v0, v1}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 3257
    invoke-virtual {v8, v9}, Lcom/android/launcher3/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V

    .line 3260
    :cond_7c
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 3261
    iget-object v8, p0, Lcom/android/launcher3/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/android/launcher3/LauncherModel;

    new-instance v9, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    iget-object v10, p0, Lcom/android/launcher3/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v11, 0x4

    .line 3262
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v9, v10, v11, v0, v1}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 3261
    invoke-virtual {v8, v9}, Lcom/android/launcher3/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V

    goto :goto_2e

    .line 3233
    :catchall_9c
    move-exception v0

    monitor-exit v2
    :try_end_9e
    .catchall {:try_start_a .. :try_end_9e} :catchall_9c

    throw v0

    .line 3243
    :cond_9f
    :try_start_9f
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3244
    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v9

    if-nez v9, :cond_57

    .line 3246
    const/16 v9, 0x2000

    .line 3245
    invoke-virtual {v3, v4, v0, v9}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isAppEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result v9

    .line 3247
    if-eqz v9, :cond_cc

    .line 3248
    const-string v9, "Launcher.Model"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Package found on sd-card: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3249
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 3251
    :cond_cc
    const-string v9, "Launcher.Model"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Package not found: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3252
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e4
    .catchall {:try_start_9f .. :try_end_e4} :catchall_9c

    goto/16 :goto_57
.end method
