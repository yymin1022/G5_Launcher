.class public Lcom/lge/launcher3/hideapps/AppFilterImpl;
.super Lcom/android/launcher3/AppFilter;
.source "AppFilterImpl.java"


# static fields
.field private static sAppsList:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/hideapps/AppFilterImpl;->sAppsList:Ljava/util/TreeSet;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lge/launcher3/hideapps/AppFilterImpl;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/launcher3/AppFilter;-><init>()V

    .line 20
    return-void
.end method

.method public static clearList()V
    .registers 2

    .prologue
    .line 50
    sget-object v1, Lcom/lge/launcher3/hideapps/AppFilterImpl;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_3
    sget-object v0, Lcom/lge/launcher3/hideapps/AppFilterImpl;->sAppsList:Ljava/util/TreeSet;

    if-eqz v0, :cond_c

    .line 52
    sget-object v0, Lcom/lge/launcher3/hideapps/AppFilterImpl;->sAppsList:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 54
    :cond_c
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/hideapps/AppFilterImpl;->sAppsList:Ljava/util/TreeSet;

    .line 50
    monitor-exit v1

    .line 56
    return-void

    .line 50
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private init()V
    .registers 7

    .prologue
    .line 23
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 25
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    sput-object v2, Lcom/lge/launcher3/hideapps/AppFilterImpl;->sAppsList:Ljava/util/TreeSet;

    .line 26
    const/high16 v2, 0x7f0a0000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 27
    array-length v3, v2

    const/4 v0, 0x0

    :goto_1b
    if-lt v0, v3, :cond_30

    .line 31
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    .line 30
    invoke-static {v1, v0}, Lcom/lge/launcher3/hideapps/HideAppsStorage;->getAllItems(Landroid/content/Context;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/ArrayList;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 37
    return-void

    .line 27
    :cond_30
    aget-object v4, v2, v0

    .line 28
    sget-object v5, Lcom/lge/launcher3/hideapps/AppFilterImpl;->sAppsList:Ljava/util/TreeSet;

    invoke-virtual {v5, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 32
    :cond_3a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 33
    sget-object v2, Lcom/lge/launcher3/hideapps/AppFilterImpl;->sAppsList:Ljava/util/TreeSet;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_29
.end method


# virtual methods
.method public shouldShowApp(Landroid/content/ComponentName;)Z
    .registers 5

    .prologue
    .line 41
    sget-object v1, Lcom/lge/launcher3/hideapps/AppFilterImpl;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_3
    sget-object v0, Lcom/lge/launcher3/hideapps/AppFilterImpl;->sAppsList:Ljava/util/TreeSet;

    if-nez v0, :cond_a

    .line 43
    invoke-direct {p0}, Lcom/lge/launcher3/hideapps/AppFilterImpl;->init()V

    .line 45
    :cond_a
    sget-object v0, Lcom/lge/launcher3/hideapps/AppFilterImpl;->sAppsList:Ljava/util/TreeSet;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    :goto_17
    monitor-exit v1

    return v0

    :cond_19
    const/4 v0, 0x1

    goto :goto_17

    .line 41
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method
