.class public Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageUpdatedTask"
.end annotation


# static fields
.field public static final OP_ADD:I = 0x1

.field public static final OP_NONE:I = 0x0

.field public static final OP_REMOVE:I = 0x3

.field public static final OP_SUSPEND:I = 0x5

.field public static final OP_UNAVAILABLE:I = 0x4

.field public static final OP_UNSUSPEND:I = 0x6

.field public static final OP_UPDATE:I = 0x2

.field public static final OP_USER_AVAILABILITY_CHANGE:I = 0x7

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field mOp:I

.field mPackages:[Ljava/lang/String;

.field mUser:Lcom/android/launcher3/compat/UserHandleCompat;

.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 5

    .prologue
    .line 3284
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3285
    iput p2, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    .line 3286
    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 3287
    iput-object p4, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 3288
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)Lcom/android/launcher3/LauncherModel;
    .registers 2

    .prologue
    .line 3270
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method public static ajc$get$mOp(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    return v0
.end method

.method public static ajc$get$mPackages(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    return-object v0
.end method

.method public static ajc$get$mUser(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)Lcom/android/launcher3/compat/UserHandleCompat;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    return-object v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "LauncherModel.java"

    const-class v2, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "run"

    const-string v3, "com.android.launcher3.LauncherModel$PackageUpdatedTask"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xcda

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$set$mOp(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    return-void
.end method

.method public static ajc$set$mPackages(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;[Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    return-void
.end method

.method public static ajc$set$mUser(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    return-void
.end method

.method private static final run_aroundBody0(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;Lorg/aspectj/lang/JoinPoint;)V
    .registers 23

    .prologue
    .line 3291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-boolean v2, v2, Lcom/android/launcher3/LauncherModel;->mHasLoaderCompletedOnce:Z

    if-nez v2, :cond_9

    .line 3615
    :goto_8
    return-void

    .line 3295
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 3297
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 3298
    array-length v10, v9

    .line 3299
    sget-object v2, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    .line 3300
    new-instance v3, Ljava/util/HashSet;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Lcom/android/launcher3/util/StringFilter;->of(Ljava/util/Set;)Lcom/android/launcher3/util/StringFilter;

    move-result-object v3

    .line 3301
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    packed-switch v4, :pswitch_data_588

    :cond_2e
    :goto_2e
    move-object v4, v3

    move-object v5, v2

    .line 3369
    :goto_30
    const/4 v2, 0x0

    .line 3370
    const/4 v3, 0x0

    .line 3371
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3373
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v6, v6, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v6, v6, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5d

    .line 3374
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v6, v6, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v6, v6, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3375
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v6, v6, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v6, v6, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 3377
    :cond_5d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v6, v6, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v6, v6, Lcom/android/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_83

    .line 3378
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v6, v6, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v6, v6, Lcom/android/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3379
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v6, v6, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v6, v6, Lcom/android/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 3381
    :cond_83
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v6, v6, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v6, v6, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_a7

    .line 3382
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v6, v6, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v6, v6, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3383
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v6, v6, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v6, v6, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 3386
    :cond_a7
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 3388
    if-eqz v2, :cond_cb

    .line 3389
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v6

    if-eqz v6, :cond_39e

    .line 3390
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->addManagedProfileAppsToWorkFolder(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    .line 3391
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v7, v8, v6}, Lcom/android/launcher3/LauncherModel;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 3395
    :goto_c1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3a7

    .line 3400
    :cond_cb
    if-eqz v3, :cond_ef

    .line 3401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v6

    .line 3403
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3b4

    .line 3407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    new-instance v7, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v6, v3}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$1;-><init>(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v7}, Lcom/android/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 3418
    :cond_ef
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_fa

    sget-object v2, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    if-eq v5, v2, :cond_164

    .line 3419
    :cond_fa
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 3420
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 3421
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 3423
    sget-object v16, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v16

    .line 3424
    :try_start_10c
    sget-object v2, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_112
    :goto_112
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3c1

    .line 3423
    monitor-exit v16
    :try_end_119
    .catchall {:try_start_10c .. :try_end_119} :catchall_46f

    .line 3518
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_125

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_146

    .line 3519
    :cond_125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v2

    .line 3520
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v3, v3, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    new-instance v4, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2, v13, v14}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$2;-><init>(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 3530
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_146

    .line 3531
    invoke-static {v8, v14}, Lcom/android/launcher3/LauncherModel;->deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 3534
    :cond_146
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_164

    .line 3535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v2

    .line 3536
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v3, v3, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    new-instance v4, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2, v15}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$3;-><init>(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 3547
    :cond_164
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 3548
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 3549
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_526

    .line 3551
    invoke-static {v3, v9}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3565
    :cond_178
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_184

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b7

    .line 3566
    :cond_184
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_188
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_55a

    .line 3569
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_192
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_569

    .line 3573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-static {v8, v3, v2}, Lcom/android/launcher3/InstallShortcutReceiver;->removeFromInstallQueue(Landroid/content/Context;Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 3576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v2

    .line 3577
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v5, v5, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    new-instance v6, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v2, v3, v4}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$4;-><init>(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/HashSet;Ljava/util/HashSet;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 3588
    :cond_1b7
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d5

    .line 3590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v2

    .line 3591
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v3, v3, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    new-instance v4, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2, v11}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$5;-><init>(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 3602
    :cond_1d5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v3

    .line 3603
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v2, v5, :cond_580

    const/4 v2, 0x1

    :goto_1e8
    invoke-virtual {v4, v8, v3, v2}, Lcom/android/launcher3/LauncherModel;->loadAndBindWidgetsAndShortcuts(Landroid/content/Context;Lcom/android/launcher3/LauncherModel$Callbacks;Z)V

    .line 3606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    new-instance v3, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$6;-><init>(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    .line 3303
    :pswitch_1fd
    const/4 v4, 0x0

    :goto_1fe
    if-lt v4, v10, :cond_215

    .line 3311
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-static {v8, v4}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->get(Landroid/content/Context;Lcom/android/launcher3/compat/UserHandleCompat;)Lcom/android/launcher3/util/ManagedProfileHeuristic;

    move-result-object v4

    .line 3312
    if-eqz v4, :cond_2e

    .line 3313
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->processPackageAdd([Ljava/lang/String;)[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v2

    .line 3315
    goto/16 :goto_30

    .line 3304
    :cond_215
    sget-boolean v5, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v5, :cond_22f

    .line 3305
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mAllAppsList.addPackage "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v9, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    :cond_22f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v5, v5, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/IconCache;

    aget-object v6, v9, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/IconCache;->updateIconsForPkg(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 3308
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v5, v5, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    aget-object v6, v9, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/launcher3/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 3303
    add-int/lit8 v4, v4, 0x1

    goto :goto_1fe

    .line 3318
    :pswitch_250
    const/4 v2, 0x0

    :goto_251
    if-lt v2, v10, :cond_25c

    .line 3325
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v2

    move-object v4, v3

    move-object v5, v2

    .line 3326
    goto/16 :goto_30

    .line 3319
    :cond_25c
    sget-boolean v4, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v4, :cond_276

    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mAllAppsList.updatePackage "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v9, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3320
    :cond_276
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/IconCache;

    aget-object v5, v9, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/IconCache;->updateIconsForPkg(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 3321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    aget-object v5, v9, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v4, v8, v5, v6}, Lcom/android/launcher3/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 3322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v4

    aget-object v5, v9, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 3318
    add-int/lit8 v2, v2, 0x1

    goto :goto_251

    .line 3328
    :pswitch_2aa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-static {v8, v2}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->get(Landroid/content/Context;Lcom/android/launcher3/compat/UserHandleCompat;)Lcom/android/launcher3/util/ManagedProfileHeuristic;

    move-result-object v2

    .line 3329
    if-eqz v2, :cond_2bb

    .line 3330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->processPackageRemoved([Ljava/lang/String;)V

    .line 3332
    :cond_2bb
    const/4 v2, 0x0

    :goto_2bc
    if-lt v2, v10, :cond_2ca

    .line 3340
    :pswitch_2be
    const/4 v2, 0x0

    :goto_2bf
    if-lt v2, v10, :cond_305

    .line 3347
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v2

    move-object v4, v3

    move-object v5, v2

    .line 3348
    goto/16 :goto_30

    .line 3333
    :cond_2ca
    sget-boolean v4, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v4, :cond_2e4

    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mAllAppsList.removePackage "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v9, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3334
    :cond_2e4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/IconCache;

    aget-object v5, v9, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/IconCache;->removeIconsForPkg(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 3335
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    aget-object v5, v9, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/AllAppsList;->removePackage(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 3332
    add-int/lit8 v2, v2, 0x1

    goto :goto_2bc

    .line 3341
    :cond_305
    sget-boolean v4, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v4, :cond_31f

    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mAllAppsList.removePackage "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v9, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3345
    :cond_31f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v4

    aget-object v5, v9, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 3340
    add-int/lit8 v2, v2, 0x1

    goto :goto_2bf

    .line 3351
    :pswitch_335
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_36a

    .line 3352
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v2

    .line 3354
    :goto_341
    sget-boolean v4, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v4, :cond_359

    .line 3355
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mAllAppsList.(un)suspend "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    :cond_359
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v4, v3, v5, v2}, Lcom/android/launcher3/AllAppsList;->updatePackageFlags(Lcom/android/launcher3/util/StringFilter;Lcom/android/launcher3/compat/UserHandleCompat;Lcom/android/launcher3/util/FlagOp;)V

    move-object v4, v3

    move-object v5, v2

    .line 3358
    goto/16 :goto_30

    .line 3353
    :cond_36a
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v2

    goto :goto_341

    .line 3360
    :pswitch_370
    invoke-static {v8}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/compat/UserManagerCompat;->isQuietModeEnabled(Lcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v2

    if-eqz v2, :cond_397

    .line 3361
    const/16 v2, 0x8

    invoke-static {v2}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v2

    .line 3364
    :goto_384
    invoke-static {}, Lcom/android/launcher3/util/StringFilter;->matchesAll()Lcom/android/launcher3/util/StringFilter;

    move-result-object v3

    .line 3365
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v4, v3, v5, v2}, Lcom/android/launcher3/AllAppsList;->updatePackageFlags(Lcom/android/launcher3/util/StringFilter;Lcom/android/launcher3/compat/UserHandleCompat;Lcom/android/launcher3/util/FlagOp;)V

    goto/16 :goto_2e

    .line 3362
    :cond_397
    const/16 v2, 0x8

    invoke-static {v2}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v2

    goto :goto_384

    .line 3393
    :cond_39e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v6, v8, v2}, Lcom/android/launcher3/LauncherModel;->addAppsToAllApps(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto/16 :goto_c1

    .line 3395
    :cond_3a7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/AppInfo;

    .line 3396
    iget-object v7, v2, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v12, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c5

    .line 3403
    :cond_3b4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/AppInfo;

    .line 3404
    iget-object v13, v2, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v12, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d9

    .line 3424
    :cond_3c1
    :try_start_3c1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ItemInfo;

    .line 3425
    instance-of v3, v2, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v3, :cond_4ec

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    iget-object v6, v2, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v3, v6}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4ec

    .line 3426
    check-cast v2, Lcom/android/launcher3/ShortcutInfo;

    .line 3427
    const/4 v7, 0x0

    .line 3428
    const/4 v6, 0x0

    .line 3431
    iget-object v3, v2, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v3, :cond_406

    .line 3432
    iget-object v3, v2, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/util/StringFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_406

    .line 3434
    iget-object v3, v2, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 3435
    iget-object v0, v2, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 3433
    move-object/from16 v0, v18

    invoke-static {v3, v0, v8}, Lcom/android/launcher3/Utilities;->createIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3436
    if-eqz v3, :cond_406

    .line 3437
    invoke-virtual {v2, v3}, Lcom/android/launcher3/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 3438
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/launcher3/ShortcutInfo;->usingFallbackIcon:Z

    .line 3439
    const/4 v7, 0x1

    .line 3443
    :cond_406
    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v18

    .line 3444
    if-eqz v18, :cond_583

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/launcher3/util/StringFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_583

    .line 3445
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/AppInfo;

    .line 3447
    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v19

    if-eqz v19, :cond_496

    .line 3448
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v7

    if-eqz v7, :cond_474

    .line 3450
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 3452
    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3453
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v19

    const-string v20, "android.intent.category.LAUNCHER"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    .line 3454
    const/high16 v20, 0x10000

    .line 3451
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v19

    .line 3455
    if-nez v19, :cond_474

    .line 3458
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    .line 3457
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 3459
    if-eqz v7, :cond_466

    .line 3460
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 3461
    invoke-virtual {v12, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/AppInfo;

    .line 3464
    :cond_466
    if-eqz v7, :cond_46a

    if-nez v3, :cond_472

    .line 3465
    :cond_46a
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_112

    .line 3423
    :catchall_46f
    move-exception v2

    monitor-exit v16
    :try_end_471
    .catchall {:try_start_3c1 .. :try_end_471} :catchall_46f

    throw v2

    .line 3468
    :cond_472
    :try_start_472
    iput-object v7, v2, Lcom/android/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    .line 3473
    :cond_474
    if-eqz v3, :cond_47a

    .line 3474
    iget v7, v3, Lcom/android/launcher3/AppInfo;->flags:I

    iput v7, v2, Lcom/android/launcher3/ShortcutInfo;->flags:I

    .line 3477
    :cond_47a
    iget-object v7, v2, Lcom/android/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    iput-object v7, v2, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 3478
    const/4 v7, 0x0

    iput-object v7, v2, Lcom/android/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    .line 3479
    const/4 v7, 0x0

    iput v7, v2, Lcom/android/launcher3/ShortcutInfo;->status:I

    .line 3480
    const/4 v7, 0x1

    .line 3481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/IconCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/launcher3/ShortcutInfo;->updateIcon(Lcom/android/launcher3/IconCache;)V

    .line 3484
    :cond_496
    if-eqz v3, :cond_4c4

    const-string v18, "android.intent.action.MAIN"

    iget-object v0, v2, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4c4

    .line 3485
    iget v0, v2, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    move/from16 v18, v0

    if-nez v18, :cond_4c4

    .line 3486
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v7, v7, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v2, v7}, Lcom/android/launcher3/ShortcutInfo;->updateIcon(Lcom/android/launcher3/IconCache;)V

    .line 3487
    iget-object v7, v3, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v7}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 3488
    iget-object v3, v3, Lcom/android/launcher3/AppInfo;->contentDescription:Ljava/lang/CharSequence;

    iput-object v3, v2, Lcom/android/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 3489
    const/4 v7, 0x1

    .line 3492
    :cond_4c4
    iget v3, v2, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 3493
    iget v0, v2, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v2, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 3494
    iget v0, v2, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v3, :cond_583

    .line 3495
    const/4 v3, 0x1

    move v6, v7

    .line 3499
    :goto_4de
    if-nez v6, :cond_4e2

    if-eqz v3, :cond_4e5

    .line 3500
    :cond_4e2
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3502
    :cond_4e5
    if-eqz v6, :cond_112

    .line 3503
    invoke-static {v8, v2}, Lcom/android/launcher3/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;)V

    goto/16 :goto_112

    .line 3505
    :cond_4ec
    instance-of v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v3, :cond_112

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_112

    .line 3506
    check-cast v2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 3507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    iget-object v6, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v3, v6}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_112

    .line 3508
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v3

    if-eqz v3, :cond_112

    .line 3509
    iget-object v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/launcher3/util/StringFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_112

    .line 3510
    iget v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v3, v3, -0x3

    iput v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 3511
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3512
    invoke-static {v8, v2}, Lcom/android/launcher3/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;)V
    :try_end_524
    .catchall {:try_start_472 .. :try_end_524} :catchall_46f

    goto/16 :goto_112

    .line 3552
    :cond_526
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_178

    .line 3554
    const/4 v2, 0x0

    :goto_52e
    if-lt v2, v10, :cond_546

    .line 3560
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_534
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_178

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/AppInfo;

    .line 3561
    iget-object v2, v2, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_534

    .line 3555
    :cond_546
    aget-object v5, v9, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-static {v8, v5, v6}, Lcom/android/launcher3/LauncherModel;->isPackageDisabled(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v5

    if-eqz v5, :cond_557

    .line 3556
    aget-object v5, v9, v2

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3554
    :cond_557
    add-int/lit8 v2, v2, 0x1

    goto :goto_52e

    .line 3566
    :cond_55a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3567
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-static {v8, v2, v6}, Lcom/android/launcher3/LauncherModel;->deletePackageFromDatabase(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    goto/16 :goto_188

    .line 3569
    :cond_569
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3570
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v6, v2, v7}, Lcom/android/launcher3/LauncherModel;->getItemInfoForComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/android/launcher3/LauncherModel;->deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto/16 :goto_192

    .line 3603
    :cond_580
    const/4 v2, 0x0

    goto/16 :goto_1e8

    :cond_583
    move v3, v6

    move v6, v7

    goto/16 :goto_4de

    .line 3301
    nop

    :pswitch_data_588
    .packed-switch 0x1
        :pswitch_1fd
        :pswitch_250
        :pswitch_2aa
        :pswitch_2be
        :pswitch_335
        :pswitch_335
        :pswitch_370
    .end packed-switch
.end method

.method private static final run_aroundBody1$advice(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherModelAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 12

    .prologue
    const/4 v6, 0x0

    .line 150
    invoke-interface {p4}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    .line 152
    sget-object v1, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->TAG:Ljava/lang/String;

    const-string v2, "PackageUpdatedTask.run() : Op{%s}, Package{%s}, %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 153
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->ajc$get$mOp(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->getPackageUpdateOpToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->ajc$get$mPackages(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->ajc$get$mUser(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    aput-object v0, v3, v4

    .line 152
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x0

    invoke-static {v0, v6}, Lcom/lge/launcher3/memory/MemoryUtils;->hasAvailableFileSystemMemory(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_40

    .line 156
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->TAG:Ljava/lang/String;

    .line 157
    const-string v1, "Memory is full. so PackageUpdatedTask.run() is canceled."

    .line 156
    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_3f
    return-void

    .line 161
    :cond_40
    invoke-static {p0, p1}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->run_aroundBody0(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;Lorg/aspectj/lang/JoinPoint;)V

    goto :goto_3f
.end method


# virtual methods
.method public addManagedProfileAppsToWorkFolder(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3619
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3643
    :cond_6
    :goto_6
    return-object p2

    .line 3623
    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-static {p1, v0}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->get(Landroid/content/Context;Lcom/android/launcher3/compat/UserHandleCompat;)Lcom/android/launcher3/util/ManagedProfileHeuristic;

    move-result-object v0

    .line 3624
    if-eqz v0, :cond_6

    .line 3628
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3630
    new-instance v3, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3631
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->processPackageAdd([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3632
    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_28
    if-lt v2, v5, :cond_2c

    move-object p2, v1

    .line 3643
    goto :goto_6

    .line 3632
    :cond_2c
    aget-object v6, v4, v2

    .line 3633
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 3634
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_38
    :goto_38
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_42

    .line 3632
    :cond_3e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_28

    .line 3634
    :cond_42
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 3635
    iget-object v8, v0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 3636
    iget-object v8, v0, Lcom/android/launcher3/AppInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    iget-object v9, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 3637
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_38
.end method

.method public run()V
    .registers 4

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherModelAspect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v0}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->run_aroundBody1$advice(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherModelAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method
