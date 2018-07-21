.class public abstract enum Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;
.super Ljava/lang/Enum;
.source "BackgroundDataRestriction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction$1;,
        Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;

.field private static final CORE_POOL_SIZE:I = 0x8

.field public static final enum Common:Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;

.field private static final KEEP_ALIVE_TIME:I = 0x1

.field private static final KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

.field private static final LAZY_THREAD_POOL:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final LAZY_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAXIMUM_POOL_SIZE:I = 0x8

.field public static final enum UPLUS:Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction$1;

    const-string/jumbo v1, "UPLUS"

    invoke-direct {v0, v1, v3}, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;->UPLUS:Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;

    .line 34
    new-instance v0, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction$2;

    const-string/jumbo v1, "Common"

    invoke-direct {v0, v1, v4}, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;->Common:Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;

    sget-object v1, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;->UPLUS:Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;->Common:Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;->$VALUES:[Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;

    .line 44
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 48
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;->LAZY_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;

    .line 50
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 53
    const-wide/16 v4, 0x1

    .line 54
    sget-object v6, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 55
    sget-object v7, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;->LAZY_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;

    move v3, v2

    .line 50
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;->LAZY_THREAD_POOL:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 20
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;)V
    .registers 4

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final getInstance()Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;
    .registers 2

    .prologue
    .line 85
    const-string/jumbo v0, "LGU"

    invoke-static {}, Lcom/lge/mdm/util/LGMDMConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 86
    sget-object v0, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;->UPLUS:Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;

    .line 85
    :goto_f
    return-object v0

    .line 86
    :cond_10
    sget-object v0, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;->Common:Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;

    goto :goto_f
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;

    return-object v0
.end method

.method public static values()[Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;->$VALUES:[Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;

    return-object v0
.end method


# virtual methods
.method abstract ___getRestrictBackground(Landroid/content/Context;)Z
.end method

.method abstract ___setRestrictBackground(Landroid/content/Context;Z)V
.end method

.method public getRestrictBackground(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 78
    .local v0, "identity":J
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;->___getRestrictBackground(Landroid/content/Context;)Z
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    move-result v2

    .line 80
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    return v2

    .line 79
    :catchall_c
    move-exception v2

    .line 80
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    throw v2
.end method

.method public setRestrictBackground(Landroid/content/Context;ZLjava/lang/Runnable;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "restrictBackground"    # Z
    .param p3, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 59
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 61
    .local v0, "identity":J
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;->___setRestrictBackground(Landroid/content/Context;Z)V

    .line 62
    sget-object v2, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;->LAZY_THREAD_POOL:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction$3;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction$3;-><init>(Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;Landroid/content/Context;ZLjava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_15

    .line 69
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    return-void

    .line 68
    :catchall_15
    move-exception v2

    .line 69
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    throw v2
.end method
