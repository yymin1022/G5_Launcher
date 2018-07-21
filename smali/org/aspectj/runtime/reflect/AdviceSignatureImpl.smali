.class Lorg/aspectj/runtime/reflect/AdviceSignatureImpl;
.super Lorg/aspectj/runtime/reflect/CodeSignatureImpl;
.source "AdviceSignatureImpl.java"

# interfaces
.implements Lorg/aspectj/lang/reflect/AdviceSignature;


# instance fields
.field private adviceMethod:Ljava/lang/reflect/Method;

.field returnType:Ljava/lang/Class;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 9

    .prologue
    .line 30
    invoke-direct/range {p0 .. p6}, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;-><init>(ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/AdviceSignatureImpl;->adviceMethod:Ljava/lang/reflect/Method;

    .line 32
    iput-object p7, p0, Lorg/aspectj/runtime/reflect/AdviceSignatureImpl;->returnType:Ljava/lang/Class;

    .line 33
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;-><init>(Ljava/lang/String;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/AdviceSignatureImpl;->adviceMethod:Ljava/lang/reflect/Method;

    .line 37
    return-void
.end method

.method private toAdviceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 60
    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 68
    :cond_9
    :goto_9
    return-object p1

    .line 61
    :cond_a
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v0, "$"

    invoke-direct {v1, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_11
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 63
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v2, "before"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "after"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "around"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_33
    move-object p1, v0

    .line 66
    goto :goto_9
.end method


# virtual methods
.method protected createToString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 49
    iget-boolean v1, p1, Lorg/aspectj/runtime/reflect/StringMaker;->includeArgs:Z

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/AdviceSignatureImpl;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/aspectj/runtime/reflect/StringMaker;->makeTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    :cond_14
    iget-boolean v1, p1, Lorg/aspectj/runtime/reflect/StringMaker;->includeArgs:Z

    if-eqz v1, :cond_1d

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    :cond_1d
    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->getDeclaringType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->getDeclaringTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/aspectj/runtime/reflect/StringMaker;->makePrimaryTypeName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/aspectj/runtime/reflect/AdviceSignatureImpl;->toAdviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/aspectj/runtime/reflect/StringMaker;->addSignature(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V

    .line 55
    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/aspectj/runtime/reflect/StringMaker;->addThrows(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdvice()Ljava/lang/reflect/Method;
    .registers 4

    .prologue
    .line 75
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/AdviceSignatureImpl;->adviceMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_16

    .line 77
    :try_start_4
    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->getDeclaringType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/AdviceSignatureImpl;->adviceMethod:Ljava/lang/reflect/Method;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_19

    .line 82
    :cond_16
    :goto_16
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/AdviceSignatureImpl;->adviceMethod:Ljava/lang/reflect/Method;

    return-object v0

    .line 78
    :catch_19
    move-exception v0

    goto :goto_16
.end method

.method public getReturnType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/AdviceSignatureImpl;->returnType:Ljava/lang/Class;

    if-nez v0, :cond_b

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->extractType(I)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/AdviceSignatureImpl;->returnType:Ljava/lang/Class;

    .line 43
    :cond_b
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/AdviceSignatureImpl;->returnType:Ljava/lang/Class;

    return-object v0
.end method
