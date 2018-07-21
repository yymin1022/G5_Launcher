.class Lcom/android/launcher3/LauncherModel$4;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field private final synthetic val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$workspaceApps:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/android/launcher3/LauncherModel$4;->ajc$preClinit()V

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$4;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$4;->val$workspaceApps:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/LauncherModel$4;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher3/LauncherModel$4;)Lcom/android/launcher3/LauncherModel;
    .registers 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$4;->this$0:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "LauncherModel.java"

    const-class v2, Lcom/android/launcher3/LauncherModel$4;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-call"

    const-string v1, "0"

    const-string v2, "findSpaceForItem"

    const-string v3, "com.android.launcher3.LauncherModel"

    const-string v4, "android.content.Context:java.util.ArrayList:java.util.ArrayList:int:int"

    const-string v5, "context:workspaceScreens:addedWorkspaceScreensFinal:spanX:spanY"

    const-string v6, ""

    const-string v7, "android.util.Pair"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x237

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherModel$4;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private static final findSpaceForItem_aroundBody0(Lcom/android/launcher3/LauncherModel$4;Lcom/android/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IILorg/aspectj/lang/JoinPoint;)Landroid/util/Pair;
    .registers 9

    .prologue
    .line 567
    invoke-virtual/range {p1 .. p6}, Lcom/android/launcher3/LauncherModel;->findSpaceForItem(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static final findSpaceForItem_aroundBody1$advice(Lcom/android/launcher3/LauncherModel$4;Lcom/android/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IILorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/util/Pair;
    .registers 25

    .prologue
    .line 131
    invoke-interface/range {p15 .. p15}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherModel;

    .line 132
    invoke-static/range {p8 .. p8}, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_backuprestore_BackupRestoreAspect$com_lge_launcher3_backuprestore_BackupRestoreAspect$mRestored(Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 133
    invoke-static/range {p8 .. p8}, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_backuprestore_BackupRestoreAspect$com_lge_launcher3_backuprestore_BackupRestoreAspect$mPreferredIndex(Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1c

    .line 134
    invoke-virtual/range {p10 .. p10}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p8

    invoke-static {v0, v2}, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->ajc$inlineAccessFieldSet$com_lge_launcher3_backuprestore_BackupRestoreAspect$com_lge_launcher3_backuprestore_BackupRestoreAspect$mPreferredIndex(Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;I)V

    .line 138
    :cond_1c
    invoke-static/range {p8 .. p8}, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_backuprestore_BackupRestoreAspect$com_lge_launcher3_backuprestore_BackupRestoreAspect$mPreferredIndex(Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;)I

    move-result v7

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-object/from16 v4, p11

    move/from16 v5, p12

    move/from16 v6, p13

    .line 137
    invoke-static/range {v1 .. v7}, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->ajc$interMethodDispatch1$com_lge_launcher3_backuprestore_BackupRestoreAspect$com_android_launcher3_LauncherModel$findSpaceForItem(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;III)Landroid/util/Pair;

    move-result-object v1

    .line 140
    :goto_2e
    return-object v1

    :cond_2f
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move/from16 v6, p12

    move/from16 v7, p13

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lcom/android/launcher3/LauncherModel$4;->findSpaceForItem_aroundBody0(Lcom/android/launcher3/LauncherModel$4;Lcom/android/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IILorg/aspectj/lang/JoinPoint;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_2e
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 542
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 543
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$4;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    .line 549
    sget-object v20, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v20

    .line 550
    :try_start_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$4;->val$workspaceApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1d
    :goto_1d
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_46

    .line 549
    monitor-exit v20
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_a5

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$4;->val$context:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 594
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_45

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$4;->this$0:Lcom/android/launcher3/LauncherModel;

    new-instance v3, Lcom/android/launcher3/LauncherModel$4$1;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherModel$4;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v4, v1, v6}, Lcom/android/launcher3/LauncherModel$4$1;-><init>(Lcom/android/launcher3/LauncherModel$4;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 618
    :cond_45
    return-void

    .line 550
    :cond_46
    :try_start_46
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    move-object/from16 v18, v0

    .line 552
    move-object/from16 v0, v18

    instance-of v2, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v2, :cond_6b

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$4;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/LauncherModel$4;->val$context:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/launcher3/LauncherModel;->shortcutExists(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 559
    :cond_6b
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v2

    if-eqz v2, :cond_a8

    move-object/from16 v0, v18

    instance-of v2, v0, Lcom/android/launcher3/AppInfo;

    if-eqz v2, :cond_a8

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$4;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/LauncherModel$4;->val$context:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/launcher3/LauncherModel;->shortcutExists(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 561
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Shortcut exist: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 549
    :catchall_a5
    move-exception v2

    monitor-exit v20
    :try_end_a7
    .catchall {:try_start_46 .. :try_end_a7} :catchall_a5

    throw v2

    .line 567
    :cond_a8
    :try_start_a8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/LauncherModel$4;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherModel$4;->val$context:Landroid/content/Context;

    .line 569
    const/4 v7, 0x1

    const/4 v8, 0x1

    sget-object v2, Lcom/android/launcher3/LauncherModel$4;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    const/4 v10, 0x2

    aput-object v6, v9, v10

    const/4 v10, 0x3

    invoke-static {v7}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static {v8}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v0, p0

    invoke-static {v2, v0, v3, v9}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v9

    invoke-static {}, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->aspectOf()Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;

    move-result-object v10

    const/16 v16, 0x0

    move-object/from16 v2, p0

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    move v14, v7

    move v15, v8

    move-object/from16 v17, v9

    invoke-static/range {v2 .. v17}, Lcom/android/launcher3/LauncherModel$4;->findSpaceForItem_aroundBody1$advice(Lcom/android/launcher3/LauncherModel$4;Lcom/android/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IILorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/util/Pair;

    move-result-object v3

    .line 570
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 571
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [I

    .line 574
    move-object/from16 v0, v18

    instance-of v3, v0, Lcom/android/launcher3/ShortcutInfo;

    if-nez v3, :cond_ff

    move-object/from16 v0, v18

    instance-of v3, v0, Lcom/android/launcher3/FolderInfo;

    if-eqz v3, :cond_117

    :cond_ff
    move-object/from16 v9, v18

    .line 583
    :goto_101
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/LauncherModel$4;->val$context:Landroid/content/Context;

    .line 584
    const-wide/16 v10, -0x64

    .line 585
    const/4 v3, 0x0

    aget v14, v2, v3

    const/4 v3, 0x1

    aget v15, v2, v3

    .line 583
    invoke-static/range {v8 .. v15}, Lcom/android/launcher3/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V

    .line 587
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1d

    .line 576
    :cond_117
    move-object/from16 v0, v18

    instance-of v3, v0, Lcom/android/launcher3/AppInfo;

    if-eqz v3, :cond_124

    .line 577
    check-cast v18, Lcom/android/launcher3/AppInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/AppInfo;->makeShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v9

    goto :goto_101

    .line 579
    :cond_124
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unexpected info type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_12c
    .catchall {:try_start_a8 .. :try_end_12c} :catchall_a5
.end method
