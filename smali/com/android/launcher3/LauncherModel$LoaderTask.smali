.class public Lcom/android/launcher3/LauncherModel$LoaderTask;
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
    name = "LoaderTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field mIsLoadingAndBindingWorkspace:Z

.field mLoadAndBindStepFinished:Z

.field private mStopped:Z

.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 1615
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1616
    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1617
    iput p3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mFlags:I

    .line 1618
    return-void
.end method

.method private bindWorkspace(I)V
    .registers 36

    .prologue
    .line 2869
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    .line 2874
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 2875
    if-nez v25, :cond_1a

    .line 2877
    const-string v4, "Launcher.Model"

    const-string v5, "LoaderTask running with no launcher"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    :goto_19
    return-void

    .line 2882
    :cond_1a
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2884
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2885
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 2890
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2891
    :try_start_2c
    sget-object v4, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2892
    sget-object v4, Lcom/android/launcher3/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2893
    sget-object v4, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2895
    sget-object v4, Lcom/android/launcher3/LauncherModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->clone()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v21

    .line 2896
    sget-object v4, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->clone()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v20

    .line 2890
    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_2c .. :try_end_4a} :catchall_111

    .line 2900
    const/16 v4, -0x3e9

    move/from16 v0, p1

    if-eq v0, v4, :cond_114

    const/4 v4, 0x1

    move/from16 v30, v4

    .line 2901
    :goto_53
    if-eqz v30, :cond_119

    .line 2903
    :goto_55
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, p1

    if-lt v0, v4, :cond_5f

    .line 2905
    const/16 p1, -0x3e9

    .line 2908
    :cond_5f
    if-gez p1, :cond_11f

    .line 2909
    const-wide/16 v6, -0x1

    .line 2913
    :goto_63
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->unbindWorkspaceItemsOnMainThread()V

    .line 2916
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2917
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2919
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2921
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2922
    new-instance v22, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct/range {v22 .. v22}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 2923
    new-instance v23, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct/range {v23 .. v23}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    move-object/from16 v5, p0

    .line 2925
    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/LauncherModel$LoaderTask;->filterCurrentWorkspaceItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v11, p0

    move-wide v12, v6

    .line 2927
    invoke-direct/range {v11 .. v16}, Lcom/android/launcher3/LauncherModel$LoaderTask;->filterCurrentAppWidgets(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v17, p0

    move-wide/from16 v18, v6

    .line 2929
    invoke-direct/range {v17 .. v23}, Lcom/android/launcher3/LauncherModel$LoaderTask;->filterCurrentFolders(JLcom/android/launcher3/util/LongArrayMap;Lcom/android/launcher3/util/LongArrayMap;Lcom/android/launcher3/util/LongArrayMap;Lcom/android/launcher3/util/LongArrayMap;)V

    .line 2931
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/launcher3/LauncherModel$LoaderTask;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V

    .line 2932
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/launcher3/LauncherModel$LoaderTask;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V

    .line 2935
    new-instance v4, Lcom/android/launcher3/LauncherModel$LoaderTask$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v4, v0, v1}, Lcom/android/launcher3/LauncherModel$LoaderTask$8;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;)V

    .line 2943
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 2945
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/LauncherModel$LoaderTask;->bindWorkspaceScreens(Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    .line 2949
    const/16 v29, 0x0

    move-object/from16 v24, p0

    move-object/from16 v26, v9

    move-object/from16 v27, v15

    move-object/from16 v28, v22

    .line 2948
    invoke-direct/range {v24 .. v29}, Lcom/android/launcher3/LauncherModel$LoaderTask;->bindWorkspaceItems(Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/util/LongArrayMap;Ljava/util/ArrayList;)V

    .line 2950
    if-eqz v30, :cond_de

    .line 2951
    new-instance v4, Lcom/android/launcher3/LauncherModel$LoaderTask$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, p1

    invoke-direct {v4, v0, v1, v2}, Lcom/android/launcher3/LauncherModel$LoaderTask$9;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;I)V

    .line 2959
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 2964
    :cond_de
    sget-object v5, Lcom/android/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    monitor-enter v5

    .line 2965
    :try_start_e1
    sget-object v4, Lcom/android/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2964
    monitor-exit v5
    :try_end_e7
    .catchall {:try_start_e1 .. :try_end_e7} :catchall_12f

    .line 2968
    if-eqz v30, :cond_132

    sget-object v29, Lcom/android/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    :goto_eb
    move-object/from16 v24, p0

    move-object/from16 v26, v10

    move-object/from16 v27, v16

    move-object/from16 v28, v23

    .line 2967
    invoke-direct/range {v24 .. v29}, Lcom/android/launcher3/LauncherModel$LoaderTask;->bindWorkspaceItems(Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/util/LongArrayMap;Ljava/util/ArrayList;)V

    .line 2971
    new-instance v4, Lcom/android/launcher3/LauncherModel$LoaderTask$10;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v32

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/launcher3/LauncherModel$LoaderTask$10;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;J)V

    .line 2987
    if-eqz v30, :cond_135

    .line 2988
    sget-object v5, Lcom/android/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    monitor-enter v5

    .line 2989
    :try_start_106
    sget-object v6, Lcom/android/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2988
    monitor-exit v5

    goto/16 :goto_19

    :catchall_10e
    move-exception v4

    monitor-exit v5
    :try_end_110
    .catchall {:try_start_106 .. :try_end_110} :catchall_10e

    throw v4

    .line 2890
    :catchall_111
    move-exception v4

    :try_start_112
    monitor-exit v5
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_111

    throw v4

    .line 2900
    :cond_114
    const/4 v4, 0x0

    move/from16 v30, v4

    goto/16 :goto_53

    .line 2902
    :cond_119
    invoke-interface/range {v25 .. v25}, Lcom/android/launcher3/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result p1

    goto/16 :goto_55

    .line 2909
    :cond_11f
    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto/16 :goto_63

    .line 2964
    :catchall_12f
    move-exception v4

    :try_start_130
    monitor-exit v5
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_12f

    throw v4

    .line 2968
    :cond_132
    const/16 v29, 0x0

    goto :goto_eb

    .line 2992
    :cond_135
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto/16 :goto_19
.end method

.method private bindWorkspaceItems(Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/util/LongArrayMap;Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherModel$Callbacks;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/LauncherAppWidgetInfo;",
            ">;",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/FolderInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2801
    if-eqz p5, :cond_25

    const/4 v0, 0x1

    move v6, v0

    .line 2804
    :goto_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v4, v7

    .line 2805
    :goto_a
    if-lt v4, v8, :cond_27

    .line 2827
    invoke-virtual {p4}, Lcom/android/launcher3/util/LongArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2828
    new-instance v0, Lcom/android/launcher3/LauncherModel$LoaderTask$6;

    invoke-direct {v0, p0, p1, p4}, Lcom/android/launcher3/LauncherModel$LoaderTask$6;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;Lcom/android/launcher3/util/LongArrayMap;)V

    .line 2836
    if-eqz v6, :cond_4d

    .line 2837
    monitor-enter p5

    .line 2838
    :try_start_1a
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2837
    monitor-exit p5
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_4a

    .line 2846
    :cond_1e
    :goto_1e
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2847
    :goto_22
    if-lt v7, v1, :cond_53

    .line 2863
    return-void

    :cond_25
    move v6, v7

    .line 2801
    goto :goto_5

    .line 2807
    :cond_27
    add-int/lit8 v0, v4, 0x6

    if-gt v0, v8, :cond_3e

    const/4 v5, 0x6

    .line 2808
    :goto_2c
    new-instance v0, Lcom/android/launcher3/LauncherModel$LoaderTask$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/LauncherModel$LoaderTask$5;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;II)V

    .line 2817
    if-eqz v6, :cond_44

    .line 2818
    monitor-enter p5

    .line 2819
    :try_start_37
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2818
    monitor-exit p5

    .line 2805
    :goto_3b
    add-int/lit8 v4, v4, 0x6

    goto :goto_a

    .line 2807
    :cond_3e
    sub-int v5, v8, v4

    goto :goto_2c

    .line 2818
    :catchall_41
    move-exception v0

    monitor-exit p5
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_41

    throw v0

    .line 2822
    :cond_44
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_3b

    .line 2837
    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit p5
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0

    .line 2841
    :cond_4d
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_1e

    .line 2848
    :cond_53
    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 2849
    new-instance v2, Lcom/android/launcher3/LauncherModel$LoaderTask$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/LauncherModel$LoaderTask$7;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 2857
    if-eqz v6, :cond_66

    .line 2858
    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2847
    :goto_63
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    .line 2860
    :cond_66
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_63
.end method

.method private bindWorkspaceScreens(Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherModel$Callbacks;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2783
    new-instance v0, Lcom/android/launcher3/LauncherModel$LoaderTask$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/LauncherModel$LoaderTask$4;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    .line 2792
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 2793
    return-void
.end method

.method private checkItemPlacement(Lcom/android/launcher3/util/LongArrayMap;Lcom/android/launcher3/ItemInfo;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<[[",
            "Lcom/android/launcher3/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/ItemInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1878
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 1879
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    .line 1880
    iget v2, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 1881
    iget v3, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 1883
    iget-wide v4, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 1884
    iget-wide v6, p2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v0, v6, v8

    if-nez v0, :cond_143

    .line 1886
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2f

    .line 1887
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$Callbacks;

    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    long-to-int v2, v2

    invoke-interface {v0, v2}, Lcom/android/launcher3/LauncherModel$Callbacks;->isAllAppsButtonRank(I)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1888
    :cond_2f
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error loading shortcut into hotseat "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1889
    const-string v2, " into position ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1890
    iget v2, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") occupied by all apps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1888
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    const/4 v0, 0x0

    .line 1963
    :goto_6e
    return v0

    .line 1895
    :cond_6f
    const-wide/16 v2, -0x65

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/android/launcher3/ItemInfo;

    .line 1897
    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    long-to-float v2, v2

    iget v3, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_b7

    .line 1898
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error loading shortcut "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1899
    const-string v3, " into hotseat position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1900
    const-string v3, ", position out of bounds: (0 to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1901
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1898
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    const/4 v0, 0x0

    goto :goto_6e

    .line 1905
    :cond_b7
    if-eqz v0, :cond_123

    .line 1906
    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    long-to-int v1, v2

    aget-object v1, v0, v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_118

    .line 1907
    const-string v1, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error loading shortcut into hotseat "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1908
    const-string v2, " into position ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1909
    iget v2, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") occupied by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1910
    const-wide/16 v4, -0x65

    invoke-virtual {p1, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/android/launcher3/ItemInfo;

    .line 1911
    iget-wide v4, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    long-to-int v3, v4

    .line 1910
    aget-object v0, v0, v3

    .line 1911
    const/4 v3, 0x0

    .line 1910
    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1907
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    const/4 v0, 0x0

    goto/16 :goto_6e

    .line 1914
    :cond_118
    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    long-to-int v1, v2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 1915
    const/4 v0, 0x1

    goto/16 :goto_6e

    .line 1918
    :cond_123
    iget v0, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:F

    float-to-int v0, v0

    const/4 v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/android/launcher3/ItemInfo;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/android/launcher3/ItemInfo;

    .line 1919
    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    long-to-int v1, v2

    aget-object v1, v0, v1

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 1920
    const-wide/16 v2, -0x65

    invoke-virtual {p1, v2, v3, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 1921
    const/4 v0, 0x1

    goto/16 :goto_6e

    .line 1923
    :cond_143
    iget-wide v0, p2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v0, v0, v6

    if-eqz v0, :cond_14e

    .line 1925
    const/4 v0, 0x1

    goto/16 :goto_6e

    .line 1928
    :cond_14e
    iget-wide v0, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v0

    if-nez v0, :cond_16b

    .line 1929
    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v1, v3, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/android/launcher3/ItemInfo;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/android/launcher3/ItemInfo;

    .line 1930
    iget-wide v6, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {p1, v6, v7, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 1933
    :cond_16b
    iget-wide v0, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/android/launcher3/ItemInfo;

    .line 1934
    iget-wide v6, p2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v1, v6, v8

    if-nez v1, :cond_17f

    .line 1935
    iget v1, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    if-ltz v1, :cond_191

    :cond_17f
    iget v1, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    if-ltz v1, :cond_191

    .line 1936
    iget v1, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v6, p2, Lcom/android/launcher3/ItemInfo;->spanX:I

    add-int/2addr v1, v6

    if-gt v1, v2, :cond_191

    iget v1, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v6, p2, Lcom/android/launcher3/ItemInfo;->spanY:I

    add-int/2addr v1, v6

    if-le v1, v3, :cond_1f0

    .line 1937
    :cond_191
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Error loading shortcut "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1938
    const-string v6, " into cell ("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1939
    iget v4, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1940
    const-string v4, ") out of screen bounds ( "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1937
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    const/4 v0, 0x0

    goto/16 :goto_6e

    .line 1945
    :cond_1f0
    iget v1, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    :goto_1f2
    iget v2, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v3, p2, Lcom/android/launcher3/ItemInfo;->spanX:I

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_205

    .line 1957
    iget v1, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    :goto_1fb
    iget v2, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v3, p2, Lcom/android/launcher3/ItemInfo;->spanX:I

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_269

    .line 1963
    const/4 v0, 0x1

    goto/16 :goto_6e

    .line 1946
    :cond_205
    iget v2, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    :goto_207
    iget v3, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v6, p2, Lcom/android/launcher3/ItemInfo;->spanY:I

    add-int/2addr v3, v6

    if-lt v2, v3, :cond_211

    .line 1945
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f2

    .line 1947
    :cond_211
    aget-object v3, v0, v1

    aget-object v3, v3, v2

    if-eqz v3, :cond_266

    .line 1948
    const-string v3, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error loading shortcut "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1949
    const-string v7, " into cell ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1950
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1951
    const-string v5, ") occupied by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1952
    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1948
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    const/4 v0, 0x0

    goto/16 :goto_6e

    .line 1946
    :cond_266
    add-int/lit8 v2, v2, 0x1

    goto :goto_207

    .line 1958
    :cond_269
    iget v2, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    :goto_26b
    iget v3, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v4, p2, Lcom/android/launcher3/ItemInfo;->spanY:I

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_275

    .line 1957
    add-int/lit8 v1, v1, 0x1

    goto :goto_1fb

    .line 1959
    :cond_275
    aget-object v3, v0, v1

    aput-object p2, v3, v2

    .line 1958
    add-int/lit8 v2, v2, 0x1

    goto :goto_26b
.end method

.method private clearSBgDataStructures()V
    .registers 3

    .prologue
    .line 1968
    sget-object v1, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1969
    :try_start_3
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1970
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1971
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->clear()V

    .line 1972
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->clear()V

    .line 1973
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1968
    monitor-exit v1

    .line 1975
    return-void

    .line 1968
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private filterCurrentAppWidgets(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2725
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2734
    return-void

    .line 2725
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 2726
    if-eqz v0, :cond_4

    .line 2727
    iget-wide v2, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_25

    .line 2728
    iget-wide v2, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->screenId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_25

    .line 2729
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2731
    :cond_25
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private filterCurrentFolders(JLcom/android/launcher3/util/LongArrayMap;Lcom/android/launcher3/util/LongArrayMap;Lcom/android/launcher3/util/LongArrayMap;Lcom/android/launcher3/util/LongArrayMap;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/FolderInfo;",
            ">;",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/FolderInfo;",
            ">;",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2743
    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v5

    .line 2744
    const/4 v2, 0x0

    move v4, v2

    :goto_6
    if-lt v4, v5, :cond_9

    .line 2757
    return-void

    .line 2745
    :cond_9
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/LongArrayMap;->keyAt(I)J

    move-result-wide v6

    .line 2746
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/LongArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/FolderInfo;

    .line 2748
    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ItemInfo;

    .line 2749
    if-eqz v3, :cond_23

    if-nez v2, :cond_27

    .line 2744
    :cond_23
    :goto_23
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_6

    .line 2750
    :cond_27
    iget-wide v8, v3, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v8, v8, v10

    if-nez v8, :cond_3b

    .line 2751
    iget-wide v8, v3, Lcom/android/launcher3/ItemInfo;->screenId:J

    cmp-long v3, v8, p1

    if-nez v3, :cond_3b

    .line 2752
    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v7, v2}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto :goto_23

    .line 2754
    :cond_3b
    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v7, v2}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto :goto_23
.end method

.method private filterCurrentWorkspaceItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2679
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2680
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_22

    .line 2690
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2691
    new-instance v0, Lcom/android/launcher3/LauncherModel$LoaderTask$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherModel$LoaderTask$2;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;)V

    invoke-static {p3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2697
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2717
    return-void

    .line 2681
    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 2682
    if-nez v0, :cond_4

    .line 2683
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 2697
    :cond_2e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 2698
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v3, v4, v6

    if-nez v3, :cond_53

    .line 2699
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_4f

    .line 2700
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2701
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 2703
    :cond_4f
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 2705
    :cond_53
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v3, v4, v6

    if-nez v3, :cond_68

    .line 2706
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2707
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 2709
    :cond_68
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 2710
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2711
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 2713
    :cond_81
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b
.end method

.method private loadAllApps()V
    .registers 19

    .prologue
    .line 3081
    sget-boolean v2, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v2, :cond_20

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-wide v10, v2

    .line 3083
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 3084
    if-nez v8, :cond_24

    .line 3086
    const-string v2, "Launcher.Model"

    const-string v3, "LoaderTask running with no launcher (loadAllApps)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    :cond_1f
    :goto_1f
    return-void

    .line 3081
    :cond_20
    const-wide/16 v2, 0x0

    move-wide v10, v2

    goto :goto_9

    .line 3090
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v12

    .line 3093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/AllAppsList;->clear()V

    .line 3094
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3b
    :goto_3b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_aa

    .line 3129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    .line 3130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v3, v3, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    .line 3133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v3, v3, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    new-instance v4, Lcom/android/launcher3/LauncherModel$LoaderTask$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v8, v2}, Lcom/android/launcher3/LauncherModel$LoaderTask$13;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 3150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v12, v2}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->processAllUsers(Ljava/util/List;Landroid/content/Context;)V

    .line 3152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v3, v3, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher3/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v4

    .line 3153
    const/4 v5, 0x1

    .line 3152
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher3/LauncherModel;->loadAndBindWidgetsAndShortcuts(Landroid/content/Context;Lcom/android/launcher3/LauncherModel$Callbacks;Z)V

    .line 3154
    sget-boolean v2, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v2, :cond_1f

    .line 3155
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Icons processed in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3156
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3155
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 3094
    :cond_aa
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/compat/UserHandleCompat;

    .line 3096
    sget-boolean v2, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v2, :cond_13d

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3097
    :goto_b8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher3/LauncherModel;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v14

    .line 3098
    sget-boolean v4, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v4, :cond_10d

    .line 3099
    const-string v4, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getActivityList took "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3100
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    sub-long v2, v16, v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3099
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3101
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getActivityList got "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apps for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    :cond_10d
    if-eqz v14, :cond_1f

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 3109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v2, v5}, Lcom/android/launcher3/compat/UserManagerCompat;->isQuietModeEnabled(Lcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v7

    .line 3111
    const/4 v2, 0x0

    move v9, v2

    :goto_121
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-lt v9, v2, :cond_141

    .line 3117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->get(Landroid/content/Context;Lcom/android/launcher3/compat/UserHandleCompat;)Lcom/android/launcher3/util/ManagedProfileHeuristic;

    move-result-object v2

    .line 3118
    if-eqz v2, :cond_3b

    .line 3119
    new-instance v3, Lcom/android/launcher3/LauncherModel$LoaderTask$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2, v14}, Lcom/android/launcher3/LauncherModel$LoaderTask$12;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/util/ManagedProfileHeuristic;Ljava/util/List;)V

    invoke-static {v3}, Lcom/android/launcher3/LauncherModel;->access$1(Ljava/lang/Runnable;)V

    goto/16 :goto_3b

    .line 3096
    :cond_13d
    const-wide/16 v2, 0x0

    goto/16 :goto_b8

    .line 3112
    :cond_141
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    .line 3114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v15, v2, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    new-instance v2, Lcom/android/launcher3/AppInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v6, v6, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/AppInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/compat/UserHandleCompat;Lcom/android/launcher3/IconCache;Z)V

    invoke-virtual {v15, v2}, Lcom/android/launcher3/AllAppsList;->add(Lcom/android/launcher3/AppInfo;)V

    .line 3111
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_121
.end method

.method private loadAndBindAllApps()V
    .registers 4

    .prologue
    .line 2997
    sget-boolean v0, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v0, :cond_1c

    .line 2998
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadAndBindAllApps mAllAppsLoaded="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-boolean v2, v2, Lcom/android/launcher3/LauncherModel;->mAllAppsLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    :cond_1c
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherModel;->mAllAppsLoaded:Z

    if-nez v0, :cond_44

    .line 3001
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->loadAllApps()V

    .line 3002
    monitor-enter p0

    .line 3003
    :try_start_26
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_2c

    .line 3004
    monitor-exit p0

    .line 3022
    :goto_2b
    return-void

    .line 3002
    :cond_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_3a

    .line 3007
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->updateIconCache()V

    .line 3008
    monitor-enter p0

    .line 3009
    :try_start_31
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_3d

    .line 3010
    monitor-exit p0

    goto :goto_2b

    .line 3008
    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_37

    throw v0

    .line 3002
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0

    .line 3012
    :cond_3d
    :try_start_3d
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/LauncherModel;->mAllAppsLoaded:Z

    .line 3008
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_37

    goto :goto_2b

    .line 3015
    :cond_44
    monitor-enter p0

    .line 3016
    :try_start_45
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_4e

    .line 3017
    monitor-exit p0

    goto :goto_2b

    .line 3015
    :catchall_4b
    move-exception v0

    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_4b

    throw v0

    :cond_4e
    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4b

    .line 3020
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->onlyBindAllApps()V

    goto :goto_2b
.end method

.method private loadAndBindWorkspace()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1625
    iput-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mIsLoadingAndBindingWorkspace:Z

    .line 1628
    sget-boolean v0, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v0, :cond_1f

    .line 1629
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadAndBindWorkspace mWorkspaceLoaded="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-boolean v2, v2, Lcom/android/launcher3/LauncherModel;->mWorkspaceLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    :cond_1f
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherModel;->mWorkspaceLoaded:Z

    if-nez v0, :cond_35

    .line 1633
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->loadWorkspace()V

    .line 1634
    monitor-enter p0

    .line 1635
    :try_start_29
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_2f

    .line 1636
    monitor-exit p0

    .line 1644
    :goto_2e
    return-void

    .line 1638
    :cond_2f
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/LauncherModel;->mWorkspaceLoaded:Z

    .line 1634
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_3a

    .line 1643
    :cond_35
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->bindWorkspace(I)V

    goto :goto_2e

    .line 1634
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method private loadWorkspace()V
    .registers 60

    .prologue
    .line 1978
    sget-boolean v4, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v4, :cond_52

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-wide/from16 v18, v4

    .line 1980
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 1981
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1982
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    .line 1983
    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v24

    .line 1984
    invoke-static/range {v17 .. v17}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v25

    .line 1985
    const/4 v5, 0x0

    .line 1986
    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.android.launcher3.SYSTEM_READY"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1985
    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_57

    const/4 v5, 0x1

    move/from16 v20, v5

    .line 1988
    :goto_33
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    .line 1989
    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v5

    .line 1990
    iget v0, v5, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    move/from16 v26, v0

    .line 1991
    iget v0, v5, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    move/from16 v27, v0

    .line 1993
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v5

    if-nez v5, :cond_5b

    .line 1994
    const-string v4, "Launcher.Model"

    const-string v5, "loadWorkspace: LauncherProvider is Null"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2620
    :goto_51
    return-void

    .line 1978
    :cond_52
    const-wide/16 v4, 0x0

    move-wide/from16 v18, v4

    goto :goto_a

    .line 1985
    :cond_57
    const/4 v5, 0x0

    move/from16 v20, v5

    goto :goto_33

    .line 1998
    :cond_5b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_72

    .line 1999
    const-string v5, "Launcher.Model"

    const-string v6, "loadWorkspace: resetting launcher database"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2000
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherProvider;->createEmptyDB()V

    .line 2003
    :cond_72
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_193

    .line 2005
    const-string v5, "Launcher.Model"

    const-string v6, "loadWorkspace: migrating from launcher2"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2006
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherProvider;->migrateLauncher2Shortcuts()V

    .line 2013
    :goto_89
    sget-object v28, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v28

    .line 2014
    :try_start_8c
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->clearSBgDataStructures()V

    .line 2016
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/launcher3/compat/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/PackageInstallerCompat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/compat/PackageInstallerCompat;->updateAndGetActiveSessionCache()Ljava/util/HashMap;

    move-result-object v29

    .line 2018
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 2019
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 2020
    sget-object v5, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 2021
    sget-boolean v6, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v6, :cond_bf

    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "loading model from "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    :cond_bf
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 2027
    new-instance v33, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct/range {v33 .. v33}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V
    :try_end_cc
    .catchall {:try_start_8c .. :try_end_cc} :catchall_190

    .line 2030
    :try_start_cc
    const-string v5, "_id"

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 2032
    const-string v5, "intent"

    .line 2031
    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 2034
    const-string v5, "title"

    .line 2033
    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 2036
    const-string v5, "container"

    .line 2035
    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 2038
    const-string v5, "itemType"

    .line 2037
    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 2040
    const-string v5, "appWidgetId"

    .line 2039
    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    .line 2042
    const-string v5, "appWidgetProvider"

    .line 2041
    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 2044
    const-string v5, "screen"

    .line 2043
    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 2046
    const-string v5, "cellX"

    .line 2045
    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v41

    .line 2048
    const-string v5, "cellY"

    .line 2047
    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 2050
    const-string v5, "spanX"

    .line 2049
    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 2052
    const-string v5, "spanY"

    .line 2051
    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 2054
    const-string v5, "rank"

    .line 2053
    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 2056
    const-string v5, "restored"

    .line 2055
    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 2058
    const-string v5, "profileId"

    .line 2057
    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    .line 2060
    const-string v5, "options"

    .line 2059
    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v48

    .line 2061
    new-instance v16, Lcom/android/launcher3/util/CursorIconInfo;

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/CursorIconInfo;-><init>(Landroid/database/Cursor;)V

    .line 2063
    new-instance v49, Landroid/util/LongSparseArray;

    invoke-direct/range {v49 .. v49}, Landroid/util/LongSparseArray;-><init>()V

    .line 2064
    new-instance v50, Landroid/util/LongSparseArray;

    invoke-direct/range {v50 .. v50}, Landroid/util/LongSparseArray;-><init>()V

    .line 2065
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v5, v5, Lcom/android/launcher3/LauncherModel;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v5}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_16d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1a4

    .line 2081
    :goto_173
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v5, :cond_17f

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_17c
    .catchall {:try_start_cc .. :try_end_17c} :catchall_1cd

    move-result v5

    if-nez v5, :cond_1d4

    .line 2518
    :cond_17f
    if-eqz v32, :cond_184

    .line 2519
    :try_start_181
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 2524
    :cond_184
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v5, :cond_8d7

    .line 2525
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->clearSBgDataStructures()V

    .line 2526
    monitor-exit v28

    goto/16 :goto_51

    .line 2013
    :catchall_190
    move-exception v4

    monitor-exit v28
    :try_end_192
    .catchall {:try_start_181 .. :try_end_192} :catchall_190

    throw v4

    .line 2009
    :cond_193
    const-string v5, "Launcher.Model"

    const-string v6, "loadWorkspace: loading default favorites"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2010
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherProvider;->loadDefaultFavoritesIfNecessary()V

    goto/16 :goto_89

    .line 2065
    :cond_1a4
    :try_start_1a4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/compat/UserHandleCompat;

    .line 2066
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v7, v7, Lcom/android/launcher3/LauncherModel;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v7, v5}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v8

    .line 2067
    move-object/from16 v0, v49

    invoke-virtual {v0, v8, v9, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2068
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v7, v7, Lcom/android/launcher3/LauncherModel;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v7, v5}, Lcom/android/launcher3/compat/UserManagerCompat;->isQuietModeEnabled(Lcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v8, v9, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_1cc
    .catchall {:try_start_1a4 .. :try_end_1cc} :catchall_1cd

    goto :goto_16d

    .line 2517
    :catchall_1cd
    move-exception v4

    .line 2518
    if-eqz v32, :cond_1d3

    .line 2519
    :try_start_1d0
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 2521
    :cond_1d3
    throw v4
    :try_end_1d4
    .catchall {:try_start_1d0 .. :try_end_1d4} :catchall_190

    .line 2083
    :cond_1d4
    :try_start_1d4
    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 2084
    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_23f

    const/4 v5, 0x1

    move v6, v5

    .line 2085
    :goto_1e8
    const/4 v13, 0x0

    .line 2086
    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v51

    .line 2088
    packed-switch v15, :pswitch_data_b0c

    :pswitch_1f4
    goto/16 :goto_173

    .line 2091
    :pswitch_1f6
    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    .line 2092
    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 2093
    move-object/from16 v0, v32

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v54, v0

    .line 2094
    move-object/from16 v0, v49

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/compat/UserHandleCompat;

    .line 2095
    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 2096
    const/16 v21, 0x0

    .line 2097
    const/4 v7, 0x0

    .line 2098
    const/4 v5, 0x0

    .line 2099
    if-nez v8, :cond_242

    .line 2101
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_232
    .catch Ljava/lang/Exception; {:try_start_1d4 .. :try_end_232} :catch_234
    .catchall {:try_start_1d4 .. :try_end_232} :catchall_1cd

    goto/16 :goto_173

    .line 2513
    :catch_234
    move-exception v5

    .line 2514
    :try_start_235
    const-string v6, "Launcher.Model"

    const-string v7, "Desktop items loading interrupted"

    const/4 v8, 0x1

    invoke-static {v6, v7, v5, v8}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V
    :try_end_23d
    .catchall {:try_start_235 .. :try_end_23d} :catchall_1cd

    goto/16 :goto_173

    .line 2084
    :cond_23f
    const/4 v5, 0x0

    move v6, v5

    goto :goto_1e8

    .line 2105
    :cond_242
    const/4 v10, 0x0

    :try_start_243
    move-object/from16 v0, v22

    invoke-static {v0, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    .line 2106
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v56

    .line 2107
    if-eqz v56, :cond_52c

    invoke-virtual/range {v56 .. v56}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_52c

    .line 2109
    invoke-virtual/range {v56 .. v56}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 2108
    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v8}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v57

    .line 2110
    if-eqz v57, :cond_362

    .line 2111
    move-object/from16 v0, v25

    move-object/from16 v1, v56

    invoke-virtual {v0, v1, v8}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v10

    if-eqz v10, :cond_362

    .line 2110
    const/4 v10, 0x1

    move v14, v10

    .line 2113
    :goto_26d
    if-eqz v57, :cond_b08

    .line 2114
    invoke-virtual/range {v56 .. v56}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 2117
    :goto_273
    if-eqz v14, :cond_366

    .line 2118
    if-eqz v6, :cond_281

    .line 2120
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2121
    const/4 v6, 0x0

    .line 2123
    :cond_281
    move-object/from16 v0, v50

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_28e
    .catch Ljava/net/URISyntaxException; {:try_start_243 .. :try_end_28e} :catch_3b3
    .catch Ljava/lang/Exception; {:try_start_243 .. :try_end_28e} :catch_234
    .catchall {:try_start_243 .. :try_end_28e} :catchall_1cd

    move-result v5

    if-eqz v5, :cond_b00

    .line 2124
    const/16 v21, 0x8

    move v5, v7

    move/from16 v22, v6

    move v6, v9

    move-object v7, v11

    move-object v9, v10

    .line 2232
    :goto_299
    if-ltz v51, :cond_540

    .line 2233
    :try_start_29b
    move-object/from16 v0, v32

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x4

    .line 2232
    if-lt v10, v11, :cond_540

    const/4 v14, 0x1

    .line 2235
    :goto_2a7
    if-eqz v5, :cond_54e

    .line 2236
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_543

    .line 2237
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v10, 0x0

    .line 2238
    move-object/from16 v0, v16

    iget v11, v0, Lcom/android/launcher3/util/CursorIconInfo;->iconIndex:I

    .line 2239
    const/4 v13, 0x0

    move-object/from16 v6, v23

    move-object/from16 v9, v17

    .line 2237
    invoke-virtual/range {v5 .. v14}, Lcom/android/launcher3/LauncherModel;->getAppShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;Landroid/content/Context;Landroid/database/Cursor;IIZZ)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v5

    move-object v6, v5

    move/from16 v5, v21

    .line 2288
    :cond_2c8
    :goto_2c8
    if-eqz v6, :cond_657

    .line 2289
    move-wide/from16 v0, v52

    iput-wide v0, v6, Lcom/android/launcher3/ShortcutInfo;->id:J

    .line 2290
    iput-object v7, v6, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 2291
    move/from16 v0, v51

    int-to-long v8, v0

    iput-wide v8, v6, Lcom/android/launcher3/ShortcutInfo;->container:J

    .line 2292
    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, v6, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    .line 2293
    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v6, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    .line 2294
    move-object/from16 v0, v32

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v6, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    .line 2295
    move-object/from16 v0, v32

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v6, Lcom/android/launcher3/ShortcutInfo;->rank:I

    .line 2296
    instance-of v8, v6, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v8, :cond_322

    .line 2297
    invoke-virtual {v6}, Lcom/android/launcher3/ShortcutInfo;->hasPhotoIcon()Z

    move-result v8

    if-eqz v8, :cond_60d

    invoke-virtual {v6}, Lcom/android/launcher3/ShortcutInfo;->hasLargeIcon()Z

    move-result v8

    if-eqz v8, :cond_60d

    .line 2298
    move-object/from16 v0, v32

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v6, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    .line 2299
    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v6, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    .line 2305
    :cond_322
    :goto_322
    iget-object v8, v6, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    const-string v9, "profile"

    move-wide/from16 v0, v54

    invoke-virtual {v8, v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2306
    iget-object v8, v6, Lcom/android/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v8, :cond_338

    .line 2307
    iget-object v8, v6, Lcom/android/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    const-string v9, "profile"

    move-wide/from16 v0, v54

    invoke-virtual {v8, v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2309
    :cond_338
    iget v8, v6, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    or-int/2addr v5, v8

    iput v5, v6, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 2310
    if-eqz v24, :cond_34d

    move-object/from16 v0, v17

    invoke-static {v0, v7}, Lcom/android/launcher3/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_34d

    .line 2311
    iget v5, v6, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v6, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 2315
    :cond_34d
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v6}, Lcom/android/launcher3/LauncherModel$LoaderTask;->checkItemPlacement(Lcom/android/launcher3/util/LongArrayMap;Lcom/android/launcher3/ItemInfo;)Z

    move-result v5

    if-nez v5, :cond_615

    .line 2316
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_360
    .catch Ljava/lang/Exception; {:try_start_29b .. :try_end_360} :catch_234
    .catchall {:try_start_29b .. :try_end_360} :catchall_1cd

    goto/16 :goto_173

    .line 2110
    :cond_362
    const/4 v10, 0x0

    move v14, v10

    goto/16 :goto_26d

    .line 2126
    :cond_366
    if-eqz v57, :cond_3e2

    .line 2127
    const/4 v5, 0x0

    .line 2128
    and-int/lit8 v6, v9, 0x2

    if-eqz v6, :cond_38f

    .line 2132
    :try_start_36d
    invoke-virtual/range {v56 .. v56}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2131
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 2133
    if-eqz v5, :cond_38f

    .line 2134
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2135
    const-string v11, "intent"

    .line 2136
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v14

    .line 2135
    invoke-virtual {v6, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    move-object/from16 v0, p0

    move-wide/from16 v1, v52

    invoke-direct {v0, v1, v2, v6}, Lcom/android/launcher3/LauncherModel$LoaderTask;->updateItem(JLandroid/content/ContentValues;)V

    .line 2140
    :cond_38f
    if-nez v5, :cond_3cd

    .line 2143
    const-string v5, "Launcher.Model"

    .line 2144
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid component removed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 2143
    invoke-static {v5, v6, v7}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2145
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3b1
    .catch Ljava/net/URISyntaxException; {:try_start_36d .. :try_end_3b1} :catch_3b3
    .catch Ljava/lang/Exception; {:try_start_36d .. :try_end_3b1} :catch_234
    .catchall {:try_start_36d .. :try_end_3b1} :catchall_1cd

    goto/16 :goto_173

    .line 2227
    :catch_3b3
    move-exception v5

    :try_start_3b4
    const-string v5, "Launcher.Model"

    .line 2228
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid uri: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 2227
    invoke-static {v5, v6, v7}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3cb
    .catch Ljava/lang/Exception; {:try_start_3b4 .. :try_end_3cb} :catch_234
    .catchall {:try_start_3b4 .. :try_end_3cb} :catchall_1cd

    goto/16 :goto_173

    .line 2149
    :cond_3cd
    :try_start_3cd
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2150
    const/4 v6, 0x0

    move/from16 v22, v6

    move v6, v9

    move-object v9, v10

    move/from16 v58, v7

    move-object v7, v5

    move/from16 v5, v58

    .line 2152
    goto/16 :goto_299

    :cond_3e2
    if-eqz v6, :cond_4ac

    .line 2155
    const-string v5, "Launcher.Model"

    .line 2156
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v57, "package not yet restored: "

    move-object/from16 v0, v57

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v57, 0x1

    .line 2155
    move/from16 v0, v57

    invoke-static {v5, v14, v0}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2158
    and-int/lit8 v5, v9, 0x8

    if-nez v5, :cond_b00

    .line 2160
    invoke-virtual/range {v56 .. v56}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_431

    .line 2162
    or-int/lit8 v5, v9, 0x8

    .line 2163
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2164
    const-string v14, "restored"

    .line 2165
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    .line 2164
    move-object/from16 v0, v56

    invoke-virtual {v9, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2166
    move-object/from16 v0, p0

    move-wide/from16 v1, v52

    invoke-direct {v0, v1, v2, v9}, Lcom/android/launcher3/LauncherModel$LoaderTask;->updateItem(JLandroid/content/ContentValues;)V

    move/from16 v22, v6

    move-object v9, v10

    move v6, v5

    move v5, v7

    move-object v7, v11

    .line 2167
    goto/16 :goto_299

    :cond_431
    and-int/lit16 v5, v9, 0xf0

    if-eqz v5, :cond_48a

    .line 2169
    invoke-static {v9}, Lcom/android/launcher3/CommonAppTypeParser;->decodeItemTypeFromFlag(I)I

    move-result v5

    .line 2170
    new-instance v6, Lcom/android/launcher3/CommonAppTypeParser;

    move-wide/from16 v0, v52

    move-object/from16 v2, v17

    invoke-direct {v6, v0, v1, v5, v2}, Lcom/android/launcher3/CommonAppTypeParser;-><init>(JILandroid/content/Context;)V

    .line 2171
    invoke-virtual {v6}, Lcom/android/launcher3/CommonAppTypeParser;->findDefaultApp()Z

    move-result v5

    if-eqz v5, :cond_468

    .line 2173
    iget-object v7, v6, Lcom/android/launcher3/CommonAppTypeParser;->parsedIntent:Landroid/content/Intent;

    .line 2174
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 2175
    iget-object v5, v6, Lcom/android/launcher3/CommonAppTypeParser;->parsedValues:Landroid/content/ContentValues;

    .line 2176
    const-string v6, "restored"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2177
    move-object/from16 v0, p0

    move-wide/from16 v1, v52

    invoke-direct {v0, v1, v2, v5}, Lcom/android/launcher3/LauncherModel$LoaderTask;->updateItem(JLandroid/content/ContentValues;)V

    .line 2178
    const/4 v6, 0x0

    .line 2179
    const/4 v5, 0x1

    move/from16 v22, v6

    move v6, v9

    move-object v9, v10

    .line 2181
    goto/16 :goto_299

    .line 2182
    :cond_468
    const-string v5, "Launcher.Model"

    .line 2183
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unrestored package removed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 2182
    invoke-static {v5, v6, v7}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2184
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_173

    .line 2188
    :cond_48a
    const-string v5, "Launcher.Model"

    .line 2189
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unrestored package removed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 2188
    invoke-static {v5, v6, v7}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2190
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_173

    .line 2194
    :cond_4ac
    invoke-virtual/range {v56 .. v56}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2195
    const/16 v13, 0x2000

    .line 2193
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5, v13}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isAppEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result v5

    .line 2195
    if-eqz v5, :cond_4c7

    .line 2197
    const/4 v13, 0x1

    .line 2198
    const/16 v21, 0x2

    move v5, v7

    move/from16 v22, v6

    move v6, v9

    move-object v7, v11

    move-object v9, v10

    .line 2199
    goto/16 :goto_299

    :cond_4c7
    if-nez v20, :cond_50a

    .line 2202
    const-string v5, "Launcher.Model"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Invalid package: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2203
    const-string v14, " (check again later)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    .line 2202
    invoke-static {v5, v13, v14}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2204
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    .line 2205
    if-nez v5, :cond_4fa

    .line 2206
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2207
    sget-object v13, Lcom/android/launcher3/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v13, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2209
    :cond_4fa
    invoke-virtual/range {v56 .. v56}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2210
    const/4 v13, 0x1

    move v5, v7

    move/from16 v22, v6

    move v6, v9

    move-object v7, v11

    move-object v9, v10

    .line 2213
    goto/16 :goto_299

    .line 2216
    :cond_50a
    const-string v5, "Launcher.Model"

    .line 2217
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid package removed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 2216
    invoke-static {v5, v6, v7}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2218
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_173

    .line 2221
    :cond_52c
    if-nez v56, :cond_af8

    .line 2223
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_537
    .catch Ljava/net/URISyntaxException; {:try_start_3cd .. :try_end_537} :catch_3b3
    .catch Ljava/lang/Exception; {:try_start_3cd .. :try_end_537} :catch_234
    .catchall {:try_start_3cd .. :try_end_537} :catchall_1cd

    .line 2224
    const/4 v6, 0x0

    move/from16 v22, v6

    move v6, v9

    move-object v9, v5

    move v5, v7

    move-object v7, v11

    .line 2226
    goto/16 :goto_299

    .line 2232
    :cond_540
    const/4 v14, 0x0

    goto/16 :goto_2a7

    .line 2242
    :cond_543
    :try_start_543
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_173

    .line 2245
    :cond_54e
    if-eqz v22, :cond_58a

    .line 2246
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57f

    .line 2247
    const-string v5, "Launcher.Model"

    .line 2248
    const-string v8, "constructing info for partially restored package"

    .line 2249
    const/4 v9, 0x1

    .line 2247
    invoke-static {v5, v8, v9}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2250
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v11, v32

    move-object v13, v7

    move v14, v6

    invoke-virtual/range {v10 .. v17}, Lcom/android/launcher3/LauncherModel;->getRestoredItemInfo(Landroid/database/Cursor;ILandroid/content/Intent;IILcom/android/launcher3/util/CursorIconInfo;Landroid/content/Context;)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v5

    .line 2252
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1, v7}, Lcom/android/launcher3/LauncherModel;->getRestoredItemIntent(Landroid/database/Cursor;Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v7

    move-object v6, v5

    move/from16 v5, v21

    .line 2253
    goto/16 :goto_2c8

    .line 2255
    :cond_57f
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_173

    .line 2258
    :cond_58a
    if-nez v15, :cond_5ca

    .line 2260
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v5}, Lcom/android/launcher3/LauncherModel;->access$0(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/AppFilter;

    move-result-object v5

    if-eqz v5, :cond_5b3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v5}, Lcom/android/launcher3/LauncherModel;->access$0(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/AppFilter;

    move-result-object v5

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_5b3

    .line 2261
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_173

    .line 2264
    :cond_5b3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    .line 2265
    move-object/from16 v0, v16

    iget v11, v0, Lcom/android/launcher3/util/CursorIconInfo;->iconIndex:I

    move-object/from16 v6, v23

    move-object/from16 v9, v17

    move-object/from16 v10, v32

    .line 2264
    invoke-virtual/range {v5 .. v14}, Lcom/android/launcher3/LauncherModel;->getAppShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;Landroid/content/Context;Landroid/database/Cursor;IIZZ)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v5

    move-object v6, v5

    move/from16 v5, v21

    .line 2267
    goto/16 :goto_2c8

    .line 2268
    :cond_5ca
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v5, v0, v1, v12, v2}, Lcom/android/launcher3/LauncherModel;->getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;ILcom/android/launcher3/util/CursorIconInfo;)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v6

    .line 2271
    move-object/from16 v0, v23

    invoke-static {v0, v9}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_af4

    .line 2272
    or-int/lit8 v5, v21, 0x4

    .line 2278
    :goto_5e2
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2c8

    .line 2279
    invoke-virtual {v7}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    if-eqz v8, :cond_2c8

    .line 2280
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c8

    .line 2281
    invoke-virtual {v7}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    const-string v9, "android.intent.category.LAUNCHER"

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c8

    .line 2283
    const/high16 v8, 0x10200000

    .line 2282
    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_2c8

    .line 2301
    :cond_60d
    const/4 v8, 0x1

    iput v8, v6, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    .line 2302
    const/4 v8, 0x1

    iput v8, v6, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    goto/16 :goto_322

    .line 2320
    :cond_615
    if-eqz v22, :cond_632

    .line 2321
    invoke-virtual {v6}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 2322
    if-eqz v5, :cond_632

    .line 2323
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 2324
    if-eqz v5, :cond_64a

    .line 2325
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/android/launcher3/ShortcutInfo;->setInstallProgress(I)V

    .line 2332
    :cond_632
    :goto_632
    packed-switch v51, :pswitch_data_b1c

    .line 2340
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    move/from16 v0, v51

    int-to-long v8, v0

    invoke-static {v5, v8, v9}, Lcom/android/launcher3/LauncherModel;->findOrMakeFolder(Lcom/android/launcher3/util/LongArrayMap;J)Lcom/android/launcher3/FolderInfo;

    move-result-object v5

    .line 2341
    invoke-virtual {v5, v6}, Lcom/android/launcher3/FolderInfo;->add(Lcom/android/launcher3/ShortcutInfo;)V

    .line 2344
    :goto_641
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v8, v6, Lcom/android/launcher3/ShortcutInfo;->id:J

    invoke-virtual {v5, v8, v9, v6}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto/16 :goto_173

    .line 2327
    :cond_64a
    iget v5, v6, Lcom/android/launcher3/ShortcutInfo;->status:I

    and-int/lit8 v5, v5, -0x5

    iput v5, v6, Lcom/android/launcher3/ShortcutInfo;->status:I

    goto :goto_632

    .line 2335
    :pswitch_651
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_641

    .line 2346
    :cond_657
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unexpected null ShortcutInfo"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2351
    :pswitch_65f
    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2352
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-static {v5, v8, v9}, Lcom/android/launcher3/LauncherModel;->findOrMakeFolder(Lcom/android/launcher3/util/LongArrayMap;J)Lcom/android/launcher3/FolderInfo;

    move-result-object v7

    .line 2355
    move-object/from16 v0, v32

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 2356
    iput-wide v8, v7, Lcom/android/launcher3/FolderInfo;->id:J

    .line 2357
    move/from16 v0, v51

    int-to-long v10, v0

    iput-wide v10, v7, Lcom/android/launcher3/FolderInfo;->container:J

    .line 2358
    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v10, v5

    iput-wide v10, v7, Lcom/android/launcher3/FolderInfo;->screenId:J

    .line 2359
    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v7, Lcom/android/launcher3/FolderInfo;->cellX:I

    .line 2360
    move-object/from16 v0, v32

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v7, Lcom/android/launcher3/FolderInfo;->cellY:I

    .line 2361
    const/4 v5, 0x1

    iput v5, v7, Lcom/android/launcher3/FolderInfo;->spanX:I

    .line 2362
    const/4 v5, 0x1

    iput v5, v7, Lcom/android/launcher3/FolderInfo;->spanY:I

    .line 2363
    move-object/from16 v0, v32

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v7, Lcom/android/launcher3/FolderInfo;->options:I

    .line 2364
    invoke-static/range {v17 .. v17}, Lcom/lge/launcher3/util/DDTUtils;->isAdditionalThemeApplied(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6c9

    const/4 v5, 0x0

    :goto_6b2
    iput v5, v7, Lcom/android/launcher3/FolderInfo;->folderColor:I

    .line 2367
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v7}, Lcom/android/launcher3/LauncherModel$LoaderTask;->checkItemPlacement(Lcom/android/launcher3/util/LongArrayMap;Lcom/android/launcher3/ItemInfo;)Z

    move-result v5

    if-nez v5, :cond_6d8

    .line 2368
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_173

    .line 2365
    :cond_6c9
    const-string v5, "iconType"

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    goto :goto_6b2

    .line 2372
    :cond_6d8
    packed-switch v51, :pswitch_data_b24

    .line 2379
    :goto_6db
    if-eqz v6, :cond_6e6

    .line 2381
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2384
    :cond_6e6
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v8, v7, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-virtual {v5, v8, v9, v7}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 2385
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v8, v7, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-virtual {v5, v8, v9, v7}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto/16 :goto_173

    .line 2375
    :pswitch_6f6
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6db

    .line 2392
    :pswitch_6fc
    const/4 v5, 0x5

    .line 2391
    if-ne v15, v5, :cond_736

    const/4 v5, 0x1

    move v10, v5

    .line 2394
    :goto_701
    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 2395
    move-object/from16 v0, v32

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2396
    move-object/from16 v0, v32

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2397
    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 2398
    move-object/from16 v0, v49

    invoke-virtual {v0, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/compat/UserHandleCompat;

    .line 2399
    if-nez v5, :cond_739

    .line 2400
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_173

    .line 2391
    :cond_736
    const/4 v5, 0x0

    move v10, v5

    goto :goto_701

    .line 2405
    :cond_739
    invoke-static {v13}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v21

    .line 2407
    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2408
    and-int/lit8 v6, v8, 0x1

    if-nez v6, :cond_796

    const/4 v6, 0x1

    move v9, v6

    .line 2410
    :goto_74b
    and-int/lit8 v6, v8, 0x2

    if-nez v6, :cond_799

    const/4 v6, 0x1

    move v7, v6

    .line 2415
    :goto_751
    invoke-static {v13}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 2414
    move-object/from16 v0, v17

    invoke-static {v0, v6, v5}, Lcom/android/launcher3/LauncherModel;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v22

    .line 2418
    invoke-static/range {v22 .. v22}, Lcom/android/launcher3/LauncherModel;->isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v6

    .line 2419
    if-nez v24, :cond_79c

    if-nez v10, :cond_79c

    .line 2420
    if-eqz v7, :cond_79c

    if-nez v6, :cond_79c

    .line 2421
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Deleting widget that isn\'t installed anymore: id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2422
    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " appWidgetId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2421
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2424
    const-string v6, "Launcher.Model"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    const-string v6, "Launcher.Model"

    const/4 v7, 0x0

    invoke-static {v6, v5, v7}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2426
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_173

    .line 2408
    :cond_796
    const/4 v6, 0x0

    move v9, v6

    goto :goto_74b

    .line 2410
    :cond_799
    const/4 v6, 0x0

    move v7, v6

    goto :goto_751

    .line 2428
    :cond_79c
    if-eqz v6, :cond_805

    .line 2429
    new-instance v6, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 2430
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    .line 2429
    move-object/from16 v0, v21

    invoke-direct {v6, v11, v0}, Lcom/android/launcher3/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 2433
    if-nez v7, :cond_af1

    .line 2438
    if-eqz v9, :cond_802

    .line 2439
    const/4 v7, 0x0

    .line 2445
    :goto_7b0
    iput v7, v6, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2472
    :goto_7b2
    iput-wide v14, v6, Lcom/android/launcher3/LauncherAppWidgetInfo;->id:J

    .line 2473
    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v52, v0

    move-wide/from16 v0, v52

    iput-wide v0, v6, Lcom/android/launcher3/LauncherAppWidgetInfo;->screenId:J

    .line 2474
    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    .line 2475
    move-object/from16 v0, v32

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    .line 2476
    move-object/from16 v0, v32

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    .line 2477
    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    .line 2478
    iput-object v5, v6, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 2480
    const/16 v5, -0x64

    move/from16 v0, v51

    if-eq v0, v5, :cond_87f

    .line 2481
    const/16 v5, -0x65

    move/from16 v0, v51

    if-eq v0, v5, :cond_87f

    .line 2482
    const-string v5, "Launcher.Model"

    const-string v6, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_173

    .line 2441
    :cond_802
    and-int/lit8 v7, v8, -0x3

    goto :goto_7b0

    .line 2447
    :cond_805
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Widget restore pending id="

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2448
    const-string v9, " appWidgetId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2449
    const-string v9, " status ="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2447
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    new-instance v7, Lcom/android/launcher3/LauncherAppWidgetInfo;

    move-object/from16 v0, v21

    invoke-direct {v7, v11, v0}, Lcom/android/launcher3/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 2452
    iput v8, v7, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2453
    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 2455
    and-int/lit8 v9, v8, 0x8

    if-nez v9, :cond_84e

    .line 2457
    if-eqz v6, :cond_856

    .line 2459
    iget v9, v7, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2460
    or-int/lit8 v9, v9, 0x8

    iput v9, v7, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2469
    :cond_84e
    if-nez v6, :cond_87a

    const/4 v6, 0x0

    .line 2468
    :goto_851
    iput v6, v7, Lcom/android/launcher3/LauncherAppWidgetInfo;->installProgress:I

    move-object v6, v7

    goto/16 :goto_7b2

    .line 2461
    :cond_856
    if-nez v24, :cond_84e

    .line 2462
    const-string v5, "Launcher.Model"

    .line 2463
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unrestored widget removed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 2462
    invoke-static {v5, v6, v7}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2464
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_173

    .line 2469
    :cond_87a
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_851

    .line 2487
    :cond_87f
    move/from16 v0, v51

    int-to-long v0, v0

    move-wide/from16 v52, v0

    move-wide/from16 v0, v52

    iput-wide v0, v6, Lcom/android/launcher3/LauncherAppWidgetInfo;->container:J

    .line 2489
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v6}, Lcom/android/launcher3/LauncherModel$LoaderTask;->checkItemPlacement(Lcom/android/launcher3/util/LongArrayMap;Lcom/android/launcher3/ItemInfo;)Z

    move-result v5

    if-nez v5, :cond_89d

    .line 2490
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_173

    .line 2494
    :cond_89d
    if-nez v10, :cond_8c9

    .line 2496
    iget-object v5, v6, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    .line 2497
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8af

    .line 2498
    iget v7, v6, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    if-eq v7, v8, :cond_8c9

    .line 2499
    :cond_8af
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2501
    const-string v8, "appWidgetProvider"

    .line 2500
    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2503
    const-string v5, "restored"

    .line 2504
    iget v8, v6, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 2503
    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2505
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v7}, Lcom/android/launcher3/LauncherModel$LoaderTask;->updateItem(JLandroid/content/ContentValues;)V

    .line 2508
    :cond_8c9
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v8, v6, Lcom/android/launcher3/LauncherAppWidgetInfo;->id:J

    invoke-virtual {v5, v8, v9, v6}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 2509
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8d5
    .catch Ljava/lang/Exception; {:try_start_543 .. :try_end_8d5} :catch_234
    .catchall {:try_start_543 .. :try_end_8d5} :catchall_1cd

    goto/16 :goto_173

    .line 2529
    :cond_8d7
    :try_start_8d7
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_91d

    .line 2531
    sget-object v5, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 2533
    const-string v6, "_id"

    .line 2532
    move-object/from16 v0, v30

    invoke-static {v6, v0}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 2533
    const/4 v7, 0x0

    .line 2531
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2534
    sget-boolean v5, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v5, :cond_90b

    .line 2535
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Removed = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2536
    const-string v7, "_id"

    .line 2535
    move-object/from16 v0, v30

    invoke-static {v7, v0}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    :cond_90b
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v5

    .line 2541
    invoke-virtual {v5}, Lcom/android/launcher3/LauncherProvider;->deleteEmptyFolders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2540
    :goto_917
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_9fd

    .line 2548
    :cond_91d
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/LauncherModel$LoaderTask;->removeChildrenOfInvalidFolder(Landroid/content/ContentResolver;)V

    .line 2550
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_945

    .line 2552
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2553
    const-string v6, "restored"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2554
    sget-object v6, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 2556
    const-string v7, "_id"

    .line 2555
    move-object/from16 v0, v31

    invoke-static {v7, v0}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    .line 2556
    const/4 v8, 0x0

    .line 2554
    invoke-virtual {v4, v6, v5, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2559
    :cond_945
    if-nez v20, :cond_967

    sget-object v4, Lcom/android/launcher3/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_967

    .line 2560
    new-instance v4, Lcom/android/launcher3/LauncherModel$AppsAvailabilityCheck;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-direct {v4, v5}, Lcom/android/launcher3/LauncherModel$AppsAvailabilityCheck;-><init>(Lcom/android/launcher3/LauncherModel;)V

    .line 2561
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.android.launcher3.SYSTEM_READY"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2562
    const/4 v6, 0x0

    sget-object v7, Lcom/android/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 2560
    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2565
    :cond_967
    sget-object v4, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/launcher3/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2568
    new-instance v5, Ljava/util/ArrayList;

    sget-object v4, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2569
    new-instance v6, Ljava/util/ArrayList;

    sget-object v4, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2570
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2571
    sget-object v4, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_98d
    :goto_98d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_a1e

    .line 2583
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_9a5

    .line 2584
    sget-object v4, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2585
    sget-object v4, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2588
    :cond_9a5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_9bb

    .line 2589
    sget-object v4, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$removeDuplicateList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2590
    sget-object v4, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2594
    :cond_9bb
    sget-boolean v4, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v4, :cond_9fa

    .line 2595
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "loaded workspace in "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v18

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2596
    const-string v6, "ms + sBgItemsIdMap.size(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v6}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2595
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    const-string v4, "Launcher.Model"

    const-string v5, "workspace layout: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v9

    .line 2599
    const/4 v4, 0x0

    move v6, v4

    :goto_9f6
    move/from16 v0, v27

    if-lt v6, v0, :cond_a5c

    .line 2013
    :cond_9fa
    monitor-exit v28

    goto/16 :goto_51

    .line 2541
    :cond_9fd
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 2542
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/launcher3/LauncherModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2543
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v5, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 2544
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v5, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    goto/16 :goto_917

    .line 2571
    :cond_a1e
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/ItemInfo;

    .line 2572
    iget-wide v10, v4, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 2573
    iget-wide v12, v4, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v14, -0x64

    cmp-long v9, v12, v14

    if-nez v9, :cond_a41

    .line 2574
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a41

    .line 2575
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_98d

    .line 2576
    :cond_a41
    iget-wide v12, v4, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v14, -0x64

    cmp-long v4, v12, v14

    if-nez v4, :cond_98d

    .line 2577
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_98d

    .line 2578
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_98d

    .line 2600
    :cond_a5c
    const-string v5, ""

    .line 2602
    const/4 v4, 0x0

    move v7, v4

    move-object v4, v5

    :goto_a61
    if-lt v7, v9, :cond_a82

    .line 2616
    const-string v5, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[ "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " ]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto/16 :goto_9f6

    .line 2603
    :cond_a82
    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Lcom/android/launcher3/util/LongArrayMap;->keyAt(I)J

    move-result-wide v10

    .line 2604
    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-lez v5, :cond_aef

    .line 2605
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " | "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 2607
    :goto_aa2
    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Lcom/android/launcher3/util/LongArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lcom/android/launcher3/ItemInfo;

    .line 2608
    const/4 v8, 0x0

    :goto_aab
    move/from16 v0, v26

    if-lt v8, v0, :cond_ab4

    .line 2602
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move-object v4, v5

    goto :goto_a61

    .line 2609
    :cond_ab4
    array-length v10, v4

    if-ge v8, v10, :cond_adb

    aget-object v10, v4, v8

    array-length v10, v10

    if-ge v6, v10, :cond_adb

    .line 2610
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v4, v8

    aget-object v5, v5, v6

    if-eqz v5, :cond_ad8

    const-string v5, "#"

    :goto_acd
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2608
    :goto_ad5
    add-int/lit8 v8, v8, 0x1

    goto :goto_aab

    .line 2610
    :cond_ad8
    const-string v5, "."

    goto :goto_acd

    .line 2612
    :cond_adb
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "!"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_aed
    .catchall {:try_start_8d7 .. :try_end_aed} :catchall_190

    move-result-object v5

    goto :goto_ad5

    :cond_aef
    move-object v5, v4

    goto :goto_aa2

    :cond_af1
    move v7, v8

    goto/16 :goto_7b0

    :cond_af4
    move/from16 v5, v21

    goto/16 :goto_5e2

    :cond_af8
    move/from16 v22, v6

    move v6, v9

    move-object v9, v5

    move v5, v7

    move-object v7, v11

    goto/16 :goto_299

    :cond_b00
    move v5, v7

    move/from16 v22, v6

    move v6, v9

    move-object v7, v11

    move-object v9, v10

    goto/16 :goto_299

    :cond_b08
    move-object v10, v5

    goto/16 :goto_273

    .line 2088
    nop

    :pswitch_data_b0c
    .packed-switch 0x0
        :pswitch_1f6
        :pswitch_1f6
        :pswitch_65f
        :pswitch_1f4
        :pswitch_6fc
        :pswitch_6fc
    .end packed-switch

    .line 2332
    :pswitch_data_b1c
    .packed-switch -0x65
        :pswitch_651
        :pswitch_651
    .end packed-switch

    .line 2372
    :pswitch_data_b24
    .packed-switch -0x65
        :pswitch_6f6
        :pswitch_6f6
    .end packed-switch
.end method

.method private onlyBindAllApps()V
    .registers 5

    .prologue
    .line 3046
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 3047
    if-nez v0, :cond_14

    .line 3049
    const-string v0, "Launcher.Model"

    const-string v1, "LoaderTask running with no launcher (onlyBindAllApps)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    :goto_13
    return-void

    .line 3056
    :cond_14
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v1, v1, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3057
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mBgWidgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    invoke-virtual {v2}, Lcom/android/launcher3/model/WidgetsModel;->clone()Lcom/android/launcher3/model/WidgetsModel;

    move-result-object v2

    .line 3058
    new-instance v3, Lcom/android/launcher3/LauncherModel$LoaderTask$11;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/launcher3/LauncherModel$LoaderTask$11;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Lcom/android/launcher3/model/WidgetsModel;)V

    .line 3072
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_40

    const/4 v0, 0x0

    .line 3073
    :goto_3a
    if-eqz v0, :cond_42

    .line 3074
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_13

    .line 3072
    :cond_40
    const/4 v0, 0x1

    goto :goto_3a

    .line 3076
    :cond_42
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_13
.end method

.method private removeChildrenOfInvalidFolder(Landroid/content/ContentResolver;)V
    .registers 12

    .prologue
    .line 2623
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2624
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2625
    const/4 v0, 0x0

    move v2, v0

    :goto_c
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v0

    if-lt v2, v0, :cond_49

    .line 2647
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e7

    .line 2651
    sget-object v0, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 2652
    const-string v1, "_id"

    invoke-static {v1, v3}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 2653
    const/4 v2, 0x0

    .line 2651
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2654
    sget-boolean v0, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v0, :cond_48

    .line 2655
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeInvalidFolder() Removed children ids = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2657
    const-string v2, "_id"

    .line 2656
    invoke-static {v2, v3}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 2655
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    :cond_48
    return-void

    .line 2626
    :cond_49
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/LongArrayMap;->keyAt(I)J

    move-result-wide v0

    .line 2627
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo;

    .line 2628
    sget-boolean v1, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v1, :cond_6f

    .line 2629
    const-string v1, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "folder:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    :cond_6f
    sget-object v1, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ae

    sget-object v1, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v6, v0, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-virtual {v1, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v1

    if-nez v1, :cond_ae

    .line 2632
    sget-boolean v1, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v1, :cond_99

    .line 2633
    const-string v1, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Removed invalid folder:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    :cond_99
    iget-object v1, v0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_b3

    .line 2643
    iget-wide v0, v0, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2625
    :cond_ae
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_c

    .line 2635
    :cond_b3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    .line 2636
    sget-boolean v6, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v6, :cond_d1

    .line 2637
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "---> Removed child "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    :cond_d1
    iget-wide v6, v1, Lcom/android/launcher3/ShortcutInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2640
    sget-object v6, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2641
    sget-object v6, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v8, v1, Lcom/android/launcher3/ShortcutInfo;->id:J

    invoke-virtual {v6, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    goto :goto_9f

    .line 2647
    :cond_e7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2648
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    goto/16 :goto_18
.end method

.method private sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2762
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 2763
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    .line 2765
    new-instance v1, Lcom/android/launcher3/LauncherModel$LoaderTask$3;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/LauncherModel$LoaderTask$3;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2779
    return-void
.end method

.method private updateIconCache()V
    .registers 6

    .prologue
    .line 3026
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3027
    sget-object v2, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3028
    :try_start_8
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 3027
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_41

    .line 3042
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/IconCache;->updateDbIcons(Ljava/util/Set;)V

    .line 3043
    return-void

    .line 3028
    :cond_1d
    :try_start_1d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 3029
    instance-of v4, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v4, :cond_44

    .line 3030
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 3031
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 3032
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 3027
    :catchall_41
    move-exception v0

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_1d .. :try_end_43} :catchall_41

    throw v0

    .line 3034
    :cond_44
    :try_start_44
    instance-of v4, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v4, :cond_e

    .line 3035
    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 3036
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 3037
    iget-object v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catchall {:try_start_44 .. :try_end_5a} :catchall_41

    goto :goto_e
.end method

.method private updateItem(JLandroid/content/ContentValues;)V
    .registers 11

    .prologue
    .line 2665
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2666
    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 2668
    const-string v2, "_id= ?"

    .line 2669
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2665
    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2670
    return-void
.end method

.method private verifyApplications()V
    .registers 3

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherModelAspect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/LauncherModel$LoaderTask;->verifyApplications_aroundBody1$advice(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/lge/launcher3/nativejoin/LauncherModelAspect;Lorg/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method

.method private static final verifyApplications_aroundBody0(Lcom/android/launcher3/LauncherModel$LoaderTask;)V
    .registers 15

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1811
    sget-boolean v0, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v0, :cond_13

    .line 1812
    const-string v0, "Launcher.Model"

    const-string v1, "step 3: verify applications"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    :cond_13
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1819
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1820
    sget-object v7, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1821
    :try_start_20
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v0, v0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2a
    :goto_2a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_84

    .line 1820
    monitor-exit v7
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_90

    .line 1855
    sget-boolean v0, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v0, :cond_3c

    .line 1856
    const-string v0, "Launcher.Model"

    const-string v1, "step 3-1: checked add or remove applications"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    :cond_3c
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_5b

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 1860
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    :try_start_48
    invoke-static {}, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->aspectOf()Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->ajc$before$com_lge_launcher3_backuprestore_BackupRestoreAspect$1$55b09685(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/LauncherModel;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_52} :catch_100

    nop

    invoke-static {}, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->aspectOf()Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->ajc$after$com_lge_launcher3_backuprestore_BackupRestoreAspect$2$55b09685(Landroid/content/Context;Ljava/util/ArrayList;)V

    nop

    .line 1862
    :cond_5b
    sget-boolean v0, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v0, :cond_66

    .line 1863
    const-string v0, "Launcher.Model"

    const-string v1, "step 3-2: added and binded applications"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    :cond_66
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_78

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_78

    .line 1867
    invoke-static {v4, v6}, Lcom/android/launcher3/LauncherModel;->deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1868
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 1870
    :cond_78
    sget-boolean v0, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v0, :cond_83

    .line 1871
    const-string v0, "Launcher.Model"

    const-string v1, "step 3-3: removed and forceReload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    :cond_83
    :goto_83
    return-void

    .line 1821
    :cond_84
    :try_start_84
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 1822
    iget-boolean v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v1, :cond_93

    .line 1823
    monitor-exit v7

    goto :goto_83

    .line 1820
    :catchall_90
    move-exception v0

    monitor-exit v7
    :try_end_92
    .catchall {:try_start_84 .. :try_end_92} :catchall_90

    throw v0

    .line 1826
    :cond_93
    :try_start_93
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    .line 1827
    iget-object v2, v0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/launcher3/AppInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 1826
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/LauncherModel;->getApplicationItemInfoForComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1828
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 1831
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1833
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing application on load: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 1834
    :cond_bc
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2a

    .line 1837
    const-wide v2, 0x7fffffffffffffffL

    .line 1838
    const/4 v0, 0x0

    .line 1840
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v1, v0

    :cond_ce
    :goto_ce
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f0

    .line 1847
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1848
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1850
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Duplicate applications on load: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1851
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1850
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 1840
    :cond_f0
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 1841
    iget-wide v12, v0, Lcom/android/launcher3/ItemInfo;->id:J

    cmp-long v11, v12, v2

    if-gez v11, :cond_ce

    .line 1842
    iget-wide v2, v0, Lcom/android/launcher3/ItemInfo;->id:J
    :try_end_fe
    .catchall {:try_start_93 .. :try_end_fe} :catchall_90

    move-object v1, v0

    .line 1843
    goto :goto_ce

    .line 1860
    :catch_100
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->aspectOf()Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/lge/launcher3/backuprestore/BackupRestoreAspect;->ajc$after$com_lge_launcher3_backuprestore_BackupRestoreAspect$2$55b09685(Landroid/content/Context;Ljava/util/ArrayList;)V

    throw v0
.end method

.method private static final verifyApplications_aroundBody1$advice(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/lge/launcher3/nativejoin/LauncherModelAspect;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5

    .prologue
    .line 189
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/launcher3/memory/MemoryUtils;->hasAvailableFileSystemMemory(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_10

    .line 190
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->TAG:Ljava/lang/String;

    .line 191
    const-string v1, "Memory is full. so LoaderTask.verifyApplications() is canceled."

    .line 190
    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_f
    return-void

    .line 195
    :cond_10
    invoke-static {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->verifyApplications_aroundBody0(Lcom/android/launcher3/LauncherModel$LoaderTask;)V

    goto :goto_f
.end method

.method private waitForIdle()V
    .registers 7

    .prologue
    .line 1650
    monitor-enter p0

    .line 1651
    :try_start_1
    sget-boolean v0, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v0, :cond_43

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1653
    :goto_9
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    new-instance v3, Lcom/android/launcher3/LauncherModel$LoaderTask$1;

    invoke-direct {v3, p0}, Lcom/android/launcher3/LauncherModel$LoaderTask$1;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    .line 1665
    :goto_15
    iget-boolean v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_1d

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    if-eqz v2, :cond_46

    .line 1674
    :cond_1d
    sget-boolean v2, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v2, :cond_41

    .line 1675
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "waited "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1676
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1677
    const-string v1, "ms for previous step to finish binding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1675
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :cond_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_4e

    .line 1680
    return-void

    .line 1651
    :cond_43
    const-wide/16 v0, 0x0

    goto :goto_9

    .line 1669
    :cond_46
    const-wide/16 v2, 0x3e8

    :try_start_48
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_4b
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_4b} :catch_4c
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4e

    goto :goto_15

    :catch_4c
    move-exception v2

    goto :goto_15

    .line 1650
    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v0
.end method


# virtual methods
.method public dumpState()V
    .registers 5

    .prologue
    .line 3161
    sget-object v1, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3162
    :try_start_3
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mLoaderTask.mContext="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mLoaderTask.mStopped="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mLoaderTask.mLoadAndBindStepFinished="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mItems size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3161
    monitor-exit v1

    .line 3167
    return-void

    .line 3161
    :catchall_61
    move-exception v0

    monitor-exit v1
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_61

    throw v0
.end method

.method isLoadingWorkspace()Z
    .registers 2

    .prologue
    .line 1621
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mIsLoadingAndBindingWorkspace:Z

    return v0
.end method

.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1729
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1730
    :try_start_6
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_c

    .line 1731
    monitor-exit v1

    .line 1770
    :goto_b
    return-void

    .line 1733
    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    .line 1729
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_52

    .line 1739
    sget-boolean v0, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v0, :cond_1d

    const-string v0, "Launcher.Model"

    const-string v1, "step 1: loading workspace"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    :cond_1d
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->loadAndBindWorkspace()V

    .line 1742
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_55

    .line 1752
    :goto_24
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_31

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1755
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->verifyApplications()V

    .line 1760
    :cond_31
    iput-object v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1762
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1764
    :try_start_38
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    if-ne v0, p0, :cond_43

    .line 1765
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    .line 1767
    :cond_43
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    .line 1768
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/launcher3/LauncherModel;->mHasLoaderCompletedOnce:Z

    .line 1762
    monitor-exit v1

    goto :goto_b

    :catchall_4f
    move-exception v0

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_38 .. :try_end_51} :catchall_4f

    throw v0

    .line 1729
    :catchall_52
    move-exception v0

    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v0

    .line 1745
    :cond_55
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->waitForIdle()V

    .line 1748
    sget-boolean v0, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v0, :cond_63

    const-string v0, "Launcher.Model"

    const-string v1, "step 2: loading all apps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :cond_63
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->loadAndBindAllApps()V

    goto :goto_24
.end method

.method runBindSynchronousPage(I)V
    .registers 5

    .prologue
    .line 1683
    const/16 v0, -0x3e9

    if-ne p1, v0, :cond_c

    .line 1685
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not call runBindSynchronousPage() without valid page index"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1688
    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherModel;->mAllAppsLoaded:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherModel;->mWorkspaceLoaded:Z

    if-nez v0, :cond_20

    .line 1691
    :cond_18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expecting AllApps and Workspace to be loaded"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1693
    :cond_20
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1694
    :try_start_25
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    if-eqz v0, :cond_36

    .line 1697
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Error! Background loading is already running"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1693
    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_33

    throw v0

    :cond_36
    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_33

    .line 1708
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    invoke-virtual {v0}, Lcom/android/launcher3/DeferredHandler;->flush()V

    .line 1712
    monitor-enter p0

    .line 1713
    :try_start_3f
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_45

    .line 1714
    monitor-exit p0

    .line 1726
    :goto_44
    return-void

    .line 1712
    :cond_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_53

    .line 1717
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherModel$LoaderTask;->bindWorkspace(I)V

    .line 1720
    monitor-enter p0

    .line 1721
    :try_start_4a
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_56

    .line 1722
    monitor-exit p0

    goto :goto_44

    .line 1720
    :catchall_50
    move-exception v0

    monitor-exit p0
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_50

    throw v0

    .line 1712
    :catchall_53
    move-exception v0

    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v0

    .line 1720
    :cond_56
    :try_start_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_50

    .line 1725
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->onlyBindAllApps()V

    goto :goto_44
.end method

.method public stopLocked()V
    .registers 2

    .prologue
    .line 1773
    monitor-enter p0

    .line 1774
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    .line 1775
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1773
    monitor-exit p0

    .line 1777
    return-void

    .line 1773
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method

.method tryGetCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Lcom/android/launcher3/LauncherModel$Callbacks;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1787
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1788
    :try_start_6
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_d

    .line 1789
    monitor-exit v2

    move-object v0, v1

    .line 1805
    :goto_c
    return-object v0

    .line 1792
    :cond_d
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_16

    .line 1793
    monitor-exit v2

    move-object v0, v1

    goto :goto_c

    .line 1796
    :cond_16
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 1797
    if-eq v0, p1, :cond_25

    .line 1798
    monitor-exit v2

    move-object v0, v1

    goto :goto_c

    .line 1800
    :cond_25
    if-nez v0, :cond_31

    .line 1801
    const-string v0, "Launcher.Model"

    const-string v3, "no mCallbacks"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    monitor-exit v2

    move-object v0, v1

    goto :goto_c

    .line 1805
    :cond_31
    monitor-exit v2

    goto :goto_c

    .line 1787
    :catchall_33
    move-exception v0

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_33

    throw v0
.end method
