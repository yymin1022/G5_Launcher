.class public abstract Lcom/android/launcher3/compat/PackageInstallerCompat;
.super Ljava/lang/Object;
.source "PackageInstallerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;
    }
.end annotation


# static fields
.field public static final STATUS_FAILED:I = 0x2

.field public static final STATUS_INSTALLED:I = 0x0

.field public static final STATUS_INSTALLING:I = 0x1

.field private static sInstance:Lcom/android/launcher3/compat/PackageInstallerCompat;

.field private static final sInstanceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/compat/PackageInstallerCompat;->sInstanceLock:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/PackageInstallerCompat;
    .registers 3

    .prologue
    .line 35
    sget-object v1, Lcom/android/launcher3/compat/PackageInstallerCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_3
    sget-object v0, Lcom/android/launcher3/compat/PackageInstallerCompat;->sInstance:Lcom/android/launcher3/compat/PackageInstallerCompat;

    if-nez v0, :cond_14

    .line 37
    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 38
    new-instance v0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    invoke-direct {v0, p0}, Lcom/android/launcher3/compat/PackageInstallerCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/compat/PackageInstallerCompat;->sInstance:Lcom/android/launcher3/compat/PackageInstallerCompat;

    .line 43
    :cond_14
    :goto_14
    sget-object v0, Lcom/android/launcher3/compat/PackageInstallerCompat;->sInstance:Lcom/android/launcher3/compat/PackageInstallerCompat;

    monitor-exit v1

    return-object v0

    .line 40
    :cond_18
    new-instance v0, Lcom/android/launcher3/compat/PackageInstallerCompatV16;

    invoke-direct {v0}, Lcom/android/launcher3/compat/PackageInstallerCompatV16;-><init>()V

    sput-object v0, Lcom/android/launcher3/compat/PackageInstallerCompat;->sInstance:Lcom/android/launcher3/compat/PackageInstallerCompat;

    goto :goto_14

    .line 35
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v0
.end method


# virtual methods
.method public abstract onStop()V
.end method

.method public abstract updateAndGetActiveSessionCache()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
