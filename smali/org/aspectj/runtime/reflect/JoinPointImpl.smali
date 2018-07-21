.class Lorg/aspectj/runtime/reflect/JoinPointImpl;
.super Ljava/lang/Object;
.source "JoinPointImpl.java"

# interfaces
.implements Lorg/aspectj/lang/ProceedingJoinPoint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/aspectj/runtime/reflect/JoinPointImpl$EnclosingStaticPartImpl;,
        Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;
    }
.end annotation


# instance fields
.field _this:Ljava/lang/Object;

.field private arc:Lorg/aspectj/runtime/internal/AroundClosure;

.field args:[Ljava/lang/Object;

.field staticPart:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->staticPart:Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 87
    iput-object p2, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->_this:Ljava/lang/Object;

    .line 88
    iput-object p3, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->target:Ljava/lang/Object;

    .line 89
    iput-object p4, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->args:[Ljava/lang/Object;

    .line 90
    return-void
.end method


# virtual methods
.method public getArgs()[Ljava/lang/Object;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->args:[Ljava/lang/Object;

    if-nez v0, :cond_9

    .line 102
    new-array v0, v3, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->args:[Ljava/lang/Object;

    .line 104
    :cond_9
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->args:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->args:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->args:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->staticPart:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getKind()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lorg/aspectj/lang/Signature;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->staticPart:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    return-object v0
.end method

.method public getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->staticPart:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v0

    return-object v0
.end method

.method public getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->staticPart:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->target:Ljava/lang/Object;

    return-object v0
.end method

.method public getThis()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->_this:Ljava/lang/Object;

    return-object v0
.end method

.method public proceed()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->arc:Lorg/aspectj/runtime/internal/AroundClosure;

    if-nez v0, :cond_6

    .line 147
    const/4 v0, 0x0

    .line 149
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->arc:Lorg/aspectj/runtime/internal/AroundClosure;

    iget-object v1, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->arc:Lorg/aspectj/runtime/internal/AroundClosure;

    invoke-virtual {v1}, Lorg/aspectj/runtime/internal/AroundClosure;->getState()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public proceed([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->arc:Lorg/aspectj/runtime/internal/AroundClosure;

    if-nez v0, :cond_8

    .line 155
    const/4 v0, 0x0

    .line 221
    :goto_7
    return-object v0

    .line 161
    :cond_8
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->arc:Lorg/aspectj/runtime/internal/AroundClosure;

    invoke-virtual {v0}, Lorg/aspectj/runtime/internal/AroundClosure;->getFlags()I

    move-result v0

    .line 162
    const/high16 v3, 0x100000

    and-int/2addr v3, v0

    if-eqz v3, :cond_13

    .line 163
    :cond_13
    const/high16 v3, 0x10000

    and-int/2addr v3, v0

    if-eqz v3, :cond_66

    move v7, v1

    .line 164
    :goto_19
    and-int/lit16 v3, v0, 0x1000

    if-eqz v3, :cond_68

    move v6, v1

    .line 165
    :goto_1e
    and-int/lit16 v3, v0, 0x100

    if-eqz v3, :cond_6a

    move v5, v1

    .line 166
    :goto_23
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_6c

    move v4, v1

    .line 167
    :goto_28
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6e

    move v0, v1

    .line 170
    :goto_2d
    iget-object v3, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->arc:Lorg/aspectj/runtime/internal/AroundClosure;

    invoke-virtual {v3}, Lorg/aspectj/runtime/internal/AroundClosure;->getState()[Ljava/lang/Object;

    move-result-object v8

    .line 180
    if-eqz v6, :cond_70

    move v3, v1

    :goto_36
    add-int v9, v2, v3

    .line 181
    if-eqz v4, :cond_72

    if-nez v7, :cond_72

    move v3, v1

    :goto_3d
    add-int/2addr v9, v3

    .line 182
    if-eqz v6, :cond_97

    .line 183
    if-eqz v5, :cond_97

    .line 186
    aget-object v3, p1, v2

    aput-object v3, v8, v2

    move v3, v1

    .line 191
    :goto_47
    if-eqz v4, :cond_95

    .line 192
    if-eqz v0, :cond_95

    .line 193
    if-eqz v7, :cond_78

    .line 195
    if-eqz v5, :cond_74

    move v0, v1

    :goto_50
    add-int/lit8 v0, v0, 0x1

    .line 196
    if-eqz v5, :cond_76

    :goto_54
    aget-object v1, p1, v1

    aput-object v1, v8, v2

    :goto_58
    move v1, v0

    .line 210
    :goto_59
    array-length v2, p1

    if-ge v1, v2, :cond_8d

    .line 211
    sub-int v2, v1, v0

    add-int/2addr v2, v9

    aget-object v3, p1, v1

    aput-object v3, v8, v2

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    :cond_66
    move v7, v2

    .line 163
    goto :goto_19

    :cond_68
    move v6, v2

    .line 164
    goto :goto_1e

    :cond_6a
    move v5, v2

    .line 165
    goto :goto_23

    :cond_6c
    move v4, v2

    .line 166
    goto :goto_28

    :cond_6e
    move v0, v2

    .line 167
    goto :goto_2d

    :cond_70
    move v3, v2

    .line 180
    goto :goto_36

    :cond_72
    move v3, v2

    .line 181
    goto :goto_3d

    :cond_74
    move v0, v2

    .line 195
    goto :goto_50

    :cond_76
    move v1, v2

    .line 196
    goto :goto_54

    .line 201
    :cond_78
    if-eqz v6, :cond_87

    move v0, v1

    :goto_7b
    add-int/lit8 v0, v0, 0x1

    .line 202
    if-eqz v6, :cond_89

    move v3, v1

    :goto_80
    if-eqz v6, :cond_8b

    :goto_82
    aget-object v1, p1, v1

    aput-object v1, v8, v3

    goto :goto_58

    :cond_87
    move v0, v2

    .line 201
    goto :goto_7b

    :cond_89
    move v3, v2

    .line 202
    goto :goto_80

    :cond_8b
    move v1, v2

    goto :goto_82

    .line 221
    :cond_8d
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->arc:Lorg/aspectj/runtime/internal/AroundClosure;

    invoke-virtual {v0, v8}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_7

    :cond_95
    move v0, v3

    goto :goto_58

    :cond_97
    move v3, v2

    goto :goto_47
.end method

.method public set$AroundClosure(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 2

    .prologue
    .line 141
    iput-object p1, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->arc:Lorg/aspectj/runtime/internal/AroundClosure;

    .line 142
    return-void
.end method

.method public final toLongString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->staticPart:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint$StaticPart;->toLongString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toShortString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->staticPart:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint$StaticPart;->toShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->staticPart:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint$StaticPart;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
