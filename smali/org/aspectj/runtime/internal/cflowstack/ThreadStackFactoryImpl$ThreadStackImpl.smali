.class Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$ThreadStackImpl;
.super Ljava/lang/ThreadLocal;
.source "ThreadStackFactoryImpl.java"

# interfaces
.implements Lorg/aspectj/runtime/internal/cflowstack/ThreadStack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadStackImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$1;)V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$ThreadStackImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getThreadStack()Ljava/util/Stack;
    .registers 2

    .prologue
    .line 24
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    return-object v0
.end method

.method public initialValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 21
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    return-object v0
.end method

.method public removeThreadStack()V
    .registers 1

    .prologue
    .line 27
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    .line 28
    return-void
.end method
