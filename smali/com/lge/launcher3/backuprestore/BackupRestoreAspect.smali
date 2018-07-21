.class public Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;
.super Ljava/lang/Object;
.source "BackupRestoreAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;


# instance fields
.field private mPreferredIndex:I

.field private mRestored:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    :try_start_0
    new-instance v0, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect$BackupRestoreAspect$1;

    invoke-direct {v0}, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect$BackupRestoreAspect$1;-><init>()V

    sput-object v0, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {}, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->ajc$postClinit()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    .line 45
    :goto_a
    return-void

    .line 30
    :catch_b
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->mRestored:Z

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->mPreferredIndex:I

    .line 19
    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_backuprestore_BackupRestoreAspect$3$6e9f9d0dproceed(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IILorg/aspectj/runtime/internal/AroundClosure;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p4}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p5, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_launcher3_backuprestore_BackupRestoreAspect$com_lge_launcher3_backuprestore_BackupRestoreAspect$mPreferredIndex(Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->mPreferredIndex:I

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_launcher3_backuprestore_BackupRestoreAspect$com_lge_launcher3_backuprestore_BackupRestoreAspect$mRestored(Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->mRestored:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_launcher3_backuprestore_BackupRestoreAspect$com_lge_launcher3_backuprestore_BackupRestoreAspect$mPreferredIndex(Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->mPreferredIndex:I

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_launcher3_backuprestore_BackupRestoreAspect$com_lge_launcher3_backuprestore_BackupRestoreAspect$mRestored(Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->mRestored:Z

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_backuprestore_BackupRestoreAspect$com_android_launcher3_LauncherModel$findSpaceForItem(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;III)Landroid/util/Pair;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherModel;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;III)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v6, Landroid/util/LongSparseArray;

    invoke-direct {v6}, Landroid/util/LongSparseArray;-><init>()V

    .line 69
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->ajc$privMethod$com_lge_launcher3_backuprestore_BackupRestoreAspect$com_android_launcher3_LauncherModel$assertWorkspaceLoaded()V

    .line 70
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->ajc$get$sBgLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 71
    :try_start_d
    sget-object v2, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_13
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7d

    .line 70
    monitor-exit v4
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_a4

    .line 84
    const-wide/16 v4, 0x0

    .line 85
    const/4 v2, 0x2

    new-array v7, v2, [I

    .line 86
    const/4 v3, 0x0

    .line 88
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 90
    move/from16 v0, p6

    if-ge v0, v8, :cond_42

    .line 91
    move/from16 v0, p6

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 92
    invoke-virtual {v6, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v2, v7, v0, v1}, Lcom/android/launcher3/LauncherModel;->ajc$privMethod$com_lge_launcher3_backuprestore_BackupRestoreAspect$com_android_launcher3_LauncherModel$findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;[III)Z

    move-result v3

    .line 96
    :cond_42
    if-nez v3, :cond_48

    .line 98
    :goto_44
    move/from16 v0, p6

    if-lt v0, v8, :cond_a7

    :cond_48
    move v12, v3

    move-wide v2, v4

    move v4, v12

    .line 109
    :goto_4b
    if-nez v4, :cond_cd

    .line 111
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherProvider;->generateNewScreenId()J

    move-result-wide v4

    .line 114
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {v6, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v2, v7, v0, v1}, Lcom/android/launcher3/LauncherModel;->ajc$privMethod$com_lge_launcher3_backuprestore_BackupRestoreAspect$com_android_launcher3_LauncherModel$findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;[III)Z

    move-result v2

    .line 119
    if-nez v2, :cond_cc

    .line 120
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t find space to add the item"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_7d
    :try_start_7d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ItemInfo;

    .line 72
    iget-wide v8, v2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v3, v8, v10

    if-nez v3, :cond_13

    .line 73
    iget-wide v8, v2, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v6, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 74
    if-nez v3, :cond_9f

    .line 75
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iget-wide v8, v2, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v6, v8, v9, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 78
    :cond_9f
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    .line 70
    :catchall_a4
    move-exception v2

    monitor-exit v4
    :try_end_a6
    .catchall {:try_start_7d .. :try_end_a6} :catchall_a4

    throw v2

    .line 99
    :cond_a7
    move/from16 v0, p6

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 100
    invoke-virtual {v6, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v2, v7, v0, v1}, Lcom/android/launcher3/LauncherModel;->ajc$privMethod$com_lge_launcher3_backuprestore_BackupRestoreAspect$com_android_launcher3_LauncherModel$findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;[III)Z

    move-result v2

    .line 101
    if-eqz v2, :cond_c8

    .line 103
    const/4 v2, 0x1

    move v12, v2

    move-wide v2, v4

    move v4, v12

    .line 104
    goto :goto_4b

    .line 98
    :cond_c8
    add-int/lit8 p6, p6, 0x1

    goto/16 :goto_44

    :cond_cc
    move-wide v2, v4

    .line 124
    :cond_cd
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_backuprestore_BackupRestoreAspect$com_android_launcher3_LauncherModel$findSpaceForItem(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;III)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherModel;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;III)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "[I>;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p6}, Lcom/android/launcher3/LauncherModel;->ajc$interMethodDispatch2$com_lge_launcher3_backuprestore$findSpaceForItem(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;III)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private synthetic ajc$pointcut$$onAddAndBindOmittedItems$2f1(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/android/launcher3/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "context,workspaceApps"
        value = "(call(public void com.android.launcher3.LauncherModel.addAndBindAddedWorkspaceItems(android.content.Context, java.util.ArrayList<? extends com.android.launcher3.ItemInfo>)) && (withincode(private void com.android.launcher3.LauncherModel$LoaderTask.verifyApplications(..)) && args(context, workspaceApps)))"
    .end annotation

    .prologue
    .line 28
    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_backuprestore_BackupRestoreAspect"

    sget-object v2, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_backuprestore_BackupRestoreAspect$2$55b09685(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/android/launcher3/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "context,workspaceApps"
        value = "onAddAndBindOmittedItems(context, workspaceApps)"
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 58
    iput-boolean v1, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->mRestored:Z

    .line 60
    sget-object v0, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$BackupRestoreKey;->RESTORED:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$BackupRestoreKey;

    .line 59
    invoke-static {p1, v1, v0, v1}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->putBoolean(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;Z)Z

    .line 61
    return-void
.end method

.method public ajc$around$com_lge_launcher3_backuprestore_BackupRestoreAspect$3$6e9f9d0d(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IILorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/util/Pair;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;II",
            "Lorg/aspectj/runtime/internal/AroundClosure;",
            "Lorg/aspectj/lang/JoinPoint;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "context,workspaceScreens,addedWorkspaceScreensFinal,spanX,spanY,ajc$aroundClosure"
        value = "(call(Pair<(Long, int)> findSpaceForItem(Context, ArrayList<(Long)>, ArrayList<(Long)>, int, int)) && args(context, workspaceScreens, addedWorkspaceScreensFinal, spanX, spanY))"
    .end annotation

    .prologue
    .line 131
    invoke-interface {p7}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel;

    .line 132
    invoke-static {p0}, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_backuprestore_BackupRestoreAspect$com_lge_launcher3_backuprestore_BackupRestoreAspect$mRestored(Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 133
    invoke-static {p0}, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_backuprestore_BackupRestoreAspect$com_lge_launcher3_backuprestore_BackupRestoreAspect$mPreferredIndex(Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    .line 134
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p0, v1}, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->ajc$inlineAccessFieldSet$com_lge_launcher3_backuprestore_BackupRestoreAspect$com_lge_launcher3_backuprestore_BackupRestoreAspect$mPreferredIndex(Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;I)V

    .line 138
    :cond_1a
    invoke-static {p0}, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_backuprestore_BackupRestoreAspect$com_lge_launcher3_backuprestore_BackupRestoreAspect$mPreferredIndex(Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;)I

    move-result v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 137
    invoke-static/range {v0 .. v6}, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->ajc$interMethodDispatch1$com_lge_launcher3_backuprestore_BackupRestoreAspect$com_android_launcher3_LauncherModel$findSpaceForItem(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;III)Landroid/util/Pair;

    move-result-object v0

    .line 140
    :goto_27
    return-object v0

    :cond_28
    invoke-static/range {p1 .. p6}, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->ajc$around$com_lge_launcher3_backuprestore_BackupRestoreAspect$3$6e9f9d0dproceed(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IILorg/aspectj/runtime/internal/AroundClosure;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_27
.end method

.method public ajc$before$com_lge_launcher3_backuprestore_BackupRestoreAspect$1$55b09685(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/android/launcher3/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = "context,workspaceApps"
        value = "onAddAndBindOmittedItems(context, workspaceApps)"
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 50
    sget-object v0, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$BackupRestoreKey;->RESTORED:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$BackupRestoreKey;

    .line 49
    invoke-static {p1, v1, v0, v1}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->getBoolean(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->mRestored:Z

    .line 51
    iget-boolean v0, p0, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->mRestored:Z

    if-eqz v0, :cond_12

    .line 52
    sget-object v0, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 54
    :cond_12
    return-void
.end method
