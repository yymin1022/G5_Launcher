.class public Lcom/lge/mdm/util/handler/LGMDMPostRunnable;
.super Lcom/lge/mdm/util/handler/LGMDMHandlerThread;
.source "LGMDMPostRunnable.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LGMDMPostRunnable"

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static mInstance:Lcom/lge/mdm/util/handler/LGMDMPostRunnable;


# direct methods
.method static synthetic -get0()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->mInstance:Lcom/lge/mdm/util/handler/LGMDMPostRunnable;

    .line 14
    sput-object v0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->mHandler:Landroid/os/Handler;

    .line 15
    sput-object v0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->mContext:Landroid/content/Context;

    .line 10
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 5
    .param p1, "threadName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/lge/mdm/util/handler/LGMDMHandlerThread;-><init>(Ljava/lang/String;)V

    .line 19
    sput-object p2, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->mContext:Landroid/content/Context;

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->mHandler:Landroid/os/Handler;

    .line 17
    return-void
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    sget-object v0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/lge/mdm/util/handler/LGMDMPostRunnable;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->mInstance:Lcom/lge/mdm/util/handler/LGMDMPostRunnable;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    sget-object v0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->mInstance:Lcom/lge/mdm/util/handler/LGMDMPostRunnable;

    if-nez v0, :cond_e

    .line 25
    new-instance v0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;

    const-string/jumbo v1, "LGMDMPostRunnable"

    invoke-direct {v0, v1, p0}, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->mInstance:Lcom/lge/mdm/util/handler/LGMDMPostRunnable;

    .line 23
    :cond_e
    return-void
.end method


# virtual methods
.method public sendBroadcast(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    sget-object v0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_15

    .line 39
    if-eqz p1, :cond_14

    .line 40
    sget-object v0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lge/mdm/util/handler/LGMDMPostRunnable$1;

    invoke-direct {v1, p0, p1}, Lcom/lge/mdm/util/handler/LGMDMPostRunnable$1;-><init>(Lcom/lge/mdm/util/handler/LGMDMPostRunnable;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    :cond_14
    :goto_14
    return-void

    .line 53
    :cond_15
    const-string/jumbo v0, "LGMDMPostRunnable"

    const-string/jumbo v1, "[sendBroadcast] mContext is null!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;I)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # I

    .prologue
    .line 58
    sget-object v0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_15

    .line 59
    if-eqz p1, :cond_14

    .line 60
    sget-object v0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lge/mdm/util/handler/LGMDMPostRunnable$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/mdm/util/handler/LGMDMPostRunnable$2;-><init>(Lcom/lge/mdm/util/handler/LGMDMPostRunnable;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    :cond_14
    :goto_14
    return-void

    .line 68
    :cond_15
    const-string/jumbo v0, "LGMDMPostRunnable"

    const-string/jumbo v1, "[sendBroadcast] mContext is null!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public startService(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    sget-object v0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_15

    .line 74
    if-eqz p1, :cond_14

    .line 75
    sget-object v0, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lge/mdm/util/handler/LGMDMPostRunnable$3;

    invoke-direct {v1, p0, p1}, Lcom/lge/mdm/util/handler/LGMDMPostRunnable$3;-><init>(Lcom/lge/mdm/util/handler/LGMDMPostRunnable;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :cond_14
    :goto_14
    return-void

    .line 83
    :cond_15
    const-string/jumbo v0, "LGMDMPostRunnable"

    const-string/jumbo v1, "[startService] mContext is null!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method
