.class public Lcom/lge/launcher3/iconchange/IconChangeDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "IconChangeDbHelper.java"


# static fields
.field public static final COLUMN_NAME_ADAPTIVE_TEXT_COLOR:Ljava/lang/String; = "textColor"

.field public static final COLUMN_NAME_CREATETIME:Ljava/lang/String; = "createTime"

.field public static final COLUMN_NAME_ICON_ID:Ljava/lang/String; = "iconId"

.field public static final COLUMN_NAME_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_NAME_PHOTO_ICON:Ljava/lang/String; = "photoIcon"

.field public static final COLUMN_NAME_SPANX:Ljava/lang/String; = "spanX"

.field public static final COLUMN_NAME_SPANY:Ljava/lang/String; = "spanY"

.field public static final COLUMN_NAME_THUMBNAIL_ICON:Ljava/lang/String; = "thumbnailIcon"

.field private static final DATABASE_NAME:Ljava/lang/String; = "iconchange.db"

.field private static final DATABASE_VERSION:I = 0x3

.field private static final SQL_CREATE_PHOTOICON_TABLE:Ljava/lang/String; = "CREATE TABLE photoicon (_id INTEGER PRIMARY KEY AUTOINCREMENT,iconId TEXT,spanX INTEGER,spanY INTEGER,createTime TEXT DEFAULT (DATETIME(\'NOW\')),photoIcon BLOB,thumbnailIcon BLOB,textColor INTEGER NOT NULL DEFAULT -1 )"

.field private static final SQL_DROP_PHOTOICON_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS photoicon"

.field public static final TABLE_NAME:Ljava/lang/String; = "photoicon"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/lge/launcher3/iconchange/IconChangeDbHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/iconchange/IconChangeDbHelper;->TAG:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 53
    const-string v0, "iconchange.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 54
    return-void
.end method

.method private static final createConstructorFastBitmapDrawable_aroundBody0(Lcom/lge/launcher3/iconchange/IconChangeDbHelper;Landroid/graphics/Bitmap;)Lcom/lge/launcher3/util/IFastBitmapDrawable;
    .registers 3

    .prologue
    .line 148
    invoke-static {p1}, Lcom/lge/launcher3/util/Utilities;->createConstructorFastBitmapDrawable(Landroid/graphics/Bitmap;)Lcom/lge/launcher3/util/IFastBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static final createConstructorFastBitmapDrawable_aroundBody1$advice(Lcom/lge/launcher3/iconchange/IconChangeDbHelper;Landroid/graphics/Bitmap;Lcom/lge/launcher3/util/FastBitmapDrawableAspect;Landroid/graphics/Bitmap;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/lge/launcher3/util/IFastBitmapDrawable;
    .registers 6

    .prologue
    .line 13
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-direct {v0, p3}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 15
    return-object v0
.end method

.method private getIconFromCursor(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 7

    .prologue
    .line 171
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 172
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 173
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 12

    .prologue
    .line 86
    invoke-static {p1, p2}, Lcom/lge/launcher3/util/Utilities;->getBitmapFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    invoke-static {p1, p3}, Lcom/lge/launcher3/util/Utilities;->getBitmapFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 88
    if-eqz v0, :cond_c

    if-nez v1, :cond_14

    .line 89
    :cond_c
    sget-object v0, Lcom/lge/launcher3/iconchange/IconChangeDbHelper;->TAG:Ljava/lang/String;

    const-string v1, "Failed to get bitmap from file"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_13
    :goto_13
    return-void

    .line 93
    :cond_14
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 94
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 95
    const-string v4, "photoIcon"

    invoke-static {v0}, Lcom/lge/launcher3/util/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 96
    const-string v0, "thumbnailIcon"

    invoke-static {v1}, Lcom/lge/launcher3/util/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 97
    const-string v0, "iconId"

    invoke-virtual {v3, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "spanX"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const-string v0, "spanY"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string v0, "textColor"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v0, "photoicon"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 103
    sget-object v0, Lcom/lge/launcher3/iconchange/IconChangeDbHelper;->TAG:Ljava/lang/String;

    const-string v1, "Failed to instert photo icon"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public delete(I)V
    .registers 6

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    const-string v2, "photoicon"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method public getTextColorFromDatabase(Ljava/lang/String;)I
    .registers 11

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x0

    .line 206
    const-string v0, "createTime DESC"

    .line 207
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "textColor"

    aput-object v1, v2, v0

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "iconId = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 211
    const-string v1, "photoicon"

    .line 212
    const-string v7, "createTime DESC"

    move-object v5, v4

    move-object v6, v4

    .line 211
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 214
    if-nez v1, :cond_33

    move v0, v8

    .line 226
    :goto_32
    return v0

    .line 218
    :cond_33
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3e

    .line 219
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 220
    goto :goto_32

    .line 224
    :cond_3e
    :try_start_3e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 225
    const-string v0, "textColor"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_4f

    move-result v0

    .line 228
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_32

    .line 227
    :catchall_4f
    move-exception v0

    .line 228
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 229
    throw v0
.end method

.method public getThumbailFromDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 177
    const-string v0, "createTime DESC"

    .line 178
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "thumbnailIcon"

    aput-object v0, v2, v1

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "iconId = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 183
    const-string v1, "photoicon"

    .line 184
    const-string v7, "createTime DESC"

    move-object v5, v4

    move-object v6, v4

    .line 183
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 186
    if-nez v1, :cond_31

    .line 199
    :goto_30
    return-object v4

    .line 190
    :cond_31
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3b

    .line 191
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_30

    .line 196
    :cond_3b
    :try_start_3b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 197
    const-string v0, "thumbnailIcon"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 198
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 199
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_4d
    .catchall {:try_start_3b .. :try_end_4d} :catchall_52

    move-result-object v4

    .line 201
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_30

    .line 200
    :catchall_52
    move-exception v0

    .line 201
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 202
    throw v0
.end method

.method public load(Landroid/content/Context;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/launcher3/iconchange/IconItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    invoke-static {p1, v4}, Lcom/lge/launcher3/memory/MemoryUtils;->hasAvailableFileSystemMemory(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_10

    .line 115
    sget-object v0, Lcom/lge/launcher3/iconchange/IconChangeDbHelper;->TAG:Ljava/lang/String;

    const-string v1, "[load] can not Access"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :goto_f
    return-object v3

    .line 119
    :cond_10
    const-string v0, "createTime DESC"

    .line 121
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v0, "iconId"

    aput-object v0, v2, v4

    const/4 v0, 0x2

    .line 122
    const-string v1, "spanX"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "spanY"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    .line 123
    const-string v1, "photoIcon"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "thumbnailIcon"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    .line 124
    const-string v1, "createTime"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "textColor"

    aput-object v1, v2, v0

    .line 126
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 130
    const-string v1, "photoicon"

    const-string v7, "createTime DESC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 132
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 133
    if-eqz v9, :cond_61

    .line 135
    :goto_56
    :try_start_56
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_cb
    .catchall {:try_start_56 .. :try_end_59} :catchall_d5

    move-result v1

    if-nez v1, :cond_69

    .line 158
    if-eqz v9, :cond_61

    .line 159
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_61
    :goto_61
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 165
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v3, v8

    .line 167
    goto :goto_f

    .line 136
    :cond_69
    :try_start_69
    const-string v1, "photoIcon"

    invoke-direct {p0, v9, v1, p1}, Lcom/lge/launcher3/iconchange/IconChangeDbHelper;->getIconFromCursor(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 137
    const-string v1, "thumbnailIcon"

    invoke-direct {p0, v9, v1, p1}, Lcom/lge/launcher3/iconchange/IconChangeDbHelper;->getIconFromCursor(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 139
    const-string v1, "spanX"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 140
    const-string v1, "spanY"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 141
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 143
    const-string v1, "iconId"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 142
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 145
    const-string v1, "textColor"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 144
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 147
    new-instance v1, Lcom/lge/launcher3/iconchange/IconItemInfo;

    sget-object v3, Lcom/lge/launcher3/iconchange/IconItemInfo$IconSource;->DB:Lcom/lge/launcher3/iconchange/IconItemInfo$IconSource;

    .line 148
    invoke-static {}, Lcom/lge/launcher3/util/FastBitmapDrawableAspect;->aspectOf()Lcom/lge/launcher3/util/FastBitmapDrawableAspect;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {p0, v4, v12, v4, v13}, Lcom/lge/launcher3/iconchange/IconChangeDbHelper;->createConstructorFastBitmapDrawable_aroundBody1$advice(Lcom/lge/launcher3/iconchange/IconChangeDbHelper;Landroid/graphics/Bitmap;Lcom/lge/launcher3/util/FastBitmapDrawableAspect;Landroid/graphics/Bitmap;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/lge/launcher3/util/IFastBitmapDrawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 147
    invoke-direct/range {v1 .. v7}, Lcom/lge/launcher3/iconchange/IconItemInfo;-><init>(Ljava/lang/String;Lcom/lge/launcher3/iconchange/IconItemInfo$IconSource;Landroid/graphics/drawable/Drawable;III)V

    .line 150
    const-string v2, "photo_icon"

    invoke-virtual {v1, v2, v10}, Lcom/lge/launcher3/iconchange/IconItemInfo;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    const-string v2, "photo_icon_id"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lge/launcher3/iconchange/IconItemInfo;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_ca} :catch_cb
    .catchall {:try_start_69 .. :try_end_ca} :catchall_d5

    goto :goto_56

    .line 155
    :catch_cb
    move-exception v1

    .line 156
    :try_start_cc
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_d5

    .line 158
    if-eqz v9, :cond_61

    .line 159
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_61

    .line 157
    :catchall_d5
    move-exception v0

    .line 158
    if-eqz v9, :cond_db

    .line 159
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 161
    :cond_db
    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    .line 58
    const-string v0, "CREATE TABLE photoicon (_id INTEGER PRIMARY KEY AUTOINCREMENT,iconId TEXT,spanX INTEGER,spanY INTEGER,createTime TEXT DEFAULT (DATETIME(\'NOW\')),photoIcon BLOB,thumbnailIcon BLOB,textColor INTEGER NOT NULL DEFAULT -1 )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .prologue
    .line 81
    const-string v0, "DROP TABLE IF EXISTS photoicon"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/iconchange/IconChangeDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 83
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8

    .prologue
    .line 63
    const/4 v0, 0x3

    if-ge p2, v0, :cond_18

    .line 64
    sget-object v0, Lcom/lge/launcher3/iconchange/IconChangeDbHelper;->TAG:Ljava/lang/String;

    const-string v1, "Add ADAPTIVE_TEXT_COLOR column"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 67
    :try_start_d
    const-string v0, "ALTER TABLE photoicon ADD COLUMN textColor INTEGER NOT NULL DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_15
    .catch Landroid/database/SQLException; {:try_start_d .. :try_end_15} :catch_19
    .catchall {:try_start_d .. :try_end_15} :catchall_2a

    .line 74
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 77
    :cond_18
    :goto_18
    return-void

    .line 71
    :catch_19
    move-exception v0

    .line 72
    :try_start_1a
    sget-object v1, Lcom/lge/launcher3/iconchange/IconChangeDbHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [I

    invoke-static {v1, v2, v0, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;[I)V
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_2a

    .line 74
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_18

    .line 73
    :catchall_2a
    move-exception v0

    .line 74
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 75
    throw v0
.end method
