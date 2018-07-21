.class public final Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;
.super Ljava/lang/Object;
.source "SBContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/smartbulletin/provider/SBContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmartBulletin"
.end annotation


# static fields
.field public static final APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field public static final COMPONENT_NAME:Ljava/lang/String; = "componentName"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final IS_ENABLED:Ljava/lang/String; = "isEnabled"

.field public static final NOTI_ICONRES:Ljava/lang/String; = "res"

.field public static final NOTI_TABLE:Ljava/lang/String; = "smartbulletin_noti"

.field public static final NOTI_TIME:Ljava/lang/String; = "time"

.field public static final NOTI_TYPE:Ljava/lang/String; = "type"

.field public static final NOTI_URI:Landroid/net/Uri;

.field public static final POSITION_X:Ljava/lang/String; = "positionX"

.field public static final POSITION_Y:Ljava/lang/String; = "positionY"

.field public static final SPAN_X:Ljava/lang/String; = "spanX"

.field public static final SPAN_Y:Ljava/lang/String; = "spanY"

.field public static final TABLE_NAME:Ljava/lang/String; = "smartbulletin"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-string v0, "content://com.lge.launcher3.smartbulletin/smartbulletin"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 54
    sput-object v0, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->CONTENT_URI:Landroid/net/Uri;

    .line 74
    const-string v0, "content://com.lge.launcher3.smartbulletin/smartbulletin_noti"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 73
    sput-object v0, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->NOTI_URI:Landroid/net/Uri;

    .line 77
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static final deleteById(Landroid/content/Context;I)I
    .registers 7

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 97
    const/4 v0, -0x1

    .line 99
    :try_start_5
    sget-object v2, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_20} :catch_22
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_20} :catch_27
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_5 .. :try_end_20} :catch_2c

    move-result v0

    .line 107
    :goto_21
    return v0

    .line 100
    :catch_22
    move-exception v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_21

    .line 102
    :catch_27
    move-exception v1

    .line 103
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_21

    .line 104
    :catch_2c
    move-exception v1

    .line 105
    invoke-virtual {v1}, Landroid/database/CursorWindowAllocationException;->printStackTrace()V

    goto :goto_21
.end method

.method private static final deleteByWidgetId(Landroid/content/Context;I)I
    .registers 7

    .prologue
    .line 403
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 404
    const/4 v0, -0x1

    .line 406
    :try_start_5
    sget-object v2, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "appWidgetId=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_20} :catch_22
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_20} :catch_27
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_5 .. :try_end_20} :catch_2c

    move-result v0

    .line 414
    :goto_21
    return v0

    .line 407
    :catch_22
    move-exception v1

    .line 408
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_21

    .line 409
    :catch_27
    move-exception v1

    .line 410
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_21

    .line 411
    :catch_2c
    move-exception v1

    .line 412
    invoke-virtual {v1}, Landroid/database/CursorWindowAllocationException;->printStackTrace()V

    goto :goto_21
.end method

.method public static getAllProvider(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 112
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 117
    :try_start_d
    sget-object v1, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_16} :catch_1e
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_16} :catch_24
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_d .. :try_end_16} :catch_2a

    move-result-object v0

    .line 125
    :goto_17
    if-eqz v0, :cond_30

    .line 126
    invoke-static {p0, v0}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->getAllProviderFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    .line 129
    :goto_1d
    return-object v0

    .line 118
    :catch_1e
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v0, v7

    goto :goto_17

    .line 120
    :catch_24
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    move-object v0, v7

    goto :goto_17

    .line 122
    :catch_2a
    move-exception v0

    .line 123
    invoke-virtual {v0}, Landroid/database/CursorWindowAllocationException;->printStackTrace()V

    move-object v0, v7

    goto :goto_17

    :cond_30
    move-object v0, v6

    .line 129
    goto :goto_1d
.end method

.method private static getAllProviderFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Ljava/util/ArrayList;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 147
    :try_start_8
    const-string v2, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 148
    const-string v2, "componentName"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 149
    const-string v2, "positionX"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 150
    const-string v2, "positionY"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 151
    const-string v2, "spanX"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 152
    const-string v2, "spanY"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 153
    const-string v2, "appWidgetId"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 154
    const-string v2, "isEnabled"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_47} :catch_5a
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_47} :catch_63

    move-result v11

    .line 165
    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v12

    .line 167
    :cond_4c
    :goto_4c
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_6c

    .line 192
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 193
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object v2, v3

    .line 194
    :goto_59
    return-object v2

    .line 155
    :catch_5a
    move-exception v2

    .line 156
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 157
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    move-object v2, v3

    .line 158
    goto :goto_59

    .line 159
    :catch_63
    move-exception v2

    .line 160
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 161
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    move-object v2, v3

    .line 162
    goto :goto_59

    .line 168
    :cond_6c
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 169
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 170
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 171
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 172
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 173
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 174
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 175
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_ee

    const/4 v2, 0x1

    .line 177
    :goto_9f
    new-instance v20, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 178
    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v21

    .line 177
    invoke-direct/range {v20 .. v21}, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 179
    move-object/from16 v0, v20

    iput v13, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mDatabaseId:I

    .line 180
    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    move-object/from16 v0, v20

    iput-object v13, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mCompoentName:Landroid/content/ComponentName;

    .line 181
    move-object/from16 v0, v20

    iput v15, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mPositionX:I

    .line 182
    move/from16 v0, v16

    move-object/from16 v1, v20

    iput v0, v1, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mPostionY:I

    .line 183
    move/from16 v0, v17

    move-object/from16 v1, v20

    iput v0, v1, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mSpanX:I

    .line 184
    move/from16 v0, v18

    move-object/from16 v1, v20

    iput v0, v1, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mSpanY:I

    .line 185
    move/from16 v0, v19

    move-object/from16 v1, v20

    iput v0, v1, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mWidgetId:I

    .line 186
    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mIsEnabled:Z

    .line 187
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v2, :cond_4c

    .line 188
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    .line 189
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4c

    .line 175
    :cond_ee
    const/4 v2, 0x0

    goto :goto_9f
.end method

.method private static getDisabledFirstPositionY(Landroid/content/Context;)I
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 301
    const/16 v6, 0x3e8

    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 306
    :try_start_9
    sget-object v1, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "positionY"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "isEnabled"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_1e} :catch_3a
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_1e} :catch_40

    move-result-object v0

    move-object v3, v0

    .line 313
    :goto_20
    if-eqz v3, :cond_39

    .line 317
    :try_start_22
    const-string v0, "positionY"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 318
    const-string v0, "isEnabled"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_2d} :catch_46
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_2d} :catch_4e

    move-result v5

    move v0, v6

    .line 329
    :cond_2f
    :goto_2f
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_56

    .line 336
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move v6, v0

    .line 339
    :cond_39
    :goto_39
    return v6

    .line 307
    :catch_3a
    move-exception v0

    .line 308
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v3, v9

    goto :goto_20

    .line 309
    :catch_40
    move-exception v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    move-object v3, v9

    goto :goto_20

    .line 319
    :catch_46
    move-exception v0

    .line 320
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 321
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_39

    .line 323
    :catch_4e
    move-exception v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 325
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_39

    .line 330
    :cond_56
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 331
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_67

    move v2, v7

    .line 332
    :goto_61
    if-le v0, v1, :cond_2f

    if-nez v2, :cond_2f

    move v0, v1

    .line 333
    goto :goto_2f

    :cond_67
    move v2, v8

    .line 331
    goto :goto_61
.end method

.method private static getEnabledLastPositionY(Landroid/content/Context;)I
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 259
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 263
    :try_start_7
    sget-object v1, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "positionY"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "isEnabled"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    .line 264
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 263
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_1c} :catch_38
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_1c} :catch_3e

    move-result-object v0

    move-object v3, v0

    .line 271
    :goto_1e
    if-eqz v3, :cond_37

    .line 275
    :try_start_20
    const-string v0, "positionY"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 276
    const-string v0, "isEnabled"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_2b} :catch_44
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_2b} :catch_4c

    move-result v5

    move v0, v6

    .line 287
    :cond_2d
    :goto_2d
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_54

    .line 294
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move v6, v0

    .line 297
    :cond_37
    :goto_37
    return v6

    .line 265
    :catch_38
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v3, v8

    goto :goto_1e

    .line 267
    :catch_3e
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    move-object v3, v8

    goto :goto_1e

    .line 277
    :catch_44
    move-exception v0

    .line 278
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 279
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_37

    .line 281
    :catch_4c
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 283
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_37

    .line 288
    :cond_54
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 289
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_65

    move v2, v7

    .line 290
    :goto_5f
    if-ge v0, v1, :cond_2d

    if-eqz v2, :cond_2d

    move v0, v1

    .line 291
    goto :goto_2d

    :cond_65
    move v2, v6

    .line 289
    goto :goto_5f
.end method

.method private static getInvalidProviders(Landroid/content/Context;Landroid/database/Cursor;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 373
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 378
    :try_start_8
    const-string v1, "appWidgetId"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_d} :catch_1c
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_d} :catch_24

    move-result v1

    .line 389
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 391
    :cond_12
    :goto_12
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 398
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 399
    :goto_1b
    return-object v0

    .line 379
    :catch_1c
    move-exception v1

    .line 380
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 381
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1b

    .line 383
    :catch_24
    move-exception v1

    .line 384
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 385
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1b

    .line 392
    :cond_2c
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 393
    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    .line 394
    if-nez v4, :cond_12

    .line 395
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12
.end method

.method private static final insert(Landroid/content/ContentResolver;Ljava/lang/String;IIIIIZ)Z
    .registers 12

    .prologue
    const/4 v1, 0x1

    .line 83
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 84
    const-string v0, "componentName"

    invoke-virtual {v2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "positionX"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string v0, "positionY"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string v0, "spanX"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v0, "spanY"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string v0, "appWidgetId"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const-string v3, "isEnabled"

    if-eqz p7, :cond_4a

    move v0, v1

    :goto_3d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    sget-object v0, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 92
    return v1

    .line 90
    :cond_4a
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method public static insertDatabase(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;IZI)V
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 200
    const/4 v0, -0x1

    if-ne p4, v0, :cond_1c

    .line 201
    invoke-static {p0}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->getEnabledLastPositionY(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 204
    :goto_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 205
    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    move v4, v2

    move v5, v2

    move v6, p2

    move v7, p3

    .line 204
    invoke-static/range {v0 .. v7}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->insert(Landroid/content/ContentResolver;Ljava/lang/String;IIIIIZ)Z

    .line 212
    return-void

    :cond_1c
    move v3, p4

    goto :goto_a
.end method

.method public static removeInvalidProviders(Landroid/content/Context;)V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 349
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 350
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 351
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 355
    :try_start_d
    sget-object v1, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "appWidgetId"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_1d} :catch_2f
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_1d} :catch_35
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_1d} :catch_3b

    move-result-object v0

    .line 363
    :goto_1e
    if-eqz v0, :cond_2e

    .line 364
    invoke-static {p0, v0}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->getInvalidProviders(Landroid/content/Context;Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_41

    .line 369
    :cond_2e
    return-void

    .line 356
    :catch_2f
    move-exception v0

    .line 357
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v0, v6

    goto :goto_1e

    .line 358
    :catch_35
    move-exception v0

    .line 359
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    move-object v0, v6

    goto :goto_1e

    .line 360
    :catch_3b
    move-exception v0

    .line 361
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v0, v6

    goto :goto_1e

    .line 365
    :cond_41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 366
    invoke-static {p0, v0}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->deleteByWidgetId(Landroid/content/Context;I)I

    goto :goto_28
.end method

.method private static final updateById(Landroid/content/Context;ILjava/lang/String;I)I
    .registers 10

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 239
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 240
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    const/4 v0, -0x1

    .line 243
    :try_start_11
    sget-object v3, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id=\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 244
    const/4 v5, 0x0

    .line 243
    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_2c} :catch_2e
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_2c} :catch_33
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_11 .. :try_end_2c} :catch_38

    move-result v0

    .line 253
    :goto_2d
    return v0

    .line 245
    :catch_2e
    move-exception v1

    .line 246
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2d

    .line 247
    :catch_33
    move-exception v1

    .line 248
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2d

    .line 249
    :catch_38
    move-exception v1

    .line 250
    invoke-virtual {v1}, Landroid/database/CursorWindowAllocationException;->printStackTrace()V

    goto :goto_2d
.end method

.method private static updateById(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;I)I
    .registers 12

    .prologue
    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 218
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 219
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    const/4 v0, -0x1

    .line 223
    :try_start_18
    sget-object v3, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id=\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 224
    const/4 v5, 0x0

    .line 223
    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_33} :catch_35
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_33} :catch_3a
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_18 .. :try_end_33} :catch_3f

    move-result v0

    .line 233
    :goto_34
    return v0

    .line 225
    :catch_35
    move-exception v1

    .line 226
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_34

    .line 227
    :catch_3a
    move-exception v1

    .line 228
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_34

    .line 229
    :catch_3f
    move-exception v1

    .line 230
    invoke-virtual {v1}, Landroid/database/CursorWindowAllocationException;->printStackTrace()V

    goto :goto_34
.end method

.method public static updateByInfo(Landroid/content/Context;Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;)V
    .registers 8

    .prologue
    .line 343
    iget v1, p1, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mDatabaseId:I

    const-string v2, "isEnabled"

    iget-boolean v0, p1, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mIsEnabled:Z

    if-eqz v0, :cond_12

    const/4 v3, 0x1

    .line 344
    :goto_9
    const-string v4, "positionY"

    .line 345
    iget v5, p1, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mPostionY:I

    move-object v0, p0

    .line 343
    invoke-static/range {v0 .. v5}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->updateById(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;I)I

    .line 346
    return-void

    .line 343
    :cond_12
    const/4 v3, 0x0

    goto :goto_9
.end method
