.class public Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;
.super Ljava/lang/Object;
.source "ThreadCounterImpl11.java"

# interfaces
.implements Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;
    }
.end annotation


# static fields
.field private static final COLLECT_AT:I = 0x4e20

.field private static final MIN_COLLECT_AT:I = 0x64


# instance fields
.field private cached_counter:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

.field private cached_thread:Ljava/lang/Thread;

.field private change_count:I

.field private counters:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->counters:Ljava/util/Hashtable;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->change_count:I

    .line 31
    return-void
.end method

.method private declared-synchronized getThreadCounter()Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;
    .registers 5

    .prologue
    .line 36
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->cached_thread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_8b

    .line 37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->cached_thread:Ljava/lang/Thread;

    .line 38
    iget-object v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->counters:Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->cached_thread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    iput-object v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->cached_counter:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    .line 39
    iget-object v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->cached_counter:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    if-nez v0, :cond_2f

    .line 40
    new-instance v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    invoke-direct {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;-><init>()V

    iput-object v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->cached_counter:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    .line 41
    iget-object v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->counters:Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->cached_thread:Ljava/lang/Thread;

    iget-object v2, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->cached_counter:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_2f
    iget v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->change_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->change_count:I

    .line 45
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->counters:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 46
    iget v1, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->change_count:I

    const/16 v2, 0x64

    const/16 v3, 0x4e20

    div-int v0, v3, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le v1, v0, :cond_8b

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iget-object v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->counters:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_59
    :goto_59
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 49
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_59

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catchall {:try_start_1 .. :try_end_6e} :catchall_6f

    goto :goto_59

    .line 36
    :catchall_6f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 52
    :cond_72
    :try_start_72
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_76
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 54
    iget-object v2, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->counters:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_76

    .line 56
    :cond_88
    const/4 v0, 0x0

    iput v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->change_count:I

    .line 59
    :cond_8b
    iget-object v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->cached_counter:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;
    :try_end_8d
    .catchall {:try_start_72 .. :try_end_8d} :catchall_6f

    monitor-exit p0

    return-object v0
.end method


# virtual methods
.method public dec()V
    .registers 3

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->getThreadCounter()Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    move-result-object v0

    iget v1, v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;->value:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;->value:I

    .line 68
    return-void
.end method

.method public inc()V
    .registers 3

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->getThreadCounter()Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    move-result-object v0

    iget v1, v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;->value:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;->value:I

    .line 64
    return-void
.end method

.method public isNotZero()Z
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->getThreadCounter()Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    move-result-object v0

    iget v0, v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;->value:I

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public removeThreadCounter()V
    .registers 1

    .prologue
    .line 76
    return-void
.end method
