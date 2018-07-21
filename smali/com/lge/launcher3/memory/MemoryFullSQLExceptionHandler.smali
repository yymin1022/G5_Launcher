.class public Lcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;
.super Ljava/lang/Object;
.source "MemoryFullSQLExceptionHandler.aj"


# annotations
.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final SQLITE_EXCEPTION_DETAIL_MESSAGE:Ljava/lang/String; = "unable to open database file"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 10
    :goto_3
    return-void

    .line 9
    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_memory_MemoryFullSQLExceptionHandler$1$ea6c38a4proceed(Lorg/aspectj/runtime/internal/AroundClosure;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 12
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->longValue(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_launcher3_memory_MemoryFullSQLExceptionHandler$com_lge_launcher3_memory_MemoryFullSQLExceptionHandler$SQLITE_EXCEPTION_DETAIL_MESSAGE()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;->SQLITE_EXCEPTION_DETAIL_MESSAGE:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_launcher3_memory_MemoryFullSQLExceptionHandler$com_lge_launcher3_memory_MemoryFullSQLExceptionHandler$SQLITE_EXCEPTION_DETAIL_MESSAGE(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;->SQLITE_EXCEPTION_DETAIL_MESSAGE:Ljava/lang/String;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;

    invoke-direct {v0}, Lcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;-><init>()V

    sput-object v0, Lcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;->ajc$perSingletonInstance:Lcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;->ajc$perSingletonInstance:Lcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_memory_MemoryFullSQLExceptionHandler"

    sget-object v2, Lcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;->ajc$perSingletonInstance:Lcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;->ajc$perSingletonInstance:Lcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_launcher3_memory_MemoryFullSQLExceptionHandler$1$ea6c38a4(Lorg/aspectj/runtime/internal/AroundClosure;)J
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "(call(long insertWithOnConflict(..)) && (within(IconCache) || within(WidgetPreviewLoader)))"
    .end annotation

    .prologue
    .line 14
    :try_start_0
    invoke-static {p1}, Lcom/lge/launcher3/memory/MemoryFullSQLExceptionHandler;->ajc$around$com_lge_launcher3_memory_MemoryFullSQLExceptionHandler$1$ea6c38a4proceed(Lorg/aspectj/runtime/internal/AroundClosure;)J
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v0

    .line 22
    :goto_4
    return-wide v0

    .line 15
    :catch_5
    move-exception v0

    .line 16
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unable to open database file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 17
    const-string v1, "SQLiteException"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MemoryFull:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :goto_2a
    const-wide/16 v0, 0x0

    goto :goto_4

    .line 19
    :cond_2d
    const-string v1, "SQLiteException"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method
