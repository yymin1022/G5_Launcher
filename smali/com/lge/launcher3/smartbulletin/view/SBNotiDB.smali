.class public Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;
.super Landroid/database/ContentObserver;
.source "SBNotiDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/smartbulletin/view/SBNotiDB$INotiObserver;
    }
.end annotation


# static fields
.field private static final SBNOTI_INDEX_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/lge/launcher3/smartbulletin/view/SBNoti;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SBNotiDB"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNotiList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/smartbulletin/view/SBNoti;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 231
    new-instance v0, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB$1;

    invoke-direct {v0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB$1;-><init>()V

    sput-object v0, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->SBNOTI_INDEX_COMPARATOR:Ljava/util/Comparator;

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .prologue
    .line 42
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 43
    iput-object p2, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->mHandler:Landroid/os/Handler;

    .line 44
    invoke-static {p1}, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->getNotiList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->mNotiList:Ljava/util/ArrayList;

    .line 45
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->mContext:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->syncProvider()V

    .line 47
    return-void
.end method

.method private static getNotiList(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/smartbulletin/view/SBNoti;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 159
    :try_start_5
    sget-object v1, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->NOTI_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_e} :catch_16
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_e} :catch_1c

    move-result-object v0

    .line 165
    :goto_f
    if-eqz v0, :cond_22

    .line 166
    invoke-static {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->getNotiListFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    .line 168
    :goto_15
    return-object v0

    .line 160
    :catch_16
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v0, v6

    goto :goto_f

    .line 162
    :catch_1c
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    move-object v0, v6

    goto :goto_f

    .line 168
    :cond_22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_15
.end method

.method private static getNotiListFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/smartbulletin/view/SBNoti;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 197
    :try_start_8
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 198
    const-string v1, "time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 199
    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 200
    const-string v1, "res"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 201
    const-string v1, "componentName"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_25} :catch_35
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_25} :catch_3d

    move-result v11

    .line 212
    :goto_26
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_45

    .line 224
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 226
    sget-object v1, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->SBNOTI_INDEX_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 228
    :goto_34
    return-object v0

    .line 202
    :catch_35
    move-exception v1

    .line 203
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 204
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_34

    .line 206
    :catch_3d
    move-exception v1

    .line 207
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 208
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_34

    .line 213
    :cond_45
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 214
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 215
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 216
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 217
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 219
    new-instance v1, Lcom/lge/launcher3/smartbulletin/view/SBNoti;

    invoke-direct/range {v1 .. v6}, Lcom/lge/launcher3/smartbulletin/view/SBNoti;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iput v12, v1, Lcom/lge/launcher3/smartbulletin/view/SBNoti;->mID:I

    .line 222
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26
.end method

.method private removeNotiDatabase(Landroid/content/Context;Lcom/lge/launcher3/smartbulletin/view/SBNoti;)V
    .registers 7

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 174
    :try_start_4
    sget-object v1, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->NOTI_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p2, Lcom/lge/launcher3/smartbulletin/view/SBNoti;->mID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    const/4 v3, 0x0

    .line 174
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_21} :catch_22
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_21} :catch_27
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_4 .. :try_end_21} :catch_2c

    .line 183
    :goto_21
    return-void

    .line 176
    :catch_22
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_21

    .line 178
    :catch_27
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_21

    .line 180
    :catch_2c
    move-exception v0

    .line 181
    invoke-virtual {v0}, Landroid/database/CursorWindowAllocationException;->printStackTrace()V

    goto :goto_21
.end method

.method private syncProvider()V
    .registers 7

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->getAllProvider(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->getNotiList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1b

    .line 92
    :cond_1a
    return-void

    .line 82
    :cond_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1f
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 89
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/view/SBNoti;

    .line 90
    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->removeNoti(Landroid/content/Context;Lcom/lge/launcher3/smartbulletin/view/SBNoti;)V

    goto :goto_29

    .line 82
    :cond_3b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/view/SBNoti;

    .line 83
    iget-object v4, v0, Lcom/lge/launcher3/smartbulletin/view/SBNoti;->mComponentName:Ljava/lang/String;

    invoke-virtual {p0, v4, v1}, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->getProvider(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    move-result-object v4

    .line 84
    if-eqz v4, :cond_51

    iget-object v5, v4, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v5, :cond_51

    iget-boolean v4, v4, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mIsEnabled:Z

    if-nez v4, :cond_1f

    .line 85
    :cond_51
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f
.end method


# virtual methods
.method public getNotiCount()I
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->mNotiList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getNotiList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/smartbulletin/view/SBNoti;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->mNotiList:Ljava/util/ArrayList;

    return-object v0
.end method

.method getProvider(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;",
            ">;)",
            "Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 101
    const/4 v0, 0x0

    :goto_b
    return-object v0

    .line 96
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 97
    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_b
.end method

.method public hasNoti(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->mNotiList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    .line 118
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 113
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/view/SBNoti;

    .line 114
    iget-object v0, v0, Lcom/lge/launcher3/smartbulletin/view/SBNoti;->mComponentName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 115
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public isEnableNoti(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->getAllProvider(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 123
    invoke-virtual {p0, p1, v0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->getProvider(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_12

    iget-boolean v0, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mIsEnabled:Z

    if-eqz v0, :cond_12

    .line 125
    const/4 v0, 0x1

    .line 127
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onChange(Z)V
    .registers 5

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 66
    const-string v0, "SBNotiDB"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onChange() selfChange:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->getNotiList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->mNotiList:Ljava/util/ArrayList;

    .line 69
    invoke-direct {p0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->syncProvider()V

    .line 70
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 71
    return-void
.end method

.method public registerObserver(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 55
    sget-object v1, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->NOTI_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 56
    return-void
.end method

.method public removeInfo(Landroid/content/Context;Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;)V
    .registers 7

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->mNotiList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 153
    :goto_c
    return-void

    .line 147
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/view/SBNoti;

    .line 148
    iget-object v2, v0, Lcom/lge/launcher3/smartbulletin/view/SBNoti;->mComponentName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 149
    invoke-virtual {p0, p1, v0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->removeNoti(Landroid/content/Context;Lcom/lge/launcher3/smartbulletin/view/SBNoti;)V

    goto :goto_c
.end method

.method public removeNoti(Landroid/content/Context;Lcom/lge/launcher3/smartbulletin/view/SBNoti;)V
    .registers 9

    .prologue
    .line 131
    if-nez p2, :cond_3

    .line 144
    :cond_2
    :goto_2
    return-void

    .line 135
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->mNotiList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->mNotiList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/view/SBNoti;

    .line 137
    iget-object v2, v0, Lcom/lge/launcher3/smartbulletin/view/SBNoti;->mComponentName:Ljava/lang/String;

    iget-object v3, p2, Lcom/lge/launcher3/smartbulletin/view/SBNoti;->mComponentName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-wide v2, v0, Lcom/lge/launcher3/smartbulletin/view/SBNoti;->mTime:J

    iget-wide v4, p2, Lcom/lge/launcher3/smartbulletin/view/SBNoti;->mTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3a

    .line 138
    iget-object v2, v0, Lcom/lge/launcher3/smartbulletin/view/SBNoti;->mNotiType:Ljava/lang/String;

    iget-object v3, p2, Lcom/lge/launcher3/smartbulletin/view/SBNoti;->mNotiType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 139
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->mNotiList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->removeNotiDatabase(Landroid/content/Context;Lcom/lge/launcher3/smartbulletin/view/SBNoti;)V

    goto :goto_2

    .line 135
    :cond_3a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5
.end method

.method public unregisterObserver(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 60
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 61
    return-void
.end method
