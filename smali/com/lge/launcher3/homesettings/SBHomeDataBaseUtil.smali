.class public Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;
.super Ljava/lang/Object;
.source "SBHomeDataBaseUtil.java"


# static fields
.field public static final SMARTBULLETIN_CONTAINER_NAME:Ljava/lang/String; = "android.resource://com.android.launcher3/layout/smartbulletin_container"

.field private static final TAG:Ljava/lang/String;

.field private static sFullScreenItemStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, -0x1

    sput v0, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->sFullScreenItemStatus:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static contain(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/FullScreenItemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 168
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 163
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FullScreenItemInfo;

    .line 164
    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/launcher3/FullScreenItemInfo;->resUri:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private static deleteFullScreenItemInfo(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 119
    invoke-static {p0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->readFullScreenItem(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_16

    .line 121
    invoke-static {v0, p1}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->contain(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_17

    .line 129
    :cond_16
    return-void

    .line 122
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FullScreenItemInfo;

    .line 123
    iget-object v2, v0, Lcom/android/launcher3/FullScreenItemInfo;->resUri:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 124
    invoke-static {p0, v0}, Lcom/android/launcher3/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;)V

    .line 125
    const/4 v0, 0x0

    sput v0, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->sFullScreenItemStatus:I

    goto :goto_10
.end method

.method private static existFullScreenItemInfoInDB(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 142
    sget v2, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->sFullScreenItemStatus:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    .line 143
    invoke-static {p0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->readFullScreenItem(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 144
    if-eqz v2, :cond_1b

    .line 145
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v0, :cond_20

    .line 146
    invoke-static {v2, p1}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->contain(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 147
    sput v0, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->sFullScreenItemStatus:I

    .line 158
    :cond_1b
    :goto_1b
    sget v2, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->sFullScreenItemStatus:I

    if-ne v2, v0, :cond_5a

    :goto_1f
    return v0

    .line 148
    :cond_20
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_51

    .line 149
    invoke-static {v2, p1}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->contain(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 150
    sget-object v3, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "existFullScreenItemInfoInDB item count: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 151
    const-string v5, " body: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-static {v3, v2}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    sput v0, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->sFullScreenItemStatus:I

    goto :goto_1b

    .line 153
    :cond_51
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1b

    .line 154
    sput v1, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->sFullScreenItemStatus:I

    goto :goto_1b

    :cond_5a
    move v0, v1

    .line 158
    goto :goto_1f
.end method

.method public static existQmemoPanelItemInDataBase(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 65
    invoke-static {p0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->isEnabledQmemoPanel(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 66
    const/4 v0, 0x0

    .line 69
    :goto_7
    return v0

    :cond_8
    const-string v0, "android.widget://com.lge.qmemoplus/com.lge.qmemoplus.appwidget.QMemoPlusFullAppWidgetProvider"

    invoke-static {p0, v0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->existFullScreenItemInfoInDB(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method public static existSmartBulletinItemInDataBase(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 43
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_SMARTBULLETIN:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-nez v0, :cond_a

    .line 44
    const/4 v0, 0x0

    .line 47
    :goto_9
    return v0

    :cond_a
    const-string v0, "android.resource://com.android.launcher3/layout/smartbulletin_container"

    invoke-static {p0, v0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->existFullScreenItemInfoInDB(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_9
.end method

.method private static getItemInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/FullScreenItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 205
    :try_start_8
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 207
    const-string v2, "container"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 208
    const-string v3, "screen"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 209
    const-string v4, "intent"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 210
    const-string v5, "appWidgetId"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 212
    :goto_26
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_69

    move-result v6

    if-nez v6, :cond_30

    .line 227
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 229
    :goto_2f
    return-object v0

    .line 214
    :cond_30
    :try_start_30
    new-instance v6, Lcom/android/launcher3/FullScreenItemInfo;

    invoke-direct {v6, p0}, Lcom/android/launcher3/FullScreenItemInfo;-><init>(Landroid/content/Context;)V

    .line 215
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/android/launcher3/FullScreenItemInfo;->id:J

    .line 216
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v8, v7

    iput-wide v8, v6, Lcom/android/launcher3/FullScreenItemInfo;->container:J

    .line 217
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v8, v7

    iput-wide v8, v6, Lcom/android/launcher3/FullScreenItemInfo;->screenId:J

    .line 218
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/launcher3/FullScreenItemInfo;->resUri:Ljava/lang/String;

    .line 219
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lcom/android/launcher3/FullScreenItemInfo;->widgetId:I

    .line 220
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_58} :catch_59
    .catchall {:try_start_30 .. :try_end_58} :catchall_69

    goto :goto_26

    .line 221
    :catch_59
    move-exception v0

    .line 222
    :try_start_5a
    sget-object v1, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->TAG:Ljava/lang/String;

    const-string v2, "Desktop items loading interrupted:"

    const/4 v3, 0x0

    new-array v3, v3, [I

    invoke-static {v1, v2, v0, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;[I)V
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_69

    .line 227
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 223
    const/4 v0, 0x0

    goto :goto_2f

    .line 226
    :catchall_69
    move-exception v0

    .line 227
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 228
    throw v0
.end method

.method private static insertFullScreenItemInfo(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 133
    new-instance v1, Lcom/android/launcher3/FullScreenItemInfo;

    invoke-direct {v1, p0}, Lcom/android/launcher3/FullScreenItemInfo;-><init>(Landroid/content/Context;)V

    .line 134
    const-wide/16 v2, -0x12d

    iput-wide v2, v1, Lcom/android/launcher3/FullScreenItemInfo;->screenId:J

    .line 135
    iput-object p1, v1, Lcom/android/launcher3/FullScreenItemInfo;->resUri:Ljava/lang/String;

    .line 136
    const-wide/16 v2, -0x64

    .line 137
    iget-wide v4, v1, Lcom/android/launcher3/FullScreenItemInfo;->screenId:J

    iget v6, v1, Lcom/android/launcher3/FullScreenItemInfo;->cellX:I

    iget v7, v1, Lcom/android/launcher3/FullScreenItemInfo;->cellY:I

    move-object v0, p0

    .line 136
    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V

    .line 138
    const/4 v0, 0x1

    sput v0, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->sFullScreenItemStatus:I

    .line 139
    return-void
.end method

.method public static isEnabledQmemoPanel(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 73
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_QMEMOPLUS_PANEL:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 74
    const-string v0, "com.lge.qmemoplus"

    invoke-static {p0, v0}, Lcom/lge/launcher3/util/PackageUtils;->isPackageUninstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 75
    :cond_10
    const/4 v0, 0x0

    .line 77
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method private static readFullScreenItem(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/FullScreenItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 174
    if-nez v0, :cond_10

    .line 175
    sget-object v0, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->TAG:Ljava/lang/String;

    const-string v1, "The contentResolver is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 196
    :goto_f
    return-object v0

    .line 181
    :cond_10
    :try_start_10
    const-string v1, "itemType=8"

    .line 183
    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "itemType=8"

    const/4 v4, 0x0

    .line 184
    const/4 v5, 0x0

    .line 183
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1c
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_10 .. :try_end_1c} :catch_28
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_1c} :catch_2e

    move-result-object v0

    .line 191
    :goto_1d
    if-nez v0, :cond_46

    .line 192
    sget-object v0, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->TAG:Ljava/lang/String;

    const-string v1, "The Cursor is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 193
    goto :goto_f

    .line 185
    :catch_28
    move-exception v0

    .line 186
    invoke-virtual {v0}, Landroid/database/CursorWindowAllocationException;->printStackTrace()V

    move-object v0, v6

    goto :goto_1d

    .line 187
    :catch_2e
    move-exception v0

    .line 188
    sget-object v1, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->TAG:Ljava/lang/String;

    const-string v2, "SQLiteException : %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_1d

    .line 195
    :cond_46
    invoke-static {p0, v0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->getItemInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_f
.end method

.method private static requestCustomContentReload(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_RELOAD_CUSTOMCONTENT:Lcom/lge/launcher3/config/IntentConst$Action;

    invoke-virtual {v1, p0}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method private static turnOffFullScreenItemInfo(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-static {p0, p1}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->deleteFullScreenItemInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    const-string v0, "android.resource://com.android.launcher3/layout/smartbulletin_container"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 106
    invoke-static {p0}, Lcom/lge/launcher3/homesettings/ActionManagerUserLog;->sendBoardDisabled(Landroid/content/Context;)V

    .line 107
    invoke-static {p0}, Lcom/lge/launcher3/homesettings/SmartBulletinAction;->sendDisabled(Landroid/content/Context;)V

    .line 108
    invoke-static {p0, v1}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateSmartBulletinOnOff(Landroid/content/Context;Z)V

    .line 109
    const-string v0, "Home_EnableSmartBulletin"

    invoke-static {p0, v0, v1}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;I)V

    .line 115
    :cond_1a
    :goto_1a
    invoke-static {p0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->requestCustomContentReload(Landroid/content/Context;)V

    .line 116
    return-void

    .line 110
    :cond_1e
    const-string v0, "android.widget://com.lge.qmemoplus/com.lge.qmemoplus.appwidget.QMemoPlusFullAppWidgetProvider"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 111
    const-string v0, "homesettingsprefs_key_qmemoplus_panel"

    invoke-static {p0, v0, v1}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateCheckValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 112
    const-string v0, "Home_EnableQMemo"

    invoke-static {p0, v0, v1}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1a
.end method

.method public static turnOffQMemoPanel(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 60
    const-string v0, "android.widget://com.lge.qmemoplus/com.lge.qmemoplus.appwidget.QMemoPlusFullAppWidgetProvider"

    invoke-static {p0, v0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->turnOffFullScreenItemInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public static turnOffSmartBulletin(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 38
    const-string v0, "android.resource://com.android.launcher3/layout/smartbulletin_container"

    invoke-static {p0, v0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->turnOffFullScreenItemInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method private static turnOnFullScreenItemInfo(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 86
    invoke-static {p0, p1}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->deleteFullScreenItemInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    invoke-static {p0, p1}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->insertFullScreenItemInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    const-string v0, "android.resource://com.android.launcher3/layout/smartbulletin_container"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 90
    invoke-static {p0}, Lcom/lge/launcher3/homesettings/ActionManagerUserLog;->sendBoardEnabled(Landroid/content/Context;)V

    .line 91
    invoke-static {p0}, Lcom/lge/launcher3/homesettings/SmartBulletinAction;->sendEnabled(Landroid/content/Context;)V

    .line 92
    invoke-static {p0, v1}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateSmartBulletinOnOff(Landroid/content/Context;Z)V

    .line 93
    const-string v0, "Home_EnableSmartBulletin"

    invoke-static {p0, v0, v1}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;I)V

    .line 99
    :cond_1d
    :goto_1d
    invoke-static {p0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->requestCustomContentReload(Landroid/content/Context;)V

    .line 100
    return-void

    .line 94
    :cond_21
    const-string v0, "android.widget://com.lge.qmemoplus/com.lge.qmemoplus.appwidget.QMemoPlusFullAppWidgetProvider"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 95
    const-string v0, "homesettingsprefs_key_qmemoplus_panel"

    invoke-static {p0, v0, v1}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateCheckValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 96
    const-string v0, "Home_EnableQMemo"

    invoke-static {p0, v0, v1}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1d
.end method

.method public static turnOnQMemoPanel(Landroid/content/Context;)Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 51
    invoke-static {p0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->existQmemoPanelItemInDataBase(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 56
    :goto_7
    return v1

    .line 55
    :cond_8
    const-string v0, "android.widget://com.lge.qmemoplus/com.lge.qmemoplus.appwidget.QMemoPlusFullAppWidgetProvider"

    invoke-static {p0, v0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->turnOnFullScreenItemInfo(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static turnOnSmartBulletin(Landroid/content/Context;)Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 29
    invoke-static {p0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->existSmartBulletinItemInDataBase(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 34
    :goto_7
    return v1

    .line 33
    :cond_8
    const-string v0, "android.resource://com.android.launcher3/layout/smartbulletin_container"

    invoke-static {p0, v0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->turnOnFullScreenItemInfo(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7
.end method
