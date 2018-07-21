.class Lcom/android/launcher3/LauncherModel$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->updateSessionDisplayInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field private final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$2;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$2;->val$packageName:Ljava/lang/String;

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher3/LauncherModel$2;)Lcom/android/launcher3/LauncherModel;
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$2;->this$0:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 370
    sget-object v1, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 371
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 372
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v3

    .line 374
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 394
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 396
    new-instance v0, Lcom/android/launcher3/LauncherModel$2$1;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/launcher3/LauncherModel$2$1;-><init>(Lcom/android/launcher3/LauncherModel$2;Ljava/util/ArrayList;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 405
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$2;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 370
    :cond_2a
    monitor-exit v1

    .line 408
    return-void

    .line 374
    :cond_2c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 375
    instance-of v5, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v5, :cond_12

    .line 376
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 377
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 378
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v6

    if-eqz v6, :cond_12

    if-eqz v5, :cond_12

    .line 379
    iget-object v6, p0, Lcom/android/launcher3/LauncherModel$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 380
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 382
    iget-object v5, p0, Lcom/android/launcher3/LauncherModel$2;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v5, v5, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 383
    iget-object v6, v0, Lcom/android/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    .line 384
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->shouldUseLowResIcon()Z

    move-result v7

    .line 382
    invoke-virtual {v5, v0, v6, v3, v7}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ShortcutInfo;Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;Z)V

    .line 389
    :goto_64
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 370
    :catchall_68
    move-exception v0

    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_68

    throw v0

    .line 387
    :cond_6b
    :try_start_6b
    iget-object v5, p0, Lcom/android/launcher3/LauncherModel$2;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v5, v5, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/ShortcutInfo;->updateIcon(Lcom/android/launcher3/IconCache;)V
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_68

    goto :goto_64
.end method
