.class public Lorg/aspectj/runtime/internal/CFlowCounter;
.super Ljava/lang/Object;
.source "CFlowCounter.java"


# static fields
.field private static tsFactory:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;


# instance fields
.field private flowHeightHandler:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 29
    invoke-static {}, Lorg/aspectj/runtime/internal/CFlowCounter;->selectFactoryForVMVersion()V

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lorg/aspectj/runtime/internal/CFlowCounter;->tsFactory:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;->getNewThreadCounter()Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/internal/CFlowCounter;->flowHeightHandler:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    .line 34
    return-void
.end method

.method private static getSystemPropertyWithoutSecurityException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 76
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object p1

    .line 79
    :goto_4
    return-object p1

    .line 78
    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method private static getThreadLocalStackFactory()Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;
    .registers 1

    .prologue
    .line 52
    new-instance v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl;

    invoke-direct {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl;-><init>()V

    return-object v0
.end method

.method private static getThreadLocalStackFactoryFor11()Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;
    .registers 1

    .prologue
    .line 53
    new-instance v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl11;

    invoke-direct {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl11;-><init>()V

    return-object v0
.end method

.method public static getThreadStackFactoryClassName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 85
    sget-object v0, Lorg/aspectj/runtime/internal/CFlowCounter;->tsFactory:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static selectFactoryForVMVersion()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    const-string v2, "aspectj.runtime.cflowstack.usethreadlocal"

    const-string v3, "unspecified"

    invoke-static {v2, v3}, Lorg/aspectj/runtime/internal/CFlowCounter;->getSystemPropertyWithoutSecurityException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    const-string v3, "unspecified"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 59
    const-string v2, "java.class.version"

    const-string v3, "0.0"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    const-string v3, "46.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2b

    .line 66
    :goto_22
    if-eqz v0, :cond_40

    .line 67
    invoke-static {}, Lorg/aspectj/runtime/internal/CFlowCounter;->getThreadLocalStackFactory()Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    move-result-object v0

    sput-object v0, Lorg/aspectj/runtime/internal/CFlowCounter;->tsFactory:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    .line 71
    :goto_2a
    return-void

    :cond_2b
    move v0, v1

    .line 61
    goto :goto_22

    .line 63
    :cond_2d
    const-string v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    :cond_3d
    move v1, v0

    :cond_3e
    move v0, v1

    goto :goto_22

    .line 69
    :cond_40
    invoke-static {}, Lorg/aspectj/runtime/internal/CFlowCounter;->getThreadLocalStackFactoryFor11()Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    move-result-object v0

    sput-object v0, Lorg/aspectj/runtime/internal/CFlowCounter;->tsFactory:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    goto :goto_2a
.end method


# virtual methods
.method public dec()V
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/aspectj/runtime/internal/CFlowCounter;->flowHeightHandler:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;->dec()V

    .line 42
    iget-object v0, p0, Lorg/aspectj/runtime/internal/CFlowCounter;->flowHeightHandler:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;->isNotZero()Z

    move-result v0

    if-nez v0, :cond_12

    .line 43
    iget-object v0, p0, Lorg/aspectj/runtime/internal/CFlowCounter;->flowHeightHandler:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;->removeThreadCounter()V

    .line 45
    :cond_12
    return-void
.end method

.method public inc()V
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lorg/aspectj/runtime/internal/CFlowCounter;->flowHeightHandler:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;->inc()V

    .line 38
    return-void
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lorg/aspectj/runtime/internal/CFlowCounter;->flowHeightHandler:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;->isNotZero()Z

    move-result v0

    return v0
.end method
