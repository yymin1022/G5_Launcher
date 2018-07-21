.class public Lcom/lge/launcher3/nativeitds/LauncherProviderItds;
.super Ljava/lang/Object;
.source "LauncherProviderItds.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherProviderItds;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherProviderItds;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativeitds/LauncherProviderItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherProviderItds$com_android_launcher3_LauncherProvider$DatabaseHelper$updateMaxScreenId(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;J)V
    .registers 4

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->ajc$set$mMaxScreenId(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;J)V

    .line 34
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherProviderItds$com_android_launcher3_LauncherProvider$deleteAppWidgetIds(Lcom/android/launcher3/LauncherProvider;[I)V
    .registers 4

    .prologue
    .line 37
    new-instance v0, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {v0}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    new-instance v1, Lcom/android/launcher3/LauncherProvider$LauncherProviderItds$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/LauncherProvider$LauncherProviderItds$1;-><init>(Lcom/android/launcher3/LauncherProvider;[I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherProviderItds$com_android_launcher3_LauncherProvider$isUpgradeDB(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 25
    const-string v1, "upgrade"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherProviderItds$com_android_launcher3_LauncherProvider$resetDatabaseHelper(Lcom/android/launcher3/LauncherProvider;)V
    .registers 3

    .prologue
    .line 17
    new-instance v0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 18
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherProviderItds$com_android_launcher3_LauncherProvider$updateMaxScreenId(Lcom/android/launcher3/LauncherProvider;J)V
    .registers 4

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-static {v0, p1, p2}, Lcom/lge/launcher3/nativeitds/LauncherProviderItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherProviderItds$com_android_launcher3_LauncherProvider$DatabaseHelper$updateMaxScreenId(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;J)V

    .line 30
    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherProviderItds$com_android_launcher3_LauncherProvider$DatabaseHelper$updateMaxScreenId(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;J)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->updateMaxScreenId(J)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherProviderItds$com_android_launcher3_LauncherProvider$deleteAppWidgetIds(Lcom/android/launcher3/LauncherProvider;[I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherProvider;->deleteAppWidgetIds([I)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherProviderItds$com_android_launcher3_LauncherProvider$isUpgradeDB(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/LauncherProvider;->isUpgradeDB(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherProviderItds$com_android_launcher3_LauncherProvider$resetDatabaseHelper(Lcom/android/launcher3/LauncherProvider;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->resetDatabaseHelper()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherProviderItds$com_android_launcher3_LauncherProvider$updateMaxScreenId(Lcom/android/launcher3/LauncherProvider;J)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherProvider;->updateMaxScreenId(J)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativeitds/LauncherProviderItds;

    invoke-direct {v0}, Lcom/lge/launcher3/nativeitds/LauncherProviderItds;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativeitds/LauncherProviderItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherProviderItds;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativeitds/LauncherProviderItds;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherProviderItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherProviderItds;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativeitds_LauncherProviderItds"

    sget-object v2, Lcom/lge/launcher3/nativeitds/LauncherProviderItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherProviderItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherProviderItds;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherProviderItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherProviderItds;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
