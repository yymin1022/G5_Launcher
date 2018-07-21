.class public Lcom/lge/launcher3/liveicon/LiveIconManager;
.super Ljava/lang/Object;
.source "LiveIconManager.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static final TAG:Ljava/lang/String; = "LiveIcon"

.field private static sInstance:Lcom/lge/launcher3/liveicon/LiveIconManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mLiveIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/liveicon/LiveIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mStarted:Z

.field private mUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mLiveIcons:Ljava/util/ArrayList;

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mEnabled:Z

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mStarted:Z

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mUpdateListeners:Ljava/util/List;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {p0}, Lcom/lge/launcher3/liveicon/LiveIconManager;->updateEnabled()V

    .line 38
    return-void
.end method

.method private addLiveIcons()V
    .registers 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mLiveIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 63
    :cond_8
    return-void

    .line 57
    :cond_9
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mLiveIcons:Ljava/util/ArrayList;

    new-instance v1, Lcom/lge/launcher3/liveicon/CalendarLiveIcon;

    iget-object v2, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lge/launcher3/liveicon/CalendarLiveIcon;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mLiveIcons:Ljava/util/ArrayList;

    new-instance v1, Lcom/lge/launcher3/liveicon/AlarmClockLiveIcon;

    iget-object v2, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lge/launcher3/liveicon/AlarmClockLiveIcon;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mLiveIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/liveicon/LiveIcon;

    .line 61
    invoke-virtual {v0, p0}, Lcom/lge/launcher3/liveicon/LiveIcon;->addObserver(Ljava/util/Observer;)V

    goto :goto_27
.end method

.method private get(Landroid/content/ComponentName;)Lcom/lge/launcher3/liveicon/LiveIcon;
    .registers 5

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mLiveIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    .line 134
    const/4 v0, 0x0

    :goto_d
    return-object v0

    .line 128
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/liveicon/LiveIcon;

    .line 129
    invoke-virtual {v0}, Lcom/lge/launcher3/liveicon/LiveIcon;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_d
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/launcher3/liveicon/LiveIconManager;
    .registers 2

    .prologue
    .line 27
    sget-object v0, Lcom/lge/launcher3/liveicon/LiveIconManager;->sInstance:Lcom/lge/launcher3/liveicon/LiveIconManager;

    if-nez v0, :cond_b

    .line 28
    new-instance v0, Lcom/lge/launcher3/liveicon/LiveIconManager;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/liveicon/LiveIconManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/launcher3/liveicon/LiveIconManager;->sInstance:Lcom/lge/launcher3/liveicon/LiveIconManager;

    .line 31
    :cond_b
    sget-object v0, Lcom/lge/launcher3/liveicon/LiveIconManager;->sInstance:Lcom/lge/launcher3/liveicon/LiveIconManager;

    return-object v0
.end method

.method private removeLiveIcons()V
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mLiveIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 75
    :goto_8
    return-void

    .line 70
    :cond_9
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mLiveIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 74
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mLiveIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_8

    .line 70
    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/liveicon/LiveIcon;

    .line 71
    invoke-virtual {v0, p0}, Lcom/lge/launcher3/liveicon/LiveIcon;->deleteObserver(Ljava/util/Observer;)V

    goto :goto_f
.end method


# virtual methods
.method public getBadgedIcon(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/lge/launcher3/liveicon/LiveIconManager;->get(Landroid/content/ComponentName;)Lcom/lge/launcher3/liveicon/LiveIcon;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_b

    .line 140
    invoke-virtual {v0, p2}, Lcom/lge/launcher3/liveicon/LiveIcon;->getBadgedIcon(Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 143
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasLiveIcon(Landroid/content/ComponentName;)Z
    .registers 3

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/lge/launcher3/liveicon/LiveIconManager;->get(Landroid/content/ComponentName;)Lcom/lge/launcher3/liveicon/LiveIcon;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public registerOnLiveIconUpdateListener(Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;)V
    .registers 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 148
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_d
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mEnabled:Z

    if-nez v0, :cond_5

    .line 92
    :cond_4
    :goto_4
    return-void

    .line 82
    :cond_5
    iget-boolean v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mStarted:Z

    if-nez v0, :cond_4

    .line 86
    const-string v0, "LiveIcon"

    const-string v1, "Start event listening"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mLiveIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_20

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mStarted:Z

    goto :goto_4

    .line 87
    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/liveicon/LiveIcon;

    .line 88
    invoke-virtual {v0}, Lcom/lge/launcher3/liveicon/LiveIcon;->startEventListening()V

    .line 89
    invoke-virtual {v0}, Lcom/lge/launcher3/liveicon/LiveIcon;->updateIcon()V

    goto :goto_16
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mEnabled:Z

    if-nez v0, :cond_5

    .line 108
    :cond_4
    :goto_4
    return-void

    .line 99
    :cond_5
    iget-boolean v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mStarted:Z

    if-eqz v0, :cond_4

    .line 103
    const-string v0, "LiveIcon"

    const-string v1, "Stop event listening"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mLiveIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_20

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mStarted:Z

    goto :goto_4

    .line 104
    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/liveicon/LiveIcon;

    .line 105
    invoke-virtual {v0}, Lcom/lge/launcher3/liveicon/LiveIcon;->stopEventListening()V

    goto :goto_16
.end method

.method public unregisterOnLiveIconUpdateListener(Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;)V
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mEnabled:Z

    if-nez v0, :cond_5

    .line 121
    :cond_4
    return-void

    .line 116
    :cond_5
    const-string v0, "LiveIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Update live icon: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;

    move-object v1, p1

    .line 119
    check-cast v1, Lcom/lge/launcher3/liveicon/LiveIcon;

    invoke-interface {v0, v1}, Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;->onLiveIconUpdate(Lcom/lge/launcher3/liveicon/LiveIcon;)V

    goto :goto_1f
.end method

.method public updateEnabled()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/util/DDTUtils;->isAdditionalThemeApplied(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v1

    :goto_b
    iput-boolean v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mEnabled:Z

    .line 43
    const-string v0, "LiveIcon"

    const-string v3, "updateEnabled() : %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-boolean v0, p0, Lcom/lge/launcher3/liveicon/LiveIconManager;->mEnabled:Z

    if-eqz v0, :cond_2c

    .line 46
    invoke-direct {p0}, Lcom/lge/launcher3/liveicon/LiveIconManager;->addLiveIcons()V

    .line 50
    :goto_29
    return-void

    :cond_2a
    move v0, v2

    .line 41
    goto :goto_b

    .line 48
    :cond_2c
    invoke-direct {p0}, Lcom/lge/launcher3/liveicon/LiveIconManager;->removeLiveIcons()V

    goto :goto_29
.end method
