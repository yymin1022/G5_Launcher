.class public Lcom/lge/launcher3/memory/MemoryUtils;
.super Ljava/lang/Object;
.source "MemoryUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/lge/launcher3/memory/MemoryUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/memory/MemoryUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasAvailableFileSystemMemory(Landroid/content/Context;Z)Z
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 27
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v2

    .line 30
    const-wide/32 v0, 0x8000

    cmp-long v0, v2, v0

    if-lez v0, :cond_2e

    const/4 v0, 0x1

    .line 32
    :goto_10
    if-eqz v0, :cond_30

    .line 33
    const-wide/32 v4, 0x10000

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2d

    .line 34
    sget-object v1, Lcom/lge/launcher3/memory/MemoryUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "availableSize = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_2d
    :goto_2d
    return v0

    .line 30
    :cond_2e
    const/4 v0, 0x0

    goto :goto_10

    .line 37
    :cond_30
    sget-object v1, Lcom/lge/launcher3/memory/MemoryUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Hasn\'t available file system memory.(availableSize is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    if-eqz p0, :cond_2d

    if-eqz p1, :cond_2d

    .line 40
    invoke-static {}, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->getInstance()Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, p0, v2}, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->show(Landroid/content/Context;I)V

    goto :goto_2d
.end method
