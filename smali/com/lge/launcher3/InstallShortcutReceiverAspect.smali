.class public Lcom/lge/launcher3/InstallShortcutReceiverAspect;
.super Ljava/lang/Object;
.source "InstallShortcutReceiverAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/InstallShortcutReceiverAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    :try_start_0
    const-class v0, Lcom/lge/launcher3/InstallShortcutReceiverAspect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/InstallShortcutReceiverAspect;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/lge/launcher3/InstallShortcutReceiverAspect;->ajc$postClinit()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/InstallShortcutReceiverAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_InstallShortcutReceiverAspect$1$a01567proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Lorg/json/JSONStringer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONStringer;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_launcher3_InstallShortcutReceiverAspect$2$d1822fb1proceed(Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/InstallShortcutReceiverAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/InstallShortcutReceiverAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/InstallShortcutReceiverAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/InstallShortcutReceiverAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/InstallShortcutReceiverAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/InstallShortcutReceiverAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/InstallShortcutReceiverAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_InstallShortcutReceiverAspect"

    sget-object v2, Lcom/lge/launcher3/InstallShortcutReceiverAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/InstallShortcutReceiverAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/InstallShortcutReceiverAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/InstallShortcutReceiverAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/InstallShortcutReceiverAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_launcher3_InstallShortcutReceiverAspect$1$a01567(Lorg/aspectj/runtime/internal/AroundClosure;)Lorg/json/JSONStringer;
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "(call(public JSONStringer object()) && withincode(public String encodeToString()))"
    .end annotation

    .prologue
    .line 25
    invoke-static {p1}, Lcom/lge/launcher3/InstallShortcutReceiverAspect;->ajc$around$com_lge_launcher3_InstallShortcutReceiverAspect$1$a01567proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 27
    :try_start_4
    const-string v1, "time"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_11} :catch_12

    .line 30
    :goto_11
    return-object v0

    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method public ajc$around$com_lge_launcher3_InstallShortcutReceiverAspect$2$d1822fb1(Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 10
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "context,data,ajc$aroundClosure"
        value = "(execution(public void InstallShortcutReceiver.onReceive(..)) && args(context, data))"
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 39
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 42
    sget-object v2, Lcom/lge/launcher3/InstallShortcutReceiverAspect;->TAG:Ljava/lang/String;

    .line 43
    const-string v3, "InstallShortcutReceiver.onReceive() : %s{%s}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    aput-object v0, v4, v1

    .line 42
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    invoke-static {v0, v5}, Lcom/lge/launcher3/memory/MemoryUtils;->hasAvailableFileSystemMemory(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_35

    .line 46
    sget-object v0, Lcom/lge/launcher3/InstallShortcutReceiverAspect;->TAG:Ljava/lang/String;

    .line 47
    const-string v1, "Memory is full. so InstallShortcutReceiver.onReceive() is canceled."

    .line 46
    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_34
    return-void

    .line 51
    :cond_35
    invoke-static {p1, p2, p3}, Lcom/lge/launcher3/InstallShortcutReceiverAspect;->ajc$around$com_lge_launcher3_InstallShortcutReceiverAspect$2$d1822fb1proceed(Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/runtime/internal/AroundClosure;)V

    goto :goto_34
.end method
