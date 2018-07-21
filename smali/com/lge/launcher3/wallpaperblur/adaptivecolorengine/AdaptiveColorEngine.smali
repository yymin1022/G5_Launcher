.class public final Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;
.super Ljava/lang/Object;
.source "AdaptiveColorEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$IAdaptiveColorEngineListener;
    }
.end annotation


# static fields
.field private static sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;


# instance fields
.field private mAdaptiveColor:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;

.field private mContext:Landroid/content/Context;

.field private mImageEngineListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$IAdaptiveColorEngineListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsValid:Z

.field private mSource:Landroid/graphics/Bitmap;

.field private mStaticBlurEngine:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;)Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mSource:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;)Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mAdaptiveColor:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;)Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mStaticBlurEngine:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;Landroid/graphics/Bitmap;)V
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mSource:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$5(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;)V
    .registers 1

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->notifyConfigurationChanged()V

    return-void
.end method

.method private clearAdaptiveColor()V
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mAdaptiveColor:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;

    if-nez v0, :cond_a

    .line 125
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->getInstance()Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mAdaptiveColor:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;

    .line 127
    :cond_a
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mAdaptiveColor:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->clear()V

    .line 128
    return-void
.end method

.method public static getInstance()Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;
    .registers 2

    .prologue
    .line 29
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_26

    const/4 v0, 0x1

    .line 30
    :goto_b
    const-string v1, "use ImageEngin on Main Thread"

    .line 29
    invoke-static {v0, v1}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->aassert(ZLjava/lang/String;)V

    .line 31
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    if-nez v0, :cond_23

    .line 32
    const-class v1, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    monitor-enter v1

    .line 33
    :try_start_17
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    if-nez v0, :cond_22

    .line 34
    new-instance v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    invoke-direct {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;-><init>()V

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    .line 32
    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_28

    .line 38
    :cond_23
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    return-object v0

    .line 29
    :cond_26
    const/4 v0, 0x0

    goto :goto_b

    .line 32
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method private notifyConfigurationChanged()V
    .registers 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mAdaptiveColor:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->isColored()Z

    move-result v0

    if-nez v0, :cond_9

    .line 160
    :cond_8
    :goto_8
    return-void

    .line 134
    :cond_9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$2;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$2;-><init>(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 143
    :cond_25
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mImageEngineListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 144
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mImageEngineListeners:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 146
    :cond_2f
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 148
    if-eqz v0, :cond_2f

    .line 149
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 150
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$IAdaptiveColorEngineListener;

    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mAdaptiveColor:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;

    invoke-interface {v0, v2}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$IAdaptiveColorEngineListener;->onAdaptiveColorChanged(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;)V

    goto :goto_2f

    .line 152
    :cond_4f
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 153
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_2f
.end method


# virtual methods
.method public addListener(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$IAdaptiveColorEngineListener;)V
    .registers 4

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mIsValid:Z

    const-string v1, "ImageEngine is not in valid state"

    invoke-static {v0, v1}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->aassert(ZLjava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mImageEngineListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method public clear()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 52
    iget-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mIsValid:Z

    if-eqz v0, :cond_45

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mIsValid:Z

    .line 54
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 55
    :try_start_b
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mStaticBlurEngine:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;

    if-eqz v0, :cond_17

    .line 56
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mStaticBlurEngine:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->clear()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mStaticBlurEngine:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;

    .line 60
    :cond_17
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mImageEngineListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2f

    .line 61
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mImageEngineListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_46

    .line 64
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mImageEngineListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mImageEngineListeners:Ljava/util/ArrayList;

    .line 68
    :cond_2f
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mSource:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3b

    .line 69
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mSource:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mSource:Landroid/graphics/Bitmap;

    .line 54
    :cond_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_50

    .line 73
    iput-object v3, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mContext:Landroid/content/Context;

    .line 74
    const-class v1, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    monitor-enter v1

    .line 75
    const/4 v0, 0x0

    :try_start_42
    sput-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    .line 74
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_53

    .line 78
    :cond_45
    return-void

    .line 61
    :cond_46
    :try_start_46
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 62
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_21

    .line 54
    :catchall_50
    move-exception v0

    monitor-exit v1
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_50

    throw v0

    .line 74
    :catchall_53
    move-exception v0

    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 42
    const-string v0, "AdaptiveColorEngine"

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->setLogOn(Ljava/lang/String;)V

    .line 43
    iget-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mIsValid:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    :goto_b
    const-string v2, "ImageEngine is already intialized"

    invoke-static {v0, v2}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->aassert(ZLjava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mImageEngineListeners:Ljava/util/ArrayList;

    .line 46
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->clearAdaptiveColor()V

    .line 47
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->init()Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mStaticBlurEngine:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;

    .line 48
    iput-boolean v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mIsValid:Z

    .line 49
    return-void

    :cond_25
    move v0, v1

    .line 43
    goto :goto_b
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mIsValid:Z

    if-eqz v0, :cond_c

    .line 82
    if-nez p1, :cond_d

    .line 83
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->clearAdaptiveColor()V

    .line 84
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->notifyConfigurationChanged()V

    .line 115
    :cond_c
    :goto_c
    return-void

    .line 88
    :cond_d
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 89
    :try_start_10
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mSource:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_19

    .line 90
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mSource:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 92
    :cond_19
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mSource:Landroid/graphics/Bitmap;

    .line 88
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_33

    .line 95
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$1;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$1;-><init>(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 113
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_c

    .line 88
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public updateTuner()V
    .registers 3

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mIsValid:Z

    const-string v1, "ImageEngine is not in valid state"

    invoke-static {v0, v1}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->aassert(ZLjava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->mAdaptiveColor:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->update()V

    .line 120
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->notifyConfigurationChanged()V

    .line 121
    return-void
.end method
