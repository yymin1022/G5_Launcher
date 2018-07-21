.class public Lorg/aspectj/runtime/internal/CFlowStack;
.super Ljava/lang/Object;
.source "CFlowStack.java"


# static fields
.field private static tsFactory:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;


# instance fields
.field private stackProxy:Lorg/aspectj/runtime/internal/cflowstack/ThreadStack;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 59
    invoke-static {}, Lorg/aspectj/runtime/internal/CFlowStack;->selectFactoryForVMVersion()V

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lorg/aspectj/runtime/internal/CFlowStack;->tsFactory:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;->getNewThreadStack()Lorg/aspectj/runtime/internal/cflowstack/ThreadStack;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/internal/CFlowStack;->stackProxy:Lorg/aspectj/runtime/internal/cflowstack/ThreadStack;

    .line 64
    return-void
.end method

.method private static getSystemPropertyWithoutSecurityException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 147
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object p1

    .line 150
    :goto_4
    return-object p1

    .line 149
    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method private static getThreadLocalStackFactory()Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;
    .registers 1

    .prologue
    .line 124
    new-instance v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl;

    invoke-direct {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl;-><init>()V

    return-object v0
.end method

.method private static getThreadLocalStackFactoryFor11()Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;
    .registers 1

    .prologue
    .line 125
    new-instance v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl11;

    invoke-direct {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl11;-><init>()V

    return-object v0
.end method

.method private getThreadStack()Ljava/util/Stack;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/aspectj/runtime/internal/CFlowStack;->stackProxy:Lorg/aspectj/runtime/internal/cflowstack/ThreadStack;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStack;->getThreadStack()Ljava/util/Stack;

    move-result-object v0

    return-object v0
.end method

.method public static getThreadStackFactoryClassName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 157
    sget-object v0, Lorg/aspectj/runtime/internal/CFlowStack;->tsFactory:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

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

    .line 128
    const-string v2, "aspectj.runtime.cflowstack.usethreadlocal"

    const-string v3, "unspecified"

    invoke-static {v2, v3}, Lorg/aspectj/runtime/internal/CFlowStack;->getSystemPropertyWithoutSecurityException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    const-string v3, "unspecified"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 131
    const-string v2, "java.class.version"

    const-string v3, "0.0"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    const-string v3, "46.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2b

    .line 138
    :goto_22
    if-eqz v0, :cond_40

    .line 139
    invoke-static {}, Lorg/aspectj/runtime/internal/CFlowStack;->getThreadLocalStackFactory()Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    move-result-object v0

    sput-object v0, Lorg/aspectj/runtime/internal/CFlowStack;->tsFactory:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    .line 143
    :goto_2a
    return-void

    :cond_2b
    move v0, v1

    .line 133
    goto :goto_22

    .line 135
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

    .line 141
    :cond_40
    invoke-static {}, Lorg/aspectj/runtime/internal/CFlowStack;->getThreadLocalStackFactoryFor11()Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    move-result-object v0

    sput-object v0, Lorg/aspectj/runtime/internal/CFlowStack;->tsFactory:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    goto :goto_2a
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/aspectj/runtime/internal/CFlowStack;->peekCFlow()Lorg/aspectj/runtime/CFlow;

    move-result-object v0

    .line 99
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0, p1}, Lorg/aspectj/runtime/CFlow;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 121
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/CFlowStack;->getThreadStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public peek()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/CFlowStack;->getThreadStack()Ljava/util/Stack;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    invoke-direct {v0}, Lorg/aspectj/lang/NoAspectBoundException;-><init>()V

    throw v0

    .line 94
    :cond_10
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekCFlow()Lorg/aspectj/runtime/CFlow;
    .registers 3

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/CFlowStack;->getThreadStack()Ljava/util/Stack;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    .line 111
    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/aspectj/runtime/CFlow;

    goto :goto_b
.end method

.method public peekInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/aspectj/runtime/internal/CFlowStack;->peekCFlow()Lorg/aspectj/runtime/CFlow;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/aspectj/runtime/CFlow;->getAspect()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 105
    :cond_b
    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    invoke-direct {v0}, Lorg/aspectj/lang/NoAspectBoundException;-><init>()V

    throw v0
.end method

.method public peekTopCFlow()Lorg/aspectj/runtime/CFlow;
    .registers 3

    .prologue
    .line 115
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/CFlowStack;->getThreadStack()Ljava/util/Stack;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    .line 117
    :goto_b
    return-object v0

    :cond_c
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/aspectj/runtime/CFlow;

    goto :goto_b
.end method

.method public pop()V
    .registers 2

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/CFlowStack;->getThreadStack()Ljava/util/Stack;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 86
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 87
    iget-object v0, p0, Lorg/aspectj/runtime/internal/CFlowStack;->stackProxy:Lorg/aspectj/runtime/internal/cflowstack/ThreadStack;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStack;->removeThreadStack()V

    .line 89
    :cond_12
    return-void
.end method

.method public push(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/CFlowStack;->getThreadStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public push([Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 80
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/CFlowStack;->getThreadStack()Ljava/util/Stack;

    move-result-object v0

    new-instance v1, Lorg/aspectj/runtime/internal/CFlowPlusState;

    invoke-direct {v1, p1}, Lorg/aspectj/runtime/internal/CFlowPlusState;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public pushInstance(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/CFlowStack;->getThreadStack()Ljava/util/Stack;

    move-result-object v0

    new-instance v1, Lorg/aspectj/runtime/CFlow;

    invoke-direct {v1, p1}, Lorg/aspectj/runtime/CFlow;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method
