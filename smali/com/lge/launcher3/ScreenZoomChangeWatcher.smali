.class public Lcom/lge/launcher3/ScreenZoomChangeWatcher;
.super Ljava/lang/Object;
.source "ScreenZoomChangeWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/ScreenZoomChangeWatcher$ScreenZoomChangeListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/lge/launcher3/ScreenZoomChangeWatcher;


# instance fields
.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/ScreenZoomChangeWatcher$ScreenZoomChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/lge/launcher3/ScreenZoomChangeWatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/ScreenZoomChangeWatcher;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/ScreenZoomChangeWatcher;->sInstance:Lcom/lge/launcher3/ScreenZoomChangeWatcher;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/ScreenZoomChangeWatcher;->mListeners:Ljava/util/ArrayList;

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/lge/launcher3/ScreenZoomChangeWatcher;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/lge/launcher3/ScreenZoomChangeWatcher;->sInstance:Lcom/lge/launcher3/ScreenZoomChangeWatcher;

    if-nez v0, :cond_b

    .line 30
    new-instance v0, Lcom/lge/launcher3/ScreenZoomChangeWatcher;

    invoke-direct {v0}, Lcom/lge/launcher3/ScreenZoomChangeWatcher;-><init>()V

    sput-object v0, Lcom/lge/launcher3/ScreenZoomChangeWatcher;->sInstance:Lcom/lge/launcher3/ScreenZoomChangeWatcher;

    .line 33
    :cond_b
    sget-object v0, Lcom/lge/launcher3/ScreenZoomChangeWatcher;->sInstance:Lcom/lge/launcher3/ScreenZoomChangeWatcher;

    return-object v0
.end method

.method private notifyListeners(FF)V
    .registers 5

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/launcher3/ScreenZoomChangeWatcher;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 95
    :cond_4
    return-void

    .line 92
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/ScreenZoomChangeWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/ScreenZoomChangeWatcher$ScreenZoomChangeListener;

    .line 93
    invoke-interface {v0, p1, p2}, Lcom/lge/launcher3/ScreenZoomChangeWatcher$ScreenZoomChangeListener;->onScreenZoomChanged(FF)V

    goto :goto_b
.end method


# virtual methods
.method public addListener(Lcom/lge/launcher3/ScreenZoomChangeWatcher$ScreenZoomChangeListener;)Z
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/launcher3/ScreenZoomChangeWatcher;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/ScreenZoomChangeWatcher;->mListeners:Ljava/util/ArrayList;

    .line 67
    :cond_b
    iget-object v0, p0, Lcom/lge/launcher3/ScreenZoomChangeWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 68
    const/4 v0, 0x0

    .line 73
    :goto_14
    return v0

    .line 71
    :cond_15
    iget-object v0, p0, Lcom/lge/launcher3/ScreenZoomChangeWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public checkScreenZoomChangedOnCreate(Landroid/content/Context;)Z
    .registers 12

    .prologue
    const/4 v0, 0x1

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 41
    sget-object v2, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$ScreenZoomKey;->DENSITY:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$ScreenZoomKey;

    invoke-static {p1, v1, v2, v9}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->getFloat(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;F)F

    move-result v2

    .line 43
    invoke-static {p1}, Lcom/lge/launcher3/util/WindowUtils;->getDensity(Landroid/content/Context;)F

    move-result v3

    .line 44
    sget-object v4, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$ScreenZoomKey;->DENSITY:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$ScreenZoomKey;

    invoke-static {p1, v1, v4, v3}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->putFloat(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;F)Z

    .line 46
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 47
    sget-object v5, Lcom/lge/launcher3/ScreenZoomChangeWatcher;->TAG:Ljava/lang/String;

    .line 48
    const-string v6, "checkScreenZoomChangedOnCreate() : density(%.2f -> %.2f), userId(%d)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 49
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v0

    const/4 v8, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    .line 47
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    cmpl-float v4, v2, v9

    if-eqz v4, :cond_4d

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_4d

    .line 52
    :goto_47
    if-eqz v0, :cond_4c

    .line 53
    invoke-direct {p0, v2, v3}, Lcom/lge/launcher3/ScreenZoomChangeWatcher;->notifyListeners(FF)V

    .line 55
    :cond_4c
    return v0

    :cond_4d
    move v0, v1

    .line 51
    goto :goto_47
.end method

.method public removeAllListeners()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lge/launcher3/ScreenZoomChangeWatcher;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 80
    iget-object v0, p0, Lcom/lge/launcher3/ScreenZoomChangeWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/ScreenZoomChangeWatcher;->mListeners:Ljava/util/ArrayList;

    .line 83
    :cond_c
    return-void
.end method
