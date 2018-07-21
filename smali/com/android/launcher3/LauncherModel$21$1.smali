.class Lcom/android/launcher3/LauncherModel$21$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$21;

.field private final synthetic val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$workspaceApps:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/android/launcher3/LauncherModel$21$1;->ajc$preClinit()V

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/LauncherModel$21;Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$21$1;->this$1:Lcom/android/launcher3/LauncherModel$21;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$21$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$21$1;->val$workspaceApps:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/LauncherModel$21$1;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 4114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher3/LauncherModel$21$1;)Lcom/android/launcher3/LauncherModel$21;
    .registers 2

    .prologue
    .line 4114
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$21$1;->this$1:Lcom/android/launcher3/LauncherModel$21;

    return-object v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "LauncherModel.java"

    const-class v2, Lcom/android/launcher3/LauncherModel$21$1;

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

    const/16 v2, 0x1020

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherModel$21$1;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private static final findSpaceForItem_aroundBody0(Lcom/android/launcher3/LauncherModel$21$1;Lcom/android/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IILorg/aspectj/lang/JoinPoint;)Landroid/util/Pair;
    .registers 9

    .prologue
    .line 4128
    invoke-virtual/range {p1 .. p6}, Lcom/android/launcher3/LauncherModel;->findSpaceForItem(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static final findSpaceForItem_aroundBody1$advice(Lcom/android/launcher3/LauncherModel$21$1;Lcom/android/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IILorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/util/Pair;
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

    invoke-static/range {v1 .. v8}, Lcom/android/launcher3/LauncherModel$21$1;->findSpaceForItem_aroundBody0(Lcom/android/launcher3/LauncherModel$21$1;Lcom/android/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IILorg/aspectj/lang/JoinPoint;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_2e
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 4118
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 4119
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$21$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    .line 4125
    sget-object v20, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v20

    .line 4126
    :try_start_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$21$1;->val$workspaceApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1d
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 4125
    monitor-exit v20
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_bc

    .line 4142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$21$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 4144
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_49

    .line 4145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$21$1;->this$1:Lcom/android/launcher3/LauncherModel$21;

    invoke-static {v2}, Lcom/android/launcher3/LauncherModel$21;->access$0(Lcom/android/launcher3/LauncherModel$21;)Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/LauncherModel$21$1$1;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherModel$21$1;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v4, v6, v1}, Lcom/android/launcher3/LauncherModel$21$1$1;-><init>(Lcom/android/launcher3/LauncherModel$21$1;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 4155
    :cond_49
    return-void

    .line 4126
    :cond_4a
    :try_start_4a
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    move-object/from16 v18, v0

    .line 4128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$21$1;->this$1:Lcom/android/launcher3/LauncherModel$21;

    invoke-static {v2}, Lcom/android/launcher3/LauncherModel$21;->access$0(Lcom/android/launcher3/LauncherModel$21;)Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherModel$21$1;->val$context:Landroid/content/Context;

    .line 4129
    const/4 v7, 0x1

    const/4 v8, 0x1

    sget-object v2, Lcom/android/launcher3/LauncherModel$21$1;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

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

    invoke-static/range {v2 .. v17}, Lcom/android/launcher3/LauncherModel$21$1;->findSpaceForItem_aroundBody1$advice(Lcom/android/launcher3/LauncherModel$21$1;Lcom/android/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IILorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/util/Pair;

    move-result-object v3

    .line 4130
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 4131
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [I

    .line 4134
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/LauncherModel$21$1;->val$context:Landroid/content/Context;

    .line 4135
    const-wide/16 v10, -0x64

    .line 4136
    const/4 v3, 0x0

    aget v14, v2, v3

    const/4 v3, 0x1

    aget v15, v2, v3

    move-object/from16 v9, v18

    .line 4134
    invoke-static/range {v8 .. v15}, Lcom/android/launcher3/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V

    .line 4137
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1d

    .line 4125
    :catchall_bc
    move-exception v2

    monitor-exit v20
    :try_end_be
    .catchall {:try_start_4a .. :try_end_be} :catchall_bc

    throw v2
.end method
