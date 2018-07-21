.class Lcom/android/launcher3/LauncherModel$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->setPackageState(Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field private final synthetic val$installInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$1;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$1;->val$installInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher3/LauncherModel$1;)Lcom/android/launcher3/LauncherModel;
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$1;->this$0:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 312
    sget-object v1, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 313
    :try_start_3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 315
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$1;->val$installInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v0, v0, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    if-nez v0, :cond_10

    .line 317
    monitor-exit v1

    .line 357
    :goto_f
    return-void

    .line 320
    :cond_10
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 337
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 344
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 346
    new-instance v0, Lcom/android/launcher3/LauncherModel$1$1;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher3/LauncherModel$1$1;-><init>(Lcom/android/launcher3/LauncherModel$1;Ljava/util/HashSet;)V

    .line 354
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$1;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 312
    :cond_3a
    monitor-exit v1

    goto :goto_f

    :catchall_3c
    move-exception v0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v0

    .line 320
    :cond_3f
    :try_start_3f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 321
    instance-of v4, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v4, :cond_16

    .line 322
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 323
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 324
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v5

    if-eqz v5, :cond_16

    if-eqz v4, :cond_16

    .line 325
    iget-object v5, p0, Lcom/android/launcher3/LauncherModel$1;->val$installInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget-object v5, v5, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 326
    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$1;->val$installInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v4, v4, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->progress:I

    invoke-virtual {v0, v4}, Lcom/android/launcher3/ShortcutInfo;->setInstallProgress(I)V

    .line 328
    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$1;->val$installInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v4, v4, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_79

    .line 330
    iget v4, v0, Lcom/android/launcher3/ShortcutInfo;->status:I

    and-int/lit8 v4, v4, -0x5

    iput v4, v0, Lcom/android/launcher3/ShortcutInfo;->status:I

    .line 332
    :cond_79
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 337
    :cond_7d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 338
    iget-object v4, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/LauncherModel$1;->val$installInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget-object v5, v5, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 339
    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$1;->val$installInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v4, v4, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->progress:I

    iput v4, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->installProgress:I

    .line 340
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_9c
    .catchall {:try_start_3f .. :try_end_9c} :catchall_3c

    goto :goto_22
.end method
