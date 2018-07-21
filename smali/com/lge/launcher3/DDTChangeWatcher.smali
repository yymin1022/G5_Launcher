.class public Lcom/lge/launcher3/DDTChangeWatcher;
.super Ljava/lang/Object;
.source "DDTChangeWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/DDTChangeWatcher$DDTChangeListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/lge/launcher3/DDTChangeWatcher;


# instance fields
.field private mIsDDTChanged:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/DDTChangeWatcher$DDTChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/lge/launcher3/DDTChangeWatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/DDTChangeWatcher;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/DDTChangeWatcher;->sInstance:Lcom/lge/launcher3/DDTChangeWatcher;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/DDTChangeWatcher;->mIsDDTChanged:Z

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/DDTChangeWatcher;->mListeners:Ljava/util/ArrayList;

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/lge/launcher3/DDTChangeWatcher;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/lge/launcher3/DDTChangeWatcher;->sInstance:Lcom/lge/launcher3/DDTChangeWatcher;

    if-nez v0, :cond_b

    .line 33
    new-instance v0, Lcom/lge/launcher3/DDTChangeWatcher;

    invoke-direct {v0}, Lcom/lge/launcher3/DDTChangeWatcher;-><init>()V

    sput-object v0, Lcom/lge/launcher3/DDTChangeWatcher;->sInstance:Lcom/lge/launcher3/DDTChangeWatcher;

    .line 36
    :cond_b
    sget-object v0, Lcom/lge/launcher3/DDTChangeWatcher;->sInstance:Lcom/lge/launcher3/DDTChangeWatcher;

    return-object v0
.end method

.method private notifyListeners(II)V
    .registers 5

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lge/launcher3/DDTChangeWatcher;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 118
    :cond_4
    return-void

    .line 115
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/DDTChangeWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/DDTChangeWatcher$DDTChangeListener;

    .line 116
    invoke-interface {v0, p1, p2}, Lcom/lge/launcher3/DDTChangeWatcher$DDTChangeListener;->onDDTChanged(II)V

    goto :goto_b
.end method


# virtual methods
.method public addListener(Lcom/lge/launcher3/DDTChangeWatcher$DDTChangeListener;)Z
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lge/launcher3/DDTChangeWatcher;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/DDTChangeWatcher;->mListeners:Ljava/util/ArrayList;

    .line 90
    :cond_b
    iget-object v0, p0, Lcom/lge/launcher3/DDTChangeWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 91
    const/4 v0, 0x0

    .line 96
    :goto_14
    return v0

    .line 94
    :cond_15
    iget-object v0, p0, Lcom/lge/launcher3/DDTChangeWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public checkDDTChangedOnCreate(Landroid/content/Context;)Z
    .registers 12

    .prologue
    const/4 v0, 0x1

    const/4 v9, -0x1

    const/4 v1, 0x0

    .line 46
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 47
    new-instance v3, Lcom/lge/content/res/ConfigurationProxy;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/lge/content/res/ConfigurationProxy;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v3}, Lcom/lge/content/res/ConfigurationProxy;->getAssetSeq()I
    :try_end_13
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_13} :catch_5e
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_13} :catch_60

    move-result v2

    .line 53
    sget-object v3, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DDTKey;->CONFIG_ASSET_SEQ:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DDTKey;

    .line 52
    invoke-static {p1, v1, v3, v9}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->getInt(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)I

    move-result v3

    .line 54
    sget-object v4, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DDTKey;->CONFIG_ASSET_SEQ:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DDTKey;

    invoke-static {p1, v1, v4, v2}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->putInt(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)Z

    .line 57
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 58
    sget-object v5, Lcom/lge/launcher3/DDTChangeWatcher;->TAG:Ljava/lang/String;

    const-string v6, "checkDDTChangedOnCreate() : assetSeq (%d -> %d), userId(%d)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    const/4 v8, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    .line 58
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    if-eq v3, v9, :cond_5c

    if-eq v3, v2, :cond_5c

    :goto_50
    iput-boolean v0, p0, Lcom/lge/launcher3/DDTChangeWatcher;->mIsDDTChanged:Z

    .line 62
    iget-boolean v0, p0, Lcom/lge/launcher3/DDTChangeWatcher;->mIsDDTChanged:Z

    if-eqz v0, :cond_59

    .line 63
    invoke-direct {p0, v3, v2}, Lcom/lge/launcher3/DDTChangeWatcher;->notifyListeners(II)V

    .line 65
    :cond_59
    iget-boolean v1, p0, Lcom/lge/launcher3/DDTChangeWatcher;->mIsDDTChanged:Z

    :goto_5b
    return v1

    :cond_5c
    move v0, v1

    .line 61
    goto :goto_50

    .line 49
    :catch_5e
    move-exception v0

    goto :goto_5b

    :catch_60
    move-exception v0

    goto :goto_5b
.end method

.method public clearDDTChanged()V
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/DDTChangeWatcher;->mIsDDTChanged:Z

    .line 79
    return-void
.end method

.method public isDDTChanged()Z
    .registers 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/lge/launcher3/DDTChangeWatcher;->mIsDDTChanged:Z

    return v0
.end method

.method public removeAllListeners()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lge/launcher3/DDTChangeWatcher;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 103
    iget-object v0, p0, Lcom/lge/launcher3/DDTChangeWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/DDTChangeWatcher;->mListeners:Ljava/util/ArrayList;

    .line 106
    :cond_c
    return-void
.end method
