.class Lorg/aspectj/runtime/reflect/UnlockSignatureImpl;
.super Lorg/aspectj/runtime/reflect/SignatureImpl;
.source "UnlockSignatureImpl.java"

# interfaces
.implements Lorg/aspectj/lang/reflect/UnlockSignature;


# instance fields
.field private parameterType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 4

    .prologue
    .line 23
    const/16 v0, 0x8

    const-string v1, "unlock"

    invoke-direct {p0, v0, v1, p1}, Lorg/aspectj/runtime/reflect/SignatureImpl;-><init>(ILjava/lang/String;Ljava/lang/Class;)V

    .line 24
    iput-object p1, p0, Lorg/aspectj/runtime/reflect/UnlockSignatureImpl;->parameterType:Ljava/lang/Class;

    .line 25
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/aspectj/runtime/reflect/SignatureImpl;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected createToString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 32
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/UnlockSignatureImpl;->parameterType:Ljava/lang/Class;

    if-nez v0, :cond_b

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->extractType(I)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/UnlockSignatureImpl;->parameterType:Ljava/lang/Class;

    .line 33
    :cond_b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "unlock("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/aspectj/runtime/reflect/UnlockSignatureImpl;->parameterType:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lorg/aspectj/runtime/reflect/StringMaker;->makeTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/UnlockSignatureImpl;->parameterType:Ljava/lang/Class;

    if-nez v0, :cond_b

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->extractType(I)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/UnlockSignatureImpl;->parameterType:Ljava/lang/Class;

    .line 38
    :cond_b
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/UnlockSignatureImpl;->parameterType:Ljava/lang/Class;

    return-object v0
.end method
