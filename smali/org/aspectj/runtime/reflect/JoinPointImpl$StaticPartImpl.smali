.class Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;
.super Ljava/lang/Object;
.source "JoinPointImpl.java"

# interfaces
.implements Lorg/aspectj/lang/JoinPoint$StaticPart;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/aspectj/runtime/reflect/JoinPointImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StaticPartImpl"
.end annotation


# instance fields
.field private id:I

.field kind:Ljava/lang/String;

.field signature:Lorg/aspectj/lang/Signature;

.field sourceLocation:Lorg/aspectj/lang/reflect/SourceLocation;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/aspectj/lang/Signature;Lorg/aspectj/lang/reflect/SourceLocation;)V
    .registers 5

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->kind:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->signature:Lorg/aspectj/lang/Signature;

    .line 32
    iput-object p4, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->sourceLocation:Lorg/aspectj/lang/reflect/SourceLocation;

    .line 33
    iput p1, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->id:I

    .line 34
    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->id:I

    return v0
.end method

.method public getKind()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Lorg/aspectj/lang/Signature;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->signature:Lorg/aspectj/lang/Signature;

    return-object v0
.end method

.method public getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->sourceLocation:Lorg/aspectj/lang/reflect/SourceLocation;

    return-object v0
.end method

.method public final toLongString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->longStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->toString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toShortString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->toString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->middleStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->toString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 53
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->getKind()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/reflect/StringMaker;->makeKindName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    check-cast v0, Lorg/aspectj/runtime/reflect/SignatureImpl;

    invoke-virtual {v0, p1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->toString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
