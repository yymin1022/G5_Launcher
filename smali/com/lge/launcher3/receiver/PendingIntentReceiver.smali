.class public Lcom/lge/launcher3/receiver/PendingIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PendingIntentReceiver.java"


# static fields
.field private static final DBG:Z = false

.field private static final PENDING_INTENT_LIST:Ljava/lang/String; = "pending_intent_list"

.field private static final TAG:Ljava/lang/String; = "PendingIntentReceiver"

.field private static sIntents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/launcher3/receiver/IntentHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static sPendingIntentReceiver:Lcom/lge/launcher3/receiver/PendingIntentReceiver;

.field private static sUseQueue:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->sPendingIntentReceiver:Lcom/lge/launcher3/receiver/PendingIntentReceiver;

    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->sUseQueue:Z

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->sLock:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->sIntents:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 36
    sget-object v1, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->sIntents:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 37
    const-class v1, Lcom/lge/launcher3/receiver/PendingIntentObjectList;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v5

    .line 38
    array-length v6, v5

    move v3, v4

    :goto_11
    if-lt v3, v6, :cond_14

    .line 48
    return-void

    .line 38
    :cond_14
    aget-object v1, v5, v3

    .line 40
    :try_start_16
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 41
    instance-of v1, v2, Lcom/lge/launcher3/receiver/IntentHandler;

    if-eqz v1, :cond_2d

    .line 42
    sget-object v7, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->sIntents:Ljava/util/HashMap;

    move-object v0, v2

    check-cast v0, Lcom/lge/launcher3/receiver/IntentHandler;

    move-object v1, v0

    invoke-interface {v1}, Lcom/lge/launcher3/receiver/IntentHandler;->getNameOfIntent()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Lcom/lge/launcher3/receiver/IntentHandler;

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/InstantiationException; {:try_start_16 .. :try_end_2d} :catch_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_2d} :catch_3c

    .line 38
    :cond_2d
    :goto_2d
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_11

    .line 45
    :catch_31
    move-exception v1

    :goto_32
    const-string v1, "CheckClass"

    const-string v2, "not found"

    new-array v7, v4, [I

    invoke-static {v1, v2, v7}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_2d

    :catch_3c
    move-exception v1

    goto :goto_32
.end method

.method private static addToQueue(Landroid/content/SharedPreferences;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 131
    sget-object v1, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .line 133
    if-eqz v2, :cond_29

    .line 135
    const-string v0, "pending_intent_list"

    const/4 v3, 0x0

    .line 134
    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 136
    if-nez v3, :cond_2b

    .line 137
    new-instance v0, Ljava/util/HashSet;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 141
    :goto_19
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pending_intent_list"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 143
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    :cond_29
    monitor-exit v1

    .line 146
    return-void

    .line 139
    :cond_2b
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_19

    .line 131
    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_31

    throw v0
.end method

.method private static clearInstance()V
    .registers 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->sPendingIntentReceiver:Lcom/lge/launcher3/receiver/PendingIntentReceiver;

    .line 33
    return-void
.end method

.method public static disableAndFlushQueue(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->sUseQueue:Z

    .line 114
    invoke-static {p0}, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->flushQueue(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method public static enableQueue()V
    .registers 1

    .prologue
    .line 109
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->sUseQueue:Z

    .line 110
    return-void
.end method

.method static flushQueue(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 57
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    .line 58
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    invoke-static {v0, p0}, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->getAndClearIntentQueue(Landroid/content/SharedPreferences;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 63
    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 71
    :cond_1d
    return-void

    .line 64
    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 66
    sget-object v1, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->sIntents:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 67
    sget-object v1, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->sIntents:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/launcher3/receiver/IntentHandler;

    invoke-interface {v1, p0, v0}, Lcom/lge/launcher3/receiver/IntentHandler;->onHandle(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_17
.end method

.method private static getAndClearIntentQueue(Landroid/content/SharedPreferences;Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 150
    sget-object v3, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 151
    :try_start_4
    const-string v0, "pending_intent_list"

    .line 152
    const/4 v1, 0x0

    .line 151
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 158
    if-nez v0, :cond_14

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v3

    .line 176
    :goto_13
    return-object v0

    .line 161
    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1d
    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_38

    .line 173
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 174
    const-string v2, "pending_intent_list"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    monitor-exit v3

    move-object v0, v1

    goto :goto_13

    .line 162
    :cond_38
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3e
    .catchall {:try_start_4 .. :try_end_3e} :catchall_49

    .line 165
    const/4 v5, 0x0

    :try_start_3f
    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_42
    .catch Ljava/net/URISyntaxException; {:try_start_3f .. :try_end_42} :catch_4c
    .catchall {:try_start_3f .. :try_end_42} :catchall_49

    move-result-object v0

    .line 169
    :goto_43
    if-eqz v0, :cond_1d

    .line 170
    :try_start_45
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 150
    :catchall_49
    move-exception v0

    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_49

    throw v0

    .line 166
    :catch_4c
    move-exception v0

    .line 167
    :try_start_4d
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_49

    move-object v0, v2

    goto :goto_43
.end method

.method private static getInstance()Landroid/content/BroadcastReceiver;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->sPendingIntentReceiver:Lcom/lge/launcher3/receiver/PendingIntentReceiver;

    if-nez v0, :cond_b

    .line 51
    new-instance v0, Lcom/lge/launcher3/receiver/PendingIntentReceiver;

    invoke-direct {v0}, Lcom/lge/launcher3/receiver/PendingIntentReceiver;-><init>()V

    sput-object v0, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->sPendingIntentReceiver:Lcom/lge/launcher3/receiver/PendingIntentReceiver;

    .line 53
    :cond_b
    sget-object v0, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->sPendingIntentReceiver:Lcom/lge/launcher3/receiver/PendingIntentReceiver;

    return-object v0
.end method

.method private static getIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .prologue
    .line 74
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    sget-object v0, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->sIntents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    .line 79
    return-object v1

    .line 76
    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_f
.end method

.method static isUseQueue()Z
    .registers 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->sUseQueue:Z

    return v0
.end method

.method static queuePendingIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 120
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    .line 122
    const/4 v1, 0x0

    .line 121
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 123
    invoke-static {v0, p1}, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->addToQueue(Landroid/content/SharedPreferences;Landroid/content/Intent;)V

    .line 124
    sget-boolean v0, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->sUseQueue:Z

    if-nez v0, :cond_1a

    .line 125
    invoke-static {p0}, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->flushQueue(Landroid/content/Context;)V

    .line 127
    :cond_1a
    return-void
.end method

.method public static registerReceiver(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 83
    invoke-static {}, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->getInstance()Landroid/content/BroadcastReceiver;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 83
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    return-void
.end method

.method public static unregisterReceiver(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 90
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->getInstance()Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_b

    .line 94
    :goto_7
    invoke-static {}, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->clearInstance()V

    .line 95
    return-void

    .line 91
    :catch_b
    move-exception v0

    .line 92
    const-string v1, "PendingIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error on unregisterReceiver : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 100
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v0, "PendingIntentReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {p1, p2}, Lcom/lge/launcher3/receiver/PendingIntentReceiver;->queuePendingIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 102
    return-void
.end method
