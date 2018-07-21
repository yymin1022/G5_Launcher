.class public Lcom/lge/launcher3/smartbulletin/view/SBNotiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SBNotiReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SBNotiReceiver"


# instance fields
.field private mRegistered:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiReceiver;->mRegistered:Z

    .line 32
    return-void
.end method

.method private deleteNotiDatabase(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 179
    const-string v0, "SBNotiReceiver"

    const-string v1, "delete noti"

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 181
    sget-object v1, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->NOTI_URI:Landroid/net/Uri;

    const-string v2, "componentName = ?"

    .line 182
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 181
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method private static getIdByComponentName(Landroid/content/Context;Ljava/lang/String;)I
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 135
    :try_start_5
    sget-object v1, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->NOTI_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 136
    const-string v4, "componentName"

    aput-object v4, v2, v3

    .line 137
    const-string v3, "componentName=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    .line 135
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_20} :catch_2c
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_20} :catch_32

    move-result-object v0

    move-object v1, v0

    .line 143
    :goto_22
    if-eqz v1, :cond_38

    .line 144
    invoke-static {p0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBNotiReceiver;->getIdByCursor(Landroid/content/Context;Landroid/database/Cursor;)I

    move-result v0

    .line 145
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 148
    :goto_2b
    return v0

    .line 138
    :catch_2c
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v1, v6

    goto :goto_22

    .line 140
    :catch_32
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    move-object v1, v6

    goto :goto_22

    .line 148
    :cond_38
    const/4 v0, -0x1

    goto :goto_2b
.end method

.method private static getIdByCursor(Landroid/content/Context;Landroid/database/Cursor;)I
    .registers 7

    .prologue
    const/4 v1, -0x1

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 158
    :try_start_9
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_e} :catch_3b
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_e} :catch_44

    move-result v0

    .line 167
    :goto_f
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_4d

    .line 171
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_34

    .line 172
    const-string v0, "SBNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Same componentName item is exist : size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_59

    :goto_3a
    return v1

    .line 159
    :catch_3b
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 161
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move v0, v1

    goto :goto_f

    .line 162
    :catch_44
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 164
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 167
    goto :goto_f

    .line 168
    :cond_4d
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 169
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 174
    :cond_59
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3a
.end method

.method private insertNotiDatabase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 96
    const-string v0, "SBNotiReceiver"

    const-string v1, "insert noti"

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 98
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 99
    const-string v2, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    const-string v2, "componentName"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "res"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "type"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v2, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->NOTI_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 104
    return-void
.end method

.method private static updateById(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11

    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 109
    const-string v0, "SBNotiReceiver"

    const-string v2, "updateById"

    invoke-static {v0, v2}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 112
    const-string v0, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 113
    const-string v0, "res"

    invoke-virtual {v2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "type"

    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v0, -0x1

    .line 117
    :try_start_28
    sget-object v3, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->NOTI_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id=\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 118
    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 117
    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_43} :catch_45
    .catch Ljava/lang/SecurityException; {:try_start_28 .. :try_end_43} :catch_4a
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_28 .. :try_end_43} :catch_4f

    move-result v0

    .line 127
    :goto_44
    return v0

    .line 119
    :catch_45
    move-exception v1

    .line 120
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_44

    .line 121
    :catch_4a
    move-exception v1

    .line 122
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_44

    .line 123
    :catch_4f
    move-exception v1

    .line 124
    invoke-virtual {v1}, Landroid/database/CursorWindowAllocationException;->printStackTrace()V

    goto :goto_44
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .prologue
    .line 63
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v0, "noti_type"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v1, "resource_uri"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    const-string v2, "component_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    const-string v3, "SBNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onReceive : intent: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " component: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.lge.launcher2.smartbulletin.REMOVE_NOTIFICATION_ICON"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 69
    invoke-direct {p0, p1, v2}, Lcom/lge/launcher3/smartbulletin/view/SBNotiReceiver;->deleteNotiDatabase(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    :cond_46
    :goto_46
    return-void

    .line 73
    :cond_47
    const-string v3, "once"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    .line 74
    const-string v3, "ongoing"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    .line 75
    const-string v1, "SBNotiReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceive : invalid type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 79
    :cond_6c
    if-nez v2, :cond_83

    .line 80
    const-string v0, "SBNotiReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onReceive : invalid componentString "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 84
    :cond_83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.lge.launcher2.smartbulletin.ADD_NOTIFICATION_ICON"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 85
    invoke-static {p1, v2}, Lcom/lge/launcher3/smartbulletin/view/SBNotiReceiver;->getIdByComponentName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 86
    const/4 v4, -0x1

    if-eq v3, v4, :cond_9a

    .line 87
    invoke-static {p1, v3, v0, v1, v2}, Lcom/lge/launcher3/smartbulletin/view/SBNotiReceiver;->updateById(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 89
    :cond_9a
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/lge/launcher3/smartbulletin/view/SBNotiReceiver;->insertNotiDatabase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46
.end method

.method public registerNotiReceiver(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 35
    monitor-enter p0

    .line 36
    :try_start_1
    iget-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiReceiver;->mRegistered:Z

    if-nez v0, :cond_21

    .line 37
    const-string v0, "SBNotiReceiver"

    const-string v1, "Register NotiReceiver"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 39
    const-string v1, "com.lge.launcher2.smartbulletin.ADD_NOTIFICATION_ICON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    const-string v1, "com.lge.launcher2.smartbulletin.REMOVE_NOTIFICATION_ICON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiReceiver;->mRegistered:Z

    .line 35
    :cond_21
    monitor-exit p0

    .line 45
    return-void

    .line 35
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public unregisterNotiReceiver(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 48
    monitor-enter p0

    .line 49
    :try_start_1
    iget-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiReceiver;->mRegistered:Z

    if-eqz v0, :cond_12

    .line 50
    const-string v0, "SBNotiReceiver"

    const-string v1, "Unregister NotiReceiver"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_19

    .line 52
    :try_start_c
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_f} :catch_14
    .catchall {:try_start_c .. :try_end_f} :catchall_19

    .line 56
    :goto_f
    const/4 v0, 0x0

    :try_start_10
    iput-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiReceiver;->mRegistered:Z

    .line 48
    :cond_12
    monitor-exit p0

    .line 59
    return-void

    .line 53
    :catch_14
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_f

    .line 48
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_19

    throw v0
.end method
