.class public Lcom/lge/launcher3/sortappsby/SortAppsByDatabaseController;
.super Ljava/lang/Object;
.source "SortAppsByDatabaseController.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/lge/launcher3/sortappsby/SortAppsByDatabaseController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/sortappsby/SortAppsByDatabaseController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCursorOfItemList(Landroid/content/Context;I)Landroid/database/Cursor;
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 141
    const/16 v1, 0xa

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v7

    .line 142
    const-string v1, "title"

    aput-object v1, v2, v4

    const/4 v1, 0x2

    const-string v3, "intent"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    .line 143
    const-string v3, "screen"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "cellX"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    .line 144
    const-string v3, "cellY"

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string v3, "spanX"

    aput-object v3, v2, v1

    const/4 v1, 0x7

    .line 145
    const-string v3, "spanY"

    aput-object v3, v2, v1

    const/16 v1, 0x8

    const-string v3, "itemType"

    aput-object v3, v2, v1

    const/16 v1, 0x9

    .line 146
    const-string v3, "profileId"

    aput-object v3, v2, v1

    .line 147
    const-string v3, "(container = -100) AND (itemType = ?)"

    .line 150
    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 151
    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    .line 150
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getItemList(Landroid/content/Context;Landroid/util/SparseIntArray;ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseIntArray;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    if-nez p3, :cond_7

    .line 74
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct/range {p3 .. p3}, Ljava/util/ArrayList;-><init>()V

    .line 77
    :cond_7
    const/4 v2, 0x0

    .line 79
    :try_start_8
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/lge/launcher3/sortappsby/SortAppsByDatabaseController;->getCursorOfItemList(Landroid/content/Context;I)Landroid/database/Cursor;
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_f} :catch_1d

    move-result-object v2

    move-object v15, v2

    .line 84
    :goto_11
    if-nez v15, :cond_35

    .line 85
    sget-object v2, Lcom/lge/launcher3/sortappsby/SortAppsByDatabaseController;->TAG:Ljava/lang/String;

    const-string v3, "getItemList() : Cursor is null"

    invoke-static {v2, v3}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/16 p3, 0x0

    .line 131
    :cond_1c
    return-object p3

    .line 80
    :catch_1d
    move-exception v3

    .line 81
    sget-object v4, Lcom/lge/launcher3/sortappsby/SortAppsByDatabaseController;->TAG:Ljava/lang/String;

    const-string v5, "getItemList() : SQLiteException(%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v2

    goto :goto_11

    .line 89
    :cond_35
    const-string v2, "_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 90
    const-string v2, "title"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 91
    const-string v2, "intent"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 92
    const-string v2, "screen"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 93
    const-string v2, "cellX"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 94
    const-string v2, "cellY"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 95
    const-string v2, "spanX"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 96
    const-string v2, "spanY"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 97
    const-string v2, "itemType"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 98
    const-string v2, "profileId"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 100
    :cond_71
    :goto_71
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 101
    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 102
    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 104
    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 105
    const/4 v6, 0x0

    .line 106
    if-eqz v2, :cond_8f

    .line 108
    const/4 v3, 0x0

    :try_start_8b
    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_8e
    .catch Ljava/net/URISyntaxException; {:try_start_8b .. :try_end_8e} :catch_d5

    move-result-object v6

    .line 115
    :cond_8f
    :goto_8f
    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 116
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 117
    const/4 v2, 0x1

    if-lt v8, v2, :cond_71

    .line 121
    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 122
    move/from16 v0, v21

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 123
    move/from16 v0, v22

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 124
    move/from16 v0, v23

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 125
    move/from16 v0, v24

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 126
    move/from16 v0, v25

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 128
    new-instance v2, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;

    move-object/from16 v3, p0

    .line 129
    invoke-direct/range {v2 .. v14}, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/content/Intent;IIIIIIII)V

    .line 128
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 109
    :catch_d5
    move-exception v2

    .line 110
    sget-object v3, Lcom/lge/launcher3/sortappsby/SortAppsByDatabaseController;->TAG:Ljava/lang/String;

    const-string v7, "getItemList() : URISyntaxException(%s), intent(%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 111
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v9

    const/4 v2, 0x1

    aput-object v6, v8, v2

    .line 110
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8f
.end method

.method public static getScreenArray(Landroid/content/Context;)Landroid/util/SparseIntArray;
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 36
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 37
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    .line 38
    const-string v3, "screenRank"

    aput-object v3, v2, v1

    .line 40
    sget-object v1, Lcom/android/launcher3/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 41
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_1d} :catch_2a

    move-result-object v0

    move-object v1, v0

    .line 46
    :goto_1f
    if-nez v1, :cond_40

    .line 47
    sget-object v0, Lcom/lge/launcher3/sortappsby/SortAppsByDatabaseController;->TAG:Ljava/lang/String;

    const-string v1, "getScreenArray() : Cursor is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    .line 61
    :cond_29
    return-object v0

    .line 42
    :catch_2a
    move-exception v0

    .line 43
    sget-object v1, Lcom/lge/launcher3/sortappsby/SortAppsByDatabaseController;->TAG:Ljava/lang/String;

    const-string v2, "getScreenArray() : SQLiteException(%s)"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    goto :goto_1f

    .line 51
    :cond_40
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 52
    const-string v0, "screenRank"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 54
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 55
    :goto_51
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 56
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 57
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 59
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_51
.end method

.method public static updateRearrangedItemList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 162
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 164
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    .line 194
    return-void

    .line 164
    :cond_16
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;

    .line 165
    invoke-virtual {v0}, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->isScreenIdChanged()Z

    move-result v1

    .line 166
    invoke-virtual {v0}, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->isCellXChanged()Z

    move-result v5

    .line 167
    invoke-virtual {v0}, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->isCellYChanged()Z

    move-result v6

    .line 169
    if-nez v1, :cond_2e

    if-nez v5, :cond_2e

    if-eqz v6, :cond_f

    .line 173
    :cond_2e
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 174
    if-eqz v1, :cond_3e

    .line 175
    const-string v1, "screen"

    iget v7, v0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mNewScreenId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    :cond_3e
    if-eqz v5, :cond_4b

    .line 178
    const-string v1, "cellX"

    iget v5, v0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mNewCellX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    :cond_4b
    if-eqz v6, :cond_58

    .line 181
    const-string v1, "cellY"

    iget v5, v0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mNewCellY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    :cond_58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "_id = "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    :try_start_69
    sget-object v5, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v3, v1, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_69 .. :try_end_6f} :catch_70

    goto :goto_f

    .line 187
    :catch_70
    move-exception v1

    .line 188
    sget-object v5, Lcom/lge/launcher3/sortappsby/SortAppsByDatabaseController;->TAG:Ljava/lang/String;

    .line 189
    const-string v6, "updateRearrangedItemList() : SQLiteException(%s)"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v8

    .line 188
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object v1, Lcom/lge/launcher3/sortappsby/SortAppsByDatabaseController;->TAG:Ljava/lang/String;

    const-string v5, "updateRearrangedItemList() : itemInfo(%s)"

    new-array v6, v9, [Ljava/lang/Object;

    .line 191
    invoke-virtual {v0}, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    .line 190
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f
.end method
