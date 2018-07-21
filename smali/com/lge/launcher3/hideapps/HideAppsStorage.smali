.class public Lcom/lge/launcher3/hideapps/HideAppsStorage;
.super Ljava/lang/Object;
.source "HideAppsStorage.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "HideApps.Storage"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addItems(Landroid/content/Context;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/launcher3/hideapps/HideAppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 25
    const-string v0, "HideApps.Storage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Add "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {p0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v4

    .line 27
    invoke-static {p0}, Lcom/lge/launcher3/hideapps/HideAppsStorage;->getMaxId(Landroid/content/Context;)I

    move-result v1

    .line 28
    new-array v5, v3, [Landroid/content/ContentValues;

    .line 29
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_2b
    if-lt v1, v3, :cond_3a

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 42
    sget-object v1, Lcom/android/launcher3/LauncherSettings$HideApps;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 44
    invoke-static {p0}, Lcom/lge/launcher3/hideapps/HideAppsStorage;->notifyChange(Landroid/content/Context;)V

    .line 45
    return-void

    .line 30
    :cond_3a
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/hideapps/HideAppItem;

    .line 32
    const-string v6, "HideApps.Storage"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Add: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lge/launcher3/hideapps/HideAppItem;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v6, v0, Lcom/lge/launcher3/hideapps/HideAppItem;->activityInfo:Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    invoke-virtual {v6}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 35
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    aput-object v7, v5, v1

    .line 36
    aget-object v7, v5, v1

    const-string v8, "_id"

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    aget-object v7, v5, v1

    const-string v8, "componentName"

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    aget-object v6, v5, v1

    const-string v7, "profileId"

    iget-object v0, v0, Lcom/lge/launcher3/hideapps/HideAppItem;->userHandle:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2b
.end method

.method public static deleteAll(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 48
    const-string v0, "HideApps.Storage"

    const-string v1, "Delete all items"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/android/launcher3/LauncherSettings$HideApps;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 52
    const-string v1, "HideApps.Storage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " items are deleted"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {p0}, Lcom/lge/launcher3/hideapps/HideAppsStorage;->notifyChange(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public static getAllItems(Landroid/content/Context;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 67
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 70
    invoke-static {p0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v1

    .line 72
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "componentName"

    aput-object v3, v2, v10

    .line 73
    const-string v3, "profileId=?"

    .line 74
    new-array v4, v4, [Ljava/lang/String;

    .line 75
    invoke-virtual {v1, p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v10

    .line 77
    :try_start_24
    sget-object v1, Lcom/android/launcher3/LauncherSettings$HideApps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_66

    move-result-object v1

    .line 78
    :goto_2b
    :try_start_2b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_44

    move-result v0

    if-nez v0, :cond_37

    .line 81
    if-eqz v1, :cond_36

    :try_start_33
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_66

    .line 85
    :cond_36
    :goto_36
    return-object v7

    .line 79
    :cond_37
    const/4 v0, 0x0

    :try_start_38
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_44

    goto :goto_2b

    .line 81
    :catchall_44
    move-exception v0

    if-eqz v1, :cond_4a

    :try_start_47
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4a
    throw v0
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_4f
    if-nez v1, :cond_5f

    :goto_51
    :try_start_51
    throw v0
    :try_end_52
    .catch Landroid/database/SQLException; {:try_start_51 .. :try_end_52} :catch_52

    :catch_52
    move-exception v0

    .line 82
    const-string v1, "HideApps.Storage"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v2, v10, [I

    invoke-static {v1, v0, v2}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_36

    .line 81
    :cond_5f
    if-eq v1, v0, :cond_64

    :try_start_61
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_64
    .catch Landroid/database/SQLException; {:try_start_61 .. :try_end_64} :catch_52

    :cond_64
    move-object v0, v1

    goto :goto_51

    :catchall_66
    move-exception v0

    move-object v1, v6

    goto :goto_4f
.end method

.method public static getMaxId(Landroid/content/Context;)I
    .registers 11

    .prologue
    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 90
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "MAX(_id)"

    aput-object v1, v2, v8

    .line 91
    :try_start_e
    sget-object v1, Lcom/android/launcher3/LauncherSettings$HideApps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_32

    move-result-object v1

    .line 92
    :try_start_17
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_45

    move-result v0

    if-nez v0, :cond_24

    .line 97
    if-eqz v1, :cond_22

    :try_start_1f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_32

    :cond_22
    move v0, v6

    .line 101
    :cond_23
    :goto_23
    return v0

    .line 95
    :cond_24
    :try_start_24
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 96
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_45

    move-result v0

    .line 97
    if-eqz v1, :cond_23

    :try_start_2e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_23

    :catchall_32
    move-exception v0

    move-object v1, v7

    :goto_34
    if-nez v1, :cond_51

    :goto_36
    :try_start_36
    throw v0
    :try_end_37
    .catch Landroid/database/SQLException; {:try_start_36 .. :try_end_37} :catch_37

    :catch_37
    move-exception v0

    .line 98
    const-string v1, "HideApps.Storage"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v2, v8, [I

    invoke-static {v1, v0, v2}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    move v0, v6

    .line 101
    goto :goto_23

    .line 96
    :catchall_45
    move-exception v0

    .line 97
    if-eqz v1, :cond_4b

    :try_start_48
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4b
    throw v0
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_34

    :cond_51
    if-eq v1, v0, :cond_56

    :try_start_53
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_56
    .catch Landroid/database/SQLException; {:try_start_53 .. :try_end_56} :catch_37

    :cond_56
    move-object v0, v1

    goto :goto_36
.end method

.method public static notifyChange(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 106
    sget-object v1, Lcom/android/launcher3/LauncherSettings$HideApps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 107
    return-void
.end method

.method public static declared-synchronized removeItemForPkg(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 13

    .prologue
    .line 58
    const-class v1, Lcom/lge/launcher3/hideapps/HideAppsStorage;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 59
    invoke-static {p0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v2

    .line 60
    invoke-virtual {v2, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v2

    .line 61
    sget-object v4, Lcom/android/launcher3/LauncherSettings$HideApps;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "componentName LIKE ? AND profileId = ?"

    .line 62
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    .line 61
    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 63
    invoke-static {p0}, Lcom/lge/launcher3/hideapps/HideAppsStorage;->notifyChange(Landroid/content/Context;)V
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_3b

    .line 64
    monitor-exit v1

    return-void

    .line 58
    :catchall_3b
    move-exception v0

    monitor-exit v1

    throw v0
.end method
