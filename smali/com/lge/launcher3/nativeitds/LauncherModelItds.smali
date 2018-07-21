.class public Lcom/lge/launcher3/nativeitds/LauncherModelItds;
.super Ljava/lang/Object;
.source "LauncherModelItds.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherModelItds;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    :try_start_0
    const-class v0, Lcom/lge/launcher3/nativeitds/LauncherModelItds;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$postClinit()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$checkQMemoplusPanelPackabe(Lcom/android/launcher3/LauncherModel;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 133
    const-string v0, "com.lge.qmemoplus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 134
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_QMEMOPLUS_PANEL:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 135
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_19

    .line 137
    invoke-interface {v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->invalidateHasCustomContentToLeft()V

    .line 141
    :cond_19
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$findLastAvailableIconSpaceInScreen(Ljava/util/ArrayList;[III)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;[III)Z"
        }
    .end annotation

    .prologue
    .line 263
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    .line 265
    iget v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 266
    iget v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 267
    filled-new-array {v3, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Z

    .line 268
    if-eqz p0, :cond_24

    .line 269
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2c

    :cond_24
    move-object v0, p1

    move v1, p2

    move v2, p3

    .line 280
    invoke-static/range {v0 .. v5}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_Utilities$findLastVacantCell([IIIII[[Z)Z

    move-result v0

    return v0

    .line 269
    :cond_2c
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 270
    iget v1, v0, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v2, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    add-int v7, v1, v2

    .line 271
    iget v1, v0, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v2, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    add-int v8, v1, v2

    .line 272
    iget v1, v0, Lcom/android/launcher3/ItemInfo;->cellX:I

    move v2, v1

    :goto_41
    if-ltz v2, :cond_1e

    if-ge v2, v7, :cond_1e

    if-ge v2, v3, :cond_1e

    .line 273
    iget v1, v0, Lcom/android/launcher3/ItemInfo;->cellY:I

    :goto_49
    if-ltz v1, :cond_4f

    if-ge v1, v8, :cond_4f

    if-lt v1, v4, :cond_53

    .line 272
    :cond_4f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_41

    .line 274
    :cond_53
    aget-object v9, v5, v2

    const/4 v10, 0x1

    aput-boolean v10, v9, v1

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_49
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$findLastSpaceForItem(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/Pair;
    .registers 19
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
            ">;II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 213
    new-instance v6, Landroid/util/LongSparseArray;

    invoke-direct {v6}, Landroid/util/LongSparseArray;-><init>()V

    .line 216
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->ajc$privMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$assertWorkspaceLoaded()V

    .line 217
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->ajc$get$sBgLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 218
    :try_start_d
    sget-object v2, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_13
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7a

    .line 217
    monitor-exit v4
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_a1

    .line 231
    const-wide/16 v4, 0x0

    .line 232
    const/4 v2, 0x2

    new-array v7, v2, [I

    .line 233
    const/4 v2, 0x0

    .line 235
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 237
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a4

    const/4 v3, 0x0

    .line 238
    :goto_2b
    if-ge v3, v8, :cond_b1

    .line 239
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 241
    invoke-virtual {v6, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 240
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v2, v7, v0, v1}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$findLastAvailableIconSpaceInScreen(Ljava/util/ArrayList;[III)Z

    move-result v2

    move v12, v2

    move-wide v2, v4

    move v4, v12

    .line 244
    :goto_48
    if-nez v4, :cond_a8

    .line 246
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherProvider;->generateNewScreenId()J

    move-result-wide v4

    .line 249
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {v6, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 253
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v2, v7, v0, v1}, Lcom/android/launcher3/LauncherModel;->ajc$privMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;[III)Z

    move-result v2

    .line 254
    if-nez v2, :cond_a7

    .line 255
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t find space to add the item"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 218
    :cond_7a
    :try_start_7a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ItemInfo;

    .line 219
    iget-wide v8, v2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v3, v8, v10

    if-nez v3, :cond_13

    .line 220
    iget-wide v8, v2, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v6, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 221
    if-nez v3, :cond_9c

    .line 222
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 223
    iget-wide v8, v2, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v6, v8, v9, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 225
    :cond_9c
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    .line 217
    :catchall_a1
    move-exception v2

    monitor-exit v4
    :try_end_a3
    .catchall {:try_start_7a .. :try_end_a3} :catchall_a1

    throw v2

    .line 237
    :cond_a4
    add-int/lit8 v3, v8, -0x1

    goto :goto_2b

    :cond_a7
    move-wide v2, v4

    .line 258
    :cond_a8
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    :cond_b1
    move v12, v2

    move-wide v2, v4

    move v4, v12

    goto :goto_48
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$getItemInSharingContentTable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 82
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v8

    aput-object p1, v2, v9

    .line 83
    const-string v3, "_id = 0"

    .line 87
    :try_start_12
    sget-object v1, Lcom/android/launcher3/LauncherSettings$SharingContents;->CONTENT_URI:Landroid/net/Uri;

    .line 88
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 87
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_1a} :catch_26

    move-result-object v0

    move-object v1, v0

    .line 94
    :goto_1c
    if-nez v1, :cond_3c

    .line 95
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->TAG:Ljava/lang/String;

    const-string v1, "getItemInSharingContentTable() : The cursor is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_25
    return-object v7

    .line 89
    :catch_26
    move-exception v0

    .line 90
    sget-object v1, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->TAG:Ljava/lang/String;

    .line 91
    const-string v2, "getItemInSharingContentTable() : SQLiteException(%s)"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    .line 90
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    goto :goto_1c

    .line 99
    :cond_3c
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object v0, v7

    .line 101
    :goto_41
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_49

    move-object v7, v0

    .line 104
    goto :goto_25

    .line 102
    :cond_49
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_41
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$getLGFolderInWorkspace(Ljava/lang/String;)Lcom/android/launcher3/FolderInfo;
    .registers 4

    .prologue
    .line 182
    if-eqz p0, :cond_10

    .line 183
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->ajc$get$sBgFolders()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    .line 189
    :cond_10
    const/4 v0, 0x0

    :goto_11
    return-object v0

    .line 183
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo;

    .line 184
    iget-object v2, v0, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_11
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$getLastItemInWorkspace()Lcom/android/launcher3/ItemInfo;
    .registers 8

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    sget-object v1, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    .line 178
    return-object v1

    .line 158
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 159
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v3, v4, v6

    if-nez v3, :cond_8

    .line 162
    if-nez v1, :cond_21

    move-object v1, v0

    .line 164
    goto :goto_8

    .line 165
    :cond_21
    iget-wide v4, v1, Lcom/android/launcher3/ItemInfo;->screenId:J

    iget-wide v6, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_2b

    move-object v1, v0

    .line 167
    goto :goto_8

    :cond_2b
    iget-wide v4, v1, Lcom/android/launcher3/ItemInfo;->screenId:J

    iget-wide v6, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_8

    .line 168
    iget v3, v1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v4, v0, Lcom/android/launcher3/ItemInfo;->cellY:I

    if-ge v3, v4, :cond_3b

    move-object v1, v0

    .line 170
    goto :goto_8

    :cond_3b
    iget v3, v1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v4, v0, Lcom/android/launcher3/ItemInfo;->cellY:I

    if-ne v3, v4, :cond_8

    .line 171
    iget v3, v1, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v4, v0, Lcom/android/launcher3/ItemInfo;->cellX:I

    if-ge v3, v4, :cond_8

    move-object v1, v0

    .line 172
    goto :goto_8
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$getParentFolder(Lcom/android/launcher3/ShortcutInfo;)Lcom/android/launcher3/FolderInfo;
    .registers 7

    .prologue
    .line 193
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->ajc$get$sBgFolders()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v0

    if-lt v1, v0, :cond_e

    .line 200
    const/4 v0, 0x0

    :cond_d
    return-object v0

    .line 194
    :cond_e
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->ajc$get$sBgFolders()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->keyAt(I)J

    move-result-wide v2

    .line 195
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->ajc$get$sBgFolders()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo;

    .line 196
    iget-wide v2, v0, Lcom/android/launcher3/FolderInfo;->id:J

    iget-wide v4, p0, Lcom/android/launcher3/ShortcutInfo;->container:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d

    .line 193
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$removeDuplicateList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$resizeItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;IIII)V
    .registers 16

    .prologue
    .line 122
    iput p4, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 123
    iput p5, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 124
    iput p2, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 125
    iput p3, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 127
    invoke-static {p1}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$updateItemsMap(Lcom/android/launcher3/ItemInfo;)V

    .line 128
    iget-wide v2, p1, Lcom/android/launcher3/ItemInfo;->container:J

    iget-wide v4, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    iget v6, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v7, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 129
    iget v8, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v9, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object v0, p0

    move-object v1, p1

    .line 128
    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/LauncherModel;->modifyItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJIIII)V

    .line 130
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$updateItemInSharingContentTable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v1, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 46
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 47
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :try_start_11
    sget-object v3, Lcom/android/launcher3/LauncherSettings$SharingContents;->CONTENT_URI:Landroid/net/Uri;

    .line 53
    const-string v4, "_id=\"0\""

    const/4 v5, 0x0

    .line 51
    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_19} :catch_37

    move-result v0

    .line 59
    :goto_1a
    if-eq v0, v1, :cond_4d

    .line 60
    sget-object v1, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->TAG:Ljava/lang/String;

    .line 61
    const-string v3, "updateItemInSharingContentTable() : Notify %s is changed(%s)"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v6

    aput-object p2, v4, v7

    .line 60
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v1, Lcom/android/launcher3/LauncherSettings$SharingContents;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 65
    invoke-virtual {v2, v1, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 70
    :goto_36
    return v0

    .line 54
    :catch_37
    move-exception v0

    .line 55
    sget-object v3, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->TAG:Ljava/lang/String;

    .line 56
    const-string v4, "updateItemInSharingContentTable() : SQLiteException(%s)"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 55
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1a

    .line 67
    :cond_4d
    sget-object v1, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->TAG:Ljava/lang/String;

    .line 68
    const-string v2, "updateItemInSharingContentTable() : Fail to notify %s is changed : %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object p2, v3, v7

    .line 67
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$updateItemsMap(Lcom/android/launcher3/ItemInfo;)V
    .registers 9

    .prologue
    .line 108
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->ajc$get$sBgLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 109
    :try_start_5
    sget-object v2, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v6, p0, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-virtual {v2, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ItemInfo;

    .line 110
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    move-object v3, v0

    .line 111
    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutInfo;->getIconId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 112
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->ajc$get$sBgWorkspaceItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 113
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->ajc$get$sBgWorkspaceItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v2, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v6, p0, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-virtual {v2, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 115
    sget-object v2, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v6, p0, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-virtual {v2, v6, v7, p0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 108
    :cond_35
    monitor-exit v4

    .line 118
    return-void

    .line 108
    :catchall_37
    move-exception v2

    monitor-exit v4
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_37

    throw v2
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$updateMaxScreenId(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 145
    const-wide/16 v2, 0x0

    .line 146
    const/4 v0, 0x0

    move v4, v0

    :goto_8
    if-lt v4, v5, :cond_18

    .line 151
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 152
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/lge/launcher3/nativeitds/LauncherProviderItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherProviderItds$com_android_launcher3_LauncherProvider$updateMaxScreenId(Lcom/android/launcher3/LauncherProvider;J)V

    .line 154
    :cond_17
    return-void

    .line 147
    :cond_18
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_35

    .line 148
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 146
    :goto_30
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_8

    :cond_35
    move-wide v0, v2

    goto :goto_30
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_Utilities$findLastVacantCell([IIIII[[Z)Z
    .registers 15

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 287
    sub-int v5, p4, p2

    move v0, v1

    :goto_5
    if-gez v5, :cond_8

    .line 307
    :goto_7
    return v0

    .line 288
    :cond_8
    sub-int v7, p3, p1

    move v3, v0

    :goto_b
    if-gez v7, :cond_11

    .line 287
    add-int/lit8 v5, v5, -0x1

    move v0, v3

    goto :goto_5

    .line 289
    :cond_11
    aget-object v0, p5, v7

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_27

    move v0, v1

    :goto_18
    move v6, v7

    .line 290
    :goto_19
    add-int v4, v7, p1

    if-lt v6, v4, :cond_29

    .line 297
    :cond_1d
    if-eqz v0, :cond_42

    .line 298
    aput v7, p0, v1

    .line 299
    aput v5, p0, v2

    .line 288
    add-int/lit8 v7, v7, -0x1

    move v3, v2

    goto :goto_b

    :cond_27
    move v0, v2

    .line 289
    goto :goto_18

    :cond_29
    move v4, v5

    .line 291
    :goto_2a
    add-int v8, v5, p2

    if-lt v4, v8, :cond_32

    .line 290
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_19

    .line 292
    :cond_32
    if-eqz v0, :cond_40

    aget-object v0, p5, v6

    aget-boolean v0, v0, v4

    if-nez v0, :cond_40

    move v0, v2

    .line 293
    :goto_3b
    if-eqz v0, :cond_1d

    .line 291
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_40
    move v0, v1

    .line 292
    goto :goto_3b

    :cond_42
    move v0, v3

    .line 302
    goto :goto_7
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$checkQMemoplusPanelPackabe(Lcom/android/launcher3/LauncherModel;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherModel;->ajc$interMethodDispatch2$com_lge_launcher3_nativeitds_LauncherModelItds$checkQMemoplusPanelPackabe(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$findLastAvailableIconSpaceInScreen(Ljava/util/ArrayList;[III)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;[III)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/LauncherModel;->ajc$interMethodDispatch2$com_lge_launcher3_nativeitds_LauncherModelItds$findLastAvailableIconSpaceInScreen(Ljava/util/ArrayList;[III)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$findLastSpaceForItem(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/Pair;
    .registers 7
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
            ">;II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "[I>;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher3/LauncherModel;->ajc$interMethodDispatch2$com_lge_launcher3_nativeitds$findLastSpaceForItem(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$getItemInSharingContentTable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/android/launcher3/LauncherModel;->getItemInSharingContentTable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$getLGFolderInWorkspace(Ljava/lang/String;)Lcom/android/launcher3/FolderInfo;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->getLGFolderInWorkspace(Ljava/lang/String;)Lcom/android/launcher3/FolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$getLastItemInWorkspace()Lcom/android/launcher3/ItemInfo;
    .registers 1

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getLastItemInWorkspace()Lcom/android/launcher3/ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$getParentFolder(Lcom/android/launcher3/ShortcutInfo;)Lcom/android/launcher3/FolderInfo;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->getParentFolder(Lcom/android/launcher3/ShortcutInfo;)Lcom/android/launcher3/FolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$removeDuplicateList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->removeDuplicateList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$resizeItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;IIII)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/LauncherModel;->resizeItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;IIII)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$updateItemInSharingContentTable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/LauncherModel;->updateItemInSharingContentTable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$updateItemsMap(Lcom/android/launcher3/ItemInfo;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->updateItemsMap(Lcom/android/launcher3/ItemInfo;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$updateMaxScreenId(Ljava/util/ArrayList;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->updateMaxScreenId(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_Utilities$findLastVacantCell([IIIII[[Z)Z
    .registers 7

    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/Utilities;->findLastVacantCell([IIIII[[Z)Z

    move-result v0

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativeitds/LauncherModelItds;

    invoke-direct {v0}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherModelItds;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativeitds/LauncherModelItds;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherModelItds;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativeitds_LauncherModelItds"

    sget-object v2, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherModelItds;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherModelItds;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
